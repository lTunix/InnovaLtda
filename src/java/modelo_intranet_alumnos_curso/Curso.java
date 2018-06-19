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
public class Curso {
    private int id_curso;
    private String descripcion;
    private String titulo;
    private String imagen;
    private int valor_otec;
    private int valor_usuario;
    private String fecha_inicio;
    private String fecha_termino;
    private String unidad;

    public Curso() {
    }

    public Curso(int id_curso, String descripcion, String titulo, String imagen, int valor_otec, int valor_usuario, String fecha_inicio, String fecha_termino, String unidad) {
        this.id_curso = id_curso;
        this.descripcion = descripcion;
        this.titulo = titulo;
        this.imagen = imagen;
        this.valor_otec = valor_otec;
        this.valor_usuario = valor_usuario;
        this.fecha_inicio = fecha_inicio;
        this.fecha_termino = fecha_termino;
        this.unidad = unidad;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public int getValor_otec() {
        return valor_otec;
    }

    public void setValor_otec(int valor_otec) {
        this.valor_otec = valor_otec;
    }

    public int getValor_usuario() {
        return valor_usuario;
    }

    public void setValor_usuario(int valor_usuario) {
        this.valor_usuario = valor_usuario;
    }

    public String getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(String fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public String getFecha_termino() {
        return fecha_termino;
    }

    public void setFecha_termino(String fecha_termino) {
        this.fecha_termino = fecha_termino;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }
    
    
}
