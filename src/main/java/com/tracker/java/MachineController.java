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
 *
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("op") == null) {
            request.getRequestDispatcher("/views/machines.jsp").forward(request, response);
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
        }
        else if (request.getParameter("op").equals("create")) {
            boolean state = ms.create(new Machine(request.getParameter("reference")
                    , new Date(request.getParameter("date_achat").replace("-","/"))
                    , Double.parseDouble(request.getParameter("prix"))
                    ,ss.findById(Integer.parseInt(request.getParameter("salle_id")))
                    ,request.getParameter("marque")));
            out.println(state);
        }
        else if (request.getParameter("op").equals("delete")) {
            boolean state = ms.delete(ms.findById(Integer.parseInt(request.getParameter("id"))));
            out.println(state);
        }
        else if (request.getParameter("op").equals("update")) {
            Machine machine = ms.findById(Integer.parseInt(request.getParameter("id")));
            machine.setMarque(request.getParameter("marque"));
            machine.setDateAchat(new Date(request.getParameter("date_achat")));
            machine.setPrix(Double.parseDouble(request.getParameter("prix")));
            machine.setReference(request.getParameter("reference"));
            machine.setSalle(ss.findById(Integer.parseInt(request.getParameter("salle"))));

            boolean state = ms.update(machine);
            out.println(state);
        }
//        else if (request.getParameter("op").equals("getdatafiltred")) {
//            response.setContentType("application/json");
//            int id;
//            Date created_at=new Date();
//
//            if (!request.getParameter("id").equals("")) {
//                id = Integer.parseInt(request.getParameter("id"));
//            } else {
//                id = 0;
//            }
//
////            if (!Objects.equals(request.getParameter("created_at"), "")
////                    || request.getParameter("created_at") != null) {
////                created_at = new Date(request.getParameter("created_at").replace("-", "/"));
////
////            } else {
////                SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
////                String date_string = "0000-00-00";
////                try {
////                    created_at=formatter.parse(date_string);
////                } catch (ParseException e) {
////                    e.printStackTrace();
////                }
////            }
//            String code = request.getParameter("code");
//            String type = request.getParameter("type");
//            List<Salle> salles = ms.findFilitred(new Salle(id, code, type));
////            List<Salle> salles = ms.findFilitred(new Salle(id, code, type,created_at));
//            Gson json = new Gson();
//            response.getWriter().write(json.toJson(salles));
////            }
//        }
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
