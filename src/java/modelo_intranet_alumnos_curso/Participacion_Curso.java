/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo_intranet_alumnos_curso;

/**
 *
 * @author Horacio
 */
public class Participacion_Curso {
    private int id_usuario_curso;
    private String usuario_rut;
    private int tipo_usuario;
    private int id_curso;

    public Participacion_Curso() {
    }

    public Participacion_Curso(int id_usuario_curso, String usuario_rut, int tipo_usuario, int id_curso) {
        this.id_usuario_curso = id_usuario_curso;
        this.usuario_rut = usuario_rut;
        this.tipo_usuario = tipo_usuario;
        this.id_curso = id_curso;
    }

    public int getId_usuario_curso() {
        return id_usuario_curso;
    }

    public void setId_usuario_curso(int id_usuario_curso) {
        this.id_usuario_curso = id_usuario_curso;
    }

    public String getUsuario_rut() {
        return usuario_rut;
    }

    public void setUsuario_rut(String usuario_rut) {
        this.usuario_rut = usuario_rut;
    }

    public int getTipo_usuario() {
        return tipo_usuario;
    }

    public void setTipo_usuario(int tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }
    
    
}
