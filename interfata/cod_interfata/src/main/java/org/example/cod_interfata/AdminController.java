package org.example.cod_interfata;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;

import java.net.URL;
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


    






}
