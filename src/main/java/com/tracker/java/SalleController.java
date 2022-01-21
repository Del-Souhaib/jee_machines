package com.tracker.java;

import beans.Machine;
import beans.Salle;
import com.google.gson.Gson;
import service.SalleService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Objects;

//@WebServlet(name = "salles")
//@WebServlet(name = "", value = "/")
public class SalleController extends HttpServlet {
    SalleService sv = new SalleService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("op") == null) {
            request.getRequestDispatcher("/views/salles.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();


        if (request.getParameter("op").equals("getdata")) {
            response.setContentType("application/json");
            List<Salle> salles = sv.findAll();
            Gson json = new Gson();
            response.getWriter().write(json.toJson(salles));
        } else if (request.getParameter("op").equals("create")) {
            boolean state = sv.create(new Salle(request.getParameter("code"), request.getParameter("type")));
            out.println(state);
        } else if (request.getParameter("op").equals("delete")) {
            boolean state = sv.delete(sv.findById(Integer.parseInt(request.getParameter("id"))));
            out.println(state);
        } else if (request.getParameter("op").equals("update")) {
            Salle salle = sv.findById(Integer.parseInt(request.getParameter("id")));
            salle.setCode(request.getParameter("code"));
            salle.setType(request.getParameter("type"));
            boolean state = sv.update(salle);
            out.println(state);
        } else if (request.getParameter("op").equals("getdatafiltred")) {
            response.setContentType("application/json");
            int id;
            String code = request.getParameter("code");
            String type = request.getParameter("type");
            Date date = new Date();

            if (!request.getParameter("id").equals("")) {
                id = Integer.parseInt(request.getParameter("id"));
            } else {
                id = 0;
            }
            List<Salle> salles;
            if (!request.getParameter("created_at").equals("")) {
                date = new Date(request.getParameter("created_at").replace("-", "/"));
                salles = sv.findFilitred(new Salle(id, code, type, date), true);
            } else {
                salles = sv.findFilitred(new Salle(id, code, type, date), false);
            }
            out.println(request.getParameter("created_at"));
            Gson json = new Gson();
            // response.getWriter().write(json.toJson(salles));
        }
    }
}
