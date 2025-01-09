package org.example.cod_interfata;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.SortEvent;
import javafx.scene.control.TableView;

import java.net.URL;
import java.util.ResourceBundle;

public class ProfilController implements Initializable {

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

    public void setUserInfo(String nume, String prenume, Integer anStudiu, String grupa, String email, String telefon, String telefonContact, String adresa, String cnp, String iban) {

        nume_prenume.setText(nume + " " + prenume);
        an_studiu.setText("An studiu: " + anStudiu.toString());
        this.grupa.setText("Grupa: " + grupa);
        email_afisat.setText("email: " + email);
        this.telefon.setText("telefon: " + telefon);
        this.telefon_contact.setText("Nr. contract: " + telefonContact);
        this.adresa.setText("Adresa: " + adresa);
        this.cnp.setText("CNP: " + cnp);
        this.iban.setText("IBAN: " + iban);
    }


    public void setTabelgrupe(SortEvent<TableView> tableViewSortEvent) {
    }
}
