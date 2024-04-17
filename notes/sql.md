# Comandi
``` /usr/local/mysql/bin/mysql -u root -p ```
show databases
create database database_name
use database_name
show tables
create tables (
    attribute_name data_type,
);
describe table_name
insert into table_name value ( attribute_name data_type);
select * from table_name 
select attribute_name from table_name 
select * attribute_name from table_name where attribute_name = "value";

## Comandi più utilizzati di SQL
code
# Tipi di dati
1. Character
2. Bit
3. Tipi numerici esatti (auto-increment)
4. Tipi numerici approssimati
5. Data e ora (istante di tempo, timestamp)
6. Intervalli temporanei (intervallo)

## Characters
Rappresenta singoli caratteri o stringhe

```character [varying] [(lunghezza)]```
```character(20)```
Lunghezza variabile: ```character varying(100)```
```character(20) character set```

## Bit
Assume solo valori 0 e 1
```
bit [varying] [(lunghezza)]
```

##  Intervalli Temporali
```
interval UnitàDiTempo1 [(Precisione)] [to UnitàDiTempo 2 [(Precisione)]]
```
Si usano intervalli nei 2 sottointervalli [year, month] e [day,second]

```
interval day(4 to second(6)) rappresenta l'intervallo [0,10000) giorni e secondi con precisione al milionesimo di s
```

## Tipi numerici esatti
Valori interi con parte decimale di lunghezza prefissata

``` sql
numeric [(Precisione [,Scala])]
decimal [(Precisione [,Scala])] --virgola fissa
integer
smallint

--Esempio: 
decimal(4) --numeri da -9999 a 9999 
numeric(6,3) --numeri da -999.999 a 999.999
```

## Tipi numerici approssimati
```sql
float [(Precisione)]
double_precision
real
```

## Data e ora
```sql
date
time [(Precisione)][with time zone]
timestamp [(Precisione)][with time zone]
```
Ciascun tipo è divisibile in campi.
```sql
date --ammette campi year, month e day
time --ammette campi hour, minute, second
timestamp --ammette tutti i campi da year a second

20:03:04+1:00 -- I campi sono divisi da ":"
```
I campi sono divisi da ":"

## Definizione di domini
È possibile definire custom data types, chiamati domini
Basai su tipi di dati già esistenti. 
```sql
create domain NomeDominio as TipodiDato [ValDefault] [Vincolo]
```
Non esiste il concetto di variabile strutturata: array = serie di tuple

- Se modifico la definizione di un dominio, di fatto riscrivendo lo stesso comando visto in precedenza, la modifica si propaga su tutte le tabelle, con eventuali errori. 

```sql
create domain Voto as smallint
default null
check (value >= 18 and value <= 30)
```

## Definizione di schemi
È possibile definire uno schema di base di dati come collezione di oggetti. 
 ```sql
create [database | schema] [IF NOT EXISTS] db_name [create_option]

create_option: [DEFAULT] {
CHARACTER SET [=] charset_name |
COLLATE [=] collation_name | 
ENCRYPTION [=] {'Y' | 'N'} }
 ```
 ## Definizione di tabelle
 ```sql
create table "NomeTabella" (
NomeAttributo Dominio [default ValDefault] [Vincoli] 
)
 ```

 Una tabella è inizialmente vuota e chi la crea possiede tutti i diritti su di essa

## Valori di default
Un nuovo default sostituisce il precedente, posso metterlo nella definizione della tabella, esiste l'istruzione set default che viene inserita nell'istruzione alter table in cui è compreso set default
```sql
default
```

## Vincoli intra-relazionali
not null indica che il valore nullo non è ammesso su uno specifico attributo
Si impone che sia inserito in ogni caso un valore, salvo che non sia già definito un valore di dafeault
Sql non distingue i diversi tipi di valore nullo. se è necessario ,bisogna definire opportuni domini. 
come detto il valore nullo indica una generica mancanza di informazione
unique indica che l'insieme di attributi deve essere una superchiave per la tabella.
primary_key definisce la chiave primaria. Può e deve essere definita una sola chiave primaria per ogni tabella. 
Tutti gli attributi delal chiave primaria sono automaticamente ```not null```
```sql
select
```
## Vincoli inter-relazionali
- Vincoli relativi ad una singola tabella
Vincolo di integrità referenziale
```sql

```

## Vincoli 
- Implicano collegamenti logici tra tabelle diverse, tabella interna (in usp) e tabella esterna.

