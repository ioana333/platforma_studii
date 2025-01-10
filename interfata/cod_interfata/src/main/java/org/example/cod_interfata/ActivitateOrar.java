package org.example.cod_interfata;

public class ActivitateOrar {

    private String activitate;
    private String disciplina;
    private String ora;

    public ActivitateOrar(String activitate, String disciplina, String ora) {
        this.activitate = activitate;
        this.disciplina = disciplina;
        this.ora = ora;
    }

    public void setActivitate(String activitate) {
        this.activitate = activitate;
    }

    public void setDisciplina(String disciplina) {
        this.disciplina = disciplina;
    }

    public void setOra(String ora) {
        this.ora = ora;
    }

    public String getActivitate() {
        return activitate;
    }

    public String getDisciplina() {
        return disciplina;
    }

    public String getOra() {
        return ora;
    }
}
