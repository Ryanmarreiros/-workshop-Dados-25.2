CREATE SCHEMA SoulsLike;

USE SoulsLike;

CREATE TABLE Desenvolvedor (
    Id_dev INT NOT NULL,
    Nome VARCHAR(100),
    Pais VARCHAR(45),
    PRIMARY KEY (Id_dev)
);

CREATE TABLE Jogo (
    Id_jogo INT NOT NULL,
    Titulo VARCHAR(100),
    Data_lancamento DATE,
    Genero VARCHAR(45),
    Dev_id INT,
    PRIMARY KEY (Id_jogo),
    FOREIGN KEY (Dev_id) REFERENCES Desenvolvedor (Id_dev)
);

INSERT INTO Desenvolvedor (Id_dev, Nome, Pais) VALUES
(1, 'FromSoftware', 'Japão'),
(2, 'Team Ninja', 'Japão'),
(3, 'Hexworks', 'Espanha'),
(4, 'Neowiz Games', 'Coreia do Sul'),
(5, 'Deck13 Interactive', 'Alemanha'),
(6, 'Cold Symmetry', 'Estados Unidos'),
(7, 'CI Games', 'Polônia'),
(8, 'Namco Bandai', 'Japão'),
(9, 'Shift Up', 'Coreia do Sul'),
(10, 'Round8 Studio', 'Coreia do Sul');

INSERT INTO Jogo (Id_jogo, Titulo, Data_lancamento, Genero, Dev_id) VALUES
(1, 'Dark Souls', '2011-09-22', 'Soulslike/RPG', 1),
(2, 'Bloodborne', '2015-03-24', 'Soulslike/RPG', 1),
(3, 'Sekiro: Shadows Die Twice', '2019-03-22', 'Soulslike/Ação', 1),
(4, 'Nioh', '2017-02-07', 'Soulslike/Ação', 2),
(5, 'Nioh 2', '2020-03-12', 'Soulslike/Ação', 2),
(6, 'Lords of the Fallen', '2023-10-13', 'Soulslike/RPG', 3),
(7, 'Lies of P', '2023-09-19', 'Soulslike/RPG', 4),
(8, 'The Surge', '2017-05-16', 'Soulslike/Sci-Fi', 5),
(9, 'Mortal Shell', '2020-08-18', 'Soulslike/RPG', 6),
(10, 'Code Vein', '2019-09-27', 'Soulslike/Anime', 7);

DELETE FROM Jogo WHERE Id_jogo = 8;

SELECT * FROM Jogo;

SELECT SUM(Id_jogo) FROM Jogo;

SELECT MAX(Nome) FROM Desenvolvedor;

SELECT AVG(Id_dev) FROM Desenvolvedor;

SELECT Genero, COUNT(*) AS total_jogos
FROM Jogo
GROUP BY Genero;

SELECT Dev_id, COUNT(*) AS total_jogos
FROM Jogo
GROUP BY Dev_id;

SELECT Jogo.Titulo, Desenvolvedor.Nome AS Desenvolvedor
FROM Jogo
JOIN Desenvolvedor ON Jogo.Dev_id = Desenvolvedor.Id_dev;
