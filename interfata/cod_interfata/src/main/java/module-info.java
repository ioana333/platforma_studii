module org.example.cod_interfata {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.web;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires net.synedra.validatorfx;
    requires org.kordamp.ikonli.javafx;
    requires org.kordamp.bootstrapfx.core;
    requires eu.hansolo.tilesfx;
    requires com.almasb.fxgl.all;
    requires jdk.compiler;
    requires java.desktop;
    requires java.sql;
    requires mysql.connector.j;

    opens org.example.cod_interfata to javafx.fxml;
    exports org.example.cod_interfata;
}