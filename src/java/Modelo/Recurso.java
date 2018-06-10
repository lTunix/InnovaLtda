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
public class Recurso {
    String titulo_rec, imagen_rec, tipo_rec;
    Date año_creacion;
    int id_entrada, eu_idUnidad, euc_idCurso, id_tipoRecurso, id_licencia, id_asignatura;

    public Recurso() {
    }

    public String getTitulo_rec() {
        return titulo_rec;
    }

    public void setTitulo_rec(String titulo_rec) {
        this.titulo_rec = titulo_rec;
    }

    public String getImagen_rec() {
        return imagen_rec;
    }

    public void setImagen_rec(String imagen_rec) {
        this.imagen_rec = imagen_rec;
    }

    public String getTipo_rec() {
        return tipo_rec;
    }

    public void setTipo_rec(String tipo_rec) {
        this.tipo_rec = tipo_rec;
    }

    public Date getAño_creacion() {
        return año_creacion;
    }

    public void setAño_creacion(Date año_creacion) {
        this.año_creacion = año_creacion;
    }

    public int getId_entrada() {
        return id_entrada;
    }

    public void setId_entrada(int id_entrada) {
        this.id_entrada = id_entrada;
    }

    public int getEu_idUnidad() {
        return eu_idUnidad;
    }

    public void setEu_idUnidad(int eu_idUnidad) {
        this.eu_idUnidad = eu_idUnidad;
    }

    public int getEuc_idCurso() {
        return euc_idCurso;
    }

    public void setEuc_idCurso(int euc_idCurso) {
        this.euc_idCurso = euc_idCurso;
    }

    public int getId_tipoRecurso() {
        return id_tipoRecurso;
    }

    public void setId_tipoRecurso(int id_tipoRecurso) {
        this.id_tipoRecurso = id_tipoRecurso;
    }

    public int getId_licencia() {
        return id_licencia;
    }

    public void setId_licencia(int id_licencia) {
        this.id_licencia = id_licencia;
    }

    public int getId_asignatura() {
        return id_asignatura;
    }

    public void setId_asignatura(int id_asignatura) {
        this.id_asignatura = id_asignatura;
    }
    
    
    
}
