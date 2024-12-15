package org.example.cod_interfata;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class LogIn {

    @FXML
    private Button buton_login;

    @FXML
    private TextField email;

    @FXML
    private TextField password;

    @FXML
    private void handleLogIn(ActionEvent event) {
        System.out.println("buton apasat");
        BDconection.logInUser(event, email.getText(), password.getText());
    }

}
