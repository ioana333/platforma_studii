DROP TRIGGER IF EXISTS insert_grupa_after_disciplina_insert;
DELIMITER $$
CREATE TRIGGER insert_grupa_after_disciplina_insert
AFTER INSERT ON `discipline`
FOR EACH ROW
BEGIN
    -- Inserăm o nouă grupă de studiu pentru disciplina nou introdusă
    INSERT INTO `grupe_de_studiu` (disciplina_id, nume_grupa)
    VALUES (NEW.disciplina_id, NULL);
END$$
DELIMITER ;




USE `platforma_studii`;
DROP procedure IF EXISTS `inserare_profesor`;
DELIMITER $$
USE `platforma_studii`$$
CREATE PROCEDURE inserare_profesor(
    IN p_CNP VARCHAR(20),
    IN p_nume VARCHAR(50),
    IN p_prenume VARCHAR(50),
    IN p_adresa_id INT,
    IN p_telefon VARCHAR(20),
    IN p_email VARCHAR(50),
    IN p_iban VARCHAR(50),
    IN p_nr_contract VARCHAR(50),
    IN p_parola VARCHAR(30),
    IN p_departament VARCHAR(40),
    IN p_ore_min INT,
    IN p_ore_max INT
)
BEGIN
    DECLARE v_user_id INT;

    -- Inserarea in tabela utilizatori
    INSERT INTO utilizatori (CNP, nume, prenume, adresa_id, telefon, email, iban, nr_contract, rol, parola)
    VALUES (p_CNP, p_nume, p_prenume, p_adresa_id, p_telefon, p_email, p_iban, p_nr_contract, 'profesor', p_parola);

    -- Preluarea user_id-ului generat (ultimul id insertat)
    SET v_user_id = LAST_INSERT_ID();

    -- Inserarea in tabela profesori folosind user_id-ul
    INSERT INTO profesori (profesor_id, departament, ore_min, ore_max)
    VALUES (v_user_id, p_departament, p_ore_min, p_ore_max);
END$$
DELIMITER ;




USE `platforma_studii`;
DROP procedure IF EXISTS `inserare_student`;
DELIMITER $$
USE `platforma_studii`$$
CREATE PROCEDURE inserare_student(
    IN p_CNP VARCHAR(20),
    IN p_nume VARCHAR(50),
    IN p_prenume VARCHAR(50),
    IN p_adresa_id INT,
    IN p_telefon VARCHAR(20),
    IN p_email VARCHAR(50),
    IN p_iban VARCHAR(50),
    IN p_nr_contract VARCHAR(50),
    IN p_parola VARCHAR(30),
    IN p_an_studiu INT,
    IN p_grupa VARCHAR(10),
    IN p_nr_ore INT
)
BEGIN
    -- Declararea variabilei pentru user_id
    DECLARE v_user_id INT;

    -- Inserarea datele în tabela utilizatori
    INSERT INTO utilizatori (CNP, nume, prenume, adresa_id, telefon, email, iban, nr_contract, rol, parola)
    VALUES (p_CNP, p_nume, p_prenume, p_adresa_id, p_telefon, p_email, p_iban, p_nr_contract, 'student', p_parola);

    -- Obținerea ID-ul utilizatorului generat
    SET v_user_id = LAST_INSERT_ID();

    -- Inserarea datelor în tabela studenti
    INSERT INTO studenti (student_id, an_studiu, grupa, nr_ore)
    VALUES (v_user_id, p_an_studiu, p_grupa, p_nr_ore);
    
END$$
DELIMITER ;



DELIMITER $$
CREATE PROCEDURE inserare_disciplina(
    IN nume_disciplina VARCHAR(40), 
    IN descriere TEXT, 
    IN data_inceput DATE, 
    IN data_sfarsit DATE
)
BEGIN
    -- Inserare in tabela discipline
    INSERT INTO discipline (nume_disciplina, descriere, data_inceput, data_sfarsit)
    VALUES (nume_disciplina, descriere, data_inceput, data_sfarsit);
END $$
DELIMITER ;


DROP PROCEDURE IF EXISTS inserare_activitate_discipline;
DELIMITER $$
CREATE PROCEDURE inserare_activitate_discipline(
    IN nume_disciplina_in VARCHAR(40),
    IN profesor_id INT,
    IN activitate_predata ENUM('curs', 'seminar', 'laborator'),
    IN durata TIME,
    IN nr_max_participanti INT,
    IN frecventa ENUM('saptamanal', 'la 2 saptamani')
)
BEGIN
    DECLARE disciplina_id_t INT;

    -- Obținem ID-ul disciplinei pentru numele dat
    SELECT disciplina_id INTO disciplina_id_t
    FROM discipline
    WHERE nume_disciplina_in = nume_disciplina
    LIMIT 1;  -- Ne asigurăm că se returnează doar un rând

    -- Verificăm dacă există o disciplină validă
    IF disciplina_id_t IS NOT NULL THEN
        -- Inserăm activitatea în tabelul activitati_discipline
        INSERT INTO activitati_discipline (disciplina_id, profesor_id, tip_activitate, durata,numar_studenti, nr_max_participanti, frecventa)
        VALUES (disciplina_id_t, profesor_id, activitate_predata, durata, 0, nr_max_participanti, frecventa);
    ELSE
        -- Dacă disciplina nu există, returnăm un mesaj de eroare
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Disciplina nu a fost găsită!';
    END IF;

