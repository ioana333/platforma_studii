package org.example.cod_interfata;

public class Profesor {
    private String profesorCurs;
    private String profesorSeminar;
    private String profesorLaborator;

    public Profesor(String profesorCurs, String profesorSeminar, String profesorLaborator) {
        this.profesorCurs = profesorCurs;
        this.profesorSeminar = profesorSeminar;
        this.profesorLaborator = profesorLaborator;
    }

    public String getProfesorCurs() {
        return profesorCurs;
    }

    public String getProfesorSeminar() {
        return profesorSeminar;
    }

    public String getProfesorLaborator() {
        return profesorLaborator;
    }
}
