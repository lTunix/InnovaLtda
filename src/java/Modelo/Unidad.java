/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author ksandoval
 */
public class Unidad {
    String titulo_unidad, desc_unidad, img_unidad;
    int duracion;
    int c_idCurso;

    public Unidad() {
    }

    public String getTitulo_unidad() {
        return titulo_unidad;
    }

    public void setTitulo_unidad(String titulo_unidad) {
        this.titulo_unidad = titulo_unidad;
    }

    public String getDesc_unidad() {
        return desc_unidad;
    }

    public void setDesc_unidad(String desc_unidad) {
        this.desc_unidad = desc_unidad;
    }

    public String getImg_unidad() {
        return img_unidad;
    }

    public void setImg_unidad(String img_unidad) {
        this.img_unidad = img_unidad;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public int getC_idCurso() {
        return c_idCurso;
    }

    public void setC_idCurso(int c_idCurso) {
        this.c_idCurso = c_idCurso;
    }
    
    
}
