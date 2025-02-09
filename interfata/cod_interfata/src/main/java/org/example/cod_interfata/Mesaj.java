package org.example.cod_interfata;

import java.util.Date;

public class Mesaj {

    private String continut;

    public void setContinut(String continut) {
        this.continut = continut;
    }

    public String getContinut() {
        return continut;
    }

    public Mesaj(String continut) {
        this.continut = continut;
    }
}
