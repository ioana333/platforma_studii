package org.example.cod_interfata;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

import java.awt.event.MouseEvent;
import java.net.URL;
import java.util.ResourceBundle;

public class LogInController implements Initializable {

    @FXML
    private Button buton_login;

    @FXML
    private TextField email;

    @FXML
    private TextField password;

    @FXML
    public void initialize(URL url, ResourceBundle resourceBundle)
    {

        buton_login.setOnAction(new EventHandler<ActionEvent>()
        {
            @Override
            public void handle(ActionEvent event)
            {
                System.out.println("buton apasat");
                BDconection.logInUser(event, email.getText(), password.getText());
            }
        });


    }

}
