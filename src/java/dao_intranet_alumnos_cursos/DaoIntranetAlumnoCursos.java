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
    
}
