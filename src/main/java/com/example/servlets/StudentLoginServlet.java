package com.example.servlets;

import com.example.dao.StudentDAO;
import com.example.models.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class StudentLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        StudentDAO studentDAO = new StudentDAO();
        Student student = studentDAO.getStudentByEmailAndPassword(email, password);

        if (student != null) {
            HttpSession session = request.getSession();
            session.setAttribute("student", student);
            System.out.println("Login successful for: " + student.getName());
            response.sendRedirect("student_dashboard.jsp");
        } else {
            System.out.println("Login failed. Invalid email or password.");
            response.sendRedirect("student_login.jsp?error=1");
        }
    }
}
