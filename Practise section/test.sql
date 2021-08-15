CREATE DATABASE IF NOT EXISTS practise;
USE practise;

CREATE TABLE IF NOT EXISTS table1 (
    colA INT,
    colB VARCHAR(40),
    colC DATETIME DEFAULT '2020-01-01 00:00:00',

    foreign_colA INT,
    foreign_colP VARCHAR(30),
    CONSTRAINT pk1 PRIMARY KEY(colA),
    CONSTRAINT fk1 FOREIGN KEY(foreign_colA) REFERENCES table1(colA) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS table2 (
    colP VARCHAR(30),
    colQ CHAR(10),
    colR DOUBLE NOT NULL,
    foreign_colA INT,

    CONSTRAINT pk2 PRIMARY KEY(colP),
    CONSTRAINT uq UNIQUE(colQ),
    CONSTRAINT fk2 FOREIGN KEY(foreign_colA) REFERENCES table1(colA) ON DELETE CASCADE
);

ALTER TABLE table1
ADD CONSTRAINT fk3 FOREIGN KEY(foreign_colP) REFERENCES table2(colP) ON DELETE CASCADE;

