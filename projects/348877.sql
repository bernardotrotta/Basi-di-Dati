create database db_348877;
use db_348877;
create TABLE CLIENTI (Codice_Cliente int, Nome varchar(255), Cognome varchar(255), NomeDitta varchar(255), Indirizzo varchar(255), Città varchar(255), Telefono int);
create TABLE CATEGORIE_PRODOTTI (Codice_Categoria int, Nome varchar(255));
create TABLE PRODOTTI (Codice_Prodotto int, Nome varchar(255), Produttore varchar(255), Cod_Categoria varchar(255), Scadenza date, PrezzoVendita float);
create TABLE VENDITE (
    Ordine int, 
    Cod_Cliente int, 
    Data date, 
    Quantità int, 
    Cod_Prodotto int, 
    Sconto int);