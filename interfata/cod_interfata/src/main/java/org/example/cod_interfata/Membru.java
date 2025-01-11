package org.example.cod_interfata;

public class Membru {

    private String nume;
    private String prenume;

    public void setNume(String nume) {
        this.nume = nume;
    }

    public void setPrenume(String prenume) {
        this.prenume = prenume;
    }

    public String getNume() {
        return nume;
    }

    public String getPrenume() {
        return prenume;
    }

    public Membru(String nume, String prenume) {
        this.nume = nume;
        this.prenume = prenume;
    }
}
