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
 * @author ksandoval
 */
@WebServlet(name = "ServletRegistro", urlPatterns = {"/registro.do"})
public class ServletRegistro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          try (PrintWriter out = response.getWriter()){
              
            String rut = request.getParameter("rut");
            String nombre = request.getParameter("nombre");
            String ape_pat = request.getParameter("ape_pat");  
            String ape_mat = request.getParameter("ape_mat");  
            String aux1 = request.getParameter("genero");
            int genero = Integer.valueOf(aux1);
            String profesion = request.getParameter("profesion");
            String aux2 = request.getParameter("telefono");
            int telefono = Integer.parseInt(aux2);
            String correo = request.getParameter("correo");
            String clave = request.getParameter("clave");
            Usuario user = Usuario.InsertarUsuario(rut, nombre,ape_pat,ape_mat, genero,profesion,correo,clave,telefono,4,2,1);
            if(user != null){
                HttpSession hs = request.getSession(true);
                hs.setAttribute("Usuario", user.getNombre());
                hs.setAttribute("Correo", user.getEmail());
                hs.setAttribute("Tipo", user.getId_tipo_user());
                response.sendRedirect("RegistroOK.jsp");
            }else{
                response.sendRedirect("ErrorRegistro.jsp");
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
