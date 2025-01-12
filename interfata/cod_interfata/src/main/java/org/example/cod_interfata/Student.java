package org.example.cod_interfata;

public class Student {

    private int id;
    private String nume;
    private String prenume;
    private int nota_curs;
    private int nota_seminar;
    private int nota_laborator;
    private int nota_finala;

    public void setId(int id) {
        this.id = id;
    }

    public void setNota_finala(int nota_finala) {
        this.nota_finala = nota_finala;
    }

    public int getNota_finala() {
        return nota_finala;
    }

    public void setNume(String nume) {
        this.nume = nume;
    }

    public void setPrenume(String prenume) {
        this.prenume = prenume;
    }

    public void setNota_curs(int nota_curs) {
        this.nota_curs = nota_curs;
    }

    public void setNota_seminar(int nota_seminar) {
        this.nota_seminar = nota_seminar;
    }

    public void setNota_laborator(int nota_laborator) {
        this.nota_laborator = nota_laborator;
    }

    public int getId() {
        return id;
    }

    public String getNume() {
        return nume;
    }

    public String getPrenume() {
        return prenume;
    }

    public int getNota_curs() {
        return nota_curs;
    }

    public int getNota_seminar() {
        return nota_seminar;
    }

    public int getNota_laborator() {
        return nota_laborator;
    }

    public Student(int id, String nume, String prenume, int nota_curs, int nota_seminar, int nota_laborator, int nota_finala) {
        this.id = id;
        this.nume = nume;
        this.prenume = prenume;
        this.nota_curs = nota_curs;
        this.nota_seminar = nota_seminar;
        this.nota_laborator = nota_laborator;
        this.nota_finala = nota_finala;
    }
}
