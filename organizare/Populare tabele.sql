SET FOREIGN_KEY_CHECKS = 0; -- Disable foreign key checks
TRUNCATE TABLE adrese;     -- Truncate the table
SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO adrese (tara, judet, localitate, strada, numar) VALUES
('Romania', 'Bucuresti', 'Sector 1', 'Calea Victoriei', 12),
('Romania', 'Cluj', 'Cluj-Napoca', 'Strada Memorandumului', 8),
('Romania', 'Timis', 'Timisoara', 'Bulevardul Revolutiei', 5),
('Romania', 'Brasov', 'Brasov', 'Strada Muresenilor', 25),
('Romania', 'Iasi', 'Iasi', 'Strada Lapusneanu', 34),
('Romania', 'Constanta', 'Constanta', 'Bulevardul Tomis', 10),
('Romania', 'Prahova', 'Ploiesti', 'Bulevardul Independentei', 7),
('Romania', 'Sibiu', 'Sibiu', 'Strada Nicolae Balcescu', 15),
('Romania', 'Arad', 'Arad', 'Strada Mihai Eminescu', 9),
('Romania', 'Bihor', 'Oradea', 'Strada Republicii', 18),
('Romania', 'Buzau', 'Buzau', 'Strada Mare', 3),
('Romania', 'Bacau', 'Bacau', 'Strada George Bacovia', 21),
('Romania', 'Hunedoara', 'Deva', 'Bulevardul Decebal', 6),
('Romania', 'Maramures', 'Baia Mare', 'Strada Gheorghe Sincai', 11),
('Romania', 'Neamt', 'Piatra Neamt', 'Strada Stefan cel Mare', 16),
('Romania', 'Galati', 'Galati', 'Strada Domneasca', 13),
('Romania', 'Suceava', 'Suceava', 'Strada Stefan cel Mare', 22),
('Romania', 'Valcea', 'Ramnicu Valcea', 'Strada Tudor Vladimirescu', 20),
('Romania', 'Dolj', 'Craiova', 'Bulevardul Carol I', 27),
('Romania', 'Harghita', 'Miercurea Ciuc', 'Strada Marton Aron', 14),
('Romania', 'Covasna', 'Sfantu Gheorghe', 'Strada Mihai Viteazul', 29),
('Romania', 'Salaj', 'Zalau', 'Bulevardul Mihai Viteazul', 4),
('Romania', 'Ilfov', 'Otopeni', 'Strada Primaverii', 1),
('Romania', 'Caras-Severin', 'Resita', 'Strada Castanilor', 23),
('Romania', 'Giurgiu', 'Giurgiu', 'Bulevardul Bucuresti', 17),
('Romania', 'Dambovita', 'Targoviste', 'Strada Calea Domneasca', 28),
('Romania', 'Tulcea', 'Tulcea', 'Strada Pacii', 19),
('Romania', 'Olt', 'Slatina', 'Strada Ecaterina Teodoroiu', 24),
('Romania', 'Teleorman', 'Alexandria', 'Bulevardul Libertatii', 26),
('Romania', 'Vaslui', 'Vaslui', 'Strada Stefan cel Mare', 30),
('Romania', 'Bucuresti', 'Sector 2', 'Strada Mosilor', 40),
('Romania', 'Bucuresti', 'Sector 3', 'Calea Calarasilor', 18),
('Romania', 'Cluj', 'Turda', 'Strada Principala', 5),
('Romania', 'Timis', 'Lugoj', 'Bulevardul Timisoara', 11),
('Romania', 'Arad', 'Ineu', 'Strada Libertatii', 9),
('Romania', 'Hunedoara', 'Hunedoara', 'Strada Castelului', 7),
('Romania', 'Bihor', 'Beius', 'Strada Eroilor', 6),
('Romania', 'Brasov', 'Fagaras', 'Strada Republicii', 22),
('Romania', 'Prahova', 'Campina', 'Strada Mihai Eminescu', 3),
('Romania', 'Iasi', 'Pascani', 'Strada Stefan cel Mare', 8),
('Romania', 'Constanta', 'Mangalia', 'Strada Marii', 15),
('Romania', 'Sibiu', 'Medias', 'Strada Nicolae Iorga', 21),
('Romania', 'Buzau', 'Ramnicu Sarat', 'Strada Independentei', 12),
('Romania', 'Dolj', 'Calafat', 'Strada Tudor Vladimirescu', 4),
('Romania', 'Valcea', 'Dragasani', 'Strada Regele Carol', 13),
('Romania', 'Teleorman', 'Turnu Magurele', 'Strada Mihai Eminescu', 19),
('Romania', 'Galati', 'Tecuci', 'Strada Stefan cel Mare', 5),
('Romania', 'Tulcea', 'Macin', 'Strada Libertatii', 3),
('Romania', 'Olt', 'Corabia', 'Strada Dunarii', 9),
('Romania', 'Suceava', 'Radauti', 'Strada Mihai Eminescu', 17),
('Romania', 'Neamt', 'Targu Neamt', 'Strada Stefan cel Mare', 25),
('Romania', 'Giurgiu', 'Bolintin Vale', 'Strada Bucuresti', 8),
('Romania', 'Bacau', 'Onesti', 'Strada George Bacovia', 6),
('Romania', 'Harghita', 'Gheorgheni', 'Strada Lacu Rosu', 30),
('Romania', 'Covasna', 'Targu Secuiesc', 'Strada Libertatii', 12),
('Romania', 'Salaj', 'Simleu Silvaniei', 'Strada Mihai Viteazul', 4),
('Romania', 'Ilfov', 'Bragadiru', 'Strada Independentei', 9),
('Romania', 'Caras-Severin', 'Caransebes', 'Strada 1 Decembrie', 20),
('Romania', 'Dambovita', 'Moren', 'Strada Mihai Eminescu', 14),
('Romania', 'Bihor', 'Salonta', 'Strada Republicii', 10),
('Romania', 'Brasov', 'Rasnov', 'Strada Cetatii', 6),
('Romania', 'Cluj', 'Gherla', 'Strada Avram Iancu', 17),
('Romania', 'Maramures', 'Borsa', 'Strada Victoriei', 8),
('Romania', 'Arad', 'Sebis', 'Strada Mihai Viteazul', 11),
('Romania', 'Timis', 'Sannicolau Mare', 'Strada Libertatii', 9),
('Romania', 'Prahova', 'Breaza', 'Strada Republicii', 7),
('Romania', 'Hunedoara', 'Orastie', 'Strada Unirii', 22),
('Romania', 'Bucuresti', 'Sector 4', 'Calea Vacaresti', 45),
('Romania', 'Iasi', 'Targu Frumos', 'Strada Stefan cel Mare', 3),
('Romania', 'Dolj', 'Filiasi', 'Strada Olteniei', 18),
('Romania', 'Tulcea', 'Isaccea', 'Strada Pacii', 6),
('Romania', 'Valcea', 'Calimanesti', 'Strada Oltului', 12),
('Romania', 'Sibiu', 'Cisnadie', 'Strada Mihai Viteazul', 10),
('Romania', 'Suceava', 'Vatra Dornei', 'Strada Eroilor', 24),
('Romania', 'Neamt', 'Roznov', 'Strada Mihai Eminescu', 4),
('Romania', 'Constanta', 'Eforie', 'Strada Marii', 14),
('Romania', 'Bacau', 'Targu Ocna', 'Strada 1 Decembrie', 19),
('Romania', 'Giurgiu', 'Mihailesti', 'Strada Dunarii', 21),
('Romania', 'Bucuresti', 'Sector 5', 'Strada Pandurilor', 25),
('Romania', 'Bucuresti', 'Sector 6', 'Bulevardul Iuliu Maniu', 90),
('Romania', 'Arad', 'Chisineu Cris', 'Strada Libertatii', 33),
('Romania', 'Timis', 'Jimbolia', 'Strada Mare', 12),
('Romania', 'Maramures', 'Baia Mare', 'Strada Victoriei', 8),
('Romania', 'Cluj', 'Huedin', 'Strada Mihai Eminescu', 19),
('Romania', 'Bihor', 'Marghita', 'Strada Republicii', 7),
('Romania', 'Brasov', 'Codlea', 'Strada Principala', 15),
('Romania', 'Prahova', 'Baicoi', 'Strada Garii', 10),
('Romania', 'Iasi', 'Harlau', 'Strada Stefan cel Mare', 4),
('Romania', 'Dolj', 'Segarcea', 'Strada Mihai Viteazul', 13),
('Romania', 'Constanta', 'Navodari', 'Strada Pescarilor', 27),
('Romania', 'Sibiu', 'Agnita', 'Strada Garii', 6),
('Romania', 'Galati', 'Targu Bujor', 'Strada Victoriei', 5),
('Romania', 'Tulcea', 'Babadag', 'Strada Libertatii', 9),
('Romania', 'Bacau', 'Comanesti', 'Strada Minerilor', 3),
('Romania', 'Vaslui', 'Barlad', 'Strada Republicii', 22),
('Romania', 'Buzau', 'Pogoanele', 'Strada Independentei', 11),
('Romania', 'Suceava', 'Cajvana', 'Strada Unirii', 14),
('Romania', 'Neamt', 'Roman', 'Strada Stefan cel Mare', 23),
('Romania', 'Ilfov', 'Voluntari', 'Strada Eroilor', 17),
('Romania', 'Giurgiu', 'Ogrezeni', 'Strada Mihai Viteazul', 12),
('Romania', 'Harghita', 'Toplita', 'Strada Principala', 21),
('Romania', 'Covasna', 'Sfantu Gheorghe', 'Strada Mihai Eminescu', 7),
('Romania', 'Valcea', 'Brezoi', 'Strada Oltului', 15),
('Romania', 'Hunedoara', 'Petrosani', 'Strada Minerilor', 13),
('Romania', 'Caras-Severin', 'Resita', 'Strada Principala', 19),
('Romania', 'Dambovita', 'Gaesti', 'Strada Unirii', 5),
('Romania', 'Arad', 'Santana', 'Strada Republicii', 8),
('Romania', 'Brasov', 'Zarnesti', 'Strada Mihai Viteazul', 10),
('Romania', 'Cluj', 'Campia Turzii', 'Strada Victoriei', 18),
('Romania', 'Timis', 'Buzias', 'Strada Independentei', 6),
('Romania', 'Maramures', 'Targu Lapus', 'Strada Garii', 14),
('Romania', 'Bihor', 'Alesd', 'Strada Mihai Eminescu', 22),
('Romania', 'Prahova', 'Slanic', 'Strada Republicii', 9),
('Romania', 'Iasi', 'Raducaneni', 'Strada Stefan cel Mare', 16),
('Romania', 'Dolj', 'Bailesti', 'Strada Unirii', 30),
('Romania', 'Constanta', 'Medgidia', 'Strada Dunarii', 4),
('Romania', 'Tulcea', 'Sulina', 'Strada Libertatii', 20),
('Romania', 'Sibiu', 'Saliste', 'Strada Garii', 3),
('Romania', 'Bacau', 'Darmanesti', 'Strada Minerilor', 12),
('Romania', 'Suceava', 'Gura Humorului', 'Strada Republicii', 27),
('Romania', 'Neamt', 'Bicaz', 'Strada Oltului', 11),
('Romania', 'Vaslui', 'Husi', 'Strada Stefan cel Mare', 8),
('Romania', 'Ilfov', 'Otopeni', 'Strada Garii', 5),
('Romania', 'Galati', 'Pechea', 'Strada Victoriei', 19),
('Romania', 'Buzau', 'Nehoiu', 'Strada Mihai Viteazul', 9),
('Romania', 'Valcea', 'Calimanesti', 'Strada Dunarii', 6),
('Romania', 'Brasov', 'Fagaras', 'Strada Independentei', 4),
('Romania', 'Prahova', 'Busteni', 'Strada Libertatii', 18),
('Romania', 'Arad', 'Curtici', 'Strada Garii', 9),
('Romania', 'Timis', 'Faget', 'Strada Mihai Viteazul', 14),
('Romania', 'Cluj', 'Apahida', 'Strada Principala', 7),
('Romania', 'Maramures', 'Seini', 'Strada Mihai Eminescu', 5),
('Romania', 'Hunedoara', 'Brad', 'Strada Libertatii', 12),
('Romania', 'Bihor', 'Stei', 'Strada Republicii', 20),
('Romania', 'Dolj', 'Filiasi', 'Strada Unirii', 25),
('Romania', 'Suceava', 'Vicovu de Sus', 'Strada Stefan cel Mare', 13),
('Romania', 'Tulcea', 'Nufaru', 'Strada Dunarii', 10),
('Romania', 'Iasi', 'Podu Iloaiei', 'Strada Victoriei', 3),
('Romania', 'Brasov', 'Predeal', 'Strada Independentei', 15),
('Romania', 'Galati', 'Matca', 'Strada Republicii', 17),
('Romania', 'Vaslui', 'Murgeni', 'Strada Mihai Viteazul', 8),
('Romania', 'Harghita', 'Borsec', 'Strada Minerilor', 9),
('Romania', 'Bacau', 'Slanic Moldova', 'Strada Oltului', 2),
('Romania', 'Ilfov', 'Buftea', 'Strada Principala', 11),
('Romania', 'Caras-Severin', 'Moldova Noua', 'Strada Mihai Eminescu', 16),
('Romania', 'Buzau', 'Patarlagele', 'Strada Republicii', 4),
('Romania', 'Sibiu', 'Copsa Mica', 'Strada Victoriei', 7),
('Romania', 'Hunedoara', 'Hateg', 'Strada Unirii', 22),
('Romania', 'Dambovita', 'Titu', 'Strada Independentei', 14),
('Romania', 'Bihor', 'Valea lui Mihai', 'Strada Republicii', 5),
('Romania', 'Brasov', 'Sacele', 'Strada Mihai Eminescu', 12),
('Romania', 'Cluj', 'Floresti', 'Strada Principala', 9),
('Romania', 'Timis', 'Recas', 'Strada Libertatii', 18),
('Romania', 'Maramures', 'Cavnic', 'Strada Dunarii', 20),
('Romania', 'Arad', 'Pecica', 'Strada Victoriei', 3),
('Romania', 'Constanta', 'Ovidiu', 'Strada Mihai Viteazul', 7),
('Romania', 'Dolj', 'Craiova', 'Strada Stefan cel Mare', 11),
('Romania', 'Prahova', 'Ploiesti', 'Strada Garii', 4),
('Romania', 'Bacau', 'Buhusi', 'Strada Minerilor', 6),
('Romania', 'Galati', 'Tandarei', 'Strada Principala', 17),
('Romania', 'Iasi', 'Iasi', 'Strada Mihai Eminescu', 19),
('Romania', 'Tulcea', 'Chilia Veche', 'Strada Dunarii', 9),
('Romania', 'Ilfov', 'Magurele', 'Strada Libertatii', 5),
('Romania', 'Sibiu', 'Talmaciu', 'Strada Victoriei', 20),
('Romania', 'Dambovita', 'Pucioasa', 'Strada Independentei', 3),
('Romania', 'Buzau', 'Berca', 'Strada Principala', 6),
('Romania', 'Suceava', 'Solca', 'Strada Mihai Viteazul', 22),
('Romania', 'Bihor', 'Santandrei', 'Strada Republicii', 19),
('Romania', 'Cluj', 'Dej', 'Strada Libertatii', 18),
('Romania', 'Timis', 'Ciacova', 'Strada Mihai Eminescu', 3),
('Romania', 'Arad', 'Ineu', 'Strada Dunarii', 15),
('Romania', 'Hunedoara', 'Geoagiu', 'Strada Victoriei', 4),
('Romania', 'Maramures', 'Baia Sprie', 'Strada Libertatii', 13),
('Romania', 'Prahova', 'Campina', 'Strada Mihai Eminescu', 23),
('Romania', 'Arad', 'Lipova', 'Strada Libertatii', 11),
('Romania', 'Timis', 'Sannicolau Mare', 'Strada Mihai Viteazul', 8),
('Romania', 'Cluj', 'Gherla', 'Strada Principala', 17),
('Romania', 'Maramures', 'Sighetu Marmatiei', 'Strada Republicii', 7),
('Romania', 'Hunedoara', 'Orastie', 'Strada Unirii', 14),
('Romania', 'Bihor', 'Beius', 'Strada Garii', 13),
('Romania', 'Dolj', 'Calarasi', 'Strada Dunarii', 25),
('Romania', 'Suceava', 'Radauti', 'Strada Stefan cel Mare', 21),
('Romania', 'Tulcea', 'Isaccea', 'Strada Victoriei', 5),
('Romania', 'Iasi', 'Targu Frumos', 'Strada Independentei', 10),
('Romania', 'Brasov', 'Rasnov', 'Strada Republicii', 12),
('Romania', 'Galati', 'Tecuci', 'Strada Mihai Eminescu', 6),
('Romania', 'Vaslui', 'Negresti', 'Strada Libertatii', 8),
('Romania', 'Harghita', 'Odorheiu Secuiesc', 'Strada Principala', 19),
('Romania', 'Bacau', 'Onesti', 'Strada Minerilor', 9),
('Romania', 'Ilfov', 'Chitila', 'Strada Unirii', 7),
('Romania', 'Caras-Severin', 'Caransebes', 'Strada Mihai Eminescu', 20),
('Romania', 'Buzau', 'Ramnicu Sarat', 'Strada Garii', 16),
('Romania', 'Sibiu', 'Medias', 'Strada Republicii', 11),
('Romania', 'Hunedoara', 'Vulcan', 'Strada Independentei', 4),
('Romania', 'Dambovita', 'Fieni', 'Strada Victoriei', 14),
('Romania', 'Bihor', 'Salonta', 'Strada Mihai Eminescu', 18),
('Romania', 'Brasov', 'Victoria', 'Strada Principala', 10),
('Romania', 'Cluj', 'Turda', 'Strada Republicii', 3),
('Romania', 'Timis', 'Deta', 'Strada Mihai Viteazul', 7),
('Romania', 'Maramures', 'Borsa', 'Strada Libertatii', 20),
('Romania', 'Arad', 'Nadlac', 'Strada Stefan cel Mare', 15),
('Romania', 'Constanta', 'Eforie Nord', 'Strada Dunarii', 4),
('Romania', 'Dolj', 'Segarcea', 'Strada Republicii', 22),
('Romania', 'Prahova', 'Valenii de Munte', 'Strada Mihai Eminescu', 5),
('Romania', 'Bacau', 'Moinesti', 'Strada Garii', 12),
('Romania', 'Galati', 'Barlad', 'Strada Libertatii', 17),
('Romania', 'Iasi', 'Pascani', 'Strada Principala', 9),
('Romania', 'Tulcea', 'Macin', 'Strada Victoriei', 2),
('Romania', 'Ilfov', 'Popesti-Leordeni', 'Strada Stefan cel Mare', 21),
('Romania', 'Sibiu', 'Avrig', 'Strada Dunarii', 11),
('Romania', 'Dambovita', 'Moreni', 'Strada Mihai Eminescu', 18),
('Romania', 'Buzau', 'Buzau', 'Strada Republicii', 9),
('Romania', 'Suceava', 'Campulung Moldovenesc', 'Strada Libertatii', 6),
('Romania', 'Bihor', 'Alesd', 'Strada Independentei', 13),
('Romania', 'Cluj', 'Huedin', 'Strada Minerilor', 4),
('Romania', 'Timis', 'Lugoj', 'Strada Garii', 19),
('Romania', 'Arad', 'Sebis', 'Strada Principala', 7),
('Romania', 'Hunedoara', 'Lupeni', 'Strada Mihai Viteazul', 15),
('Romania', 'Maramures', 'Targu Lapus', 'Strada Stefan cel Mare', 23),
('Romania', 'Constanta', 'Mangalia', 'Strada Dunarii', 10),
('Romania', 'Dolj', 'Calafat', 'Strada Mihai Eminescu', 8),
('Romania', 'Prahova', 'Azuga', 'Strada Republicii', 14),
('Romania', 'Iasi', 'Harlau', 'Strada Victoriei', 17);


