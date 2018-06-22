/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kris Sandoval
 */
@WebServlet(name = "ControladorCambioDatos", urlPatterns = {"/cambiarCorreo.do","/cambiarClave.do","/cambiarTelefono.do","/cambiarProfesion.do"})
public class ControladorCambioDatos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
        //Se identifica la petición realizada.
        String userPath = request.getServletPath();
        
        if (userPath.equals("/cambiarCorreo.do")) {
            
            //Se obtiene rut del fulano del jsp de intranet
            String rut = String.valueOf(request.getParameter("rutUsuario"));
            String nuevoCorreo = request.getParameter("nuevoCorreo");
            Usuario user = Usuario.cambiarCorreo(rut, nuevoCorreo);
          if(user != null){
                HttpSession hs = request.getSession(true);
                hs.setAttribute("Usuario", user.getNombre());
                hs.setAttribute("Correo", user.getEmail());
                response.sendRedirect("RegistroExitoso.jsp");
            }else{
                response.sendRedirect("ErrorRegistro.jsp");
            }
        }else if(userPath.equals("/cambiarClave.do")){
            
        
            
        }else if(userPath.equals("/cambiarTelefono.do")){
            
        
        
        }else if(userPath.equals("/cambiarProfesion.do")){
        
        }
        
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