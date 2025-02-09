package org.example.cod_interfata;


import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.FileChooser;
import javafx.stage.Stage;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

public class ProfilProfesorController implements Initializable
{
    private int id_profesor;
    private int id_nota_student;

    @FXML
    private Button buton_logout;
    @FXML
    private Label nume_prenume;
    @FXML
    private Label departament;
    @FXML
    private Label ore_predare;
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

        public void setUserInfo(Integer id_user,String nume,String prenume,String departament,String ore,String email,String telefon,String telefonContact,String adresa,String cnp,String iban)
        {
            this.id_profesor=id_user;

            nume_prenume.setText(nume + " " + prenume);
            this.departament.setText("Departament: " + departament);
            this.ore_predare.setText(ore);
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
    private DatePicker data_activitati;

    @FXML
    private Button butonCautaProgram;

    @FXML
    private Button buton_descarcareActivitati;

    @FXML
    private TableView<ActivitateOrar> tabel_orar;

    @FXML
    private TableColumn<ActivitateOrar, String> activitate_orar;

    @FXML
    private TableColumn<ActivitateOrar, String> ora_activitate_orar;

    @FXML
    private TableColumn<ActivitateOrar, String> disciplina_orar;

    @FXML
    public void initialize()
    {

        disciplina_orar.setCellValueFactory(new PropertyValueFactory<ActivitateOrar, String>("disciplina"));
        activitate_orar.setCellValueFactory(new PropertyValueFactory<ActivitateOrar, String>("activitate"));
        ora_activitate_orar.setCellValueFactory(new PropertyValueFactory<ActivitateOrar, String>("ora"));

    }

    public void loadActivitati(int studentId, String dataAleasa) {

        tabel_orar.getItems().clear();
        initialize();
        tabel_orar.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call vizualizare_activitati_profesor(?, ?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            preparedStatement.setString(2, String.valueOf(data_activitati.getValue()));
            rs = preparedStatement.executeQuery();


            while (rs.next())
            {
                Map<String, Object> row = new HashMap<>();
                String dis = rs.getString("nume_disciplina");
                String act =  rs.getString("tip_activitate");
                String ora = rs.getString("ora_inceput");

                System.out.println(dis + " " + act + " " + ora);

                tabel_orar.getItems().add(new ActivitateOrar(act, dis, ora));

            }

        } catch (SQLException e) {
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
    private void afiseazaOre(ActionEvent event)
    {
        System.out.println("buton apasat2");

        LocalDate dataAleasa = data_activitati.getValue();
        if (dataAleasa != null)
        {
            loadActivitati(id_profesor, dataAleasa.toString());
        }
        else
        {
            System.out.println("Nu a fost selectată nicio dată.");
        }

        loadActivitati(id_profesor, String.valueOf(data_activitati));
    }


    private void downloadData(Integer studentId, String dataAleasa, String file)
    {
        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try (FileWriter writer = new FileWriter(file)) {
            // Conectare la baza de date
            String url = "jdbc:mysql://localhost:3306/platforma_studii";
            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            // Pregătire procedură stocată
            preparedStatement = conection.prepareStatement("call vizualizare_activitati_profesor(?, ?)");
            preparedStatement.setInt(1, studentId);
            preparedStatement.setString(2, dataAleasa);

            rs = preparedStatement.executeQuery();

            // Scriere antet în fișierul CSV
            writer.write("NumeDisciplina,TipActivitate,OraInceput\n");

            // Iterare prin rezultate și scriere în fișier
            while (rs.next()) {
                String dis = rs.getString("nume_disciplina");
                String act = rs.getString("tip_activitate");
                String ora = rs.getString("ora_inceput");

                writer.write(String.format("%s,%s,%s\n", dis, act, ora));
            }

            System.out.println("Datele au fost exportate în: " + file);

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
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
    private void descarcaActivitati(ActionEvent event) {
        System.out.println("Buton apăsat");

        LocalDate dataAleasa = data_activitati.getValue();
        if (dataAleasa != null) {
            String dataStr = dataAleasa.toString();

            String fileName = "export.csv";

            FileChooser fileChooser = new FileChooser();
            fileChooser.setTitle("Save File");
            fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("CSV Files", "*.csv"));
            File file = fileChooser.showSaveDialog(null);
            if (file != null) {
                downloadData(id_profesor, dataStr, file.getAbsolutePath());
            }

            downloadData(id_profesor, dataStr, fileName);
        } else {
            System.out.println("Nu a fost selectată nicio dată.");
        }
    }

    @FXML
    private TextField nota_curs_modificata;
    @FXML
    private TextField nota_seminar_modificata;
    @FXML
    private TextField nota_laborator_modificata;

    @FXML
    private TextField nume_disciplina;
    @FXML
    private ComboBox<String> tip_activitate;

    @FXML
    private TableView<Student> tabel_studenti;

    @FXML
    private TableColumn<Student, String> id_student;

    @FXML
    private TableColumn<Student, String> nume_student;

    @FXML
    private TableColumn<Student, String> prenume_student;
    @FXML
    private TableColumn<Student, String> nota_curs_afisata;
    @FXML
    private TableColumn<Student, String> nota_seminar_afisata;
    @FXML
    private TableColumn<Student, String> nota_laborator_afisata;
    @FXML
    private TableColumn<Student, String> nota_finala;


    @FXML
    public void initializareTabelStudenti()
    {

        id_student.setCellValueFactory(new PropertyValueFactory<Student, String>("Id"));
        nume_student.setCellValueFactory(new PropertyValueFactory<Student, String>("Nume"));
        prenume_student.setCellValueFactory(new PropertyValueFactory<Student, String>("Prenume"));
        nota_curs_afisata.setCellValueFactory(new PropertyValueFactory<Student, String>("Nota_curs"));
        nota_seminar_afisata.setCellValueFactory(new PropertyValueFactory<Student, String>("Nota_seminar"));
        nota_laborator_afisata.setCellValueFactory(new PropertyValueFactory<Student, String>("Nota_laborator"));
        nota_finala.setCellValueFactory(new PropertyValueFactory<Student, String>("Nota_finala"));

        tabel_studenti.getSelectionModel().selectedItemProperty().addListener((obs, oldSelection, newSelection) -> {
            if (newSelection != null) {
                nota_curs_modificata.setText(String.valueOf(newSelection.getNota_curs()));
                nota_seminar_modificata.setText(String.valueOf(newSelection.getNota_seminar()));
                nota_laborator_modificata.setText(String.valueOf(newSelection.getNota_laborator()));

                this.id_nota_student = Integer.valueOf(newSelection.getId());
            }
        });


    }

    public void loadStudenti(int profesorId, String numeDisciplina, String tipActivitate)
    {

        tabel_studenti.getItems().clear();
        initializareTabelStudenti();
        tabel_studenti.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        profesorId = id_profesor;
        numeDisciplina = nume_disciplina.getText();
        tipActivitate = tip_activitate.getValue();

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call vizualizare_studenti(?, ?, ?)");
            preparedStatement.setString(1, String.valueOf(profesorId));
            preparedStatement.setString(2, numeDisciplina);
            preparedStatement.setString(3, tipActivitate);
            rs = preparedStatement.executeQuery();


            while (rs.next())
            {
                Map<String, Object> row = new HashMap<>();
                int idAfisat = rs.getInt("ID Student");
                String numeAfisat =  rs.getString("Nume Student");
                String prenumeAfisat = rs.getString("Prenume Student");
                int cursAfisat = rs.getInt("Nota Curs");
                int seminarAfisat = rs.getInt("Nota Seminar");
                int laboratorAfisat = rs.getInt("Nota Laborator");
                int finalaAfisat = rs.getInt("Nota Finala");

                //System.out.println(numeAfisat + " " + finalaAfisat);

                tabel_studenti.getItems().add(new Student(idAfisat, numeAfisat, prenumeAfisat, cursAfisat, seminarAfisat, laboratorAfisat, finalaAfisat));

            }

        } catch (SQLException e) {

            System.out.println("Nu s-au putut afisa studentii");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Verifica daca ai introdus bine datele disciplinei");
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
    private void afiseazaStudenti(ActionEvent event)
    {
        System.out.println("buton de afisare studenti apasat");

        String numeDisciplina = nume_disciplina.getText();
        String tipActivitate = tip_activitate.getValue();

        if(!numeDisciplina.isEmpty() && !tipActivitate.isEmpty())
        {
            loadStudenti(id_profesor, numeDisciplina, tipActivitate);
        }
        else
        {
            System.out.println("Nu poti vedea studentii");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Nu ai introdus date in casute");
            alert.show();

        }

    }

    private void downloadCatalog(Integer profesorId, String file)
    {

        String numeDisciplina = nume_disciplina.getText();
        String tipActivitate = tip_activitate.getValue();

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try (FileWriter writer = new FileWriter(file)) {
            // Conectare la baza de date
            String url = "jdbc:mysql://localhost:3306/platforma_studii";
            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            // Pregătire procedură stocată
            preparedStatement = conection.prepareStatement("call vizualizare_studenti(?, ?, ?)");
            preparedStatement.setInt(1, profesorId);
            preparedStatement.setString(2, numeDisciplina);
            preparedStatement.setString(3, tipActivitate);

            rs = preparedStatement.executeQuery();

            // Scriere antet în fișierul CSV
            writer.write("id_student,Nume,Prenume, Nota Curs, Nota Seminar, Nota Laborator, Nota Finala\n");

            // Iterare prin rezultate și scriere în fișier
            while (rs.next()) {
                int idAfisat = rs.getInt("ID Student");
                String numeAfisat =  rs.getString("Nume Student");
                String prenumeAfisat = rs.getString("Prenume Student");
                int cursAfisat = rs.getInt("Nota Curs");
                int seminarAfisat = rs.getInt("Nota Seminar");
                int laboratorAfisat = rs.getInt("Nota Laborator");
                int finalaAfisat = rs.getInt("Nota Finala");

                writer.write(String.format("%s,%s,%s, %s, %s, %s, %s\n", idAfisat, numeAfisat, prenumeAfisat, cursAfisat, seminarAfisat, laboratorAfisat, finalaAfisat));
            }

            System.out.println("Datele au fost exportate în: " + file);

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
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
    private void descarcaCatalog(ActionEvent event)
    {
        System.out.println("Buton de descarcare apasat");

        String numeDisciplina = nume_disciplina.getText();
        String tipActivitate = tip_activitate.getValue();

        if(!numeDisciplina.isEmpty() && !tipActivitate.isEmpty())
        {
            String fileName = "export.csv";

            FileChooser fileChooser = new FileChooser();
            fileChooser.setTitle("Save File");
            fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("CSV Files", "*.csv"));
            File file = fileChooser.showSaveDialog(null);
            if (file != null)
            {
                downloadCatalog(id_profesor, file.getAbsolutePath());
            }

            downloadCatalog(id_profesor, fileName);
        } else {
            System.out.println("Nu au fost introduse date.");

            System.out.println("Nu poti descarca catalogul");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Eroare la descarcarea catalogului. Verifica daca ai introdus bine datele");
            alert.show();
        }
    }

    @FXML
    private void modificaNota(ActionEvent event)
    {
        System.out.println("buton modifica nota");

        String notaCurs = nota_curs_modificata.getText();
        String notaSeminar = nota_seminar_modificata.getText();
        String notaLaborator = nota_laborator_modificata.getText();

        int profesorID = id_profesor;
        int studentId = id_nota_student;

        String disciplina = nume_disciplina.getText();

        if(!notaCurs.isEmpty() && !notaSeminar.isEmpty() && !notaLaborator.isEmpty())
        {

            Connection conection = null;
            PreparedStatement preparedStatement = null;
            ResultSet rs = null;

            try
            {

                String url = "jdbc:mysql://localhost:3306/platforma_studii";

                conection = DriverManager.getConnection(url, "root", "Padurarul31+");

                preparedStatement = conection.prepareStatement("call actualizeaza_nota_student(?, ?, ?, ?, ?, ?)");
                preparedStatement.setString(1, String.valueOf(profesorID));
                preparedStatement.setString(2, String.valueOf(studentId));
                preparedStatement.setString(3, String.valueOf(disciplina));
                preparedStatement.setString(4, notaCurs);
                preparedStatement.setString(5, notaSeminar);
                preparedStatement.setString(6, notaLaborator);
                rs = preparedStatement.executeQuery();

                System.out.println("Operatie reusita");
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Succes");
                alert.setHeaderText(null); // Fără un antet
                alert.setContentText("Notele au fost modificate cu succes");
                alert.show();

                loadStudenti(profesorID, disciplina, tip_activitate.getValue());

            }
            catch (SQLException e)
            {

                System.out.println("Nu s-au putut modifica notele");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Eroare");
                alert.setHeaderText(null);
                alert.setContentText("Verifica datele introduse");
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
            System.out.println("Nu s-au putut modifica notele");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Verifica datele introduse");
            alert.show();
        }

    }

    @FXML
    private TextField nume_dis_ponderi;
    @FXML
    private TextField procent_curs;
    @FXML
    private TextField procent_seminar;
    @FXML
    private TextField procent_laborator;

    @FXML
    private void modificaPonderi(ActionEvent event)
    {
        System.out.println("butonul de modificare ponderi a fost apasat");

        String disciplina = nume_dis_ponderi.getText();
        String pondereCurs = procent_curs.getText();
        String pondereSeminar = procent_seminar.getText();
        String pondereLaborator = procent_laborator.getText();

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call modifica_ponderi_disciplina(?, ?, ?, ?, ?)");
            preparedStatement.setString(1, String.valueOf(id_profesor));
            preparedStatement.setString(2, disciplina);
            preparedStatement.setString(3, pondereCurs);
            preparedStatement.setString(4, pondereSeminar);
            preparedStatement.setString(5, pondereLaborator);
            rs = preparedStatement.executeQuery();

            System.out.println("Modificare reusita");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Succes");
            alert.setHeaderText(null); // Fără un antet
            alert.setContentText("Ponderile pentru stabilirea notei finale au fost modificate cu succes!");
            alert.show();

            loadStudenti(id_profesor, nume_disciplina.getText(), tip_activitate.getValue());

        }
        catch (SQLException e)
        {
            System.out.println("Nu s-au putut modifica ponderile");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Verifica daca ai introdus corect datele sau daca predai cursul la disciplina selectata. Doar profesorul de curs poate modifica ponderile notelor!");
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

    @FXML
    private void stabilireActivitate(ActionEvent event) throws IOException {
        System.out.println("stabilire activitate");
        FXMLLoader loader = new FXMLLoader(getClass().getResource("stabilireActivitate.fxml"));
        Stage stage = new Stage();
        stage.setScene(new Scene(loader.load()));

        StabilireActivitateController controller = loader.getController();
        controller.setId_profesor(id_profesor);

        stage.show();
    }

    @FXML
    private void programareExamen(ActionEvent event) throws IOException {
        System.out.println("stabilire activitate");
        FXMLLoader loader = new FXMLLoader(getClass().getResource("programareExamen.fxml"));
        Stage stage = new Stage();
        stage.setScene(new Scene(loader.load()));

        ProgramareExamenController controller = loader.getController();
        controller.setId_profesor(id_profesor);

        stage.show();
    }


}
