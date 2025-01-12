package org.example.cod_interfata;

import javafx.application.Platform;
import javafx.beans.InvalidationListener;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.geometry.Orientation;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;

import java.sql.*;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class MesajeController
{
    private int id_student;
    private String grupStudiu;

    @FXML
    private TableView<Mesaj> tabel_mesaje;

    @FXML
    private TableColumn<Mesaj, String> mesaje_afisate;

    @FXML
    private TextField camp_mesaj;

    @FXML
    private Button trimite_mesaj;

    public void loadMesages(int studentId, String disciplina)
    {
        tabel_mesaje.getItems().clear();
        tabel_mesaje.getItems().addListener((InvalidationListener) change -> {
            Platform.runLater(() -> scrollToBottom());
        });

        mesaje_afisate.setCellValueFactory(new PropertyValueFactory<Mesaj, String>("Continut"));
        tabel_mesaje.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);


        this.id_student = studentId;
        this.grupStudiu = disciplina;

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call vizualizare_mesaje_student_grup_studiu(?, ?)");
            preparedStatement.setString(1, String.valueOf(studentId));
            preparedStatement.setString(2, disciplina);
            rs = preparedStatement.executeQuery();


            while (rs.next())
            {
                Map<String, Object> row = new HashMap<>();
                String student = rs.getString("student_nume_complet");
                String continut =  rs.getString("continut");
                Date data = rs.getDate("data_trimitere");
                Time ora  = rs.getTime("ora_trimitere");

                String afisare = String.format(student + "\n\t" + continut + "\n\t\t\t\t\t\t " + ora + "  " + data);

                System.out.println(afisare);

                tabel_mesaje.getItems().add(new Mesaj(afisare));
            }

        }
        catch (SQLException e)
        {
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

    private void scrollToBottom() {
        tabel_mesaje.lookupAll(".scroll-bar").stream()
                .filter(node -> node instanceof ScrollBar)
                .map(node -> (ScrollBar) node)
                .filter(scrollBar -> scrollBar.getOrientation() == Orientation.VERTICAL)
                .forEach(scrollBar -> scrollBar.setValue(scrollBar.getMax()));
    }

    @FXML
    private void trimiteMesaj(ActionEvent event)
    {
        System.out.println("ai trimis mesaj");

        String mesajDeTrimis = camp_mesaj.getText();

        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try
        {

            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("call adauga_mesaj_grup_studiu(?, ?, ?)");
            preparedStatement.setString(1, String.valueOf(id_student));
            preparedStatement.setString(2, grupStudiu);
            preparedStatement.setString(3, mesajDeTrimis);
            rs = preparedStatement.executeQuery();

            loadMesages(id_student, grupStudiu);

        }
        catch (SQLException e)
        {
            e.printStackTrace();

            System.out.println("mesaj netrimis");
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Eroare");
            alert.setHeaderText(null);
            alert.setContentText("Mesajul nu a putut fi trimis");
            alert.show();
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
