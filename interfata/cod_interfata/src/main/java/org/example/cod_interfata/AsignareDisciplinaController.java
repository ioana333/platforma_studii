package org.example.cod_interfata;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;

import java.sql.*;

public class AsignareDisciplinaController
{

    private String profId;

    public void setProfId(String profId) {
        this.profId = profId;
    }

    public String getProfId() {
        return profId;
    }

    @FXML
    private TextField nume_disciplina;
    @FXML
    private ComboBox tip_activitate;
    @FXML
    private TextField durata;
    @FXML
    private TextField numar_participanti;
    @FXML
    private ComboBox frecventa;


    @FXML
    private void asignareActivitate(ActionEvent event)
    {
        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call inserare_activitate_discipline(?, ?, ?, ?, ?, ?)");
            preparedStatement.setString(1, nume_disciplina.getText());
            preparedStatement.setString(2, profId);
            preparedStatement.setString(3, tip_activitate.getValue().toString());
            preparedStatement.setString(4, durata.getText());
            preparedStatement.setString(5, numar_participanti.getText());
            preparedStatement.setString(6, frecventa.getValue().toString());
            rs = preparedStatement.executeQuery();

            System.out.println("Asignare reușită");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Succes");
            alert.setHeaderText(null); // Fără un antet
            alert.setContentText("Operatia de asignare a unui profesor la o activitate de predare a fost finalizata cu succes!");
            alert.show();

        }
        catch (SQLException e)
        {
            System.out.println("Nu s-a asignat");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Nu s-a putut efectua operatia de asignare! Verifica daca ai completat toate campurile corect!");
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
