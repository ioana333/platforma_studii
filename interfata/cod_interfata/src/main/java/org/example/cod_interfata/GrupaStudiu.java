package org.example.cod_interfata;

public class GrupaStudiu {

    private String disciplina;
    private String grupaStudiu;

    public String getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(String disciplina) {
        this.disciplina = disciplina;
    }

    public void setGrupaStudiu(String grupaStudiu) {
        this.grupaStudiu = grupaStudiu;
    }

    public String getGrupaStudiu() {
        return grupaStudiu;
    }

    public GrupaStudiu(String disciplina, String grupaStudiu) {
        this.disciplina = disciplina;
        this.grupaStudiu = grupaStudiu;
    }
}
