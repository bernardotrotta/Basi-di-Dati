create database db_348877;
use db_348877;
create TABLE CLIENTI 
(
    Codice_Cliente int PRIMARY KEY,
    Nome varchar(255), 
    Cognome varchar(255), 
    NomeDitta varchar(255), 
    Indirizzo varchar(255), 
    Città varchar(255), 
    Telefono int
);

create TABLE CATEGORIE_PRODOTTI 
(
    Codice_Categoria int PRIMARY KEY, 
    Nome varchar(255)
);

create TABLE PRODOTTI 
(
    Codice_Prodotto int PRIMARY KEY, 
    Nome varchar(255), 
    Produttore varchar(255),
    Cod_Categoria int, 
    Scadenza date, 
    PrezzoVendita float,
    foreign key (Cod_Categoria) references CATEGORIE_PRODOTTI(Codice_Categoria)
);

create TABLE VENDITE
(
    Ordine int, 
    Cod_Cliente int, 
    Data date, 
    Quantità int, 
    Cod_Prodotto int, 
    Sconto int,
    PRIMARY KEY (Cod_Cliente, Data, Cod_Prodotto),
    foreign key (Cod_Cliente) references CLIENTI(Codice_Cliente),
    foreign key (Cod_Prodotto) references PRODOTTI(Codice_Prodotto)
);