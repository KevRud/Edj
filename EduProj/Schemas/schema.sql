DROP TABLE IF EXISTS matrices;
DROP TABLE IF EXISTS states;
DROP TABLE IF EXISTS articles;

CREATE TABLE matrices (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rows INTEGER,
    cols INTEGER,
    DATA VARCHAR NOT NULL
);

CREATE TABLE articles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR NOT NULL,
    stateOrder VARCHAR NOT NULL
);

CREATE TABLE states (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR NOT NULL,
    comment VARCHAR NOT NULL,
    matrixId INTEGER,
    articleId INTEGER,
    FOREIGN KEY(matrixId) REFERENCES matrices(id), 
    FOREIGN KEY(articleId) REFERENCES articles(id)
);



