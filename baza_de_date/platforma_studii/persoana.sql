create table platforma_studii.persoana
(
    CNP           varchar(15) not null
        primary key,
    nume          varchar(20) not null,
    prenume       varchar(20) not null,
    id_adresa     int         null,
    telefon       varchar(13) null,
    email         varchar(50) null,
    IBAN          varchar(25) null,
    numar_contact varchar(15) not null
);

