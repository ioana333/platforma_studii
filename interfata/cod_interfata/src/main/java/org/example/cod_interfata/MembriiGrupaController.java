package org.example.cod_interfata;

import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import java.sql.*;
import java.util.HashMap;
import java.util.Map;

public class MembriiGrupaController {


    @FXML
    private Label disciplina_grupa;

    @FXML
    private TableView<Membru> tabel_membrii;


    @FXML
    private TableColumn<Membru, String> nume_membru;

    @FXML
    private TableColumn<Membru, String> prenume_membru;


    @FXML
    public void initialize()
    {

        nume_membru.setCellValueFactory(new PropertyValueFactory<Membru, String>("Nume"));
        prenume_membru.setCellValueFactory(new PropertyValueFactory<Membru, String>("Prenume"));

    }

    public void loadMembrii(int studentId, String disciplina) {

        disciplina_grupa.setText("Membrii grupei de studiu la " + disciplina);

        tabel_membrii.getItems().clear();
        initialize();
        tabel_membrii.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call vizualizare_membri_grupa(?, ?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            preparedStatement.setString(2, disciplina);
            rs = preparedStatement.executeQuery();


            while (rs.next())
            {
                Map<String, Object> row = new HashMap<>();
                String nume = rs.getString("nume");
                String prenume =  rs.getString("prenume");

                tabel_membrii.getItems().add(new Membru(nume, prenume));

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