INSERT INTO utilizatori (CNP, nume, prenume, adresa_id, telefon, email, iban, nr_contract, rol, parola)
VALUES
('1234567890202', 'Daniel', 'Ionescu', 100, '0755123502', 'daniel.ionescu@example.com', 'RO49AAAA1B3100750000102', 'C12367', 'super-administrator', 'parola123'),
('1234567890203', 'Diana', 'Pavel', 101, '0755123503', 'diana.pavel@example.com', 'RO49AAAA1B3100750000103', 'C12368', 'super-administrator', 'parola123'),
('1234567890204', 'Gheorghe', 'Enescu', 102, '0755123504', 'gheorghe.enescu@example.com', 'RO49AAAA1B3100750000104', 'C12369', 'super-administrator', 'parola123'),
('1234567890125', 'Vasile', 'Georgescu', 3, '0755123458', 'vasile.georgescu@example.com', 'RO49AAAA1B3100750000002', 'C12347', 'administrator', 'parola123'),
('1234567890129', 'Mihai', 'Ionescu', 7, '0755123462', 'mihai.ionescu@example.com', 'RO49AAAA1B3100750000006', 'C12351', 'administrator', 'parola123'),
('1234567890137', 'Florentina', 'Popa', 15, '0755123470', 'florentina.popa@example.com', 'RO49AAAA1B3100750000014', 'C12359', 'administrator', 'parola123');

