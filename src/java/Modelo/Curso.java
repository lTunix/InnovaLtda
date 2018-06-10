/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;
import java.sql.Date;

/**
 *
 * @author ksandoval
 */
public class Curso {
    String desc_curso, titulo, imagen, unidad;
    int valor_otec, valor_usuario;
    Date fecha_inicio, fecha_termino;

    public Curso() {
    }

    public String getDesc_curso() {
        return desc_curso;
    }

    public void setDesc_curso(String desc_curso) {
        this.desc_curso = desc_curso;
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

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
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

    public Date getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(Date fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public Date getFecha_termino() {
        return fecha_termino;
    }

    public void setFecha_termino(Date fecha_termino) {
        this.fecha_termino = fecha_termino;
    }
    

 
    
}
