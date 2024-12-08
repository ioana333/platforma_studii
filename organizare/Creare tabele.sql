create database if not exists platforma_studii;
use platforma_studii;

#unde e id simplu e doar de dragil de a fi

create table if not exists Utilizatori(
user_id int primary key unique not null auto_increment,
CNP varchar(20) unique not null,
nume varchar(50) not null,
prenume varchar(50) not null,
adresa_id int not null,
telefon varchar(20) not null,
email varchar(50) not null,
iban varchar(50) not null,
nr_contract varchar(50) not null,
rol enum('student', 'profesor', 'administrator', 'super-administrator') not null,
parola varchar(30) not null  
);

create table if not exists Adrese(
adresa_id int primary key unique not null auto_increment,
tara varchar(20) not null,
judet varchar(20) not null,
localitate varchar(20) not null,
strada varchar(30) not null,
numar int 
); 

create table if not exists Studenti(
student_id int auto_increment primary key unique not null, 
an_studiu int not null,
grupa varchar(10) not null,
nr_ore int not null
);

create table if not exists Profesori(
profesor_id int auto_increment primary key unique not null,
departament varchar(40) not null,
ore_min int not null,
ore_max int not null
);

create table if not exists Discipline(
disciplina_id int auto_increment primary key unique not null,
nume_disciplina varchar(40) unique not null,
descriere text,
nr_max_studenti int not null
);

create table if not exists Activitati_Discipline(
activitate_id int auto_increment primary key unique not null,
disciplina_id int not null, #FK -> Discipline.disciplina_id 
profesor_id int not null,
#ai putea separa profesorii care predau la diferite activitati
tip_activitate enum('curs', 'seminar', 'laborator'),
pondere_nota int not null,
nr_max_participanti int not null,
data_inceput date,
data_sfarsit date,
frecventa enum('saptamanal', 'la 2 saptamani')
);

create table if not exists Profesori_Discipline(
id int primary key not null unique auto_increment,
profesor_id int not null,
disciplina_id varchar(10) not null,
numar_studenti int not null
);

create table if not exists Inscrieri(
nr_inscriere int primary key unique not null auto_increment,
student_id int not null,
disciplina_id varchar(10) not null
);

create table if not exists Catalog(
id int primary key unique not null auto_increment,
student_id int not null,
disciplina_id int not null, #la Discipline #sa poti modifica nota doar la materia pe care tu o predai
profesor_id int not null, #!!!daca modifici cu seminariile laburile cursurile
nota_curs int,
nota_laborator int,
nota_seminar int,
nota_finala int
);

create table if not exists Calendar(
id int primary key unique not null auto_increment,
disciplina_id int not null,
profesor_id int not null,
tip_activitate enum('curs','seminar','laborator','examen','colocviu'),
#daca esti logat ca si student nu poti programa curs ... colocviu, doar activitate_grupa_de_studiu
#fa incat sa nu poti alege, daca esti student sa nu iti apara alte optiuni, numai posibilitatea de a programa activitati_grupa_de_studiu
data_calendaristica date not null, #la introducerea unei daet sa se verifice conditiile daca ziua e libera, daca studentii pot toti atunci,
#daca vrea sa puna examenul daca e in sesiune, sa fie sapt de sesiune
#versiune super simplista. isi pune proful examenul cum il taie, numai sa nu fie ocupata ora aia
ora time not null,
nr_maxim_studenti int not null
);

create table if not exists Grupe_de_Studiu(
grupa_id int primary key unique not null auto_increment,
disciplina_id int not null,
nume_grupa varchar(20) not null
);

create table if not exists Activitati_Grupe_de_Studiu(
activitate_id int not null auto_increment primary key, #cand te inscrii la o activitate sa iti apara doar activitatile din viitor
grupa_id int not null,
descriere text,
data_activitate date not null,
data_postare date not null,
timp_expirare time not null,
ora time not null,
durata time not null,
min_participanti int not null
# daca a trecut timpul exporat si nu e minim de studenti inscrisi sa se stearga inserarea si sa trimita la toti studentii deja inscrisi mesaj ca s-a anulat
);

create table if not exists Membrii_Grupe_de_Studiu(
id int primary key not null auto_increment,
grupa_id int not null, #grupa de activitati, nu facultate 
student_id int not null
);

create table if not exists Mesaje(
id int primary key auto_increment not null,
grupa_id int not null,
student_id int not null, #(cheie străină către Students.student_id)
continut varchar(500) not null,
data_trimitere date not null
);

create table if not exists Orar(
id int auto_increment not null primary key, #(cheie primară)
activitate_id int not null,#(cheie străină către Course_Activities.activity_id)
ziua date not null,
ora_inceput time not null,
ora_sfarsit time not null
);

