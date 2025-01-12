package org.example.cod_interfata;


import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;

import java.sql.*;

public class AdaugaActivitateStudiuController
{

    private int id_student;

    public void setId_student(int id_student) {
        this.id_student = id_student;
    }

    public int getId_student() {
        return id_student;
    }


    @FXML
    private TextField disciplina;
    @FXML
    private TextField nume;
    @FXML
    private DatePicker data;
    @FXML
    private TextField ora;
    @FXML
    private TextField durata;
    @FXML
    private TextField min_participanti;
    @FXML
    private TextField inscriere;
    @FXML
    private TextField nume_activitate_profesor;
    @FXML
    private TextField nume_profesor;
    @FXML
    private TextField prenume_profesor;

    @FXML
    private void adaugaActivitate(ActionEvent event)
    {
        System.out.println("adaugaActivitate");

        String numeDisciplina = disciplina.getText();
        String numeActivitate = nume.getText();
        String dataActivitate = data.getValue().toString();
        String oraActivitate = ora.getText();
        String durataActivitate = durata.getText();
        String minParticipantiActivitate = min_participanti.getText();
        String durataInscriereActivitate = inscriere.getText();

        int studentId = id_student;

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call AdaugaActivitate(?, ?, ?, ?, ?, ?, ?, ?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            preparedStatement.setString(2, numeDisciplina);
            preparedStatement.setString(3, numeActivitate);
            preparedStatement.setString(4, dataActivitate);
            preparedStatement.setString(5, oraActivitate);
            preparedStatement.setString(6, durataActivitate);
            preparedStatement.setString(7, minParticipantiActivitate);
            preparedStatement.setString(8, durataInscriereActivitate);

            rs = preparedStatement.executeQuery();

            System.out.println("Adaugare reușită");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Succes");
            alert.setHeaderText(null); // Fără un antet
            alert.setContentText("Activitatea a fost adaugata cu succes!");
            alert.show();

        }
        catch (SQLException e)
        {
            System.out.println("Nu s-a putut realiza adaugarea activitatii");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Verifica daca ai introdus corect datele!");
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

    @FXML
    private void adaugaProfesor(ActionEvent event)
    {
        System.out.println("adaugaProfesor");

        String numeActivitate = nume_activitate_profesor.getText();
        String numeProfesor = nume_profesor.getText();
        String prenumeProfesor = prenume_profesor.getText();

        if(!numeActivitate.isEmpty() && !numeProfesor.isEmpty() && !prenumeProfesor.isEmpty())
        {
            Connection conection = null;
            PreparedStatement preparedStatement = null;
            ResultSet rs = null;

            try
            {

                String url = "jdbc:mysql://localhost:3306/platforma_studii";

                conection = DriverManager.getConnection(url, "root", "Padurarul31+");

                preparedStatement = conection.prepareStatement("call adauga_profesor_la_activitate(?, ?, ?)");
                preparedStatement.setString(1, numeActivitate);
                preparedStatement.setString(2, numeProfesor);
                preparedStatement.setString(3, prenumeProfesor);
                rs = preparedStatement.executeQuery();

                System.out.println("Adaugare reusita");
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Succes");
                alert.setHeaderText(null); // Fără un antet
                alert.setContentText("Adaugarea profesorului a fost realizata cu succes");
                alert.show();

            }
            catch (SQLException e)
            {
                System.out.println("Nu s-a reusit adaugarea");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Eroare");
                alert.setHeaderText(null);
                alert.setContentText("Nu s-a putut adauga profesorul la activitatea selectata. Verifica daca ai introdus corect datele!");
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
            System.out.println("Nu ai completat toate datele");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Inainte de a insera un profesor la activitatea ta asigura-te ca ai completat toate campurile!");
            alert.show();
        }



    }




}
