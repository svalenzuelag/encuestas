/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Encuesta2;

/**
 *
 * @author josue
 */
@WebServlet(name = "sr_encuesta2", urlPatterns = {"/sr_encuesta2"})
public class sr_encuesta2 extends HttpServlet {

        Encuesta2 encuesta2;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet sr_encuesta2</title>");            
            out.println("</head>");
            out.println("<body>");
             encuesta2 = new Encuesta2(Integer.valueOf(request.getParameter("txt_id")),Integer.valueOf(request.getParameter("meses")),Integer.valueOf(request.getParameter("Frecuencia")),Integer.valueOf(request.getParameter("Satisfaccion")),Integer.valueOf(request.getParameter("Probabilidad")),Integer.valueOf(request.getParameter("Probabilidad2")),request.getParameter("txt_nombre"));
            // Boton agregar 
            if ("agregar".equals(request.getParameter("btn_agregar"))){
             if (encuesta2.agregar()>0){
             response.sendRedirect("index.jsp");
             
             }else{
             out.println("<h1> xxxxxxx No se Ingreso xxxxxxxxxxxx </h1>");
             out.println("<a href='index.jsp'>Regresar...</a>");
             }
             }
             
            // Boton modificar 
            if ("modificarp1".equals(request.getParameter("btn_modificarp1"))){
             if (encuesta2.modificar()>0){
             response.sendRedirect("index.jsp");
             
             }else{
             out.println("<h1> xxxxxxx No se Modifico xxxxxxxxxxxx </h1>");
             out.println("<a href='index.jsp'>Regresar...</a>");
             }
             }
            
            // Boton eliminar 
            if ("eliminarp1".equals(request.getParameter("btn_eliminarp1"))){
             if (encuesta2.eliminar()>0){
             response.sendRedirect("index.jsp");
             
             }else{
             out.println("<h1> xxxxxxx No se Elimino xxxxxxxxxxxx </h1>");
             out.println("<a href='index.jsp'>Regresar...</a>");
             }
             }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
