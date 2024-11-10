package com.example.dao;

import com.example.models.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {


    public void addStudent(Student student) {
        String sql = "INSERT INTO Student (name, email, enrollment_number, password) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection(); // Use DBUtil to get the connection
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, student.getName());
            pstmt.setString(2, student.getEmail());
            pstmt.setString(3, student.getEnrollmentNumber());
            pstmt.setString(4, student.getPassword());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Student getStudentByEmailAndPassword(String email, String password) {
        String sql = "SELECT * FROM Student WHERE email = ? AND password = ?";
        try (Connection conn = DBUtil.getConnection(); // Use DBUtil to get the connection
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                return new Student(rs.getInt("id"), rs.getString("name"), rs.getString("email"),
                        rs.getString("enrollment_number"), rs.getString("password"), rs.getString("progress"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Student> getAllStudents() {
        String sql = "SELECT * FROM Student";
        List<Student> students = new ArrayList<>();
        try (Connection conn = DBUtil.getConnection(); // Use DBUtil to get the connection
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                students.add(new Student(rs.getInt("id"), rs.getString("name"),
                        rs.getString("email"), rs.getString("enrollment_number"),
                        rs.getString("password"), rs.getString("progress")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }

    public void updateStudent(Student student) {
        String sql = "UPDATE Student SET name = ?, email = ?, enrollment_number = ?, progress = ? WHERE id = ?";
        try (Connection conn = DBUtil.getConnection(); // Use DBUtil to get the connection
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, student.getName());
            pstmt.setString(2, student.getEmail());
            pstmt.setString(3, student.getEnrollmentNumber());
            pstmt.setString(4, student.getProgress());
            pstmt.setInt(5, student.getId());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteStudent(int id) {
        String sql = "DELETE FROM Student WHERE id = ?";
        try (Connection conn = DBUtil.getConnection(); // Use DBUtil to get the connection
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
