package org.example.cod_interfata;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;

import java.net.URL;
import java.util.ResourceBundle;

public class ProfilController implements Initializable {

    @FXML
    private Button buton_logout;

    @FXML
    private Label nume_prenume;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

        buton_logout.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent actionEvent) {

                BDconection.changeScene(actionEvent, "log-in.fxml", null, null, null);

            }
        });

    }

    public void setUserInfo(String nume, String prenume)
    {
        nume_prenume.setText(nume + " " + prenume);
    }


}
