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
import java.util.List;

public class ProfileController extends HttpServlet {
    UserService us = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("op") == null) {
            request.getRequestDispatcher("/views/auth/profile.jsp").forward(request, response);

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

            if (is_change_password) {
                if (!password1.equals(password2)) {
                    out.println("password dosent match");
                    return;
                }
                else if(password1.isEmpty() || password2.isEmpty()){
                    out.println("Fill the passwords fields");
                    return;
                }
            }

          User user=us.findById(Integer.parseInt(session.getAttribute("user_id").toString()));
          if(user.getPassword().equals(request.getParameter("oldpassword"))){
              if (user != null) {
                  boolean etat=us.update2(new User(user.getId(),request.getParameter("name"),
                          request.getParameter("email"),password1),is_change_password);
                 if(etat==true){
                     out.println(1);
                 }
              }
              else {
                  out.println(0);
              }
          }
          else {
              out.println("password incorect");
              return;

          }
        }
    }
}
