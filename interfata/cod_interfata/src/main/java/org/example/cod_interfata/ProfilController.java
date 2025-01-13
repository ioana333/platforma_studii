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

public class ProfilController implements Initializable {

    private static int id_student;
    @FXML
    private TextArea activitate_bonus;

    @FXML
    private Button buton_logout;

    @FXML
    private Label nume_prenume;
    @FXML
    private Label an_studiu;
    @FXML
    private Label grupa;
    @FXML
    private Label email_afisat;
    @FXML
    private Label telefon;
    @FXML
    private Label telefon_contact;
    @FXML
    private Label adresa;
    @FXML
    private Label cnp;
    @FXML
    private Label iban;


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

        buton_logout.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent actionEvent) {

                BDconection.changeScene(actionEvent, "log-in.fxml", null, null, null, 685, 400);

            }
        });

    }

    public void setUserInfo(Integer id,String  nume, String prenume, Integer anStudiu, String grupa, String email, String telefon, String telefonContact, String adresa, String cnp, String iban) {

        nume_prenume.setText(nume + " " + prenume);
        an_studiu.setText("An studiu: " + anStudiu.toString());
        this.grupa.setText("Grupa: " + grupa);
        email_afisat.setText("email: " + email);
        this.telefon.setText("telefon: " + telefon);
        this.telefon_contact.setText("Nr. contract: " + telefonContact);
        this.adresa.setText("Adresa: " + adresa);
        this.cnp.setText("CNP: " + cnp);
        this.iban.setText("IBAN: " + iban);

        this.id_student = id;
        loadBonus(id);
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

            preparedStatement = conection.prepareStatement("call vizualizare_activitati_student(?, ?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            preparedStatement.setString(2, String.valueOf(data_activitati.getValue()));
            rs = preparedStatement.executeQuery();


            while (rs.next())
            {
                Map<String, Object> row = new HashMap<>();
                String dis = rs.getString("NumeDisciplina");
                String act =  rs.getString("TipActivitate");
                String ora = rs.getString("OraInceput");

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
            loadActivitati(id_student, dataAleasa.toString());
        }
        else
        {
            System.out.println("Nu a fost selectată nicio dată.");
        }

        loadActivitati(id_student, String.valueOf(data_activitati));
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
            preparedStatement = conection.prepareStatement("call vizualizare_activitati_student(?, ?)");
            preparedStatement.setInt(1, studentId);
            preparedStatement.setString(2, dataAleasa);

            rs = preparedStatement.executeQuery();

            // Scriere antet în fișierul CSV
            writer.write("NumeDisciplina,TipActivitate,OraInceput\n");

            // Iterare prin rezultate și scriere în fișier
            while (rs.next()) {
                String dis = rs.getString("NumeDisciplina");
                String act = rs.getString("TipActivitate");
                String ora = rs.getString("OraInceput");

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
                downloadData(id_student, dataStr, file.getAbsolutePath());
            }

            downloadData(id_student, dataStr, fileName);
        } else {
            System.out.println("Nu a fost selectată nicio dată.");
        }
    }

    public void setTabelgrupe(SortEvent<TableView> tableViewSortEvent) {
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
    private TableView note;

    @FXML
    private TableColumn<Note, String> nume_disciplina_nota;
    @FXML
    private TableColumn<Note, String> nota_curs;
    @FXML
    private TableColumn<Note, String> nota_seminar;
    @FXML
    private TableColumn<Note, String> nota_laborator;
    @FXML
    private TableColumn<Note, String> nota_finala;

    public void initialize_tabelNote()
    {

        nume_disciplina_nota.setCellValueFactory(new PropertyValueFactory<Note, String>("Disciplina"));
        nota_curs.setCellValueFactory(new PropertyValueFactory<Note, String>("notaCurs"));
        nota_seminar.setCellValueFactory(new PropertyValueFactory<Note, String>("notaSeminar"));
        nota_laborator.setCellValueFactory(new PropertyValueFactory<Note, String>("notaLaborator"));
        nota_finala.setCellValueFactory(new PropertyValueFactory<Note, String>("notaFinala"));

    }

    public void loadNote(Integer studentId)
    {
        note.getItems().clear();
        initialize_tabelNote();
        note.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call afiseaza_catalog_student(?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            rs = preparedStatement.executeQuery();


            while (rs.next())
            {
                Map<String, Object> row = new HashMap<>();
                String dis = rs.getString("Disciplina");

                Integer notaCurs =  rs.getInt("Nota_Curs");
                Integer notaSeminar = rs.getInt("Nota_Seminar");
                Integer notaLaborator = rs.getInt("Nota_Laborator");
                Integer notaFinala = rs.getInt("Nota_Finala");

                //System.out.println(dis + " " + notaLaborator + " " + notaFinala);

                note.getItems().add(new Note(dis, notaCurs.toString(), notaSeminar.toString(), notaLaborator.toString(), notaFinala.toString()));

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


    private void inscriereCursFunctie(Integer studentId, String curs)
    {
        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call inscriere_student_la_disciplina(?, ?)");
            preparedStatement.setString(1, String.valueOf(id_student));
            preparedStatement.setString(2, curs);
            rs = preparedStatement.executeQuery();

            loadNote(id_student);

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

    @FXML
    private void inscriereCurs(ActionEvent event)
    {
        String curs = cauta_curs_nume.getText();
        System.out.println("AFISARE:" + curs + id_student);

        if (!curs.isEmpty())
        {
            inscriereCursFunctie(id_student, curs);

            System.out.println("Inscriere reușită");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Succes");
            alert.setHeaderText(null); // Fără un antet
            alert.setContentText("Inscrierea a fost realizată cu succes!");
            alert.show();

        }
        else
        {
            System.out.println("Nu a fost cautat niciun curs");
        }


    }

    @FXML
    public TextField cauta_grupa;


    @FXML
    private TableView<GrupaStudiu> tabel_grupe_de_studiu;

    @FXML
    private TableColumn<GrupaStudiu, String> nume_grupa;

    @FXML
    private TableColumn<GrupaStudiu, String> nume_disciplina_grupa_studiu;


    @FXML
    public void initialize_tabelGrupeStudiu()
    {

        nume_grupa.setCellValueFactory(new PropertyValueFactory<GrupaStudiu, String>("GrupaStudiu"));
        nume_disciplina_grupa_studiu.setCellValueFactory(new PropertyValueFactory<GrupaStudiu, String>("Disciplina"));

    }

    public void loadGrupeStudiu(int studentId) {

        tabel_grupe_de_studiu.getItems().clear();
        initialize_tabelGrupeStudiu();
        tabel_grupe_de_studiu.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call vizualizare_grupe_student(?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            rs = preparedStatement.executeQuery();


            while (rs.next())
            {
                Map<String, Object> row = new HashMap<>();
                String gr = rs.getString("nume_grupa");
                String dis =  rs.getString("nume_disciplina");

                //System.out.println(dis + " " + gr);

                tabel_grupe_de_studiu.getItems().add(new GrupaStudiu(dis, gr));

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
    private void inscriereGrupaStudiu(ActionEvent event)
    {
        System.out.println("buton inscriere grupa apasat");

        int studentId = id_student;
        String inscrie = cauta_grupa.getText();

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call inscriere_student_grup_studiu(?, ?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            preparedStatement.setString(2, inscrie);
            rs = preparedStatement.executeQuery();

            loadGrupeStudiu(studentId);

            System.out.println("Inscriere reușită");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Succes");
            alert.setHeaderText(null); // Fără un antet
            alert.setContentText("Inscrierea a fost realizată cu succes!");
            alert.show();


        }
        catch (SQLException e)
        {
            e.printStackTrace();

            System.out.println("Inscrierea nu a reusit");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setContentText("! Inscrierea nu a reusit !\nverifica daca ai introdus corect numele disciplinei sau daca esti inscris la disciplina respectiva ca sa poti face parte din grupa de studiu");
            alert.show();

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
    private void veziMembriiGrupaStudiu(ActionEvent event) throws IOException {
        System.out.println("buton vezi membrii apasat");

        int studentId = this.id_student;
        String cauta = cauta_grupa.getText();
        System.out.println("DISCIPLINA: "+cauta);

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call vizualizare_membri_grupa(?, ?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            preparedStatement.setString(2, cauta);
            rs = preparedStatement.executeQuery();

            // Deschidem fereastra cu tabelul
            FXMLLoader loader = new FXMLLoader(getClass().getResource("vizualizareMembrii.fxml"));
            Stage stage = new Stage();
            stage.setScene(new Scene(loader.load()));

            MembriiGrupaController controller = loader.getController();
            controller.loadMembrii(studentId, cauta);

            stage.show();

        }
        catch (SQLException e)
        {
            e.printStackTrace();
            System.out.println("Nu poti vedea membrii");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Nu poti vizualiza membrii acestei grupe pentru ca nu faci parte din ea");
            alert.show();
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
    private void iesiGrup(ActionEvent event)
    {
        String iesi = cauta_grupa.getText();
        int studentId = id_student;

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call parasire_student_grup_studiu(?, ?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            preparedStatement.setString(2, iesi);
            rs = preparedStatement.executeQuery();

            System.out.println("Ai parasit grupa de studiu");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Succes");
            alert.setHeaderText(null); // Fără un antet
            alert.setContentText("Ai iesit din grupa de studiu aleasa cu succes");
            alert.show();

            loadGrupeStudiu(studentId);

        }
        catch (SQLException e)
        {
            e.printStackTrace();
            System.out.println("Nu poti iesi din grupa de studiu");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText("Operatie esuata");
            alert.setContentText("Nu ai reusit sa iesi din grupa de studiu aleasa, probabil nu esti inscris");
            alert.show();
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
    private void deschideChat(ActionEvent event) throws IOException {
        System.out.println("butonul de afisare mesaje");

        // Deschidem fereastra cu tabelul
        FXMLLoader loader = new FXMLLoader(getClass().getResource("mesaje.fxml"));
        Stage stage = new Stage();
        stage.setScene(new Scene(loader.load()));

        MesajeController controller = loader.getController();
        controller.loadMesages(id_student, cauta_grupa.getText());

        stage.show();
    }

    public void loadBonus(int studentId)
    {
        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call sugereaza_activitate_grup(?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            rs = preparedStatement.executeQuery();

            String sugestieText="bonus";

            while (rs.next())
            {

                sugestieText = rs.getString("sugestie");

            }

            activitate_bonus.setText(sugestieText);

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

    @FXML
    private TextField inscriere_activitate_grup;

    @FXML
    private TableView<ActivitateStudiu> tabel_activitati_grup;

    @FXML
    private TableColumn<ActivitateStudiu, String> activitate_grup;

    @FXML
    private TableColumn<ActivitateStudiu, String> descriere_grup;

    @FXML
    private TableColumn<ActivitateStudiu, String> data_grup;
    @FXML
    private TableColumn<ActivitateStudiu, String> ora_grup;


    @FXML
    public void initializareTabelActivitatiStudiu()
    {

        activitate_grup.setCellValueFactory(new PropertyValueFactory<ActivitateStudiu, String>("Grupa"));
        descriere_grup.setCellValueFactory(new PropertyValueFactory<ActivitateStudiu, String>("Descrierea"));
        data_grup.setCellValueFactory(new PropertyValueFactory<ActivitateStudiu, String>("Data"));
        ora_grup.setCellValueFactory(new PropertyValueFactory<ActivitateStudiu, String>("Ora"));

        tabel_activitati_grup.getSelectionModel().selectedItemProperty().addListener((obs, oldSelection, newSelection) -> {
            if (newSelection != null)
            {
                inscriere_activitate_grup.setText(String.valueOf(newSelection.getDescrierea()));

             }
        });

    }

    public void loadTabelActivitatiStudiu(int studentId) {

        tabel_activitati_grup.getItems().clear();
        initializareTabelActivitatiStudiu();
        tabel_activitati_grup.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call afiseaza_activitati_studiu(?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            rs = preparedStatement.executeQuery();


            while (rs.next())
            {
                Map<String, Object> row = new HashMap<>();
                String numeGrupa = rs.getString("nume_grupa");
                String descriere =  rs.getString("descriere");
                String dataActivitate = rs.getString("data_activitate");
                String oraActivitate = rs.getString("ora");

                System.out.println(numeGrupa + " " + oraActivitate);

                tabel_activitati_grup.getItems().add(new ActivitateStudiu(numeGrupa, descriere, dataActivitate, oraActivitate));

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
    private void confirmareInscriereActivitate(ActionEvent event)
    {

        System.out.println("buton inscriere activitate apasat");

        String activitateStudiu = inscriere_activitate_grup.getText();
        String studentId = String.valueOf(id_student);
        String descriere = inscriere_activitate_grup.getText();

        if(!activitateStudiu.isEmpty())
        {
            Connection conection = null;
            PreparedStatement preparedStatement = null;
            ResultSet rs = null;

            try
            {

                String url = "jdbc:mysql://localhost:3306/platforma_studii";

                conection = DriverManager.getConnection(url, "root", "Padurarul31+");

                preparedStatement = conection.prepareStatement("call inscriere_activitate_studiu(?, ?)");
                preparedStatement.setString(1, studentId);
                preparedStatement.setString(2, descriere);
                rs = preparedStatement.executeQuery();

                System.out.println("Inscriere reușită");
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Succes");
                alert.setHeaderText(null); // Fără un antet
                alert.setContentText("Inscrierea a fost realizată cu succes!");
                alert.show();

            }
            catch (SQLException e)
            {

                System.out.println("Inscrierea nu a reusit");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Eroare");
                alert.setHeaderText(null);
                alert.setContentText("Inscrierea nu a putut fi finalizata, verifica daca datele introduse sunt corecte!");
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


    }

    @FXML
    private void adaugaActivitate(ActionEvent event) throws IOException
    {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("adaugaActivitateStudiu.fxml"));
        Stage stage = new Stage();
        stage.setScene(new Scene(loader.load()));

        AdaugaActivitateStudiuController controller = loader.getController();
        controller.setId_student(id_student);

        stage.show();

    }


    @FXML
    private TableView<Mesaj> tabel_sugestii;

    @FXML
    private TableColumn<Mesaj, String> coloana_sugestii;

    @FXML
    public void initializareTabelSugestii()
    {

        coloana_sugestii.setCellValueFactory(new PropertyValueFactory<Mesaj, String>("Continut"));

    }

    public void loadSugestii(int studentId) {

        tabel_sugestii.getItems().clear();
        initializareTabelSugestii();
        tabel_sugestii.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call sugestii_de_participanti(?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            rs = preparedStatement.executeQuery();


            while (rs.next())
            {
                Map<String, Object> row = new HashMap<>();
                String grup = rs.getString("Nume Grup de Studiu");
                String numeSugestie =  rs.getString("Nume");
                String prenumeSugestie = rs.getString("Prenume");

                String mesaj = numeSugestie + " " + prenumeSugestie + " este membra in \n" + grup + "\n HAI SI TU!";

                tabel_sugestii.getItems().add(new Mesaj(mesaj));

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










}