CALL inserare_profesor(
    '1234567890131', 
    'Alexandru', 
    'Popescu', 
    9, 
    '0755123464', 
    'alexandru.popescu@example.com', 
    'RO49AAAA1B3100750000008', 
    'C12353', 
    'parola123', 
    'Calculatoare', 
    10, 
    25
);

CALL inserare_profesor(
    '1234567890124', 
    'Maria', 
    'Ionescu', 
    2, 
    '0755123457', 
    'maria.ionescu@example.com', 
    'RO49AAAA1B3100750000001', 
    'C12346', 
    'parola123', 
    'Matematica', 
    8, 
    20
);

CALL inserare_profesor(
    '1234567890133', 
    'Florin', 
    'Marinescu', 
    11, 
    '0755123466', 
    'florin.marinescu@example.com', 
    'RO49AAAA1B3100750000010', 
    'C12355', 
    'parola123', 
    'Calculatoare', 
    12, 
    30
);

CALL inserare_profesor(
    '1234567890135', 
    'Radu', 
    'Munteanu', 
    13, 
    '0755123468', 
    'radu.munteanu@example.com', 
    'RO49AAAA1B3100750000012', 
    'C12357', 
    'parola123', 
    'Fizica', 
    14, 
    28
);

CALL inserare_profesor(
    '1234567890142', 
    'Irina', 
    'Popescu', 
    20, 
    '0755123475', 
    'irina.popescu@example.com', 
    'RO49AAAA1B3100750000019', 
    'C12364', 
    'parola123', 
    'Limbi straine', 
    6, 
    18
);

CALL inserare_profesor(
    '1234567890201', 
    'Anca', 
    'Sima', 
    99, 
    '0755123501', 
    'anca.sima@example.com', 
    'RO49AAAA1B3100750000101', 
    'C12366', 
    'parola123', 
    'Fizica', 
    9, 
    22
);

CALL inserare_profesor(
    '1234567890127', 
    'George', 
    'Dumitru', 
    5, 
    '0755123460', 
    'george.dumitru@example.com', 
    'RO49AAAA1B3100750000004', 
    'C12349', 
    'parola123', 
    'Calculatoare', 
    15, 
    35
);

CALL inserare_profesor(
    '1234567890139', 
    'Monica', 
    'Constantin', 
    17, 
    '0755123472', 
    'monica.constantin@example.com', 
    'RO49AAAA1B3100750000016', 
    'C12361', 
    'parola123', 
    'Matematica', 
    10, 
    24
);

CALL inserare_profesor(
    '1234567890140', 
    'Silvia', 
    'Ionescu', 
    18, 
    '0755123473', 
    'silvia.ionescu@example.com', 
    'RO49AAAA1B3100750000017', 
    'C12362', 
    'parola123', 
    'Matematica', 
    7, 
    19
);

CALL inserare_profesor(
    '1254567890201', 
    'Ion', 
    'Popescu', 
    201, 
    '0755000001', 
    'ion.popescu@example.com', 
    'RO49AAAA1B3100754000101', 
    'P12301', 
    'parola123', 
    'Matematica', 
    10, 
    18
);

CALL inserare_profesor(
    '1334567890202', 
    'Maria', 
    'Ionescu', 
    202, 
    '0755000002', 
    'maria.ionescuu@example.com', 
    'RO49ABAA1B3100750000102', 
    'P12302', 
    'parola123', 
    'Fizica', 
    8, 
    16
);

CALL inserare_profesor(
    '1434567890203', 
    'George', 
    'Enache', 
    203, 
    '0755000003', 
    'george.enache@example.com', 
    'RO44AAAA1B3100750000103', 
    'P12303', 
    'parola123', 
    'Calculatoare', 
    12, 
    20
);

CALL inserare_profesor(
    '1134567890204', 
    'Ana', 
    'Mihai', 
    204, 
    '0755000004', 
    'ana.mihai@example.com', 
    'RO49AANA1B3100750000104', 
    'P12304', 
    'parola123', 
    'Limbi straine', 
    9, 
    15
);

CALL inserare_profesor(
    '1264567890205', 
    'Bogdan', 
    'Tudor', 
    205, 
    '0755000005', 
    'bogdan.tudor@example.com', 
    'RO49AANA1B3100750000105', 
    'P12305', 
    'parola123', 
    'Matematica', 
    11, 
    18
);

CALL inserare_profesor(
    '1294567890206', 
    'Cristina', 
    'Marin', 
    206, 
    '0755000006', 
    'cristina.marin@example.com', 
    'RO49AALA1B3100750000106', 
    'P12306', 
    'parola123', 
    'Fizica', 
    10, 
    14
);

CALL inserare_profesor(
    '1234567890207', 
    'Alex', 
    'Ilie', 
    207, 
    '0755000007', 
    'alex.ilie@example.com', 
    'RO49AAA51B3100750000107', 
    'P12307', 
    'parola123', 
    'Matematica', 
    8, 
    16
);

CALL inserare_profesor(
    '1234567790208', 
    'Diana', 
    'Stefan', 
    208, 
    '0755000008', 
    'diana.stefan@example.com', 
    'RO49AAAA1O3100750000108', 
    'P12308', 
    'parola123', 
    'Calculatoare', 
    9, 
    17
);

CALL inserare_profesor(
    '123467890209', 
    'Vasile', 
    'Dumitrescu', 
    209, 
    '0755000009', 
    'vasile.dumitrescu@example.com', 
    'RO49AAUAA1B3100750000109', 
    'P12309', 
    'parola123', 
    'Fizica', 
    12, 
    20
);

CALL inserare_profesor(
    '1237567890210', 
    'Simona', 
    'Popa', 
    210, 
    '0755000010', 
    'simona.popa@example.com', 
    'RO49AAAA183100750000110', 
    'P12310', 
    'parola123', 
    'Fizica', 
    10, 
    18
);

CALL inserare_profesor(
    '1254567890211', 
    'Marius', 
    'Radulescu', 
    211, 
    '0755000011', 
    'marius.radulescu@example.com', 
    'RO49A9AA1B3100750000111', 
    'P12311', 
    'parola123', 
    'Calculatoare', 
    9, 
    16
);

CALL inserare_profesor(
    '1234467890212', 
    'Larisa', 
    'Ciobanu', 
    212, 
    '0755000012', 
    'larisa.ciobanu@example.com', 
    'RO49AQAA1B3100750000112', 
    'P12312', 
    'parola123', 
    'Matematica', 
    8, 
    14
);

CALL inserare_profesor(
    '1234567760213', 
    'Razvan', 
    'Georgescu', 
    213, 
    '0755000013', 
    'razvan.georgescu@example.com', 
    'RO4TRAAA1B3100750000113', 
    'P12313', 
    'parola123', 
    'Calculatoare', 
    10, 
    17
);

CALL inserare_profesor(
    '1234567350214', 
    'Claudia', 
    'Badea', 
    214, 
    '0755000014', 
    'claudia.badea@example.com', 
    'RO49AAHA1B3100750000114', 
    'P12314', 
    'parola123', 
    'Calculatoare', 
    11, 
    19
);

CALL inserare_profesor(
    '1234598790215', 
    'Stefan', 
    'Vlad', 
    215, 
    '0755000015', 
    'stefan.vlad@example.com', 
    'RO49AAVBN1B3100750000115', 
    'P12315', 
    'parola123', 
    'Matematica', 
    10, 
    16
);

CALL inserare_profesor(
    '1236567890216', 
    'Elena', 
    'Barbu', 
    216, 
    '0755000016', 
    'elena.barbu@example.com', 
    'RO49AKJHA1B3100750000116', 
    'P12316', 
    'parola123', 
    'Calculatoare', 
    9, 
    15
);

