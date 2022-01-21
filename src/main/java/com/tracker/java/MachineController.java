package com.tracker.java;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import beans.Machine;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Salle;
import com.google.gson.Gson;
import service.MachineService;
import service.SalleService;

/**
 * @author Lachgar
 */
@WebServlet(name = "helloServlet", value = "/machines")
public class MachineController extends HttpServlet {

    private MachineService ms = new MachineService();
    private SalleService ss = new SalleService();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("op") == null) {
            request.getRequestDispatcher("/views/machines.jsp").forward(request, response);
        } else if (request.getParameter("op").equals("search_date")) {
            request.getRequestDispatcher("/views/machines_date.jsp").forward(request, response);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        if (request.getParameter("op").equals("getdata")) {
            response.setContentType("application/json");
            List<Machine> salles = ms.findAll();
            Gson json = new Gson();
            response.getWriter().write(json.toJson(salles));
        } else if (request.getParameter("op").equals("create")) {
            boolean state = ms.create(new Machine(request.getParameter("reference")
                    , new Date(request.getParameter("date_achat").replace("-", "/"))
                    , Double.parseDouble(request.getParameter("prix"))
                    , ss.findById(Integer.parseInt(request.getParameter("salle_id")))
                    , request.getParameter("marque")));
            out.println(state);
        } else if (request.getParameter("op").equals("delete")) {
            boolean state = ms.delete(ms.findById(Integer.parseInt(request.getParameter("id"))));
            out.println(state);
        } else if (request.getParameter("op").equals("update")) {
            Machine machine = ms.findById(Integer.parseInt(request.getParameter("id")));
            machine.setMarque(request.getParameter("marque"));
            machine.setDateAchat(new Date(request.getParameter("date_achat").replace("-", "/")));
            machine.setPrix(Double.parseDouble(request.getParameter("prix")));
            machine.setReference(request.getParameter("reference"));
            machine.setSalle(ss.findById(Integer.parseInt(request.getParameter("salle"))));

            boolean state = ms.update(machine);
            out.println(state);

        } else if (request.getParameter("op").equals("getdatafiltred")) {
            response.setContentType("application/json");
            int id;
            Date date_achat ;
            double prix;
            if (!request.getParameter("id").equals("")) {
                id = Integer.parseInt(request.getParameter("id"));
            } else {
                id = 0;
            }
            if (!request.getParameter("prix").equals("")) {
                prix = Double.parseDouble(request.getParameter("prix"));
            } else {
                prix = 0;
            }

            String salle_code = request.getParameter("salle_code");
            String salle_type = request.getParameter("salle_type");
            String reference = request.getParameter("reference");
            String marque = request.getParameter("marque");
            boolean is_date_achat;

            if (!request.getParameter("date_achat").equals("")) {
                date_achat = new Date(request.getParameter("date_achat").replace("-", "/"));
                is_date_achat = true;
            } else {
                is_date_achat = false;
                date_achat =new Date();
            }
            List<Machine> machines = ms.findFilitred(new Machine(id, reference, date_achat, prix, new Salle(salle_code, salle_type), marque), is_date_achat);
            Gson json = new Gson();
           // out.println(date_achat);
          //  response.getWriter().write(json.toJson(new Machine(id, reference, date_achat, prix, new Salle(salle_code, salle_type),marque)));
            response.getWriter().write(json.toJson(machines));
        }
        else if (request.getParameter("op").equals("getdata_by_date")) {
            response.setContentType("application/json");
            Date date1=new Date(request.getParameter("date1").replace("-", "/"));
            Date date2=new Date(request.getParameter("date2").replace("-", "/"));
            List<Machine> machines = ms.findby2dates(date1,date2);
            Gson json = new Gson();
            response.getWriter().write(json.toJson(machines));

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
