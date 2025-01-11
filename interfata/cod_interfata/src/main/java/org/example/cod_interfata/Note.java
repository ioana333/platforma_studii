package org.example.cod_interfata;

public class Note {

    private String disciplina;
    private String notaCurs;
    private String notaSeminar;
    private String notaLaborator;
    private String notaFinala;

    public void setNotaFinala(String notaFinala) {
        this.notaFinala = notaFinala;
    }

    public String getNotaFinala() {
        return notaFinala;
    }

    public void setDisciplina(String disciplina) {
        this.disciplina = disciplina;
    }

    public void setNotaCurs(String notaCurs) {
        this.notaCurs = notaCurs;
    }

    public void setNotaSeminar(String notaSemiar) {
        this.notaSeminar = notaSemiar;
    }

    public void setNotaLaborator(String notaLaborator) {
        this.notaLaborator = notaLaborator;
    }

    public String getDisciplina() {
        return disciplina;
    }

    public String getNotaCurs() {
        return notaCurs;
    }

    public String getNotaSeminar() {
        return notaSeminar;
    }

    public String getNotaLaborator() {
        return notaLaborator;
    }

    public Note(String disciplina, String notaCurs, String notaSeminar, String notaLaborator, String notaFinala) {
        this.disciplina = disciplina;
        this.notaCurs = notaCurs;
        this.notaSeminar = notaSeminar;
        this.notaLaborator = notaLaborator;
        this.notaFinala = notaFinala;
    }
}
