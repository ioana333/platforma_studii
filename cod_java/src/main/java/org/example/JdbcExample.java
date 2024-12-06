package org.example;

import java.sql.*;

public class JdbcExample {
    public static void main(String[] args) {
        // Informațiile de conectare
        String url = "jdbc:mysql://localhost:3306/PhoneBook?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
        String user = "root";
        String password = "Padurarul31+";

        Connection connection = null;

        try {
            // Încarcă driver-ul MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Conectează-te la baza de date
            connection = DriverManager.getConnection(url, user, password);
            System.out.println("Conexiune reușită la baza de date!");

            // Creează un Statement și execută o interogare
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM persoana";
            ResultSet resultSet = statement.executeQuery(query);

            // Afișează rezultatele interogării
            while (resultSet.next()) {
                int id = resultSet.getInt("UID");
                String firstName = resultSet.getString("FirstName");
                String lastName = resultSet.getString("LastName");
                String homePhone = resultSet.getString("HomePhone");
                String mobilePhone = resultSet.getString("MobilePhone");
                String email = resultSet.getString("EmailAddress");

                System.out.println("ID: " + id + ", Nume: " + firstName + " " + lastName +
                        ", HomePhone: " + homePhone + ", MobilePhone: " + mobilePhone +
                        ", Email: " + email);
            }

            // Închide conexiunea
            resultSet.close();
            statement.close();
            connection.close();
        } catch (ClassNotFoundException e) {
            System.out.println("Eroare la încărcarea driver-ului JDBC.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Eroare la conectarea la baza de date.");
            e.printStackTrace();
        }
    }
}