END$$
DELIMITER ;


DROP PROCEDURE IF EXISTS modifica_ponderi_disciplina;
DELIMITER $$
CREATE PROCEDURE modifica_ponderi_disciplina(
    IN profesor_id_in INT,
    IN nume_disciplina_in VARCHAR(40),
    IN pondere_curs_in INT,
    IN pondere_seminar_in INT,
    IN pondere_laborator_in INT
)
BEGIN
    DECLARE disciplina_id_in INT;
    DECLARE exista_curs BOOLEAN;

    -- Găsirea ID-ului disciplinei pe baza numelui
    SELECT disciplina_id 
	INTO disciplina_id_in
	FROM discipline
	WHERE nume_disciplina = nume_disciplina_in
	LIMIT 1;

    -- Verificăm dacă disciplina a fost găsită
    IF disciplina_id_in IS NULL THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Disciplina specificată nu există.';
    END IF;

    -- Verificăm dacă profesorul are activitate de tip 'curs' pentru disciplina respectivă
    SELECT EXISTS (
        SELECT 1
        FROM activitati_discipline
        WHERE profesor_id_in = profesor_id
          AND disciplina_id_in = disciplina_id
          AND tip_activitate = 'curs'
    ) INTO exista_curs;

    -- Dacă profesorul nu are activitate de tip curs, returnăm o eroare
    IF NOT exista_curs THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Profesorul nu are dreptul de a modifica ponderile!';
    END IF;

    -- Verificăm dacă suma ponderilor este egală cu 100
    IF (pondere_curs_in + pondere_seminar_in + pondere_laborator_in) <> 100 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Suma ponderilor trebuie să fie egală cu 100.';
    END IF;

    -- Actualizăm ponderile disciplinei
    UPDATE discipline
    SET pondere_curs = pondere_curs_in,
        pondere_seminar = pondere_seminar_in,
        pondere_laborator = pondere_laborator_in
    WHERE disciplina_id = disciplina_id_in;
END$$
DELIMITER ;


DROP PROCEDURE IF EXISTS inscriere_student_la_disciplina;
DELIMITER $$
CREATE PROCEDURE inscriere_student_la_disciplina(
    IN student_id_in INT,
    IN nume_disciplina_in VARCHAR(40)
)
BEGIN
    DECLARE disciplina_id_in INT;
    DECLARE activitate_id_in INT;
    DECLARE profesor_id_in INT;
    DECLARE activitate_tip ENUM('curs', 'seminar', 'laborator');
    DECLARE numar_studenti_min INT;
    DECLARE numar_studenti_max INT;
    DECLARE finished INT DEFAULT 0;
    DECLARE cursor_activitati CURSOR FOR
        SELECT a.activitate_id, a.profesor_id, a.numar_studenti, a.tip_activitate
        FROM activitati_discipline a
        JOIN discipline d ON d.disciplina_id = a.disciplina_id
        WHERE d.nume_disciplina = nume_disciplina_in
        ORDER BY a.tip_activitate, a.numar_studenti ASC;  -- Sort by type and number of students
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

    -- Găsirea ID-ului disciplinei pe baza numelui
    SELECT disciplina_id 
    INTO disciplina_id_in
    FROM discipline
    WHERE nume_disciplina = nume_disciplina_in
    LIMIT 1;

    -- Verificăm dacă disciplina există
    IF disciplina_id_in IS NULL THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Disciplina specificată nu există.';
    END IF;

    -- Cursor pentru a parcurge toate activitățile legate de disciplina dată
    OPEN cursor_activitati;

    read_loop: LOOP
        FETCH cursor_activitati INTO activitate_id_in, profesor_id_in, numar_studenti_min, activitate_tip;

        IF finished THEN
            LEAVE read_loop;
        END IF;

        -- Verificăm dacă studentul este deja înscris pentru acest tip de activitate
        IF NOT EXISTS (
            SELECT 1 
            FROM inscrieri
            WHERE student_id = student_id_in 
              AND activitate_id IN (
                  SELECT activitate_id 
                  FROM activitati_discipline 
                  WHERE tip_activitate = activitate_tip 
                    AND disciplina_id = disciplina_id_in
              )
        ) THEN
            -- Verificăm dacă există locuri disponibile pentru activitate
            SELECT nr_max_participanti INTO numar_studenti_max
            FROM activitati_discipline
            WHERE activitate_id = activitate_id_in;

            IF numar_studenti_min < numar_studenti_max THEN
                -- Inserăm în tabela inscrieri
                INSERT INTO inscrieri (student_id, activitate_id)
                VALUES (student_id_in, activitate_id_in);

                -- Incrementăm numărul de studenți pentru activitate
                UPDATE activitati_discipline
                SET numar_studenti = numar_studenti_min + 1
                WHERE activitate_id = activitate_id_in;
            END IF;
        END IF;
    END LOOP;

    CLOSE cursor_activitati;
END$$
DELIMITER ;







