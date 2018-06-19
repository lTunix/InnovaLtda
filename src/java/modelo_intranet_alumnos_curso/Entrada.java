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
public class Entrada {
    private int id_entrada;
    private String titulo_Entrada;
    private String descrpcion_entrada;
    private String imagen_entrada;
    private String contenido;
    private int id_unidad;
    private int id_curso;

    public Entrada() {
    }

    public Entrada(int id_entrada, String titulo_Entrada, String descrpcion_entrada, String imagen_entrada, String contenido, int id_unidad, int id_curso) {
        this.id_entrada = id_entrada;
        this.titulo_Entrada = titulo_Entrada;
        this.descrpcion_entrada = descrpcion_entrada;
        this.imagen_entrada = imagen_entrada;
        this.contenido = contenido;
        this.id_unidad = id_unidad;
        this.id_curso = id_curso;
    }

    public int getId_entrada() {
        return id_entrada;
    }

    public void setId_entrada(int id_entrada) {
        this.id_entrada = id_entrada;
    }

    public String getTitulo_Entrada() {
        return titulo_Entrada;
    }

    public void setTitulo_Entrada(String titulo_Entrada) {
        this.titulo_Entrada = titulo_Entrada;
    }

    public String getDescrpcion_entrada() {
        return descrpcion_entrada;
    }

    public void setDescrpcion_entrada(String descrpcion_entrada) {
        this.descrpcion_entrada = descrpcion_entrada;
    }

    public String getImagen_entrada() {
        return imagen_entrada;
    }

    public void setImagen_entrada(String imagen_entrada) {
        this.imagen_entrada = imagen_entrada;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public int getId_unidad() {
        return id_unidad;
    }

    public void setId_unidad(int id_unidad) {
        this.id_unidad = id_unidad;
    }

    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }
    
    
}
