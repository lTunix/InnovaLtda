
package BaseDatos;
import Modelo.Usuario;
import java.sql.*;

public class ConexionBD 
{
    private static String url = "jdbc:mysql://localhost:3306/mydb";
    private static String user= "root";
    private static String pass= "root";
    private static Connection conexion;

    public ConexionBD() {
    }
    
    public static Connection abrirConexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            if(conexion == null)
                conexion = DriverManager.getConnection(url, user, pass);
            return conexion;
        }catch(Exception e){
            System.out.println("Excepcion en la conexion a la Base de Datos: " + e.toString());
            return null;
        }
    }
    
    //En proceso
    public Connection getConexion() 
            throws ClassNotFoundException, SQLException{
        //Registro del Driver.
        Class.forName("com.mysql.jdbc.Driver");
        //Retornar al conexión
        return DriverManager.getConnection(url,user,pass);
    }
    
    public void cerrarConexion(){
        if(conexion!=null){
            try {
                conexion.close();
                System.out.println("Cerrando la conexion " + url + "....OK");
            } catch (Exception e) {
                 System.out.println("Excepcion al Cerrar la conexion a la Base de Datos: " + e.toString());
            }
        }
    } 
}