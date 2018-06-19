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
public class Recurso {
    private int id_recurso;
    private String titulo_recurso;
    private String anio_creacion;
    private String imagen_recurso;
    private String tipo_recurso;
    private int id_entrada;
    private int id_unidad;
    private int id_curso;
    private int tipo_recurso_num;
    private int id_licencia;
    private int asignatura;

    public Recurso() {
    }

    public Recurso(int id_recurso, String titulo_recurso, String anio_creacion, String imagen_recurso, String tipo_recurso, int id_entrada, int id_unidad, int id_curso, int tipo_recurso_num, int id_licencia, int asignatura) {
        this.id_recurso = id_recurso;
        this.titulo_recurso = titulo_recurso;
        this.anio_creacion = anio_creacion;
        this.imagen_recurso = imagen_recurso;
        this.tipo_recurso = tipo_recurso;
        this.id_entrada = id_entrada;
        this.id_unidad = id_unidad;
        this.id_curso = id_curso;
        this.tipo_recurso_num = tipo_recurso_num;
        this.id_licencia = id_licencia;
        this.asignatura = asignatura;
    }

    public int getId_recurso() {
        return id_recurso;
    }

    public void setId_recurso(int id_recurso) {
        this.id_recurso = id_recurso;
    }

    public String getTitulo_recurso() {
        return titulo_recurso;
    }

    public void setTitulo_recurso(String titulo_recurso) {
        this.titulo_recurso = titulo_recurso;
    }

    public String getAnio_creacion() {
        return anio_creacion;
    }

    public void setAnio_creacion(String anio_creacion) {
        this.anio_creacion = anio_creacion;
    }

    public String getImagen_recurso() {
        return imagen_recurso;
    }

    public void setImagen_recurso(String imagen_recurso) {
        this.imagen_recurso = imagen_recurso;
    }

    public String getTipo_recurso() {
        return tipo_recurso;
    }

    public void setTipo_recurso(String tipo_recurso) {
        this.tipo_recurso = tipo_recurso;
    }

    public int getId_entrada() {
        return id_entrada;
    }

    public void setId_entrada(int id_entrada) {
        this.id_entrada = id_entrada;
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

    public int getTipo_recurso_num() {
        return tipo_recurso_num;
    }

    public void setTipo_recurso_num(int tipo_recurso_num) {
        this.tipo_recurso_num = tipo_recurso_num;
    }

    public int getId_licencia() {
        return id_licencia;
    }

    public void setId_licencia(int id_licencia) {
        this.id_licencia = id_licencia;
    }

    public int getAsignatura() {
        return asignatura;
    }

    public void setAsignatura(int asignatura) {
        this.asignatura = asignatura;
    }
    
    
}