CALL inserare_profesor(
    '1234567790217', 
    'Gabriel', 
    'Serban', 
    217, 
    '0755000017', 
    'gabriel.serban@example.com', 
    'RO49AAHH1B3100750000117', 
    'P12317', 
    'parola123', 
    'Limbi straine', 
    12, 
    18
);

CALL inserare_profesor(
    '12345555890218', 
    'Adina', 
    'Petrescu', 
    218, 
    '0755000018', 
    'adina.petrescu@example.com', 
    'RO49BBBA1B3100750000118', 
    'P12318', 
    'parola123', 
    'Matematica', 
    8, 
    16
);

CALL inserare_profesor(
    '12345673452219', 
    'Roxana', 
    'Lungu', 
    219, 
    '0755000019', 
    'roxana.lungu@example.com', 
    'RO49ASWER1B3100750000119', 
    'P12319', 
    'parola123', 
    'Limbi straine', 
    10, 
    18
);

CALL inserare_profesor(
    '12345444490220', 
    'Dan', 
    'Toma', 
    220, 
    '0755000020', 
    'dan.toma@example.com', 
    'RO49AFGHJ1B3100750000120', 
    'P12320', 
    'parola123', 
    'Calculatoare', 
    11, 
    17
);






CALL inserare_student('1234567890123', 'Ion', 'Popescu', 1, '0755123456', 'io0n.popescu@example.com', 'RO49AAAA1B3100750000000', 'C12345', 'parola123', 2, 'A1', 30);
CALL inserare_student('1234567890126', 'Andreea', 'Popa', 4, '0755123459', 'andreea.popa@example.com', 'RO49AAAA1B3100750000003', 'C12348', 'parola123', 1, 'B2', 25);
CALL inserare_student('1234567890128', 'Ioana', 'Marin', 6, '0755123461', 'ioana.marin@example.com', 'RO49AAAA1B3100750000005', 'C12350', 'parola123', 3, 'C1', 28);
CALL inserare_student('1234567890134', 'Gabriela', 'Nistor', 12, '0755123467', 'gabriela.nistor@example.com', 'RO49AAAA1B3100750000011', 'C12356', 'parola123', 2, 'B2', 30);
CALL inserare_student('1234567890136', 'Lavinia', 'Popescu', 14, '0755123469', 'lavinia.popescu@example.com', 'RO49AAAA1B3100750000013', 'C12358', 'parola123', 4, 'A1', 32);
CALL inserare_student('1234567890130', 'Adriana', 'Constantin', 8, '0755123463', 'adriana.constantin@example.com', 'RO49AAAA1B3100750000007', 'C12352', 'parola123', 1, 'B1', 27);
CALL inserare_student('1234567890132', 'Elena', 'Radu', 10, '0755123465', 'elena.radu@example.com', 'RO49AAAA1B3100750000009', 'C12354', 'parola123', 2, 'C2', 29);
CALL inserare_student('1234567890138', 'Lucian', 'Nica', 16, '0755123471', 'lucian.nica@example.com', 'RO49AAAA1B3100750000015', 'C12360', 'parola123', 3, 'A1', 31);
CALL inserare_student('1234567890200', 'Mihail', 'Toma', 98, '0755123500', 'mihail.toma@example.com', 'RO49AAAA1B3100750000100', 'C12365', 'parola123', 2, 'A2', 26);
CALL inserare_student('1234567890141', 'Adrian', 'Matei', 19, '0755123474', 'adrian.matei@example.com', 'RO49AAAA1B3100750000018', 'C12363', 'parola123', 1, 'B3', 28);
CALL inserare_student('1234567890143', 'Marian', 'Popescu', 103, '0755123476', 'marian.popescu@example.com', 'RO49AAAA1B3100750000020', 'C12370', 'parola123', 2, 'C3', 30);
CALL inserare_student('1234567890144', 'Elena', 'Vasilescu', 104, '0755123477', 'elena.vasilescu@example.com', 'RO49AAAA1B3100750000021', 'C12371', 'parola123', 3, 'A3', 30);
CALL inserare_student('1234567890145', 'Stefan', 'Mihaila', 105, '0755123478', 'stefan.mihaila@example.com', 'RO49AAAA1B3100750000022', 'C12372', 'parola123', 1, 'A3', 28);
CALL inserare_student('1234567890146', 'Camelia', 'Stanciu', 106, '0755123479', 'camelia.stanciu@example.com', 'RO49AAAA1B3100750000023', 'C12373', 'parola123', 2, 'B3', 32);
CALL inserare_student('1234567890147', 'Victor', 'Popa', 107, '0755123480', 'victor.popa@example.com', 'RO49AAAA1B3100750000024', 'C12374', 'parola123', 3, 'C2', 27);
CALL inserare_student('1234567890148', 'Mihai', 'Costache', 108, '0755123481', 'mihai.costache@example.com', 'RO49AAAA1B3100750000025', 'C12375', 'parola123', 1, 'A3', 25);
CALL inserare_student('1234567890149', 'Irina', 'Bucur', 109, '0755123482', 'irina.bucur@example.com', 'RO49AAAA1B3100750000026', 'C12376', 'parola123', 2, 'B1', 29);
CALL inserare_student('1234567890150', 'Alexandra', 'Popescu', 110, '0755123483', 'alexandra.popescu@example.com', 'RO49AAAA1B3100750000027', 'C12377', 'parola123', 3, 'C3', 31);
CALL inserare_student('1234567890151', 'Toma', 'Marin', 111, '0755123484', 'toma.marin@example.com', 'RO49AAAA1B3100750000028', 'C12378', 'parola123', 4, 'C2', 30);
CALL inserare_student('1234567890152', 'Laura', 'Grigorescu', 112, '0755123485', 'laura.grigorescu@example.com', 'RO49AAAA1B3100750000029', 'C12379', 'parola123', 1, 'A2', 26);
CALL inserare_student('1234567890153', 'Cristina', 'Manea', 113, '0755123486', 'cristina.manea@example.com', 'RO49AAAA1B3100750000030', 'C12380','parola123', 1, 'A1', 28);
CALL inserare_student('1234567890154', 'Bogdan', 'Ionita', 114, '0755123487', 'bogdan.ionita@example.com', 'RO49AAAA1B3100750000031', 'C12381', 'parola123', 2, 'B2', 32);
CALL inserare_student('1234567890155', 'Ioana', 'Vasile', 115, '0755123488', 'ioana.vasile@example.com', 'RO49AAAA1B3100750000032', 'C12382', 'parola123', 3, 'C1', 25);
CALL inserare_student('1234567890156', 'Rares', 'Constantin', 116, '0755123489', 'rares.constantin@example.com', 'RO49AAAA1B3100750000033', 'C12383', 'parola123', 1, 'A2', 29);
CALL inserare_student('1234567890157', 'Ana', 'Nedelcu', 117, '0755123490', 'ana.nedelcu@example.com', 'RO49AAAA1B3100750000034', 'C12384', 'parola123', 2, 'B1', 30);
CALL inserare_student('1234567890158', 'Vlad', 'Popovici', 118, '0755123491', 'vlad.popovici@example.com', 'RO49AAAA1B3100750000035', 'C12385', 'parola123', 3, 'C2', 24);
CALL inserare_student('1234567890159', 'Maria', 'Cristea', 119, '0755123492', 'maria.cristea@example.com', 'RO49AAAA1B3100750000036', 'C12386',  'parola123', 1, 'A3', 26);
CALL inserare_student('1234567890160', 'Daniel', 'Barbu', 120, '0755123493', 'daniel.barbu@example.com', 'RO49AAAA1B3100750000037', 'C12387',  'parola123', 2, 'B3', 33);
CALL inserare_student('1234567890161', 'Diana', 'Stoica', 121, '0755123494', 'diana.stoica@example.com', 'RO49AAAA1B3100750000038', 'C12388',  'parola123', 3, 'C3', 31);
CALL inserare_student('1234567890162', 'Marius', 'Iacob', 122, '0755123495', 'marius.iacob@example.com', 'RO49AAAA1B3100750000039', 'C12389', 'parola123', 1, 'A2', 27);
CALL inserare_student('1234567890163', 'Oana', 'Radulescu', 123, '0755123496', 'oana.radulescu@example.com', 'RO49AAAA1B3100750000040', 'C12390',  'parola123', 2, 'B1', 28);
CALL inserare_student('1234567890164', 'Andrei', 'Voicu', 124, '0755123497', 'andrei.voicu@example.com', 'RO49AAAA1B3100750000041', 'C12391',  'parola123', 3, 'C1', 30);
CALL inserare_student('1234567890165', 'Laura', 'Diaconu', 125, '0755123498', 'laura.diaconu@example.com', 'RO49AAAA1B3100750000042', 'C12392',  'parola123', 1, 'A3', 26);
CALL inserare_student('1234567890166', 'Alex', 'Enache', 126, '0755123499', 'alex.enache@example.com', 'RO49AAAA1B3100750000043', 'C12393',  'parola123', 2, 'B2', 34);
CALL inserare_student('1234567890167', 'Roxana', 'Petrescu', 127, '0785123500', 'roxana.petrescu@example.com', 'RO49AAAA1B3100750000044', 'C12394', 'parola123', 3, 'C1', 32);
CALL inserare_student('1234567890168', 'George', 'Lungu', 128, '0855123501', 'george.lungu@example.com', 'RO49AAAA1B3100750000045', 'C12395',  'parola123', 1, 'A3', 29);
CALL inserare_student('1234567890169', 'Raluca', 'Dobre', 129, '0754123502', 'raluca.dobre@example.com', 'RO49AAAA1B3100750000046', 'C12396',  'parola123', 2, 'B2', 30);
CALL inserare_student('1234567890170', 'Victor', 'Andrei', 130, '0754123503', 'victor.andrei@example.com', 'RO49AAAA1B3100750000047', 'C12397',  'parola123', 3, 'C3', 31);
CALL inserare_student('1234567890171', 'Bianca', 'Iordache', 131, '0745123504', 'bianca.iordache@example.com', 'RO49AAAA1B3100750000048', 'C12398', 'parola123', 1, 'A3', 28);
CALL inserare_student('1234567890172', 'Stefan', 'Pavel', 132, '0755143505', 'stefan.pavel@example.com', 'RO49AAAA1B3100750000049', 'C12399',  'parola123', 2, 'B2', 27);
CALL inserare_student('1234567890173', 'Andreea', 'Mihai', 133, '0755423506', 'andreea.mihai@example.com', 'RO49AAAA1B3100750000050', 'C12400',  'parola123', 1, 'A1', 26);
CALL inserare_student('1234567890174', 'Ionut', 'Preda', 134, '0755124507', 'ionut.preda@example.com', 'RO49AAAA1B3100750000051', 'C12401',  'parola123', 2, 'B3', 30);
CALL inserare_student('1234567890175', 'Alina', 'Popescu', 135, '0754123508', 'alina.popescu@example.com', 'RO49AAAA1B3100750000052', 'C12402', 'parola123', 3, 'C1', 29);
CALL inserare_student('1234567890176', 'Radu', 'Ionescu', 136, '0755423509', 'radu.ionescu@example.com', 'RO49AAAA1B3100750000053', 'C12403',  'parola123', 1, 'A2', 24);
CALL inserare_student('1234567890177', 'Carmen', 'Marin', 137, '0755423510', 'carmen.marin@example.com', 'RO49AAAA1B3100750000054', 'C12404',  'parola123', 2, 'B1', 28);
CALL inserare_student('1234567890178', 'Lucian', 'Dumitru', 138, '0745123511', 'lucian.dumitru@example.com', 'RO49AAAA1B3100750000055', 'C12405',  'parola123', 3, 'C3', 31);
CALL inserare_student('1234567890179', 'Simona', 'Matei', 139, '0755143512', 'simona.matei@example.com', 'RO49AAAA1B3100750000056', 'C12406', 'parola123', 1, 'A3', 27);
CALL inserare_student('1234567890180', 'Florin', 'Petru', 140, '0755143513', 'florin.petru@example.com', 'RO49AAAA1B3100750000057', 'C12407',  'parola123', 2, 'B2', 32);
CALL inserare_student('1234567890181', 'Gabriela', 'Stefan', 141, '0745123514', 'gabriela.stefan@example.com', 'RO49AAAA1B3100750000058', 'C12408',  'parola123', 3, 'C2', 25);
CALL inserare_student('1234567890182', 'Alexandru', 'Voinea', 142, '0755523515', 'alexandru.voinea@example.com', 'RO49AAAA1B3100750000059', 'C12409', 'parola123', 1, 'A1', 28);
CALL inserare_student('1234567890183', 'Larisa', 'Pop', 143, '0755125516', 'larisa.pop@example.com', 'RO49AAAA1B3100750000060', 'C12410', 'parola123', 2, 'B3', 30);
CALL inserare_student('1234567890184', 'Victor', 'Lazar', 144, '0755523517', 'victor.lazar@example.com', 'RO49AAAA1B3100750000061', 'C12411',  'parola123', 3, 'C1', 33);
CALL inserare_student('1234567890185', 'Denisa', 'Nistor', 145, '0757123518', 'denisa.nistor@example.com', 'RO49AAAA1B3100750000062', 'C12412',  'parola123', 1, 'A2', 29);
CALL inserare_student('1234567890186', 'Mihai', 'Serban', 146, '0755523519', 'mihai.serban@example.com', 'RO49AAAA1B3100750000063', 'C12413',  'parola123', 2, 'B1', 31);
CALL inserare_student('1234567890187', 'Catalina', 'Tudor', 147, '0745123520', 'catalina.tudor@example.com', 'RO49AAAA1B3100750000064', 'C12414', 'parola123', 3, 'C3', 30);
CALL inserare_student('1234567890188', 'Adrian', 'Ciobanu', 148, '0775123521', 'adrian.ciobanu@example.com', 'RO49AAAA1B3100750000065', 'C12415',  'parola123', 1, 'A3', 26);
CALL inserare_student('1234567890189', 'Sonia', 'Radu', 149, '0755122522', 'sonia.radu@example.com', 'RO49AAAA1B3100750000066', 'C12416',  'parola123', 2, 'B2', 28);
CALL inserare_student('1234567890190', 'Razvan', 'Georgescu', 150, '0745123523', 'razvaan.georgescu@example.com', 'RO49AAAA1B3100750000067', 'C12417',  'parola123', 3, 'C2', 29);
CALL inserare_student('1234567890191', 'Claudia', 'Badea', 151, '0755163524', 'claaudiaa.badea@example.com', 'RO49AAAA1B3100750000068', 'C12418', 'parola123', 1, 'A1', 30);
CALL inserare_student('1234567890192', 'Dragos', 'Ilie', 152, '0755173525', 'dragos.ilie@example.com', 'RO49AAAA1B3100750000069', 'C12419', 'parola123', 2, 'B3', 27);



