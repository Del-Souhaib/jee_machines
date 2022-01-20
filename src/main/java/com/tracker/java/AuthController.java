package com.tracker.java;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import beans.User;

import com.google.gson.Gson;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author Lachgar
 */
//@WebServlet(name = "Login")
public class AuthController extends HttpServlet {
    UserService us = new UserService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        if (session.getAttribute("logged") == null) {
            if (request.getParameter("op") == null) {
//            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
                request.getRequestDispatcher("/views/auth/login.jsp").forward(request, response);
            }
        }
        else {
            response.sendRedirect(request.getContextPath() + "/");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        if (request.getParameter("op").equals("logclick")) {
            User user = us.findByEmail_Password(request.getParameter("email"), request.getParameter("password"));
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();

            if (user != null) {
                session.setAttribute("logged", "yes");
                session.setAttribute("user_id", user.getId());
                session.setAttribute("user_name", user.getNom());
                out.println(1);
//            Gson gson = new Gson();
//            response.getWriter().write(gson.toJson(user));
            } else {
                out.println(0);
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
