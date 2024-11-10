package com.example.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    // Database URL, username, and password
    private static final String URL = "jdbc:mysql://localhost:3306/student_db"; // Update as needed
    private static final String USER = "root"; // Update as needed
    private static final String PASSWORD = ""; // Update as needed

    // Method to establish and return a database connection
    public static Connection getConnection() {
        Connection conn = null;
        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver"); // Use the latest MySQL driver
            // Establish the connection
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace(); // Handle driver class not found
        } catch (SQLException e) {
            e.printStackTrace(); // Handle SQL exceptions
        }
        return conn; // Return the connection object
    }
}
