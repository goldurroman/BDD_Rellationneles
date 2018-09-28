DROP TABLE specialite CASCADE CONSTRAINTS;
DROP TABLE docteur CASCADE CONSTRAINTS;
DROP TABLE dossierpatient CASCADE CONSTRAINTS;

DROP TABLE ordonnancemedicaments CASCADE CONSTRAINTS;
DROP TABLE consultation CASCADE CONSTRAINTS;
DROP TABLE ordonnance CASCADE CONSTRAINTS;

DROP TABLE ordonnanceChirurgie CASCADE CONSTRAINTS;
DROP TABLE categories CASCADE CONSTRAINTS;
DROP TABLE medicament CASCADE CONSTRAINTS;


CREATE TABLE specialite(
code VARCHAR(4),
titre VARCHAR(70),
description VARCHAR(1500),
CONSTRAINT specialite_pk PRIMARY KEY (code)
);

CREATE TABLE docteur(
matricule VARCHAR(6),
nomM VARCHAR(50) NOT NULL,
specialite VARCHAR(150) NOT NULL,
ville VARCHAR(50),
adresse VARCHAR(250),
niveau NUMBER(2),
nbrPatients NUMBER(5),
CONSTRAINT docteur_matricule_pk PRIMARY KEY(matricule),
CONSTRAINT docteur_specilaite_fk FOREIGN KEY(specialite) REFERENCES specialite(code)
);

CREATE TABLE dossierpatient(
numDos VARCHAR(6) ,
nomP VARCHAR(50) NOT NULL,
prenomP VARCHAR(50) NOT NULL,
genre CHAR(1),
numAS VARCHAR(9) UNIQUE,
dateNaiss DATE,
dateC DATE,
matricule VARCHAR(6),
CONSTRAINT dossierpatient_numDos_pk PRIMARY KEY(numDos),
CONSTRAINT dossierpatient_matricule_fk FOREIGN KEY (matricule) REFERENCES docteur(matricule),
CONSTRAINT dossierpatient_genre_chk CHECK ( genre IN ('M','F'))
);



CREATE TABLE categories(
idCategorie VARCHAR2(3),
nom VARCHAR2(100) NOT NULL,
description VARCHAR2(1500),
CONSTRAINT categories_pk PRIMARY KEY(idCategorie)
);

CREATE TABLE medicament(
idMed VARCHAR(5),
nomMed VARCHAR(100) NOT NULL,
prix Number(6,2)  DEFAULT 0,
idCategorie VARCHAR2(3),
CONSTRAINT medicament_ck CHECK(prix>=0),
CONSTRAINT medicament_pk PRIMARY KEY(idMed),
CONSTRAINT medicament_categories_fk FOREIGN KEY(idCategorie) REFERENCES categories(idCategorie)
);

CREATE TABLE ordonnance(
numOrd VARCHAR(5),
recommandations VARCHAR(1500),
typeO VARCHAR(12),
dateC DATE,
CONSTRAINT ordonnance_pk PRIMARY KEY (numOrd),
CONSTRAINT typeO_ck CHECK (typeO ='Chirurgie' OR typeO ='Médicaments')
);


CREATE TABLE ordonnancemedicaments(
numOrd VARCHAR2(5),
idMed VARCHAR2(5),
nbBoites NUMBER(2) DEFAULT 0,
CONSTRAINT ordmedicaments_ck CHECK(nbBoites>=0),
CONSTRAINT ordmedicaments_pk PRIMARY KEY(numOrd,idMed),
CONSTRAINT ordmedicaments_medicament_fk FOREIGN KEY(idMed) REFERENCES medicament(idMed),
CONSTRAINT ordmedicaments_ordonnance_fk FOREIGN KEY(numOrd) REFERENCES ordonnance(numOrd)
);


CREATE TABLE consultation(
codeDocteur VARCHAR(6),
numDos VARCHAR(6),
dateC DATE,
diagnostic VARCHAR(1500) NOT NULL,
numOrd VARCHAR(5),
CONSTRAINT consultation_pk PRIMARY KEY (codeDocteur,numDos,dateC),
CONSTRAINT consultation_dossierpatient_fk FOREIGN KEY (numDos) REFERENCES dossierpatient(numDos),
CONSTRAINT consultation_docteur_fk FOREIGN KEY (codeDocteur) REFERENCES docteur(matricule),
CONSTRAINT consultation_ordonance_fk FOREIGN KEY (numOrd) REFERENCES ordonnance(numOrd)
);



CREATE TABLE ordonnanceChirurgie(
numOrd VARCHAR(5),
rang NUMBER(2),
nomChirurgie VARCHAR(100),
CONSTRAINT ordChirurgie_ordonnance_fk FOREIGN KEY (numOrd) REFERENCES ordonnance(numOrd),
CONSTRAINT ordonnanceChirurgie_pk PRIMARY KEY (numOrd,rang)
);
