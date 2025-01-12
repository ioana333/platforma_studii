package org.example.cod_interfata;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Label;
import javafx.stage.Stage;

import java.io.IOException;
import java.sql.*;

public class BDconection {

    @FXML
    private static Label nume_prenume;

    public static void changeSceneStudent(ActionEvent event, String fxmlFile, Integer id_user, String nume, String prenume, Integer anStudiu, String grupa, String email, String telefon, String telefonContact, String adresa, String cnp, String iban, double w, double h) {

        Parent root = null;

        if(id_user != null)
        {
            try
            {
                FXMLLoader loader = new FXMLLoader(BDconection.class.getResource(fxmlFile));
                root = loader.load();
                ProfilController controller = loader.getController();

                controller.setUserInfo(id_user, nume, prenume, anStudiu, grupa, email, telefon, telefonContact, adresa, cnp, iban);
                controller.loadNote(id_user);
                controller.loadGrupeStudiu(id_user);
                controller.loadTabelActivitatiStudiu(id_user);

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

        stage.setScene(new Scene(root, w, h));

        stage.show();

    }

    public static void changeSceneProfesor(ActionEvent event, String fxmlFile, Integer id_user, String nume, String prenume, String departament, String ore, String email, String telefon, String telefonContact, String adresa, String cnp, String iban, double w, double h) {

        Parent root = null;

        if(id_user != null)
        {
            try
            {
                FXMLLoader loader = new FXMLLoader(BDconection.class.getResource(fxmlFile));
                root = loader.load();
                ProfilProfesorController controller = loader.getController();

                controller.setUserInfo(id_user, nume, prenume, departament, ore, email, telefon, telefonContact, adresa, cnp, iban);

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

        stage.setScene(new Scene(root, w, h));

        stage.show();

    }

    public static void changeScene(ActionEvent event, String fxmlFile, Integer id_user, String nume, String prenume, double w, double h) {

        Parent root = null;

        if(id_user != null)
        {
            try
            {
                FXMLLoader loader = new FXMLLoader(BDconection.class.getResource(fxmlFile));
                root = loader.load();
                ProfilController controller = loader.getController();

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

        stage.setScene(new Scene(root, w, h));

        stage.show();

    }

    public static void changeSceneAdmin(ActionEvent event, String fxmlFile, Integer id, String nume,String prenume,String email,String telefon,String nrContract,String adresa,String cnp,String iban,double w,double h)
    {
        Parent root = null;

        if(id != null)
        {
            try
            {
                FXMLLoader loader = new FXMLLoader(BDconection.class.getResource(fxmlFile));
                root = loader.load();
                AdminController controller = loader.getController();

                controller.setUserInfo(id, nume, prenume, email, telefon, nrContract, adresa, cnp, iban);

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

        stage.setScene(new Scene(root, w, h));

        stage.show();
    }

    public static void changeSceneSuperAdmin(ActionEvent event, String fxmlFile, Integer id, String nume,String prenume,String email,String telefon,String nrContract,String adresa,String cnp,String iban,double w,double h)
    {
        Parent root = null;

        if(id != null)
        {
            try
            {
                FXMLLoader loader = new FXMLLoader(BDconection.class.getResource(fxmlFile));
                root = loader.load();
                SuperAdminController controller = loader.getController();

                controller.setUserInfo(id, nume, prenume, email, telefon, nrContract, adresa, cnp, iban);

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

        stage.setScene(new Scene(root, w, h));

        stage.show();
    }


    public static void logInUser(ActionEvent event, String email, String password)
    {
        Connection conection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rezultat = null;
        ResultSet date_student = null;

        try
        {
            String url = "jdbc:mysql://localhost:3306/platforma_studii";

            conection = DriverManager.getConnection(url, "root", "Padurarul31+");

            preparedStatement = conection.prepareStatement("select * from utilizatori where email = ?");
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
                    String rol = rezultat.getString("rol");
                    String telefon = rezultat.getString("telefon");
                    String telefonContact = rezultat.getString("nr_contract");
                    String adresa = rezultat.getString("adresa_id");
                    String cnp = rezultat.getString("CNP");
                    String iban = rezultat.getString("iban");

                    if(password.equals(parola))
                    {
                        double width = 750;
                        double height = 450;

                        if (rol.equals("student"))
                        {
                            preparedStatement = conection.prepareStatement("select an_studiu, grupa, nr_ore from studenti where student_id = ?");

                            preparedStatement.setInt(1, id);
                            date_student = preparedStatement.executeQuery();

                            Integer anStudiu = 0;
                            String grupa = null ;
                            Integer nr_ore = 0;

                            while(date_student.next())
                            {
                                anStudiu = date_student.getInt("an_studiu");
                                grupa = date_student.getString("grupa");
                                nr_ore = date_student.getInt("nr_ore");
                            }

                            changeSceneStudent(event, "profil.fxml", id, nume, prenume, anStudiu, grupa, email, telefon, telefonContact, adresa, cnp, iban, width, height);
                        }
                        else if(rol.equals("profesor"))
                        {
                            preparedStatement = conection.prepareStatement("select departament, ore_min, ore_max from profesori where profesor_id = ?");

                            preparedStatement.setInt(1, id);
                            date_student = preparedStatement.executeQuery();

                            String departament = null;
                            Integer oreMin = 0;
                            Integer oreMax = 0;

                            while(date_student.next())
                            {
                                departament = date_student.getString("departament");
                                oreMin = date_student.getInt("ore_min");
                                oreMax = date_student.getInt("ore_max");
                            }

                            String ore = String.valueOf("Ore minime: "+oreMin + " \t\t Ore maxime: "+ oreMax);

                            changeSceneProfesor(event, "profilProfesor.fxml", id, nume, prenume, departament, ore, email, telefon, telefonContact, adresa, cnp, iban, width, height);
                        }
                        else if(rol.equals("administrator"))
                        {
                            changeSceneAdmin(event, "admin.fxml", id, nume, prenume, email, telefon, telefonContact, adresa, cnp, iban, width, height);
                        }
                        else if(rol.equals("super-administrator"))
                        {
                            changeSceneSuperAdmin(event, "superAdmin.fxml", id, nume, prenume, email, telefon, telefonContact, adresa, cnp, iban, width, height);
                        }


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
            String email = "ioana333@gmail.com";
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
