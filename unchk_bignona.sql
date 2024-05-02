-- Création de la base de données
DROP DATABASE unckh_bignona;
CREATE DATABASE unckh_bignona;

-- Sélectionner la base de données à utiliser
USE unckh_bignona;

-- Table pour les étudiants
CREATE TABLE etudiants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    date_naissance DATE,
    email VARCHAR(100),
    telephone VARCHAR(20),
    adresse VARCHAR(255)
);

-- Table pour les formations
CREATE TABLE formations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    description TEXT
);

-- Table pour les matières
CREATE TABLE matieres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    formation_id INT,
    FOREIGN KEY (formation_id) REFERENCES formations(id)
);

-- Table pour les notes
CREATE TABLE notes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    etudiant_id INT,
    matiere_id INT,
    note DECIMAL(4,2),
    FOREIGN KEY (etudiant_id) REFERENCES etudiants(id),
    FOREIGN KEY (matiere_id) REFERENCES matieres(id)
);
