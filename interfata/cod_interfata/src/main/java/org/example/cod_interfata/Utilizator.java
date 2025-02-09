package org.example.cod_interfata;

public class Utilizator {

    private int id;
    private String nume;
    private String prenume;
    private String cnp;
    private String adresa;
    private String telefon;
    private String email;
    private String iban;
    private String nr_contract;

    public int getId() {
        return id;
    }

    public String getNume() {
        return nume;
    }

    public String getPrenume() {
        return prenume;
    }

    public String getCnp() {
        return cnp;
    }

    public String getAdresa() {
        return adresa;
    }

    public String getTelefon() {
        return telefon;
    }

    public String getEmail() {
        return email;
    }

    public String getIban() {
        return iban;
    }

    public String getNr_contract() {
        return nr_contract;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNume(String nume) {
        this.nume = nume;
    }

    public void setPrenume(String prenume) {
        this.prenume = prenume;
    }

    public void setCnp(String cnp) {
        this.cnp = cnp;
    }

    public void setAdresa(String adresa) {
        this.adresa = adresa;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setIban(String iban) {
        this.iban = iban;
    }

    public void setNr_cotract(String nr_cotract) {
        this.nr_contract = nr_cotract;
    }

    public Utilizator(int id, String nume, String prenume, String cnp, String adresa, String telefon, String email, String iban, String nr_contract) {
        this.id = id;
        this.nume = nume;
        this.prenume = prenume;
        this.cnp = cnp;
        this.adresa = adresa;
        this.telefon = telefon;
        this.email = email;
        this.iban = iban;
        this.nr_contract = nr_contract;
    }
}
