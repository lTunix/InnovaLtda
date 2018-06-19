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
    
    
//    public ArrayList<Curso> listarIngreso() {
//        ArrayList<Curso> lstCurso = new ArrayList();
//        Curso curso;
//        try {
//            //Recuperar una conexión.
//            ConexionBD con = this.getConexion();
//            
//            //Se genera sentecia select
//            String strSQL = "SELECT * FROM INGRESO";
//            //Se prepara la consulta.
//            PreparedStatement ps = con.prepareStatement(strSQL);
//            //ejecutar la consulta.
//            ResultSet res = ps.executeQuery();
//            //Se recorre el ResultSet.
//            while (res.next()) {
//                ingreso = new Ingreso();
//                ingreso.setId(Integer.parseInt(res.getString("ID")));
//                ingreso.setUsuario(res.getString("USUARIO"));
//                ingreso.setClave(res.getString("CLAVE"));
//                //Se agrega el INGRESO a la lista.
//                lstIngreso.add(ingreso);
//            }
//            con.close();
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(DAOportuarios.class.getName())
//                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
//        } catch (SQLException ex) {
//            Logger.getLogger(DAOportuarios.class.getName())
//                    .log(Level.SEVERE, "Error en SQL.", ex);
//        }
//        return lstIngreso;
//    }
    
}
