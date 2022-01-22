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
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

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
        } else {
            response.sendRedirect(request.getContextPath() + "/");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (request.getParameter("op").equals("logclick")) {
            String generatedPassword = null;
            try {
                // Create MessageDigest instance for MD5
                MessageDigest md = MessageDigest.getInstance("MD5");

                // Add password bytes to digest
                md.update(request.getParameter("password").getBytes());

                // Get the hash's bytes
                byte[] bytes = md.digest();

                // This bytes[] has bytes in decimal format. Convert it to hexadecimal format
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < bytes.length; i++) {
                    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
                }

                // Get complete hashed password in hex format
                generatedPassword = sb.toString();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            User user = us.findByEmail_Password(request.getParameter("email"), generatedPassword);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();

            if (user != null) {
                session.setAttribute("logged", "yes");
                session.setAttribute("user_id", user.getId());
                session.setAttribute("user_name", user.getNom());
//                session.setAttribute("type", user.getType());

                out.println(1);
//            Gson gson = new Gson();
//            response.getWriter().write(gson.toJson(user));
            } else {
                out.println(0);
            }
        } else if (request.getParameter("op").equals("logout")) {
            session.removeAttribute("logged");
            session.removeAttribute("user_id");
            session.removeAttribute("user_name");

            response.sendRedirect(request.getContextPath() + "/login");
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
