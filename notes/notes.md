# Basi di Dati
**Docente: Stefano Cagnoni**
--
Il corso non è più di basi di dati e web ma solo basi di dati. 

## Programma
- Dati e DBMS relazionali
- SQL
- Transazioni
- Badi di Dati NoSQL
- Modello entità/realzione
- Traduzione da modello E/R a modello relazionale
- Normalizzazione

## Appunti sparsi
- Il modello logico è il modello con cui i dati vengono rappresentati all'interno del calcolatore.
- Un modello relazionale è poco efficiente dal piunto di vista computazionale ma robusto per la consistenza dei dati, perché caratterizzato da un numero di vincoli elevato che devono essere rispettati in qualunque momento.
- La normalizzazione è una valutazione a posteriori per verificare che lo schema realizzato dia garanzie
- Le transazioni sono operazioni che garantiscono l'assenza di problemi nel momento in cui viene fatto un accesso multiplo e contemporaneo al dato.
- Un database SQL usa dei record json che sono totalmente liberi e svincolati

```
Atzeni, Ceri. Fraternali, Paraboschi, Torlone Basi di Dati, 6a ed., McGraw-Hill 2023
```

## Strumenti di studio
- Novella matheducation
- Guardare gli appunti

## Dato
L'informazione è tutto ciò che riceviamo e ci aiuta a migliorare la conoscenza sul mondo che ci circonda. Un dato è la formalizzazione della informazione che ci raggiunge e può essere espresso sottofora di linguaggio. A livello informatico un dato è una informazione utilizzibaile in un qualche modo all'intedno del calcolatore
Una basi di dati è una collezione di dati strutturata secondo un modello scelto (relazionale, logico, ecc...)

## Database Managment System (DBMS) 
Sistema software che permette di gestire le basi di dati
È formalmente visto come una estenzione delle funzionalità di un file system. 
Il concetto di **indipendenza dei dati**
sviluppando un applicazione da zero i dati restano confinati sul DBMS  Un altro vantaggio sta nel poter aggiornare l'applicazine senza dover aggiornare tutti i dati.Le basi di dati gestite dai DBSMS sono collezioni di dati 
### Pro
- Le applicazioni possono accedere al database in maniera indipendente. 
- Le informazioni che abbiamo sul DBMS non spariscoo più se l'applicazione non è in esecuzione.

### Contro
- Cambiando la base di dati potrei avere la necessità di risturtturare tutte le applicazioni che fanno riferimento a quel database. Il problema è però facilmente risolvibile utilizzando le "liste" (Questa parte è da rivedere).

## Caratteristiche di un DBMS
- Affidabilità: non devo perdere i dati.
- Privatezza dei dati: Garantire dei privilegi a certe categorie di utenti.
- Efficienza: Capacità di eseguire in modo rapido le operazioni richieste
- Efficacia: Capacità di eseguire in modo corretto le operazioni richieste

## Architettura Client-Server
Utente, Applicazioe, Richiesta al Server, Richiesta all'interprete SQL, Risposta HTML

## Modelli dei dati
Di seguito le fasi della progettazione di una base dei dati
- Raccolta delle specifiche
- Progettazione concettuale
- Progettazione logica
- Progettazione fisica

### Progettazione concettuale
Modello e  diagramma entità-relazione, bisogna rappresentare ogni concetto e le informazioni che servono per caratterizzarlo in modo completo. 
Esame collega il concetto di studente al concetto di insegnamento, 
```
Esame = Relazione
Studente = Concetto
Insegnamento = Concetto
```

> **Nota:** Il diagramma entità relazione prevede il concetto di *ereditarietà* 

Esiste il concetto di generalizzazione in cui è possibile gerarchizzare e specializzare i concetti.

Riodinamento delle specificche in funzione del modello dei dati che utilizzzo

### Modelli concettuali
Diagrammi di flusso
Descrivono la realtà mediante concetti astratti ma sono soggetti a precise regole. Descrivono i concetti del mondo reale
Il modello concettuale che useremo è il modello enetità/relazione
- Attributi multi-valore: a livello concettuale un concetto è a sua volta suddifiso in più sotto concetti: prendendo il caso del concetto di indirizzo, si ha la via, codice civico, interno, codice postale, ecc...

### Modello relazionale
In informatica il modello relazionale è una teoria matematica che offre gli strumenti concettuali per modellare una base di dati in termini di valori atomici e relazioni tra di essi.

Codice utilizzato nel calcolatore
- Non valgono gli attributi multi-valore
- 

## Problema fondamentale
Descrivere una realtà isolata rispetto al sesto del mondo nel modo più completo possibile, identificando tutti i concetti che lo compongono, attributi compresi. 
Importante eliminare il superfluo, se tutti gli elemennti fanno riferimento ad una sola realtà, non è necessario identificare quest ultima come concetto. 

Nel momento in cui identifico più concetti, è necessario che ci sia almeno una relazione tra loro

Un concetto ch ecollega altri concetti e ceh quindi non puo esistere se non esistono i concetti che collega si chiama relazione o asociazione. 

- Una relazione non è banalmente definibile soltato attrverso i riferimenti agli altri ogetti, ma anche essa è caratterizzata da specifici attributi

**Esempio:** Se la vendità è la *relazione*, la sua descrizione dovrà contenere l'informazione relativa al cliente cui viene venduto un profotto e al prodotto che ne è soggetto.

Nel caso del modello relazionale, ogni istanza del concetto (ogni riga della tabella) dovrà essere diversa da tutte le altre. 

Nel modello concettuale entità relazione, i concetti vengono rappresentati con rettangoli, la relazione con dei robi, la coppia numerica indica numero minimo e numero massimo in cui una istanza di una certa entità è coinvolta in una relazione

**Esempio:**
$$\text{Prodotto} \rightarrow \text{Acquisto} \rightarrow \text{Cliente}$$

Quei valori si chiamano cardinalità minima o numero di occorrenza minima. 

## Progettazione logica e Modelli logici
A differenza dei modelli concettuali, questi descrivono la struttura con cui i dati sono organizzati all'interno del calcolatore.
- Fanno riferimento a concetti che sono ancora astratti, compatibili però con le strutture dati di un calcolatore
Di seguito i modelli logici più utilizzati
1. **Relazionale:** basato su un modello tabellare dei dati
2. **Gerarchico:** basato su strutture ad albero, utilizzato nei primi DBMS (anni 60)
3. **Reticolare:** basato sui grafi, estende il modello gerarchico
4. **A oggetti:** basato sui paradigmi della *programmazione ad oggetti,* estende il modello relazionale
5. **XML (semistruturato):** Deriva dal modello gerarchico ma è più flessibile

### Modello relazionale 
È un modello logico che definisce organizza i dati secondo record a struttura fisa rappresentabili attraverso tabelle. 
Secondo il modello relazionale, ogni istanza di una relazione è descritta dagli atributi che devono essere istanziati. La relazione ò un insieme di valori definiti secondo un preciso ordine 

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
- **Schema interno:** Implemena lo schema lofico mediante le strutture fisiche di memorizzazione.
- 