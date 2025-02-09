package org.example.cod_interfata;

public class ActivitateStudiu {

    private String grupa;
    private String descrierea;
    private String data;
    private String ora;

    public ActivitateStudiu(String grupa, String descrierea, String data, String ora) {
        this.grupa = grupa;
        this.descrierea = descrierea;
        this.data = data;
        this.ora = ora;
    }

    public String getGrupa() {
        return grupa;
    }

    public String getDescrierea() {
        return descrierea;
    }

    public String getData() {
        return data;
    }

    public String getOra() {
        return ora;
    }

    public void setGrupa(String grupa) {
        this.grupa = grupa;
    }

    public void setDescrierea(String descrierea) {
        this.descrierea = descrierea;
    }

    public void setData(String data) {
        this.data = data;
    }

    public void setOra(String ora) {
        this.ora = ora;
    }
}
