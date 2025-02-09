package org.example.cod_interfata;


import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.TextField;

import java.sql.*;

public class AdaugaProfesorController {

    @FXML
    private TextField cnp;
    @FXML
    private TextField nume;
    @FXML
    private TextField prenume;
    @FXML
    private TextField adresa_id;
    @FXML
    private TextField telefon;
    @FXML
    private TextField email;
    @FXML
    private TextField iban;
    @FXML
    private TextField contract;
    @FXML
    private TextField parola;
    @FXML
    private TextField departament;
    @FXML
    private TextField ore_minime;
    @FXML
    private TextField ore_maxime;

    @FXML
    private void adaugaProfesor(ActionEvent event)
    {
        String cnpUtilizator = cnp.getText();
        String numeUtilizator = nume.getText();
        String prenumeUtilizator = prenume.getText();
        String adresaUtilizator = adresa_id.getText();
        String telefonUtilizator = telefon.getText();
        String emailUtilizator = email.getText();
        String ibanUtilizator = iban.getText();
        String contractUtilizator = contract.getText();
        String parolaUtilizator = parola.getText();
        String departamentProfesor = departament.getText();
        String oreMin = ore_minime.getText();
        String oreMax = ore_maxime.getText();

        if(!cnpUtilizator.isEmpty() && !numeUtilizator.isEmpty() && !prenumeUtilizator.isEmpty() && !departamentProfesor.isEmpty())
        {
            Connection conection = null;
            PreparedStatement preparedStatement = null;
            ResultSet rs = null;

            try
            {

                String url = "jdbc:mysql://localhost:3306/platforma_studii";

                conection = DriverManager.getConnection(url, "root", "Padurarul31+");

                preparedStatement = conection.prepareStatement("call inserare_profesor(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                preparedStatement.setString(1, cnpUtilizator);
                preparedStatement.setString(2, prenumeUtilizator);
                preparedStatement.setString(3, numeUtilizator);
                preparedStatement.setString(4, adresaUtilizator);
                preparedStatement.setString(5, telefonUtilizator);
                preparedStatement.setString(6, emailUtilizator);
                preparedStatement.setString(7, ibanUtilizator);
                preparedStatement.setString(8, contractUtilizator);
                preparedStatement.setString(9, parolaUtilizator);
                preparedStatement.setString(10, departamentProfesor);
                preparedStatement.setString(11, oreMin);
                preparedStatement.setString(12, oreMax);
                rs = preparedStatement.executeQuery();

                System.out.println("Inscriere reușită");
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Succes");
                alert.setHeaderText(null); // Fără un antet
                alert.setContentText("Utilizatorul a fost adaugat cu succes!");
                alert.show();

            }
            catch (SQLException e)
            {
                System.out.println("Nu poti vedea membrii");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Eroare");
                alert.setHeaderText(null);
                alert.setContentText("Nu s-a putut adauga utilizatorul! Verifica datele introduse!");
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
            System.out.println("Nu poti adauga prof");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Introdu date in toate campurile!");
            alert.show();
        }


    }



}
