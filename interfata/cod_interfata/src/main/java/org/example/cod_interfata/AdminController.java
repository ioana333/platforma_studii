package org.example.cod_interfata;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

public class AdminController implements Initializable
{

    private int id_admin = 0;

    @FXML
    private Button buton_logout;
    @FXML
    private Label nume_prenume;
    @FXML
    private Label email_afisat;
    @FXML
    private Label telefon;
    @FXML
    private Label nr_contract;
    @FXML
    private Label adresa;
    @FXML
    private Label cnp;
    @FXML
    private Label iban;

    public void setUserInfo(Integer id_user,String nume,String prenume,String email,String telefon,String telefonContact,String adresa,String cnp,String iban)
    {
        this.id_admin=id_user;

        nume_prenume.setText(nume + " " + prenume);
        email_afisat.setText("email: " + email);
        this.telefon.setText("telefon: " + telefon);
        this.nr_contract.setText("Nr. contract: " + telefonContact);
        this.adresa.setText("Adresa: " + adresa);
        this.cnp.setText("CNP: " + cnp);
        this.iban.setText("IBAN: " + iban);
    }


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        buton_logout.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent actionEvent) {

                BDconection.changeScene(actionEvent, "log-in.fxml", null, null, null, 685, 400);

            }
        });
    }


    @FXML
    private TextField cauta_curs_nume;

    @FXML
    private Button cauta;

    @FXML
    private Label nume_curs;

    @FXML
    private TextArea descriere_curs;

    @FXML
    private Label data_inceput_curs;

    @FXML
    private Label data_final_curs;

    @FXML
    private Label pondere_curs;

    @FXML
    private Label pondere_seminar;

    @FXML
    private Label pondere_laborator;

    @FXML
    private TableView<Profesor> tabel_profesori;
    @FXML
    private TableColumn<Profesor, String> colProfesorCurs;
    @FXML
    private TableColumn<Profesor, String> colProfesorSeminar;
    @FXML
    private TableColumn<Profesor, String> colProfesorLaborator;

    @FXML
    public void initialize_table() {
        colProfesorCurs.setCellValueFactory(new PropertyValueFactory<>("profesorCurs"));
        colProfesorSeminar.setCellValueFactory(new PropertyValueFactory<>("profesorSeminar"));
        colProfesorLaborator.setCellValueFactory(new PropertyValueFactory<>("profesorLaborator"));
    }

    @FXML
    private void cautaCurs(String numeDisciplina)
    {
        //String numeDisciplina = cauta_curs_nume.getText();
        Connection connection = null;
        CallableStatement callableStatement = null;
        ResultSet resultSet = null;

        try {
            String url = "jdbc:mysql://localhost:3306/platforma_studii";
            connection = DriverManager.getConnection(url, "root", "Padurarul31+");

            // Apelăm procedura stocată
            callableStatement = connection.prepareCall("{CALL afisare_informatii_disciplina(?)}");
            callableStatement.setString(1, numeDisciplina);

            boolean hasResults = callableStatement.execute();
            int step = 0;

            // Resetăm tabelul
            tabel_profesori.getItems().clear();

            ObservableList<Profesor> profesoriList = FXCollections.observableArrayList();

            while (hasResults) {
                resultSet = callableStatement.getResultSet();

                if (step == 0) { // Profesori curs
                    while (resultSet.next())
                    {
                        String profesorCurs = resultSet.getString("Nume profesori curs");
                        profesoriList.add(new Profesor(profesorCurs, "", ""));
                    }
                } else if (step == 1) { // Profesori seminar
                    int index = 0;
                    while (resultSet.next())
                    {
                        String profesorSeminar = resultSet.getString("Nume profesori seminar");
                        // Adăugăm sau actualizăm lista în funcție de dimensiune
                        if (index < profesoriList.size()) {
                            Profesor profesor = profesoriList.get(index);
                            profesoriList.set(index, new Profesor(profesor.getProfesorCurs(), profesorSeminar, profesor.getProfesorLaborator()));
                        } else {
                            profesoriList.add(new Profesor("", profesorSeminar, ""));
                        }
                        index++;
                    }
                } else if (step == 2) { // Profesori laborator
                    int index = 0;
                    while (resultSet.next() && index < profesoriList.size())
                    {
                        String profesorLaborator = resultSet.getString("Nume profesori laborator");
                        if (index < profesoriList.size()) {
                            Profesor profesor = profesoriList.get(index);
                            profesoriList.set(index, new Profesor(profesor.getProfesorCurs(), profesor.getProfesorSeminar(), profesorLaborator));
                        } else {
                            profesoriList.add(new Profesor("", "", profesorLaborator));
                        }
                        index++;
                    }
                } else if (step == 3) { // Detalii curs
                    if (resultSet.next()) {
                        String numeCurs = resultSet.getString("nume_disciplina");
                        String descriereCurs = resultSet.getString("descriere");
                        String dataInceput = resultSet.getString("data_inceput");
                        String dataFinal = resultSet.getString("data_sfarsit");
                        String pondereCurs = resultSet.getString("pondere_curs");
                        String pondereSeminar = resultSet.getString("pondere_seminar");
                        String pondereLaborator = resultSet.getString("pondere_laborator");

                        nume_curs.setText("Nume curs: " + numeCurs);
                        descriere_curs.setText("\t" + descriereCurs);
                        data_inceput_curs.setText("Data început: " + dataInceput);
                        data_final_curs.setText("Data final: " + dataFinal);
                        pondere_curs.setText("Pondere curs: " + pondereCurs);
                        pondere_seminar.setText("Pondere seminar: " + pondereSeminar);
                        pondere_laborator.setText("Pondere laborator: " + pondereLaborator);

                        System.out.println(dataInceput);

                    }

                }
                tabel_profesori.setItems(profesoriList);
                step++;
                hasResults = callableStatement.getMoreResults();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (callableStatement != null) callableStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


    @FXML
    private void cautaCursButton(ActionEvent event)
    {
        System.out.println("Buton apasat curs");

        String cautare = cauta_curs_nume.getText();
        if(!cautare.isEmpty())
        {
            initialize_table();
            cautaCurs(cautare);
            System.out.println(cautare);
        }
        else
        {
            System.out.println("Nu a fost introdus un nume de curs!");
        }

    }


    @FXML
    private void veziStudentiCurs(ActionEvent event) throws IOException
    {
        System.out.println("buton vezi studeti apasat");

        String cauta = cauta_curs_nume.getText();
        System.out.println("DISCIPLINA: "+cauta);

            // Deschidem fereastra cu tabelul
            FXMLLoader loader = new FXMLLoader(getClass().getResource("vizualizareStudenti.fxml"));
            Stage stage = new Stage();
            stage.setScene(new Scene(loader.load()));

            VizualizareStudentiController controller = loader.getController();
            controller.loadMembrii(cauta);

            stage.show();


    }

    @FXML
    private TextField nume_disciplina_adaugata;
    @FXML
    private TextField descriere_disciplina_adaugata;
    @FXML
    private DatePicker data_inceput_adaugare;
    @FXML
    private DatePicker data_final_adaugare;

    @FXML
    private void adaugaDisciplina(ActionEvent event)
    {
        String numeDisciplina = nume_disciplina_adaugata.getText();
        String descriereDisciplina = descriere_disciplina_adaugata.getText();
        String dataInceput = data_inceput_adaugare.getValue().toString();
        String dataFinal = data_final_adaugare.getValue().toString();

        if(!numeDisciplina.isEmpty() && !descriereDisciplina.isEmpty() && !dataInceput.isEmpty() && !dataFinal.isEmpty())
        {
            Connection conection = null;
            PreparedStatement preparedStatement = null;
            ResultSet rs = null;

            try
            {

                String url = "jdbc:mysql://localhost:3306/platforma_studii";

                conection = DriverManager.getConnection(url, "root", "Padurarul31+");

                preparedStatement = conection.prepareStatement("call inserare_disciplina(?, ?, ?, ?)");
                preparedStatement.setString(1, numeDisciplina);
                preparedStatement.setString(2, descriereDisciplina);
                preparedStatement.setString(3, dataInceput);
                preparedStatement.setString(4, dataFinal);
                rs = preparedStatement.executeQuery();

                System.out.println("Inserare reusita");
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Succes");
                alert.setHeaderText(null); // Fără un antet
                alert.setContentText("Disciplina a fost adaugata cu succes!");
                alert.show();

            }
            catch (SQLException e)
            {
                System.out.println("Inserarea nu a reusit");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Eroare");
                alert.setHeaderText(null);
                alert.setContentText("Verifica campurile completate! Poate ca acesta disciplina exista deja!");
                alert.show();
                e.printStackTrace();
            }
            finally
            {
                try {
                    if (rs != null) rs.close();
                    if (preparedStatement != null) preparedStatement.close();
                    if (conection != null) conection.close();
                }
                catch (SQLException e)
                {
                    e.printStackTrace();
                }
            }
        }
        else
        {
            System.out.println("Nu s-a putut adauga disciplina");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Verifica toate campurile completate! Niciun camp nu trebuie sa ramana necompletat!");
            alert.show();
        }

    }

    @FXML
    private Label id_modificat;
    @FXML
    private TextField nume_modificat;
    @FXML
    private TextField prenume_modificat;
    @FXML
    private TextField cnp_modificat;
    @FXML
    private TextField adresa_modificat;
    @FXML
    private TextField tel_modificat;
    @FXML
    private TextField email_modificat;
    @FXML
    private TextField iban_modificat;
    @FXML
    private TextField contract_modificat;


    @FXML
    private TextField nume_utilizator;
    @FXML
    private TextField prenume_utilizator;
    @FXML
    private ComboBox rol_utilizator;

    @FXML
    private TableView<Utilizator> tabel_utilizatori;

    @FXML
    private TableColumn<Utilizator, String> id_tabel;

    @FXML
    private TableColumn<Utilizator, String> nume_tabel;
    @FXML
    private TableColumn<Utilizator, String> prenume_tabel;

    @FXML
    private TableColumn<Utilizator, String> cnp_tabel;
    @FXML
    private TableColumn<Utilizator, String> adresa_tabel;
    @FXML
    private TableColumn<Utilizator, String> telefon_tabel;
    @FXML
    private TableColumn<Utilizator, String> email_tabel;
    @FXML
    private TableColumn<Utilizator, String> iban_tabel;
    @FXML
    private TableColumn<Utilizator, String> contract_tabel;


    @FXML
    public void initializareTabel()
    {

        id_tabel.setCellValueFactory(new PropertyValueFactory<Utilizator, String>("Id"));
        nume_tabel.setCellValueFactory(new PropertyValueFactory<Utilizator, String>("Nume"));
        prenume_tabel.setCellValueFactory(new PropertyValueFactory<Utilizator, String>("Prenume"));
        cnp_tabel.setCellValueFactory(new PropertyValueFactory<Utilizator, String>("Cnp"));
        adresa_tabel.setCellValueFactory(new PropertyValueFactory<Utilizator, String>("Adresa"));
        telefon_tabel.setCellValueFactory(new PropertyValueFactory<Utilizator, String>("Telefon"));
        email_tabel.setCellValueFactory(new PropertyValueFactory<Utilizator, String>("Email"));
        iban_tabel.setCellValueFactory(new PropertyValueFactory<Utilizator, String>("Iban"));
        contract_tabel.setCellValueFactory(new PropertyValueFactory<Utilizator, String>("Nr_contract"));


        tabel_utilizatori.getSelectionModel().selectedItemProperty().addListener((obs, oldSelection, newSelection) -> {
            if (newSelection != null) {
                id_modificat.setText(String.valueOf(newSelection.getId()));
                nume_modificat.setText(String.valueOf(newSelection.getNume()));
                prenume_modificat.setText(String.valueOf(newSelection.getPrenume()));
                cnp_modificat.setText(String.valueOf(newSelection.getCnp()));
                adresa_modificat.setText(String.valueOf(newSelection.getAdresa()));
                tel_modificat.setText(String.valueOf(newSelection.getTelefon()));
                email_modificat.setText(String.valueOf(newSelection.getEmail()));
                iban_modificat.setText(String.valueOf(newSelection.getIban()));
                contract_modificat.setText(String.valueOf(newSelection.getNr_contract()));

            }
        });

    }

    public void loadUtilizatori() {

        tabel_utilizatori.getItems().clear();
        initializareTabel();
        tabel_utilizatori.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call cautare_dupa_nume_si_rol(?, ?, ?)");
            preparedStatement.setString(1,nume_utilizator.getText());
            preparedStatement.setString(2,prenume_utilizator.getText());
            preparedStatement.setString(3, String.valueOf(rol_utilizator.getValue()));

            rs = preparedStatement.executeQuery();


            while (rs.next())
            {
                Map<String, Object> row = new HashMap<>();
                Integer idUtilizator = rs.getInt("user_id");
                String numeUtilizator = rs.getString("nume");
                String prenumeUtilizator =  rs.getString("prenume");
                String cnpUtilizator = rs.getString("CNP");
                String adresaUtilizator = rs.getString("adresa_id");
                String telefonUtilizator = rs.getString("telefon");
                String emailUtilizator = rs.getString("email");
                String ibanUtilizator = rs.getString("iban");
                String contractUtilizator = rs.getString("nr_contract");

                tabel_utilizatori.getItems().add(new Utilizator(idUtilizator, numeUtilizator, prenumeUtilizator, cnpUtilizator, adresaUtilizator, telefonUtilizator, emailUtilizator, ibanUtilizator, contractUtilizator));

            }

        } catch (SQLException e) {
            System.out.println("Nu s-a gasit utilizatorul");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Utilizatorul nu a fost gasit. Verifica daca ai introdus corect datele!");
            alert.show();
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (preparedStatement != null) preparedStatement.close();
                if (conection != null) conection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


    @FXML
    private void cautaUtilizator(ActionEvent event)
    {
        String numeUtilizator = nume_utilizator.getText();
        String prenumeUtilizator = prenume_utilizator.getText();
        String rolUtilizator = rol_utilizator.getValue().toString();

        if(!prenumeUtilizator.isEmpty() && !numeUtilizator.isEmpty() && !rolUtilizator.isEmpty())
        {
            loadUtilizatori();
        }
        else
        {
            System.out.println("Nu poti cauta utilizatorul");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Nu s-a putut cauta utilizatorul. Trebuie sa introduci un nume si un prenume sau sa selectezi un rol!");
            alert.show();
        }

    }


    @FXML
    private void modificaUtilizator()
    {
        String idUtilizator = id_modificat.getText();
        String numeUtilizator = nume_modificat.getText();
        String prenumeUtilizator =  prenume_modificat.getText();
        String cnpUtilizator = cnp_modificat.getText();
        String adresaUtilizator = adresa_modificat.getText();
        String telefonUtilizator = tel_modificat.getText();
        String emailUtilizator = email_modificat.getText();
        String ibanUtilizator = iban_modificat.getText();
        String contractUtilizator = contract_modificat.getText();

        if(!idUtilizator.isEmpty() && !numeUtilizator.isEmpty() && !prenumeUtilizator.isEmpty())
        {
            Connection conection = null;
            PreparedStatement preparedStatement = null;
            ResultSet rs = null;

            try
            {

                String url = "jdbc:mysql://localhost:3306/platforma_studii";

                conection = DriverManager.getConnection(url, "root", "Padurarul31+");

                preparedStatement = conection.prepareStatement("call vizualizare_activitati_student(?, ?)");
                preparedStatement.setString(1, String.valueOf(studentId));
                preparedStatement.setString(2, String.valueOf(data_activitati.getValue()));
                rs = preparedStatement.executeQuery();


                while (rs.next())
                {

                    String dis = rs.getString("NumeDisciplina");
                    String act =  rs.getString("TipActivitate");
                    String ora = rs.getString("OraInceput");

                    System.out.println(dis + " " + act + " " + ora);

                }

            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
            finally
            {
                try {
                    if (rs != null) rs.close();
                    if (preparedStatement != null) preparedStatement.close();
                    if (conection != null) conection.close();
                }
                catch (SQLException e)
                {
                    e.printStackTrace();
                }
            }

        }
        else
        {
            System.out.println("nu s-a putut modifica elevul");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Modificarea utilizatorului selectat nu a reusit. Verifica sa fi completat corect campurile!");
            alert.show();
        }



    }










}
