package Modelo;

import BaseDatos.ConexionBD;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import org.apache.tomcat.util.codec.binary.Base64;

public class Usuario {

    String rut, nombre, apellido_paterno, apellido_materno, profesion, email, pass;
    int genero, telefono, id_tipo_user, id_tipo_cliente, estado;
    Blob imagen;
    byte[] encodedImage;
    InputStream file;

    public Usuario() {
    }

    public Usuario(String rut, String nombre, String apellido_paterno, String apellido_materno, String profesion, String email, String pass, int genero, int telefono, int id_tipo_user, int id_tipo_cliente, int estado) {
        this.rut = rut;
        this.nombre = nombre;
        this.apellido_paterno = apellido_paterno;
        this.apellido_materno = apellido_materno;
        this.profesion = profesion;
        this.email = email;
        this.pass = pass;
        this.genero = genero;
        this.telefono = telefono;
        this.id_tipo_user = id_tipo_user;
        this.id_tipo_cliente = id_tipo_cliente;
        this.estado = estado;

    }

    public Blob getImagen() {
        return imagen;
    }

    public void setImagen(Blob imagen) {
        this.imagen = imagen;
    }

    public byte[] getEncodedImage() {
        return encodedImage;
    }

    public void setEncodedImage(byte[] encodedImage) {
        this.encodedImage = encodedImage;
    }

    public InputStream getFile() {
        return file;
    }