-- Insert pentru disciplina "Analiza matematica I"
CALL inserare_disciplina('Analiza matematica I', 
                       'Curs introductiv de analiza matematica pentru studenti, incluzand limite, derivare, integrale, serii si aplicatii.',
                       '2024-09-30', '2025-01-19');

-- Insert pentru disciplina "Algebra si geometrie analitica"
CALL inserare_disciplina('Algebra si geometrie analitica', 
                       'Curs care acopera notiunile fundamentale de algebra liniara si geometrie analitica, incluzand spatii vectoriale, sisteme liniare si aplicatii geometrice.',
                       '2024-09-30', '2025-01-19');

-- Insert pentru disciplina "Matematici speciale"
CALL inserare_disciplina('Matematici speciale', 
                       'Curs de matematica aplicata, care include ecuatii diferentiale, functii speciale, si metode numerice pentru rezolvarea acestora.',
                       '2024-09-30', '2025-01-19');

-- Insert pentru disciplina "Proiectare logica"
CALL inserare_disciplina('Proiectare logica', 
                       'Curs care acopera principiile fundamentale ale logicii digitale, inclusiv circuite logice, algebra booleana si sisteme de numarare.',
                       '2024-09-30', '2025-01-19');

-- Insert pentru disciplina "Programarea calculatoarelor"
CALL inserare_disciplina('Programarea calculatoarelor', 
                       'Introducere in programarea calculatoarelor, incluzand structuri de date, algoritmi si fundamentele limbajelor de programare.',
                       '2024-09-30', '2025-01-19');

-- Insert pentru disciplina "Fizica"
CALL inserare_disciplina('Fizica', 
                       'Curs de fizica generala, care acopera notiuni fundamentale de mecanica, termodinamica si electromagnetism, cu experimente la fiecare 2 saptamani.',
                       '2024-09-30', '2025-01-19');

-- Insert pentru disciplina "Engleza"
CALL inserare_disciplina('Engleza', 
                       'Curs de limba engleza, focusat pe imbunatatirea abilitatilor de vorbire, citire si scriere in context academic.',
                       '2024-09-30', '2025-01-19');

-- Insert pentru disciplina "Germana"
CALL inserare_disciplina('Germana', 
                       'Curs de limba germana pentru studenti, incluzand invatarea vocabularului de baza, gramaticii si expresiilor utile in contexte academice.',
                       '2024-09-30', '2025-01-19');

-- Insert pentru disciplina "Franceza"
CALL inserare_disciplina('Franceza', 
                       'Curs de limba franceza pentru studenti, cu scopul de a dezvolta abilitati de conversatie, lectura si scriere in limba franceza.',
                       '2024-09-30', '2025-01-19');
                       
                       
                       
                       
                       

-- Apel pentru profesor 7 (Calculatoare)
CALL inserare_activitate_discipline('Proiectare logica', 7, 'curs', '02:00:00', 200, 'saptamanal');
CALL inserare_activitate_discipline('Programarea calculatoarelor', 7, 'seminar', '02:00:00', 20, 'la 2 saptamani');

