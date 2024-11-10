package com.example.servlets;

import com.example.dao.AdminDAO;
import com.example.models.Admin;
import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L; 

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminDAO adminDAO = new AdminDAO();
        Admin admin = adminDAO.getAdmin(username, password);

        if (admin != null) {
            request.getSession().setAttribute("admin", admin);
            response.sendRedirect("admin_dashboard.jsp");
        } else {
            response.sendRedirect("admin_login.jsp?error=1");
        }
    }
}