    public void setFile(InputStream file) {
        this.file = file;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getEstado() {
        return estado;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido_paterno() {
        return apellido_paterno;
    }

    public void setApellido_paterno(String apellido_paterno) {
        this.apellido_paterno = apellido_paterno;
    }

    public String getApellido_materno() {
        return apellido_materno;
    }

    public void setApellido_materno(String apellido_materno) {
        this.apellido_materno = apellido_materno;
    }

    public int getGenero() {
        return genero;
    }

    public void setGenero(int genero) {
        this.genero = genero;
    }

    public String getProfesion() {
        return profesion;
    }

    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public int getId_tipo_user() {
        return id_tipo_user;
    }

    public void setId_tipo_user(int id_tipo_user) {
        this.id_tipo_user = id_tipo_user;
    }

    public int getId_tipo_cliente() {
        return id_tipo_cliente;
    }

    public void setId_tipo_cliente(int id_tipo_cliente) {
        this.id_tipo_cliente = id_tipo_cliente;
    }

    public static Usuario ValidarUsuario(String n, String c) {
        try {
            Connection conn = ConexionBD.abrirConexion();
            String sql = "select * from Usuario where correo=? and contraseña=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, n);
            pst.setString(2, c);
            // pst.setString(3, /*el tipo*/);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                Usuario u = new Usuario();
                u.setRut(rs.getString("rut"));
                u.setNombre(rs.getString("nombre"));
                u.setApellido_paterno(rs.getString("ape_pat"));
                u.setApellido_materno(rs.getString("ape_mat"));
                u.setGenero(rs.getInt("genero"));
                u.setProfesion(rs.getString("profesion"));
                u.setEmail(rs.getString("correo"));
                u.setPass(c);
                u.setTelefono(rs.getInt("telefono_contacto"));
                u.setId_tipo_user(rs.getInt(10)); //El tipo de Usuario corresponde a la columna nº 10 en la BD
                return u;
            } else {
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Excepción en ValidarUsuario:" + ex.toString());
            return null;
        }
    }

    public static Usuario InsertarUsuario(String rut, String nombre, String ape_pat, String ape_mat,
            int genero, String profesion, String email, String pass,
            int cel, int tipo_user, int tipo_cliente, int estado) {
        int filas = 0;
        try {
            Connection conn = ConexionBD.abrirConexion();
            String sql = "INSERT INTO Usuario (rut,nombre,ape_pat,ape_mat,genero,profesion,correo,"
                    + "contraseña,telefono_contacto,tipoUsuario_idtipoUsuario,TipoCliente_idTipoCliente,estado) "
                    + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, rut);
            pst.setString(2, nombre);
            pst.setString(3, ape_pat);
            pst.setString(4, ape_mat);
            pst.setInt(5, genero);
            pst.setString(6, profesion);
            pst.setString(7, email);
            pst.setString(8, pass);
            pst.setInt(9, cel);
            pst.setInt(10, tipo_user);
            pst.setInt(11, tipo_cliente);
            pst.setInt(12, estado);
            //ResultSet rs = pst.executeQuery();
            filas = pst.executeUpdate();

            if (filas > 0) {
                //Setear los atributos del objeto usuario
                Usuario u = new Usuario();
                u.setNombre(nombre);
                u.setApellido_paterno(ape_pat);
                u.setApellido_materno(ape_mat);
                u.setGenero(genero);
                u.setProfesion(profesion);
                u.setEmail(email);
                u.setPass(pass);
                u.setTelefono(cel);
                u.setId_tipo_user(tipo_user);
                u.setId_tipo_cliente(tipo_cliente); //corresponde al tipo de cliente
                u.setEstado(estado); //corresponde al EStado de actividad del usuario
                return u;
            } else {
                return null;
            }
        } catch (Exception ex) {
            System.out.println("Ha ocurrido una excepcion al insertar el usuario en la BD: " + ex.toString());
        }
        return null;
    }

    //Para bloquear la Cuenta del Usuario
    public static Usuario BloquearUsuario(String correo, String pass) {
        try {

        } catch (Exception ex) {
            System.out.println("Se ha producido una Excepcion al bloquear el Usuario : " + ex.toString());
        }
        return null;
    }

    public void ConsultarContraseña(String correoRecuperacion) {
        try {
            Connection conn = ConexionBD.abrirConexion();
            String sql = "select contraseña from Usuario where correo='" + correoRecuperacion + "'";
            PreparedStatement pst = conn.prepareStatement(sql);

            ResultSet rs = pst.executeQuery();

            String mensaje = "Hola";
            while (rs.next()) {
                Usuario u = new Usuario();
                this.pass = rs.getString("contraseña");
            }
        } catch (SQLException ex) {
            System.out.println("Excepción en ValidarUsuario:" + ex.toString());
        }
    }

    public static Usuario cambiarCorreo(String rut, String nCorreo) {
        int filas = 0;
        try {
            Connection conn = ConexionBD.abrirConexion();
            String sql = "UPDATE mydb.usuario SET correo='" + nCorreo + "' WHERE rut='" + rut + "'";
            PreparedStatement pst = conn.prepareStatement(sql);
//            pst.setString(1, rut);
//            pst.setString(2, nCorreo);
            filas = pst.executeUpdate();

            if (filas > 0) {
                Usuario u = new Usuario();
                u.setRut(rut);
                u.setEmail(nCorreo);
                
                
                return u;

            } else {
                return null;
            }
            
            
        } catch (SQLException ex) {
            System.out.println("Excepción en ValidarUsuario:" + ex.toString());
        }
        return null;
    }

    public static Usuario cambiarProfesion(String rut, String nProf) {
        int filas = 0;
        try {
            Connection conn = ConexionBD.abrirConexion();
            String sql = "UPDATE mydb.usuario SET profesion='" + nProf + "' WHERE rut='" + rut + "'";
            PreparedStatement pst = conn.prepareStatement(sql);
            filas = pst.executeUpdate();

            if (filas > 0) {
                Usuario u = new Usuario();
                u.setRut(rut);
                u.setEmail(nProf);
                return u;

            } else {
                return null;
            }
            
        } catch (SQLException ex) {
            System.out.println("Excepción en ValidarUsuario:" + ex.toString());
        }
        
        return null;
    }

    public static Usuario cambiarClave(String rut, String nClave) {
        int filas = 0;
        try {
            Connection conn = ConexionBD.abrirConexion();
            String sql = "UPDATE mydb.usuario SET contraseña='" + nClave + "' WHERE rut='" + rut + "'";
            PreparedStatement pst = conn.prepareStatement(sql);
            filas = pst.executeUpdate();

            if (filas > 0) {
                Usuario u = new Usuario();
                u.setRut(rut);
                u.setEmail(nClave);
                return u;

            } else {
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Excepción en ValidarUsuario:" + ex.toString());
        }
        return null;
    }

    public static Usuario cambiarTelefono(String rut, String nTel) {
        int filas = 0;
        try {
            Connection conn = ConexionBD.abrirConexion();
            String sql = "UPDATE mydb.usuario SET correo='" + nTel + "' WHERE rut='" + rut + "'";
            PreparedStatement pst = conn.prepareStatement(sql);
            filas = pst.executeUpdate();

            if (filas > 0) {
                Usuario u = new Usuario();
                u.setRut(rut);
                u.setEmail(nTel);
                return u;

            } else {
                return null;
            }
        } catch (SQLException ex) {
            System.out.println("Excepción en ValidarUsuario:" + ex.toString());
        }
        return null;
    }

    public void ActualizarImagen(String rut) {
        try {
            Connection conn = ConexionBD.abrirConexion();
            String sql = "update usuario set imagen=? where rut='" + rut + "'";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setBlob(1, getFile());
            pst.execute();
        } catch (SQLException e) {
            System.err.println("Excepción en ActualizarImagen: " + e);
        }
    }

    public static LinkedList<Usuario> RecuperarImagen(String rut) throws IOException {
        try {
            Connection conn = ConexionBD.abrirConexion();
            String sql = "select * from usuario where rut='" + rut + "'";
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            LinkedList<Usuario> listaADevolver = new LinkedList<>();

            if (rs.next()) {
                Usuario u = new Usuario();
                u.setImagen(rs.getBlob("imagen"));
                byte[] buffer = u.getImagen().getBytes(1, (int) u.getImagen().length());
                u.setEncodedImage(Base64.encodeBase64(buffer));

                listaADevolver.add(u);
                return listaADevolver;
            }else{
                return null;
            }
            
        } catch (SQLException e) {
            System.err.println("Excepción en RecuperarImagen " + e);
            return null;
        }
        
        
        
    }
    
    
    public ArrayList<Usuario> listarUsuarios(){
        ArrayList<Usuario> listaU = new ArrayList<>();
        try {
            Connection conn = ConexionBD.abrirConexion();
            String sql = "select * from usuario where tipoUsuario_idtipoUsuario=1";
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                Usuario u = new Usuario();
                u.setRut(rs.getString("rut"));
                u.setNombre(rs.getString("nombre"));
                u.setApellido_paterno(rs.getString("ape_pat"));
                u.setApellido_materno(rs.getString("ape_mat"));
                listaU.add(u);
            
            }
            
        } catch (SQLException e) {
            System.err.println("Excepción en RecuperarImagen " + e);
            return null;
            
        }
        
        return listaU;
        
    }

}
