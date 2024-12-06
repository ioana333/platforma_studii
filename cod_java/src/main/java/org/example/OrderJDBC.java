package org.example;

import java.sql.*;
import java.io.*;

public class OrderJDBC {
    private String url = "jdbc:mysql://localhost:3306/Orders?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
    private String uid = "root";
    private String pw = "Padurarul31+";
    private BufferedReader reader;
    private Connection con;

    public static void main(String[] args) {
        OrderJDBC app = new OrderJDBC();
        app.init();
        app.run();
    }

    private void init() {
        // Înregistrează driverul MySQL și realizează conexiunea
        try {
            // Încarcă driverul MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("ClassNotFoundException: " + e);
        }

        // Inițializează conexiunea
        con = null;
        try {
            con = DriverManager.getConnection(url, uid, pw);
            System.out.println("Conexiune reușită la baza de date!");
        } catch (SQLException ex) {
            System.err.println("SQLException: " + ex);
            System.exit(1);
        }

        // Setează reader-ul pentru input
        reader = new BufferedReader(new InputStreamReader(System.in));
    }

    private void run() {
        String choice, sqlSt;
        choice = "1";
        while (!choice.equalsIgnoreCase("X")) {
            printMenu();
            choice = getLine();

            switch (choice) {
                case "1": // List all customers
                    sqlSt = "SELECT * FROM Customer;";
                    doQuery(sqlSt);
                    break;
                case "2": // List all orders for a customer
                    System.out.print("Enter customer id: ");
                    String cid = getLine();
                    sqlSt = "SELECT * FROM Orders WHERE customerId = '" + cid + "';";
                    doQuery(sqlSt);
                    break;
                case "3": // List all lineitems for an order
                    System.out.print("Enter order id: ");
                    String onum = getLine();
                    sqlSt = "SELECT * FROM OrderedProduct WHERE orderId = '" + onum + "';";
                    doQuery(sqlSt);
                    break;
                case "4": // List all employee
                    sqlSt = "SELECT * FROM Employee;";
                    doQuery(sqlSt);
                    break;
                case "5": // Update customer
                    updateCustomer();
                    break;
                case "A": // Add customer
                    addCustomer();
                    break;
                case "E": // Add employee
                    addEmployee();
                    break;
                case "D": // Delete customer
                    deleteCustomer();
                    break;
                case "DE": // Delete customer
                    deleteEmployee();
                    break;
                case "X":
                    System.out.println("Exiting!");
                    closeConnection();
                    return;
                default:
                    System.out.println("Invalid input!");
                    break;
            }
        }
    }

    private void addCustomer() {
        try {
            System.out.print("Enter customer id: ");
            String cid = getLine();
            System.out.print("Enter customer name: ");
            String cname = getLine();
            cname = convertSQLString(cname);

            String sqlSt = "INSERT INTO Customer (customerId, customerName) VALUES ('" + cid + "', '" + cname + "');";
            doUpdate(sqlSt);
        } catch (Exception e) {
            System.out.println("Failed to add customer: " + e);
        }
    }

    private void updateCustomer() {
        try {
            System.out.print("Enter customer id: ");
            String cid = getLine();
            System.out.print("Enter customer name: ");
            String cname = getLine();
            cname = convertSQLString(cname);

            String sqlSt = "UPDATE Customer SET CustomerName = '"+ cname + "'WHERE CustomerId= '" + cid + "';";
            doUpdate(sqlSt);
        } catch (Exception e) {
            System.out.println("Failed to add customer: " + e);
        }
    }

    private void addEmployee() {
        try {
            System.out.print("Enter employee id: ");
            String cid = getLine();
            System.out.print("Enter employee name: ");
            String cname = getLine();
            cname = convertSQLString(cname);
            System.out.print("Enter employee salary: ");
            String sal = getLine();

            String sqlSt = "INSERT INTO Employee (EmployeeId, EmployeeName, Salary) VALUES ('" + cid + "', '" + cname + "', '" + sal + "');";
            doUpdate(sqlSt);
        } catch (Exception e) {
            System.out.println("Failed to add employee: " + e);
        }
    }

    private void deleteCustomer() {
        System.out.print("Enter customer id to delete: ");
        String cid = getLine();
        String sqlSt = "DELETE FROM Customer WHERE customerId = '" + cid + "';";
        doUpdate(sqlSt);
    }

    private void deleteEmployee() {
        System.out.print("Enter employee id to delete: ");
        String cid = getLine();
        String sqlSt = "DELETE FROM Employee WHERE EmployeeId = '" + cid + "';";
        doUpdate(sqlSt);
    }

    private void doUpdate(String updateStr) {
        try (Statement stmt = con.createStatement()) {
            stmt.executeUpdate(updateStr);
            System.out.println("Operation successful!");
        } catch (SQLException e) {
            System.out.println("Operation failed: " + e);
        }
    }

    private void doQuery(String queryStr) {
        try (Statement stmt = con.createStatement();
             ResultSet rst = stmt.executeQuery(queryStr)) {
            ResultSetMetaData rsmd = rst.getMetaData();
            int colCount = rsmd.getColumnCount();

            // Print header
            for (int i = 1; i <= colCount; i++) {
                System.out.print(rsmd.getColumnName(i) + "\t");
            }
            System.out.println();

            // Print rows
            while (rst.next()) {
                for (int i = 1; i <= colCount; i++) {
                    System.out.print(rst.getString(i) + "\t");
                }
                System.out.println();
            }
        } catch (SQLException ex) {
            System.err.println("SQLException: " + ex);
        }
    }

    private String getLine() {
        try {
            return reader.readLine();
        } catch (IOException e) {
            System.out.println(e);
            System.exit(1);
            return null;
        }
    }

    private String convertSQLString(String st) {
        return st.replaceAll("'", "''");
    }

    private void printMenu() {
        System.out.println("\n\nSelect one of these options: ");
        System.out.println("  1 - List all customers");
        System.out.println("  2 - List all orders for a customer");
        System.out.println("  3 - List all lineitems for an order");
        System.out.println("  4 - List all employees");
        System.out.println("  5 - Update customer");
        System.out.println("  A - Add a customer");
        System.out.println("  E - Add a employee");
        System.out.println("  D - Delete a customer");
        System.out.println("  DE - Delete a employee");
        System.out.println("  X - Exit application");
        System.out.print("Your choice: ");
    }

    private void closeConnection() {
        try {
            if (con != null) {
                con.close();
                System.out.println("Connection closed.");
            }
        } catch (SQLException ex) {
            System.err.println("Exception during connection close: " + ex);
        }
    }
}
