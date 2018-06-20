/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao_intranet_alumnos_cursos;

import BaseDatos.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo_intranet_alumnos_curso.Curso;
import modelo_intranet_alumnos_curso.Unidad;

/**
 *
 * @author Horacio
 */
public class DaoIntranetAlumnoCursos extends ConexionBD{
    
    
    public ArrayList<Curso> listarCursos(String rut) {
        ArrayList<Curso> lstCurso = new ArrayList();
        Curso curso;
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            
            //Se genera sentecia select
            String strSQL = "SELECT CURSO.IDCURSO AS ID_CURSO, CURSO.DESCRIPCION AS DESCRIPCION_CURSO, CURSO.TITULO AS TITULO_CURSO, CURSO.IMAGEN AS IMAGEN_CURSO, CURSO.FECHA_INICIO AS FECHA_INICIO, CURSO.FECHA_TERMINO AS FECHA_TERMINO, USUARIO.rut AS USUARIO_RUT FROM USUARIO INNER JOIN USUARIO_CURSO ON USUARIO.RUT = USUARIO_CURSO.`Usuario_rut` INNER JOIN CURSO ON USUARIO_CURSO.`Curso_idCurso` = CURSO.`idCurso` AND USUARIO.rut = '"+rut+"'";
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                curso = new Curso();
                curso.setId_curso(Integer.parseInt(res.getString("ID_CURSO")));
                curso.setDescripcion(res.getString("DESCRIPCION_CURSO"));
                curso.setTitulo(res.getString("TITULO_CURSO"));
                curso.setImagen(res.getString("IMAGEN_CURSO"));
                curso.setFecha_inicio(res.getString("FECHA_INICIO"));
                curso.setFecha_termino(res.getString("FECHA_TERMINO"));
                //Se agrega el INGRESO a la lista.
                lstCurso.add(curso);
            }
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }
        return lstCurso;
    }
    
    public Curso obtenerCurso(int id_curso) {
        Curso curso = new Curso();
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            
            //Se genera sentecia select
            String strSQL = "SELECT IDCURSO AS ID_CURSO, DESCRIPCION AS DESCRIPCION_CURSO, TITULO AS TITULO_CURSO, IMAGEN AS IMAGEN_CURSO, FECHA_INICIO AS FECHA_INICIO, FECHA_TERMINO AS FECHA_TERMINO FROM CURSO WHERE IDCURSO = "+id_curso+"";
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                curso.setId_curso(Integer.parseInt(res.getString("ID_CURSO")));
                curso.setDescripcion(res.getString("DESCRIPCION_CURSO"));
                curso.setTitulo(res.getString("TITULO_CURSO"));
                curso.setImagen(res.getString("IMAGEN_CURSO"));
                curso.setFecha_inicio(res.getString("FECHA_INICIO"));
                curso.setFecha_termino(res.getString("FECHA_TERMINO"));
            }
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }
        return curso;
    }
    
    public ArrayList<Unidad> listarUnidades(int id_curso) {
        ArrayList<Unidad> lstUnidad = new ArrayList();
        Unidad unidad;
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            
            //Se genera sentecia select
            String strSQL = "SELECT UNIDAD.IDUNIDAD AS ID_UNIDAD, UNIDAD.TITULO_UNIDAD AS TITULO, UNIDAD.DESCRIPCION_UNIDAD AS DESCRIPCION, UNIDAD.IMAGEN_UNIDAD AS IMAGEN, UNIDAD.DURACION AS DURACION, CURSO.IDCURSO AS ID_CURSO FROM CURSO INNER JOIN UNIDAD ON CURSO.IDCURSO = UNIDAD.CURSO_IDCURSO AND CURSO.`idCurso` = "+id_curso+"";
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                unidad = new Unidad();
                unidad.setId_curso(Integer.parseInt(res.getString("ID_CURSO")));
                unidad.setId_unidad(Integer.parseInt(res.getString("ID_UNIDAD")));
                unidad.setTitulo_unidad(res.getString("TITULO"));
                unidad.setDescripcion(res.getString("DESCRIPCION"));
                unidad.setImagen_unidad(res.getString("IMAGEN"));
                unidad.setDuracion(Integer.parseInt(res.getString("DURACION")));
                //Se agrega el INGRESO a la lista.
                lstUnidad.add(unidad);
            }
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }
        return lstUnidad;
    }
}
