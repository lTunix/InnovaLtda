
package dao_intranet_alumnos_cursos;

import Modelo.Evaluacion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import BaseDatos.ConexionBD;


public class DaoIntranetAlumnosNotas extends ConexionBD{
        
        public ArrayList<Evaluacion> listarEvaluaciones(String rut) {
        ArrayList<Evaluacion> lstEvaluacion = new ArrayList();
        Evaluacion eva;
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            
            //Se genera sentecia select
            String strSQL = "select idEvaluacion, exigencia, puntaje_total, entrada.titulo_entrada, unidad.titulo_unidad, curso.titulo from \n" +
                            "evaluacion, entrada, unidad, curso where `Entrada_idEntrada` = entrada.`idEntrada` and `Entrada_Unidad_idUnidad` = unidad.`idUnidad`\n" +
                            "and `Entrada_Unidad_Curso_idCurso` = curso.`idCurso` and `Usuario_rut` = '"+rut+"'";
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                eva = new Evaluacion();
                
                eva.setId(res.getInt("idEvaluacion"));
                eva.setPuntaje_total(res.getString("puntaje_total"));
                eva.setEntrada(res.getString("titulo_entrada"));
                eva.setUnidad(res.getString("titulo_unidad"));
                eva.setCurso(res.getString("titulo"));
                eva.setNota(res.getFloat("calificacion"));
                
                lstEvaluacion.add(eva);
            }
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(DaoIntranetAlumnosNotas.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }   catch (ClassNotFoundException ex) {
                Logger.getLogger(DaoIntranetAlumnosNotas.class.getName()).log(Level.SEVERE, null, ex);
            }
        return lstEvaluacion;
    }

}
