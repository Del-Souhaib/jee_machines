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
            Date created_at=new Date();

            if (!request.getParameter("id").equals("")) {
                id = Integer.parseInt(request.getParameter("id"));
            } else {
                id = 0;
            }

//            if (!Objects.equals(request.getParameter("created_at"), "")
//                    || request.getParameter("created_at") != null) {
//                created_at = new Date(request.getParameter("created_at").replace("-", "/"));
//
//            } else {
//                SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
//                String date_string = "0000-00-00";
//                try {
//                    created_at=formatter.parse(date_string);
//                } catch (ParseException e) {
//                    e.printStackTrace();
//                }
//            }
            String code = request.getParameter("code");
            String type = request.getParameter("type");
            List<Salle> salles = sv.findFilitred(new Salle(id, code, type));
//            List<Salle> salles = sv.findFilitred(new Salle(id, code, type,created_at));
            Gson json = new Gson();
            response.getWriter().write(json.toJson(salles));
//            }
        }
    }
}