-- Apel pentru profesor 8 (Matematica)
CALL inserare_activitate_discipline('Analiza matematica I', 8, 'curs', '02:00:00', 200, 'saptamanal');
CALL inserare_activitate_discipline('Algebra si geometrie analitica', 8, 'seminar', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 9 (Calculatoare)
CALL inserare_activitate_discipline('Proiectare logica', 9, 'curs', '02:00:00', 200, 'saptamanal');
CALL inserare_activitate_discipline('Programarea calculatoarelor', 9, 'laborator', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 10 (Fizica)
CALL inserare_activitate_discipline('Fizica', 10, 'curs', '02:00:00', 200, 'saptamanal');
CALL inserare_activitate_discipline('Fizica', 10, 'laborator', '02:00:00', 10, 'la 2 saptamani');

-- Apel pentru profesor 11 (Limbi straine)
CALL inserare_activitate_discipline('Engleza', 11, 'curs', '02:00:00', 200, 'saptamanal');
CALL inserare_activitate_discipline('Germana', 11, 'seminar', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 12 (Fizica)
CALL inserare_activitate_discipline('Fizica', 12, 'laborator', '02:00:00', 10, 'la 2 saptamani');

-- Apel pentru profesor 13 (Calculatoare)
CALL inserare_activitate_discipline('Proiectare logica', 13, 'curs', '02:00:00', 200, 'saptamanal');
CALL inserare_activitate_discipline('Programarea calculatoarelor', 13, 'seminar', '02:00:00', 20, 'la 2 saptamani');

-- Apel pentru profesor 14 (Matematica)
CALL inserare_activitate_discipline('Analiza matematica I', 14, 'curs', '02:00:00', 200, 'saptamanal');
CALL inserare_activitate_discipline('Algebra si geometrie analitica', 14, 'curs', '02:00:00', 200, 'saptamanal');

-- Apel pentru profesor 15 (Matematica)
CALL inserare_activitate_discipline('Analiza matematica I', 15, 'seminar', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 16 (Matematica)
CALL inserare_activitate_discipline('Matematici speciale', 16, 'curs', '02:00:00', 200, 'saptamanal');
CALL inserare_activitate_discipline('Algebra si geometrie analitica', 16, 'seminar', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 17 (Fizica)
CALL inserare_activitate_discipline('Fizica', 17, 'curs', '02:00:00', 200, 'saptamanal');

-- Apel pentru profesor 18 (Calculatoare)
CALL inserare_activitate_discipline('Proiectare logica', 18, 'curs', '02:00:00', 200, 'saptamanal');
CALL inserare_activitate_discipline('Programarea calculatoarelor', 18, 'seminar', '02:00:00', 20, 'la 2 saptamani');

-- Apel pentru profesor 19 (Limbi straine)
CALL inserare_activitate_discipline('Franceza', 19, 'seminar', '02:00:00', 20, 'saptamanal');
CALL inserare_activitate_discipline('Germana', 19, 'curs', '02:00:00', 200, 'saptamanal');
CALL inserare_activitate_discipline('Germana', 19, 'seminar', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 20 (Matematica)
CALL inserare_activitate_discipline('Matematici speciale', 20, 'seminar', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 21 (Fizica)
CALL inserare_activitate_discipline('Fizica', 21, 'laborator', '02:00:00', 10, 'la 2 saptamani');

-- Apel pentru profesor 22 (Matematica)
CALL inserare_activitate_discipline('Algebra si geometrie analitica', 22, 'seminar', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 23 (Calculatoare)
CALL inserare_activitate_discipline('Proiectare logica', 23, 'laborator', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 24 (Fizica)
CALL inserare_activitate_discipline('Fizica', 24, 'curs', '02:00:00', 200, 'saptamanal');

-- Apel pentru profesor 25 (Fizica)
CALL inserare_activitate_discipline('Fizica', 25, 'curs', '02:00:00', 200, 'saptamanal');

-- Apel pentru profesor 26 (Calculatoare)
CALL inserare_activitate_discipline('Proiectare logica', 26, 'curs', '02:00:00', 200, 'saptamanal');

-- Apel pentru profesor 27 (Matematica)
CALL inserare_activitate_discipline('Analiza matematica I', 27, 'seminar', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 28 (Calculatoare)
CALL inserare_activitate_discipline('Programarea calculatoarelor', 28, 'curs', '02:00:00', 200, 'saptamanal');

-- Apel pentru profesor 29 (Calculatoare)
CALL inserare_activitate_discipline('Proiectare logica', 29, 'laborator', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 30 (Matematica)
CALL inserare_activitate_discipline('Algebra si geometrie analitica', 30, 'seminar', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 31 (Calculatoare)
CALL inserare_activitate_discipline('Programarea calculatoarelor', 31, 'seminar', '02:00:00', 20, 'la 2 saptamani');

-- Apel pentru profesor 32 (Limbi straine)
CALL inserare_activitate_discipline('Franceza', 32, 'curs', '02:00:00', 200, 'saptamanal');

-- Apel pentru profesor 33 (Matematica)
CALL inserare_activitate_discipline('Matematici speciale', 33, 'seminar', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 34 (Limbi straine)
CALL inserare_activitate_discipline('Engleza', 34, 'seminar', '02:00:00', 20, 'saptamanal');
CALL inserare_activitate_discipline('Franceza', 34, 'seminar', '02:00:00', 20, 'saptamanal');

-- Apel pentru profesor 35 (Calculatoare)
CALL inserare_activitate_discipline('Proiectare logica', 35, 'laborator', '02:00:00', 20, 'saptamanal');






CALL modifica_ponderi_disciplina(28, 'Programarea calculatoarelor', 60, 20, 20);

CALL modifica_ponderi_disciplina(16, 'Matematici speciale', 80, 20, 0);

#CALL modifica_ponderi_disciplina(16, 'Matematici speciale', 60, 20, 0);
#CALL modifica_ponderi_disciplina(33, 'Matematici speciale', 60, 20, 20);

-- Apel pentru 'Proiectare logica' (profesor ID 7)
CALL modifica_ponderi_disciplina(7, 'Proiectare logica', 80, 0, 20);

-- Apel pentru 'Programarea calculatoarelor' (profesor ID 7)
#CALL modifica_ponderi_disciplina(7, 'Programarea calculatoarelor', 40, 30, 30);

-- Apel pentru 'Analiza matematica I' (profesor ID 8)
CALL modifica_ponderi_disciplina(8, 'Analiza matematica I', 70, 30, 0);

-- Apel pentru 'Algebra si geometrie analitica' (profesor ID 8)
#CALL modifica_ponderi_disciplina(8, 'Algebra si geometrie analitica', 70, 30, 0);

-- Apel pentru 'Fizica' (profesor ID 10)
CALL modifica_ponderi_disciplina(10, 'Fizica', 90, 0, 10);

-- Apel pentru 'Engleza' (profesor ID 11)
CALL modifica_ponderi_disciplina(11, 'Engleza', 50, 50, 0);

-- Apel pentru 'Germana' (profesor ID 11)
CALL modifica_ponderi_disciplina(19, 'Germana', 50, 50, 0);

-- Apel pentru 'Franceza' (profesor ID 19)
CALL modifica_ponderi_disciplina(32, 'Franceza', 50, 50, 0);

-- Apel pentru 'Matematici speciale' (profesor ID 16)
#CALL modifica_ponderi_disciplina(16, 'Matematici speciale', 50, 50, 0);

-- Apel pentru 'Programarea calculatoarelor' (profesor ID 28)
#CALL modifica_ponderi_disciplina(28, 'Programarea calculatoarelor', 40, 30, 30);

-- Apel pentru 'Fizica' (profesor ID 24)
#CALL modifica_ponderi_disciplina(24, 'Fizica', 50, 0, 50);

-- Apel pentru 'Proiectare logica' (profesor ID 23)
#CALL modifica_ponderi_disciplina(23, 'Proiectare logica', 50, 0, 50);

-- Apel pentru 'Analiza matematica I' (profesor ID 27)
#CALL modifica_ponderi_disciplina(27, 'Analiza matematica I', 60, 40, 0);

-- Apel pentru 'Algebra si geometrie analitica' (profesor ID 30)
CALL modifica_ponderi_disciplina(14, 'Algebra si geometrie analitica', 100, 0, 0);

-- Apel pentru 'Franceza' (profesor ID 32)
#CALL modifica_ponderi_disciplina(32, 'Franceza', 60, 40, 0);

-- Apel pentru 'Engleza' (profesor ID 34)
#CALL modifica_ponderi_disciplina(34, 'Engleza', 70, 30, 0);

-- Apel pentru 'Proiectare logica' (profesor ID 35)
#CALL modifica_ponderi_disciplina(35, 'Proiectare logica', 50, 0, 50);

#CALL inscriere_student_la_disciplina(37, 'Programarea calculatoarelor');

#CALL inscriere_student_la_disciplina(37, 'Matematici speciale');


-- Apeluri de procedură pentru fiecare student
-- Studentul 36
CALL inscriere_student_la_disciplina(36, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(36, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(36, 'Matematici speciale');
CALL inscriere_student_la_disciplina(36, 'Proiectare logica');
CALL inscriere_student_la_disciplina(36, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(36, 'Fizica');
CALL inscriere_student_la_disciplina(36, 'Engleza');

-- Studentul 37
CALL inscriere_student_la_disciplina(37, 'Germana');
CALL inscriere_student_la_disciplina(37, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(37, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(37, 'Matematici speciale');
CALL inscriere_student_la_disciplina(37, 'Proiectare logica');
CALL inscriere_student_la_disciplina(37, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(37, 'Fizica');

-- Studentul 38
CALL inscriere_student_la_disciplina(38, 'Franceza');
CALL inscriere_student_la_disciplina(38, 'Matematici speciale');
CALL inscriere_student_la_disciplina(38, 'Proiectare logica');
CALL inscriere_student_la_disciplina(38, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(38, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(38, 'Fizica');
CALL inscriere_student_la_disciplina(38, 'Engleza');

-- Studentul 39
CALL inscriere_student_la_disciplina(39, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(39, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(39, 'Matematici speciale');
CALL inscriere_student_la_disciplina(39, 'Proiectare logica');
CALL inscriere_student_la_disciplina(39, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(39, 'Fizica');
CALL inscriere_student_la_disciplina(39, 'Germana');

-- Studentul 40
CALL inscriere_student_la_disciplina(40, 'Fizica');
CALL inscriere_student_la_disciplina(40, 'Engleza');
CALL inscriere_student_la_disciplina(40, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(40, 'Matematici speciale');
CALL inscriere_student_la_disciplina(40, 'Proiectare logica');
CALL inscriere_student_la_disciplina(40, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(40, 'Franceza');

-- Studentul 41
CALL inscriere_student_la_disciplina(41, 'Fizica');
CALL inscriere_student_la_disciplina(41, 'Engleza');
CALL inscriere_student_la_disciplina(41, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(41, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(41, 'Matematici speciale');
CALL inscriere_student_la_disciplina(41, 'Proiectare logica');
CALL inscriere_student_la_disciplina(41, 'Franceza');

-- Studentul 42
CALL inscriere_student_la_disciplina(42, 'Germana');
CALL inscriere_student_la_disciplina(42, 'Matematici speciale');
CALL inscriere_student_la_disciplina(42, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(42, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(42, 'Proiectare logica');
CALL inscriere_student_la_disciplina(42, 'Fizica');
CALL inscriere_student_la_disciplina(42, 'Engleza');

-- Studentul 43
CALL inscriere_student_la_disciplina(43, 'Matematici speciale');
CALL inscriere_student_la_disciplina(43, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(43, 'Fizica');
CALL inscriere_student_la_disciplina(43, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(43, 'Proiectare logica');
CALL inscriere_student_la_disciplina(43, 'Engleza');
CALL inscriere_student_la_disciplina(43, 'Franceza');

-- Studentul 44
CALL inscriere_student_la_disciplina(44, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(44, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(44, 'Fizica');
CALL inscriere_student_la_disciplina(44, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(44, 'Proiectare logica');
CALL inscriere_student_la_disciplina(44, 'Franceza');
CALL inscriere_student_la_disciplina(44, 'Engleza');

-- Studentul 45
CALL inscriere_student_la_disciplina(45, 'Germana');
CALL inscriere_student_la_disciplina(45, 'Matematici speciale');
CALL inscriere_student_la_disciplina(45, 'Fizica');
CALL inscriere_student_la_disciplina(45, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(45, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(45, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(45, 'Proiectare logica');

-- Studentul 46
CALL inscriere_student_la_disciplina(46, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(46, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(46, 'Fizica');
CALL inscriere_student_la_disciplina(46, 'Matematici speciale');
CALL inscriere_student_la_disciplina(46, 'Proiectare logica');
CALL inscriere_student_la_disciplina(46, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(46, 'Engleza');

-- Studentul 47
CALL inscriere_student_la_disciplina(47, 'Franceza');
CALL inscriere_student_la_disciplina(47, 'Germana');
CALL inscriere_student_la_disciplina(47, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(47, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(47, 'Fizica');
CALL inscriere_student_la_disciplina(47, 'Matematici speciale');
CALL inscriere_student_la_disciplina(47, 'Engleza');

-- Studentul 48
CALL inscriere_student_la_disciplina(48, 'Fizica');
CALL inscriere_student_la_disciplina(48, 'Proiectare logica');
CALL inscriere_student_la_disciplina(48, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(48, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(48, 'Matematici speciale');
CALL inscriere_student_la_disciplina(48, 'Engleza');
CALL inscriere_student_la_disciplina(48, 'Franceza');

-- Studentul 49
CALL inscriere_student_la_disciplina(49, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(49, 'Fizica');
CALL inscriere_student_la_disciplina(49, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(49, 'Matematici speciale');
CALL inscriere_student_la_disciplina(49, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(49, 'Proiectare logica');
CALL inscriere_student_la_disciplina(49, 'Germana');

-- Studentul 50
CALL inscriere_student_la_disciplina(50, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(50, 'Matematici speciale');
CALL inscriere_student_la_disciplina(50, 'Fizica');
CALL inscriere_student_la_disciplina(50, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(50, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(50, 'Proiectare logica');
CALL inscriere_student_la_disciplina(50, 'Engleza');

-- Studentul 51
CALL inscriere_student_la_disciplina(51, 'Fizica');
CALL inscriere_student_la_disciplina(51, 'Engleza');
CALL inscriere_student_la_disciplina(51, 'Matematici speciale');
CALL inscriere_student_la_disciplina(51, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(51, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(51, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(51, 'Proiectare logica');

-- Studentul 52
CALL inscriere_student_la_disciplina(52, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(52, 'Fizica');
CALL inscriere_student_la_disciplina(52, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(52, 'Engleza');
CALL inscriere_student_la_disciplina(52, 'Matematici speciale');
CALL inscriere_student_la_disciplina(52, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(52, 'Proiectare logica');

-- Studentul 53
CALL inscriere_student_la_disciplina(53, 'Proiectare logica');
CALL inscriere_student_la_disciplina(53, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(53, 'Matematici speciale');
CALL inscriere_student_la_disciplina(53, 'Fizica');
CALL inscriere_student_la_disciplina(53, 'Engleza');
CALL inscriere_student_la_disciplina(53, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(53, 'Programarea calculatoarelor');

-- Studentul 54
CALL inscriere_student_la_disciplina(54, 'Franceza');
CALL inscriere_student_la_disciplina(54, 'Matematici speciale');
CALL inscriere_student_la_disciplina(54, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(54, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(54, 'Fizica');
CALL inscriere_student_la_disciplina(54, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(54, 'Engleza');

-- Studentul 55
CALL inscriere_student_la_disciplina(55, 'Germana');
CALL inscriere_student_la_disciplina(55, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(55, 'Fizica');
CALL inscriere_student_la_disciplina(55, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(55, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(55, 'Matematici speciale');
CALL inscriere_student_la_disciplina(55, 'Proiectare logica');

-- Studentul 56
CALL inscriere_student_la_disciplina(56, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(56, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(56, 'Fizica');
CALL inscriere_student_la_disciplina(56, 'Matematici speciale');
CALL inscriere_student_la_disciplina(56, 'Proiectare logica');
CALL inscriere_student_la_disciplina(56, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(56, 'Engleza');

-- Studentul 57
CALL inscriere_student_la_disciplina(57, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(57, 'Matematici speciale');
CALL inscriere_student_la_disciplina(57, 'Fizica');
CALL inscriere_student_la_disciplina(57, 'Engleza');
CALL inscriere_student_la_disciplina(57, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(57, 'Proiectare logica');
CALL inscriere_student_la_disciplina(57, 'Franceza');

-- Studentul 58
CALL inscriere_student_la_disciplina(58, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(58, 'Fizica');
CALL inscriere_student_la_disciplina(58, 'Engleza');
CALL inscriere_student_la_disciplina(58, 'Matematici speciale');
CALL inscriere_student_la_disciplina(58, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(58, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(58, 'Proiectare logica');

-- Studentul 59
CALL inscriere_student_la_disciplina(59, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(59, 'Fizica');
CALL inscriere_student_la_disciplina(59, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(59, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(59, 'Engleza');
CALL inscriere_student_la_disciplina(59, 'Proiectare logica');
CALL inscriere_student_la_disciplina(59, 'Franceza');

-- Studentul 60
CALL inscriere_student_la_disciplina(60, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(60, 'Matematici speciale');
CALL inscriere_student_la_disciplina(60, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(60, 'Fizica');
CALL inscriere_student_la_disciplina(60, 'Engleza');
CALL inscriere_student_la_disciplina(60, 'Franceza');
CALL inscriere_student_la_disciplina(60, 'Proiectare logica');

-- Studentul 61
CALL inscriere_student_la_disciplina(61, 'Matematici speciale');
CALL inscriere_student_la_disciplina(61, 'Proiectare logica');
CALL inscriere_student_la_disciplina(61, 'Fizica');
CALL inscriere_student_la_disciplina(61, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(61, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(61, 'Engleza');
CALL inscriere_student_la_disciplina(61, 'Franceza');

-- Studentul 62
CALL inscriere_student_la_disciplina(62, 'Fizica');
CALL inscriere_student_la_disciplina(62, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(62, 'Matematici speciale');
CALL inscriere_student_la_disciplina(62, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(62, 'Engleza');
CALL inscriere_student_la_disciplina(62, 'Proiectare logica');
CALL inscriere_student_la_disciplina(62, 'Franceza');

-- Studentul 63
CALL inscriere_student_la_disciplina(63, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(63, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(63, 'Fizica');
CALL inscriere_student_la_disciplina(63, 'Matematici speciale');
CALL inscriere_student_la_disciplina(63, 'Engleza');
CALL inscriere_student_la_disciplina(63, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(63, 'Proiectare logica');

-- Studentul 64
CALL inscriere_student_la_disciplina(64, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(64, 'Matematici speciale');
CALL inscriere_student_la_disciplina(64, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(64, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(64, 'Fizica');
CALL inscriere_student_la_disciplina(64, 'Engleza');
CALL inscriere_student_la_disciplina(64, 'Proiectare logica');

-- Studentul 65
CALL inscriere_student_la_disciplina(65, 'Franceza');
CALL inscriere_student_la_disciplina(65, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(65, 'Fizica');
CALL inscriere_student_la_disciplina(65, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(65, 'Matematici speciale');
CALL inscriere_student_la_disciplina(65, 'Engleza');
CALL inscriere_student_la_disciplina(65, 'Proiectare logica');

-- Studentul 66
CALL inscriere_student_la_disciplina(66, 'Fizica');
CALL inscriere_student_la_disciplina(66, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(66, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(66, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(66, 'Matematici speciale');
CALL inscriere_student_la_disciplina(66, 'Proiectare logica');
CALL inscriere_student_la_disciplina(66, 'Engleza');

-- Studentul 67
CALL inscriere_student_la_disciplina(67, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(67, 'Matematici speciale');
CALL inscriere_student_la_disciplina(67, 'Fizica');
CALL inscriere_student_la_disciplina(67, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(67, 'Proiectare logica');
CALL inscriere_student_la_disciplina(67, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(67, 'Franceza');

-- Studentul 68
CALL inscriere_student_la_disciplina(68, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(68, 'Matematici speciale');
CALL inscriere_student_la_disciplina(68, 'Fizica');
CALL inscriere_student_la_disciplina(68, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(68, 'Engleza');
CALL inscriere_student_la_disciplina(68, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(68, 'Proiectare logica');

-- Studentul 69
CALL inscriere_student_la_disciplina(69, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(69, 'Fizica');
CALL inscriere_student_la_disciplina(69, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(69, 'Matematici speciale');
CALL inscriere_student_la_disciplina(69, 'Engleza');
CALL inscriere_student_la_disciplina(69, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(69, 'Proiectare logica');

-- Studentul 70
CALL inscriere_student_la_disciplina(70, 'Fizica');
CALL inscriere_student_la_disciplina(70, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(70, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(70, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(70, 'Matematici speciale');
CALL inscriere_student_la_disciplina(70, 'Proiectare logica');
CALL inscriere_student_la_disciplina(70, 'Engleza');

-- Studentul 71
CALL inscriere_student_la_disciplina(71, 'Engleza');
CALL inscriere_student_la_disciplina(71, 'Proiectare logica');
CALL inscriere_student_la_disciplina(71, 'Matematici speciale');
CALL inscriere_student_la_disciplina(71, 'Fizica');
CALL inscriere_student_la_disciplina(71, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(71, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(71, 'Analiza matematica I');

-- Studentul 72
CALL inscriere_student_la_disciplina(72, 'Proiectare logica');
CALL inscriere_student_la_disciplina(72, 'Fizica');
CALL inscriere_student_la_disciplina(72, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(72, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(72, 'Matematici speciale');
CALL inscriere_student_la_disciplina(72, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(72, 'Engleza');

-- Studentul 73
CALL inscriere_student_la_disciplina(73, 'Matematici speciale');
CALL inscriere_student_la_disciplina(73, 'Fizica');
CALL inscriere_student_la_disciplina(73, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(73, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(73, 'Engleza');
CALL inscriere_student_la_disciplina(73, 'Proiectare logica');
CALL inscriere_student_la_disciplina(73, 'Algebra si geometrie analitica');

-- Studentul 74
CALL inscriere_student_la_disciplina(74, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(74, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(74, 'Fizica');
CALL inscriere_student_la_disciplina(74, 'Matematici speciale');
CALL inscriere_student_la_disciplina(74, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(74, 'Engleza');
CALL inscriere_student_la_disciplina(74, 'Proiectare logica');

-- Studentul 75
CALL inscriere_student_la_disciplina(75, 'Proiectare logica');
CALL inscriere_student_la_disciplina(75, 'Fizica');
CALL inscriere_student_la_disciplina(75, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(75, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(75, 'Matematici speciale');
CALL inscriere_student_la_disciplina(75, 'Engleza');
CALL inscriere_student_la_disciplina(75, 'Analiza matematica I');

-- Studentul 76
CALL inscriere_student_la_disciplina(76, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(76, 'Matematici speciale');
CALL inscriere_student_la_disciplina(76, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(76, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(76, 'Fizica');
CALL inscriere_student_la_disciplina(76, 'Proiectare logica');
CALL inscriere_student_la_disciplina(76, 'Engleza');

-- Studentul 77
CALL inscriere_student_la_disciplina(77, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(77, 'Matematici speciale');
CALL inscriere_student_la_disciplina(77, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(77, 'Fizica');
CALL inscriere_student_la_disciplina(77, 'Proiectare logica');
CALL inscriere_student_la_disciplina(77, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(77, 'Engleza');

-- Studentul 78
CALL inscriere_student_la_disciplina(78, 'Matematici speciale');
CALL inscriere_student_la_disciplina(78, 'Fizica');
CALL inscriere_student_la_disciplina(78, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(78, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(78, 'Proiectare logica');
CALL inscriere_student_la_disciplina(78, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(78, 'Engleza');

-- Studentul 79
CALL inscriere_student_la_disciplina(79, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(79, 'Fizica');
CALL inscriere_student_la_disciplina(79, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(79, 'Engleza');
CALL inscriere_student_la_disciplina(79, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(79, 'Matematici speciale');
CALL inscriere_student_la_disciplina(79, 'Proiectare logica');

-- Studentul 80
CALL inscriere_student_la_disciplina(80, 'Fizica');
CALL inscriere_student_la_disciplina(80, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(80, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(80, 'Engleza');
CALL inscriere_student_la_disciplina(80, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(80, 'Matematici speciale');
CALL inscriere_student_la_disciplina(80, 'Proiectare logica');

-- Studentul 81
CALL inscriere_student_la_disciplina(81, 'Engleza');
CALL inscriere_student_la_disciplina(81, 'Matematici speciale');
CALL inscriere_student_la_disciplina(81, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(81, 'Proiectare logica');
CALL inscriere_student_la_disciplina(81, 'Fizica');
CALL inscriere_student_la_disciplina(81, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(81, 'Analiza matematica I');

-- Studentul 82
CALL inscriere_student_la_disciplina(82, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(82, 'Matematici speciale');
CALL inscriere_student_la_disciplina(82, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(82, 'Fizica');
CALL inscriere_student_la_disciplina(82, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(82, 'Engleza');
CALL inscriere_student_la_disciplina(82, 'Proiectare logica');

-- Studentul 83
CALL inscriere_student_la_disciplina(83, 'Matematici speciale');
CALL inscriere_student_la_disciplina(83, 'Fizica');
CALL inscriere_student_la_disciplina(83, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(83, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(83, 'Engleza');
CALL inscriere_student_la_disciplina(83, 'Proiectare logica');
CALL inscriere_student_la_disciplina(83, 'Analiza matematica I');

-- Studentul 84
CALL inscriere_student_la_disciplina(84, 'Fizica');
CALL inscriere_student_la_disciplina(84, 'Matematici speciale');
CALL inscriere_student_la_disciplina(84, 'Engleza');
CALL inscriere_student_la_disciplina(84, 'Proiectare logica');
CALL inscriere_student_la_disciplina(84, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(84, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(84, 'Algebra si geometrie analitica');

-- Studentul 85
CALL inscriere_student_la_disciplina(85, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(85, 'Fizica');
CALL inscriere_student_la_disciplina(85, 'Matematici speciale');
CALL inscriere_student_la_disciplina(85, 'Proiectare logica');
CALL inscriere_student_la_disciplina(85, 'Engleza');
CALL inscriere_student_la_disciplina(85, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(85, 'Analiza matematica I');

-- Studentul 86
CALL inscriere_student_la_disciplina(86, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(86, 'Matematici speciale');
CALL inscriere_student_la_disciplina(86, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(86, 'Fizica');
CALL inscriere_student_la_disciplina(86, 'Engleza');
CALL inscriere_student_la_disciplina(86, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(86, 'Proiectare logica');

-- Studentul 87
CALL inscriere_student_la_disciplina(87, 'Proiectare logica');
CALL inscriere_student_la_disciplina(87, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(87, 'Matematici speciale');
CALL inscriere_student_la_disciplina(87, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(87, 'Fizica');
CALL inscriere_student_la_disciplina(87, 'Engleza');
CALL inscriere_student_la_disciplina(87, 'Analiza matematica I');

-- Studentul 88
CALL inscriere_student_la_disciplina(88, 'Engleza');
CALL inscriere_student_la_disciplina(88, 'Proiectare logica');
CALL inscriere_student_la_disciplina(88, 'Fizica');
CALL inscriere_student_la_disciplina(88, 'Matematici speciale');
CALL inscriere_student_la_disciplina(88, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(88, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(88, 'Analiza matematica I');

-- Studentul 89
CALL inscriere_student_la_disciplina(89, 'Matematici speciale');
CALL inscriere_student_la_disciplina(89, 'Fizica');
CALL inscriere_student_la_disciplina(89, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(89, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(89, 'Engleza');
CALL inscriere_student_la_disciplina(89, 'Proiectare logica');
CALL inscriere_student_la_disciplina(89, 'Analiza matematica I');

-- Studentul 90
CALL inscriere_student_la_disciplina(90, 'Proiectare logica');
CALL inscriere_student_la_disciplina(90, 'Fizica');
CALL inscriere_student_la_disciplina(90, 'Matematici speciale');
CALL inscriere_student_la_disciplina(90, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(90, 'Engleza');
CALL inscriere_student_la_disciplina(90, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(90, 'Programarea calculatoarelor');

-- Studentul 91
CALL inscriere_student_la_disciplina(91, 'Fizica');
CALL inscriere_student_la_disciplina(91, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(91, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(91, 'Engleza');
CALL inscriere_student_la_disciplina(91, 'Matematici speciale');
CALL inscriere_student_la_disciplina(91, 'Proiectare logica');
CALL inscriere_student_la_disciplina(91, 'Analiza matematica I');

-- Studentul 92
CALL inscriere_student_la_disciplina(92, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(92, 'Fizica');
CALL inscriere_student_la_disciplina(92, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(92, 'Matematici speciale');
CALL inscriere_student_la_disciplina(92, 'Proiectare logica');
CALL inscriere_student_la_disciplina(92, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(92, 'Engleza');

-- Studentul 93
CALL inscriere_student_la_disciplina(93, 'Proiectare logica');
CALL inscriere_student_la_disciplina(93, 'Matematici speciale');
CALL inscriere_student_la_disciplina(93, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(93, 'Fizica');
CALL inscriere_student_la_disciplina(93, 'Engleza');
CALL inscriere_student_la_disciplina(93, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(93, 'Analiza matematica I');

-- Studentul 94
CALL inscriere_student_la_disciplina(94, 'Analiza matematica I');
CALL inscriere_student_la_disciplina(94, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(94, 'Matematici speciale');
CALL inscriere_student_la_disciplina(94, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(94, 'Proiectare logica');
CALL inscriere_student_la_disciplina(94, 'Fizica');
CALL inscriere_student_la_disciplina(94, 'Engleza');

-- Studentul 95
CALL inscriere_student_la_disciplina(95, 'Fizica');
CALL inscriere_student_la_disciplina(95, 'Programarea calculatoarelor');
CALL inscriere_student_la_disciplina(95, 'Matematici speciale');
CALL inscriere_student_la_disciplina(95, 'Proiectare logica');
CALL inscriere_student_la_disciplina(95, 'Algebra si geometrie analitica');
CALL inscriere_student_la_disciplina(95, 'Engleza');
CALL inscriere_student_la_disciplina(95, 'Analiza matematica I');



