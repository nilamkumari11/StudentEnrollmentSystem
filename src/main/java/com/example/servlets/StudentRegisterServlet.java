package com.example.servlets;

import com.example.dao.StudentDAO;
import com.example.models.Student;
import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class StudentRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String enrollmentNumber = request.getParameter("enrollmentNumber");
        String password = request.getParameter("password");

        Student student = new Student(name, email, enrollmentNumber, password);
        StudentDAO studentDAO = new StudentDAO();
        studentDAO.addStudent(student);

        response.sendRedirect("student_login.jsp");
    }
}