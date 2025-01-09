package org.example.cod_interfata;

import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
<<<<<<< Updated upstream
import javafx.scene.control.*;
import javafx.scene.control.cell.MapValueFactory;
import javafx.scene.control.cell.PropertyValueFactory;
=======
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.SortEvent;
import javafx.scene.control.TableView;
>>>>>>> Stashed changes

import java.net.URL;
import java.sql.*;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

public class ProfilController implements Initializable {

    private static int id_student;

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

<<<<<<< Updated upstream
    public void setUserInfo(Integer id,String  nume, String prenume, Integer anStudiu, String grupa, String email, String telefon, String telefonContact, String adresa, String cnp, String iban) {
=======
    public void setUserInfo(String nume, String prenume, Integer anStudiu, String grupa, String email, String telefon, String telefonContact, String adresa, String cnp, String iban) {
>>>>>>> Stashed changes

        nume_prenume.setText(nume + " " + prenume);
        an_studiu.setText("An studiu: " + anStudiu.toString());
        this.grupa.setText("Grupa: " + grupa);
        email_afisat.setText("email: " + email);
        this.telefon.setText("telefon: " + telefon);
        this.telefon_contact.setText("Nr. contract: " + telefonContact);
        this.adresa.setText("Adresa: " + adresa);
        this.cnp.setText("CNP: " + cnp);
        this.iban.setText("IBAN: " + iban);
<<<<<<< Updated upstream

        this.id_student = id;
=======
>>>>>>> Stashed changes
    }

    @FXML
    private DatePicker data_activitati;

<<<<<<< Updated upstream
    @FXML
    private Button butonCautaProgram;

    @FXML
    private Button buton_descarcareActivitati;

    @FXML
    private TableView<Map<String, Object>> tabel_orar;

    @FXML
    private TableColumn<Map<String, Object>, String> activitate_orar;

    @FXML
    private TableColumn<Map<String, Object>, String> ora_activitate_orar;

    @FXML
    private TableColumn<Map<String, Object>, String> disciplina_orar;

    private ObservableList<Map<String, Object>> activitati = FXCollections.observableArrayList();


    @FXML
    public void initialize()
    {
        disciplina_orar.setCellValueFactory(cellData ->
                new SimpleStringProperty((String) cellData.getValue().get("DISCIPLINA"))
        );
        activitate_orar.setCellValueFactory(cellData ->
                new SimpleStringProperty((String) cellData.getValue().get("ACTIVITATE"))
        );
        ora_activitate_orar.setCellValueFactory(cellData ->
                new SimpleStringProperty((String) cellData.getValue().get("ORA"))
        );
        tabel_orar.setItems(activitati);

    }

    public void loadActivitati(int studentId, String dataAleasa) {

        activitati.clear();

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


            while (rs.next()) {
                Map<String, Object> row = new HashMap<>();
                row.put("DISCIPLINA", rs.getString("NumeDisciplina"));
                row.put("ACTIVITATE", rs.getString("TipActivitate"));
                row.put("ORA", rs.getString("OraInceput") + " - " + rs.getString("OraSfarsit"));
                activitati.add(row);
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
    private void afiseazaOre(ActionEvent event) {
        System.out.println("buton apasat2");

        LocalDate dataAleasa = data_activitati.getValue();
        if (dataAleasa != null) {
            loadActivitati(id_student, dataAleasa.toString());
        } else {
            System.out.println("Nu a fost selectată nicio dată.");
        }

        loadActivitati(id_student, String.valueOf(data_activitati));
    }

=======
>>>>>>> Stashed changes
    public void setTabelgrupe(SortEvent<TableView> tableViewSortEvent) {
    }
}
