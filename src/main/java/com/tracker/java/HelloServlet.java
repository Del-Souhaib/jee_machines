package com.tracker.java;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import service.MachineService;
import service.SalleService;
import service.UserService;

import java.io.*;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

//@WebServlet(name = "/", urlPatterns = {"/"})
public class HelloServlet extends HttpServlet {

    MachineService ms = new MachineService();
    SalleService ss = new SalleService();
    UserService us = new UserService();

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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        if (request.getParameter("op").equals("getdata")) {
            HashMap<String, Integer> map = new HashMap<>();
            map.put("nb_machine", ms.count());
            map.put("nb_salle", ss.count());
            map.put("nb_user", us.count());
            Gson json = new Gson();
            response.getWriter().write(json.toJson(map));
        } else if (request.getParameter("op").equals("chart1")) {
            Gson json = new Gson();
            response.getWriter().write(json.toJson(ss.machine_per_salle()));
        }


    }

    public void destroy() {
    }
}