package com.tracker.java;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

public class UserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("logged") != null) {
            if (request.getParameter("op") == null) {
                request.getRequestDispatcher("/views/users.jsp").forward(request, response);
            }
            else {
                response.sendRedirect(request.getContextPath() + "/login");
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
