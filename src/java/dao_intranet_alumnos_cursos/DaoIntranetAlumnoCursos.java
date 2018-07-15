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
import modelo_intranet_alumnos_curso.Entrada;
import modelo_intranet_alumnos_curso.Recurso;
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
    
    public Unidad obtenerUnidad(int id_unidad) {
        Unidad unidad = new Unidad();
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            
            //Se genera sentecia select
            String strSQL = "SELECT IDUNIDAD AS ID_UNIDAD, TITULO_UNIDAD AS TITULO, DESCRIPCION_UNIDAD AS DESCRIPCION, IMAGEN_UNIDAD AS IMAGEN, DURACION, `Curso_idCurso` AS ID_CURSO FROM UNIDAD WHERE IDUNIDAD = "+ id_unidad +";" ;
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                unidad.setId_unidad(Integer.parseInt(res.getString("ID_UNIDAD")));
                unidad.setDescripcion(res.getString("DESCRIPCION"));
                unidad.setTitulo_unidad(res.getString("TITULO"));
                unidad.setImagen_unidad(res.getString("IMAGEN"));
                unidad.setDuracion(Integer.parseInt(res.getString("DURACION")));
                unidad.setId_curso(Integer.parseInt(res.getString("ID_CURSO")));
            }
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }
        return unidad;
    }
    
    public ArrayList<Entrada> listarEntradas(int id_unidad) {
        ArrayList<Entrada> lstEntrada = new ArrayList();
        Entrada entrada;
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            
            //Se genera sentecia select
            String strSQL = "SELECT `idEntrada` AS ID_ENTRADA, titulo_entrada AS TITULO, desc_entrada AS DESCRIPCION, imagen_entrada AS IMAGEN, contenido AS CONTENIDO, `Unidad_idUnidad` AS ID_UNIDAD, `Unidad_Curso_idCurso` AS ID_CURSO FROM ENTRADA WHERE `Unidad_idUnidad` = " + id_unidad + ";";
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                entrada = new Entrada();
                entrada.setId_entrada(Integer.parseInt(res.getString("ID_ENTRADA")));
                entrada.setTitulo_Entrada(res.getString("TITULO"));
                entrada.setDescrpcion_entrada(res.getString("DESCRIPCION"));
                entrada.setImagen_entrada(res.getString("IMAGEN"));
                entrada.setContenido(res.getString("CONTENIDO"));
                entrada.setId_unidad(Integer.parseInt(res.getString("ID_UNIDAD")));
                entrada.setId_curso(Integer.parseInt(res.getString("ID_CURSO")));
                //Se agrega el INGRESO a la lista.
                lstEntrada.add(entrada);
            }
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }
        return lstEntrada;
    }
    
    public Entrada obtenerEntrada(int id_entrada) {
        Entrada entrada = new Entrada();
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            
            //Se genera sentecia select
            String strSQL = "SELECT `idEntrada` AS ID_ENTRADA, titulo_entrada AS TITULO, desc_entrada AS DESCRIPCION, imagen_entrada AS IMAGEN, contenido AS CONTENIDO, `Unidad_idUnidad` AS ID_UNIDAD, `Unidad_Curso_idCurso` AS ID_CURSO FROM ENTRADA WHERE `idEntrada` = " + id_entrada + ";" ;
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                entrada.setId_entrada(Integer.parseInt(res.getString("ID_ENTRADA")));
                entrada.setTitulo_Entrada(res.getString("TITULO"));
                entrada.setDescrpcion_entrada(res.getString("DESCRIPCION"));
                entrada.setImagen_entrada(res.getString("IMAGEN"));
                entrada.setContenido(res.getString("CONTENIDO"));
                entrada.setId_unidad(Integer.parseInt(res.getString("ID_UNIDAD")));
                entrada.setId_curso(Integer.parseInt(res.getString("ID_CURSO")));
            }
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }
        return entrada;
    }
    
    public ArrayList<Recurso> listarRecursos(int id_entrada) {
        ArrayList<Recurso> lstRecurso = new ArrayList();
        Recurso recurso;
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            
            //Se genera sentecia select
            String strSQL = "select * from recurso where `Entrada_idEntrada` = " + id_entrada + ";";
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                recurso = new Recurso();
                recurso.setId_recurso(Integer.parseInt(res.getString("idRecurso")));
                recurso.setTitulo_recurso(res.getString("titulo_recurso"));
                recurso.setAnio_creacion(res.getString("año_creacion"));
                recurso.setImagen_recurso(res.getString("imagen_recurso"));
                recurso.setTipo_recurso(res.getString("tipo_recurso"));
                recurso.setId_entrada(Integer.parseInt(res.getString("Entrada_idEntrada")));
                recurso.setId_unidad(Integer.parseInt(res.getString("Entrada_Unidad_idUnidad")));
                recurso.setId_curso(Integer.parseInt(res.getString("Entrada_Unidad_Curso_idCurso")));
                recurso.setTipo_recurso_num(Integer.parseInt(res.getString("Tiporecurso_idTiporecurso")));
                recurso.setId_licencia(Integer.parseInt(res.getString("Licencia_idLicencia")));
                recurso.setAsignatura(Integer.parseInt(res.getString("Asignatura_idAsignatura")));
                //Se agrega el INGRESO a la lista.
                lstRecurso.add(recurso);
            }
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }
        return lstRecurso;
    }
    
    public Recurso obtenerRecurso(int id_recurso) {
        Recurso recurso = new Recurso();
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            
            //Se genera sentecia select
            String strSQL = "select * from recurso where `idRecurso` = " + id_recurso + ";" ;
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                recurso.setId_recurso(Integer.parseInt(res.getString("idRecurso")));
                recurso.setTitulo_recurso(res.getString("titulo_recurso"));
                recurso.setAnio_creacion(res.getString("año_creacion"));
                recurso.setImagen_recurso(res.getString("imagen_recurso"));
                recurso.setTipo_recurso(res.getString("tipo_recurso"));
                recurso.setId_entrada(Integer.parseInt(res.getString("Entrada_idEntrada")));
                recurso.setId_unidad(Integer.parseInt(res.getString("Entrada_Unidad_idUnidad")));
                recurso.setId_curso(Integer.parseInt(res.getString("Entrada_Unidad_Curso_idCurso")));
                recurso.setTipo_recurso_num(Integer.parseInt(res.getString("Tiporecurso_idTiporecurso")));
                recurso.setId_licencia(Integer.parseInt(res.getString("Licencia_idLicencia")));
                recurso.setAsignatura(Integer.parseInt(res.getString("Asignatura_idAsignatura")));
            }
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }
        return recurso;
    }
    
    public String obtenerPermiso(int id_licencia) {
        String permiso = "";
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            
            //Se genera sentecia select
            String strSQL = "select titulo_licencia from licencia where idLicencia = " + id_licencia + ";" ;
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                permiso = res.getString("titulo_licencia");
            }
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoIntranetAlumnoCursos.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }
        return permiso;
    }
}

