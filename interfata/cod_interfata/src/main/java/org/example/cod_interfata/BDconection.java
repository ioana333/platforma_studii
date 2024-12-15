package org.example.cod_interfata;

import com.sun.source.tree.TryTree;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Label;
import javafx.stage.Stage;

import javax.swing.*;
import java.io.IOException;
import java.sql.*;

public class BDconection {

    @FXML
    private static Label nume_prenume;

    public static void changeScene(ActionEvent event, String fxmlFile, Integer id_user, String nume, String prenume) {

        Parent root = null;

        if(id_user != null)
        {
            try
            {
                FXMLLoader loader = new FXMLLoader(BDconection.class.getResource(fxmlFile));
                root = loader.load();
                ProfilController controller = loader.getController();
                controller.setUserInfo(nume, prenume);

                //root = FXMLLoader.load(BDconection.class.getResource(fxmlFile));

            }
            catch(IOException e) {
                e.printStackTrace();
            }
        }
        else
        {
            try {
                FXMLLoader loader = new FXMLLoader(BDconection.class.getResource(fxmlFile));
                root = loader.load(); // Inițializează root
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        Stage stage = (Stage)((Node) event.getSource()).getScene().getWindow();
        stage.setTitle("Platforma Studii");
        stage.setScene(new Scene(root, 600, 400));

        stage.show();

    }


    public static void logInUser(ActionEvent event, String email, String password)
    {
        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rezultat = null;

        try
        {
            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");
            preparedStatement = conection.prepareStatement("select user_id, nume, prenume, parola from utilizatori where email = ?");

            preparedStatement.setString(1, email);
            rezultat = preparedStatement.executeQuery();

            if(!rezultat.isBeforeFirst())
            {
                System.out.println("Nu s-a putut efectua conectarea!");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setContentText("!!!email-ul nu a fost gasit in baza de date!!!");
                alert.show();
            }
            else
            {
                while(rezultat.next())
                {
                    Integer id = rezultat.getInt("user_id");
                    String nume = rezultat.getString("nume");
                    String prenume = rezultat.getString("prenume");
                    String parola = rezultat.getString("parola");

                    if(password.equals(parola))
                    {
                        changeScene(event, "profil.fxml", id, nume, prenume);
                    }
                    else
                    {
                        System.out.println("Parola gresita");
                        Alert alert = new Alert(Alert.AlertType.ERROR);
                        alert.setContentText("!!!parola gresita!!!");
                        alert.show();
                    }

                }
            }

        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            if(rezultat != null)
            {
                try
                {
                    rezultat.close();
                }
                catch (SQLException q)
                {
                    q.printStackTrace();
                }
            }
            if(preparedStatement != null)
            {
                try
                {
                    preparedStatement.close();
                }
                catch (SQLException q)
                {
                    q.printStackTrace();
                }
            }
            if(conection != null)
            {
                try
                {
                    conection.close();
                }
                catch (SQLException q)
                {
                    q.printStackTrace();
                }
            }

        }
    }

    public static void verificareConexiune()
    {
        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rezultat = null;

        try
        {
            String email = "maria.ionescu@example.com";
            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");
            preparedStatement = conection.prepareStatement("select user_id, nume, prenume, parola from utilizatori where email = ?");

            preparedStatement.setString(1, email);
            rezultat = preparedStatement.executeQuery();

            if(!rezultat.isBeforeFirst())
            {
                System.out.println("Nu s-a putut efectua conectarea!");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setContentText("!!!email-ul nu a fost gasit in baza de date!!!");
                alert.show();
            }
            else
            {
                while(rezultat.next())
                {
                    Integer id = rezultat.getInt("user_id");
                    String nume = rezultat.getString("nume");
                    String prenume = rezultat.getString("prenume");
                    String parola = rezultat.getString("parola");

                    System.out.println("id=" + id + "\nnume = " + nume + "\nprenume = " + prenume + "\nparola = " + parola);

                }
            }

        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            if(rezultat != null)
            {
                try
                {
                    rezultat.close();
                }
                catch (SQLException q)
                {
                    q.printStackTrace();
                }
            }
            if(preparedStatement != null)
            {
                try
                {
                    preparedStatement.close();
                }
                catch (SQLException q)
                {
                    q.printStackTrace();
                }
            }
            if(conection != null)
            {
                try
                {
                    conection.close();
                }
                catch (SQLException q)
                {
                    q.printStackTrace();
                }
            }

        }

    }

}
