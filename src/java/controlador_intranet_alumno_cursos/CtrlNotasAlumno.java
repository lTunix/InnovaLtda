
package controlador_intranet_alumno_cursos;

import Modelo.Evaluacion;
import dao_intranet_alumnos_cursos.DaoIntranetAlumnosNotas;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class CtrlNotasAlumno extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        dao_intranet_alumnos_cursos.DaoIntranetAlumnosNotas dao = new DaoIntranetAlumnosNotas();
        ArrayList<Evaluacion> listaEvaluaciones;
        //Variables de mensajes
        String errores = "", msg = "";
        //Se identifica la petición realizada.
        String userPath = request.getServletPath();
        
        
        if (userPath.equals("/CtrlNotasAlumno.do")) {
            //Se obtiene rut del fulano del jsp de intranet
            String rut_alumno = String.valueOf(request.getParameter("rut_fulano"));
            //Se recuperan los registros de los cursos.
            listaEvaluaciones = dao.listarEvaluaciones(rut_alumno);
            
            //Se envía información a jsp de salida.
            request.setAttribute("rut_alumno", rut_alumno);
            request.setAttribute("listaEvaluaciones", listaEvaluaciones);
            request.getRequestDispatcher("NotasAlumno.jsp").forward(request, response);
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

