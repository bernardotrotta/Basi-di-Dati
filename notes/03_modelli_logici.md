<link href="styles.css" rel="stylesheet"></link>

# Modelli logici
Modelli le quali strutture, pur essendo astratte, riflettono una specifica costruzione logico-matematica (alberi, grafi, tabelle, oggetti), con cui i dati possono essere organizzati all'interno del calcolatore. I modelli logici sono alla base delle differenziazioni dei DBMS. Di seguito i modelli logici più utilizzati:

- **Modello relazionale:** basato su un modello tabellare dei dati
- **Modello gerarchico:** basato su strutture ad albero, utilizzato nei primi DBMS (anni 60)
- **Modello reticolare:** basato sui grafi, estende il modello gerarchico
- **Modello a oggetti:** basato sui paradigmi della *programmazione ad oggetti,* estende il modello relazionale
- **Modello semi-strutturato (XML):** Deriva dal modello gerarchico ma è più flessibile

## Modello relazionale
In informatica il modello relazionale è una teoria matematica che offre gli strumenti concettuali per modellare una base di dati in termini di valori atomici e relazioni tra di essi.

Codice utilizzato nel calcolatore
- Non valgono gli attributi multi-valore
- Un modello relazionale è poco efficiente dal punto di vista computazionale ma robusto per la consistenza dei dati, perché caratterizzato da un numero di vincoli elevato che devono essere rispettati in qualunque momento.

### Modello relazionale 
È un modello logico che definisce organizza i dati secondo record a struttura fisica rappresentabili attraverso tabelle. 
Secondo il modello relazionale, ogni istanza di una relazione è descritta dagli attributi che devono essere istanziati. La relazione un insieme di valori definiti secondo un preciso ordine 

### Schemi
In ogni base di dati si possono distinguere:
1. Schema
2. Istanze
   
**Esempio:**
Uno schema della relazione "Insegnamento" definita su due attributi "Corso" e "Titolare" è il seguente:
Insegnamento(Corso, Titolare). Le n-uple contenenti gli attributi, sono dette istanze della relazione. 

### Livelli di astrazione
Lo schema progettuale è dato da un diagramma secondo il modello entità-relazione, lo schema logico di una base di dati è l'insieme di tutti gli schemi di tabelle definite al suo interno. 

Dallo schema concettuale si deriva: 
- **Schema logico:** descrive la struttura dell'intera base dei dati mediante il modello logico adottato dai DBMS (reticolare, gerarchico, relazionale).
- **Schema interno:** Implementa lo schema logico mediante le strutture fisiche di memorizzazione.

## Definizioni

- **Schema di relazione:** Indicato dal simbolo $R(X)$ dove:
  - $R$ è detto *nome della relazione*;
  - $X$ è un insieme di (nomi) attributi $X = \{A_1,A_2,...,A_n\}$, a ciascun attributo è assegnato un **dominio**;
- **Schema di base di dati:** È un'insieme di schemi relazione, del tipo: 
$$R = \{R_1(X_1),R_2(X_2),...,R_n(X_n),\}$$
- **Istanza di relazione:** È definita sulla base di uno schema $R(X)$, è un insieme $r$ di tuple su $X$, talvolta si usa la notazione r(X) per indicare una relazione sull'insieme di attributi $X$, descrivendo così al tempo stesso lo schema e l'istanza
- **I**$

**Nota:** in una 


## Informazione incompleta
Le tuple che compongono la base di dati devono essere omogenee. Quindi in ogni tupla ad ogni attributo deve essere associato un valore. non sempre questo è possibile 
- **Soluzione 1:** inserire un valore non utilizzato, ma potrebbero non esistere valori non utilizzati oppure,, potrebbero essere utilizzati in futuro. In più, chi usa la mia base di dati deve sapere che convenzione sto utilizzando. 
- **Soluzione 2;
- 
**

## Vincoli di integrità
Non tutte le combinazioni possibili di valori dei domini su cui è definita una relazione sono accettabili.
- Alcuni attributi possono assumere valori sono in un certo intervallo. 
- Alcuni attributi devono essere diversi in ogni tupla della stessa relazione alcuni  valori possono essere
