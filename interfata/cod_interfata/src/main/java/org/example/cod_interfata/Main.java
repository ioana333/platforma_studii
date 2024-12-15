package org.example.cod_interfata;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {
    @Override
    public void start(Stage stage) throws Exception {

        //BDconection.verificareConexiune();

        Parent root = FXMLLoader.load(getClass().getResource("log-in.fxml"));
        stage.setTitle("Logheaza-te!!");
        stage.setScene(new Scene(root));
        stage.show();

    }

    public static void main(String[] args) {
        launch();
    }
}