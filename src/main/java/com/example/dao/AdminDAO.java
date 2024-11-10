package com.example.dao;

import com.example.models.Admin;
import java.sql.*;

public class AdminDAO {
    private Connection connect() {
        // Connection details for the database (similar to StudentDAO)
        String url = "jdbc:mysql://localhost:3306/student_db";
        String user = "root";
        String password = "";
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    // Method to validate admin login credentials
    public Admin getAdmin(String username, String password) {
        String sql = "SELECT * FROM Admin WHERE username =? AND password = ?";
        Admin admin = null;
        try (Connection conn = connect();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                admin = new Admin(rs.getInt("id"), rs.getString("username"), rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return admin;
    }

}
