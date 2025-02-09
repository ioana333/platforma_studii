package org.example.cod_interfata;


import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;

import java.sql.*;

public class StabilireActivitateController {

    private int id_profesor;

    public void setId_profesor(int id_profesor) {
        this.id_profesor = id_profesor;
    }

    @FXML
    private TextField nume_disciplina_activitate;
    @FXML
    private ComboBox tip_activitate;
    @FXML
    private ComboBox ziua;
    @FXML
    private TextField ora;


    @FXML
    private void insereaza(ActionEvent event)
    {
        System.out.println("buton inserare calenar");
        String numeDisciplina = nume_disciplina_activitate.getText();
        String tipActivitate = tip_activitate.getSelectionModel().getSelectedItem().toString();
        String ziActivitate = ziua.getSelectionModel().getSelectedItem().toString();
        String oraActivitate = ora.getText();

        if(!numeDisciplina.isEmpty() && !tipActivitate.isEmpty() && !ziActivitate.isEmpty() && !oraActivitate.isEmpty())
        {
            Connection conection = null;
            PreparedStatement preparedStatement = null;
            ResultSet rs = null;

            try
            {

                String url = "jdbc:mysql://localhost:3306/platforma_studii";

                conection = DriverManager.getConnection(url, "root", "Padurarul31+");

                preparedStatement = conection.prepareStatement("call programare_activitate(?, ?, ?, ?, ?)");
                preparedStatement.setString(1, String.valueOf(id_profesor));
                preparedStatement.setString(2, numeDisciplina);
                preparedStatement.setString(3, tipActivitate);
                preparedStatement.setString(4, ziActivitate);
                preparedStatement.setString(5, oraActivitate);
                rs = preparedStatement.executeQuery();

                System.out.println("Inserare reușită");
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Succes");
                alert.setHeaderText(null); // Fără un antet
                alert.setContentText("Activitatea ta a fost programata cu succes!");
                alert.show();

            }
            catch (SQLException e)
            {
                System.out.println("Nu s-a putut programa activitatea");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Eroare");
                alert.setHeaderText(null);
                alert.setContentText("Verifica daca ai introdus corect datele");
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
            System.out.println("Nu s-a putut insera");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Verifica daca au fost completate toate campurile");
            alert.show();
        }


    }



}
