package com.tracker.java;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

//@WebServlet(name = "/", urlPatterns = {"/"})
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        response.sendRedirect("/login");
        HttpSession session = request.getSession();
        if (session.getAttribute("logged") != null) {
            request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
//        request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
    }

    public void destroy() {
    }
}