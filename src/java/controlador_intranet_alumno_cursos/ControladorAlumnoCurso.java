/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador_intranet_alumno_cursos;

import dao_intranet_alumnos_cursos.DaoIntranetAlumnoCursos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo_intranet_alumnos_curso.Curso;
import modelo_intranet_alumnos_curso.Entrada;
import modelo_intranet_alumnos_curso.Participacion_Curso;
import modelo_intranet_alumnos_curso.Recurso;
import modelo_intranet_alumnos_curso.Unidad;
import Modelo.Usuario;

/**
 *
 * @author Horacio
 */
@WebServlet(name = "ControladorAlumnoCurso", urlPatterns = {"/cargaCursosPersonales.do", "/cursoSeleccionado.do", "/unidadSeleccionada.do", "/entradaSeleccionada.do", "/recursoSeleccionado.do"})
public class ControladorAlumnoCurso extends HttpServlet {

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
        //Se genera objetos para la implementación.
        dao_intranet_alumnos_cursos.DaoIntranetAlumnoCursos dao = new DaoIntranetAlumnoCursos();
        ArrayList<Curso> listaCursos;
        ArrayList<Entrada> listaEntradas;
        ArrayList<Participacion_Curso> listaCursosAsociados;
        ArrayList<Recurso> listaRecursos;
        ArrayList<Unidad> listaUnidades;
        Usuario usuario;
        Curso curso;
        Unidad unidad;
        Entrada entrada;
        Recurso recurso;
        //Variables de mensajes
        String errores = "", msg = "";
        //Se identifica la petición realizada.
        String userPath = request.getServletPath();
        
        if (userPath.equals("/cargaCursosPersonales.do")) {
            //Se obtiene rut del fulano del jsp de intranet
            String rut_alumno = String.valueOf(request.getParameter("rut_fulano"));
            //Se recuperan los registros de los cursos.
            listaCursos = dao.listarCursos(rut_alumno);
            //Se envía información a jsp de salida.
            request.setAttribute("listaCursos", listaCursos);
            request.setAttribute("rut_alumno", rut_alumno);
            request.getRequestDispatcher("Cursos_Personales.jsp").forward(request, response);
        } else if (userPath.equals("/cursoSeleccionado.do")) {
            //Se obtiene id del curso jsp de intranet
            int id_curso = Integer.parseInt(String.valueOf(request.getParameter("id_curso")));
            //Se recupera el registro del curso
            curso = dao.obtenerCurso(id_curso);
            //Se obtiene lista de unidades según id del curso
            listaUnidades = dao.listarUnidades(id_curso);
            //Se envía información a jsp de salida.
            request.setAttribute("listaUnidades", listaUnidades);
            request.setAttribute("curso", curso);
            request.getRequestDispatcher("Curso_Unidades.jsp").forward(request, response);
            
        } else if (userPath.equals("/unidadSeleccionada.do")) {
            //Se obtiene id del curso jsp de intranet
            int id_unidad = Integer.parseInt(String.valueOf(request.getParameter("id_unidad")));
            //Se recupera el registro del curso
            unidad = dao.obtenerUnidad(id_unidad);
            //Se obtiene lista de unidades según id del curso
            listaEntradas = dao.listarEntradas(id_unidad);
            //Se envía información a jsp de salida.
            request.setAttribute("listaEntradas", listaEntradas);
            request.setAttribute("unidad", unidad);
            request.getRequestDispatcher("Unidad_Entradas.jsp").forward(request, response);
        } else if (userPath.equals("/entradaSeleccionada.do")) {
            //Se obtiene id del curso jsp de intranet
            int id_entrada = Integer.parseInt(String.valueOf(request.getParameter("id_entrada")));
            //Se recupera el registro del curso
            entrada = dao.obtenerEntrada(id_entrada);
            //Se obtiene lista de unidades según id del curso
            listaRecursos = dao.listarRecursos(id_entrada);
            //Se envía información a jsp de salida.
            request.setAttribute("listaRecursos", listaRecursos);
            request.setAttribute("entrada", entrada);
            request.getRequestDispatcher("Entrada.jsp").forward(request, response);
        } else if (userPath.equals("/recursoSeleccionado.do")) {
            //Se obtiene id del curso jsp de intranet
            int id_recurso = Integer.parseInt(String.valueOf(request.getParameter("id_recurso")));
            //Se recupera el registro del curso
            recurso = dao.obtenerRecurso(id_recurso);
            //Se obtiene lista de unidades según id del curso
            String permiso  = dao.obtenerPermiso(recurso.getId_licencia());
            //Se envía información a jsp de salida.
            request.setAttribute("recurso", recurso);
            request.setAttribute("permiso", permiso);
            request.getRequestDispatcher("Recurso.jsp").forward(request, response);
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
