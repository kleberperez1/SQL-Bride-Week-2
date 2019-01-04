/*
 SQLBridgeWeek2.sql
 */

USE howto;

DROP TABLE IF EXISTS Videos;
DROP TABLE IF EXISTS Reviewers;

CREATE TABLE Videos (
    Id INT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    Length INT NULL,
    Url VARCHAR(100) NOT NULL
);

INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 1, 'Vertigo', 128, 'https://www.youtube.com/watch?v=WrOKBmsOw7I');
INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 2, 'The Innocents', 100, 'https://www.youtube.com/watch?v=lIuEEP_4d0E');
INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 3, 'Amadeus', 160, 'https://www.youtube.com/watch?v=tgZhaFFNVc4');
INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 4, 'Titanic', 194, 'https://www.youtube.com/watch?v=kRC4e3pEIpI');
INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 5, 'Good Will Hunting', 126, 'https://www.youtube.com/watch?v=hIdsjNGCGz4');

SELECT *
  FROM Videos;

CREATE TABLE Reviewers (
    User VARCHAR(50) NOT NULL,
    Rating INT NULL,
    Review VARCHAR(10),
    vidId INT REFERENCES Reviewers
);

INSERT INTO Reviewers ( User, Rating, Review, vidId) VALUES ( 'Asher', 4, 'Loved it!', 2);
INSERT INTO Reviewers ( User, Rating, Review, vidId) VALUES ( 'Cyd', 5, 'Loved it!', 3);
INSERT INTO Reviewers ( User, Rating, Review, vidId) VALUES ( 'Bob', 5, 'Loved it!', 5);

SELECT *
  FROM Reviewers;

SELECT * 
  FROM Videos v INNER JOIN Reviewers r
  ON   v.Id = r.vidId;


