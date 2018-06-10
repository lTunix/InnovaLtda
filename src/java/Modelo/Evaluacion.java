package Modelo;

import java.sql.Date;

/**
 *
 * @author ksandoval
 */
public class Evaluacion {
    Boolean exigencia;
    String puntaje_total;
    int duracion, id_entrada, id_unidad, id_curso, id_nota;
    Date fecha_inicio, fecha_termino;

    public Evaluacion() {
    }

    public Boolean getExigencia() {
        return exigencia;
    }

    public void setExigencia(Boolean exigencia) {
        this.exigencia = exigencia;
    }

    public String getPuntaje_total() {
        return puntaje_total;
    }

    public void setPuntaje_total(String puntaje_total) {
        this.puntaje_total = puntaje_total;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
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

    public int getId_nota() {
        return id_nota;
    }

    public void setId_nota(int id_nota) {
        this.id_nota = id_nota;
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
