package com.tracker.java;

import beans.Machine;
import beans.User;
import com.google.gson.Gson;
import service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

public class ProfileController extends HttpServlet {
    UserService us = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("logged") != null) {
            if (request.getParameter("op") == null) {
                request.getRequestDispatcher("/views/auth/profile.jsp").forward(request, response);
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        if (request.getParameter("op").equals("getdata")) {
            response.setContentType("application/json");
            User user = us.findById(Integer.parseInt(session.getAttribute("user_id").toString()));
            response.setContentType("application/json");
            Gson json = new Gson();
            response.getWriter().write(json.toJson(user));
        } else if (request.getParameter("op").equals("change")) {
            response.setContentType("text/plain");
            String password1 = request.getParameter("password1");
            String password2 = request.getParameter("password2");
            boolean is_change_password = Boolean.parseBoolean(request.getParameter("changrpassword"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");

            if (is_change_password) {
                if (!password1.equals(password2)) {
                    out.println("password dosent match");
                    return;
                } else if (password1.isEmpty() || password2.isEmpty()) {
                    out.println("Fill the passwords fields");
                    return;
                }
            }

            User user = us.findById(Integer.parseInt(session.getAttribute("user_id").toString()));
            if (!user.getEmail().equals(email) && us.findByEmail(email)) {
                out.println("this email already used");
            } else {
                String generatedPassword = null;
                String generatedNewPassword= null;
                try {
                    // Create MessageDigest instance for MD5
                    MessageDigest md = MessageDigest.getInstance("MD5");

                    md.update(request.getParameter("oldpassword").getBytes());
                    byte[] bytes = md.digest();
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < bytes.length; i++) {
                        sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
                    }
                    generatedPassword = sb.toString();

                    MessageDigest md2 = MessageDigest.getInstance("MD5");
                    md2.update(request.getParameter("password1").getBytes());
                    byte[] bytes2 = md2.digest();
                    StringBuilder sb2 = new StringBuilder();
                    for (int i = 0; i < bytes2.length; i++) {
                        sb2.append(Integer.toString((bytes2[i] & 0xff) + 0x100, 16).substring(1));
                    }
                    generatedNewPassword = sb2.toString();
                } catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                }
                if (user.getPassword().equals(generatedPassword)) {
                    if (user != null) {
                        boolean etat = us.update2(new User(user.getId(), name,
                                email, generatedNewPassword), is_change_password);
                        if (etat) {
                            session.setAttribute("user_name", name);
                            out.println(1);
                        }
                    } else {
                        out.println(0);
                    }
                } else {
                    out.println("password incorect");
                    return;
                }
            }

        }
    }
}
