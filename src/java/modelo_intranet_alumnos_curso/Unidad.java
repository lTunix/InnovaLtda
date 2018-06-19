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
public class Unidad {
    private int id_unidad;
    private String titulo_unidad;
    private String descripcion;
    private String imagen_unidad;
    private int duracion;
    private int id_curso;

    public Unidad() {
    }

    public Unidad(int id_unidad, String titulo_unidad, String descripcion, String imagen_unidad, int duracion, int id_curso) {
        this.id_unidad = id_unidad;
        this.titulo_unidad = titulo_unidad;
        this.descripcion = descripcion;
        this.imagen_unidad = imagen_unidad;
        this.duracion = duracion;
        this.id_curso = id_curso;
    }

    public int getId_unidad() {
        return id_unidad;
    }

    public void setId_unidad(int id_unidad) {
        this.id_unidad = id_unidad;
    }

    public String getTitulo_unidad() {
        return titulo_unidad;
    }

    public void setTitulo_unidad(String titulo_unidad) {
        this.titulo_unidad = titulo_unidad;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen_unidad() {
        return imagen_unidad;
    }

    public void setImagen_unidad(String imagen_unidad) {
        this.imagen_unidad = imagen_unidad;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }
    
    
}
