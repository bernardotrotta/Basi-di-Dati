# Basi di Dati

## Informazioni sul corso
- **Anno accademico:** 2023/2024 
- **Docente:** Stefano Cagnoni
- **Studente**: Bernardo Trotta

### Programma del corso
1. Dati e DBMS relazionali
2. SQL
3. Transazioni
4. Badi di Dati NoSQL
5. Modello entità/realzione
6. Traduzione da modello E/R a modello relazionale
7. Normalizzazione
  
### Bibliografia consigliata
- Atzeni, Ceri. Fraternali, Paraboschi, Torlone, Basi di Dati, 6a ed., McGraw-Hill 2023

## Definizioni preliminari
- **Informazione:** Tutto ciò che riceviamo e ci aiuta a migliorare la conoscenza sul mondo che ci circonda.
- **Dato:** È la formalizzazione della informazione e può essere espressa sottoforma di linguaggio. A livello informatico un dato è una informazione fruibile dal calcolatore.
- **Base di dati:** collezione di dati strutturata secondo un modello scelto (relazionale, logico, ecc...).
- **Normalizzazione:** valutazione a posteriori per verificare che lo schema realizzato dia garanzie.
- **Transazioni:** operazioni che garantiscono l'assenza di problemi nel momento in cui viene fatto un accesso multiplo e contemporaneo al dato.
- Un database SQL usa dei record json che sono totalmente liberi e svincolati

## Database Managment System (DBMS)
Sistema software che permette di gestire le *basi di dati*.
È formalmente visto come una estenzione delle funzionalità di un file system. 

### Vantaggi
- **Indipendenza dei dati:** sviluppando un applicazione da zero i dati restano scollegati da essa e confinati sul DBMS. Conseguenza di ciò è la possibilità di poter effettuare modifiche al progetto senza dover toccare i relativi dati. Conseguenze di ciò sono:
  - Modello unificato
  - Controllo centralizzato
  - Condivisione
- **Persistenza:** Le informazioni che abbiamo sul DBMS non spariscoo più se l'applicazione non è in esecuzione.
- **Efficienza:** capacità di svolgeere operazioni secondo tempi ragionevoli.
- **Affidabilità:** I DBMS garantiscono la conservabilità dei dati.
- **Privatezza dei dati:** Ciascun utente, opportunamente riconosciuto, viene abilitato a svolgere solo determinate azioni sui dati attraverso meccanismi di autorizzazione. 
- **Efficacia:** Capacità di eseguire in modo corretto le operazioni richieste.

### Svantaggi
- **Rigidità:** Modifiche alla struttura della base di dati possono richiedere la ristrutturazione delle applicazioni dipendenti, comportando potenziali costi di risorse e tempo. Tuttavia, l'adozione di pratiche di progettazione flessibili e l'uso di strumenti come le "viste" possono mitigare questo problema.
- **Complessità:** Prodotti complessi che richiedono investimenti in hardware, software e personale

## Progettazione di una base di dati
La progettazione di una base di dati si svolge attraverso una serie di fasi specifiche elencate di seguito: 
1. Raccolta delle specifiche
2. Progettazione concettuale
3. Progettazione logica
4. Progettazione fisica

>Nota: ogni fase fa riferimento ad una strutturazione specica detta *modello dei dati* 

## Modelli di dati
Insiemi di concetti utilizzati per organizzare e strutturare i dati di interesse. Il loro utilizzo è legato ad una relativa fase della progettazione, si distinguono in:
- **Modelli concettuali**
- **Modelli logici**
  
## Modelli concettuali 
I modelli concettuali non sono rivolti tanto a descrivere la realizzazione informatica, quanto piuttosto la realtà di interesse mediante l'astrazione di concetti. In questo ambito si vede un ampio utilizzo di *diagrammi di flusso*.
Si usano nella fase di *progettazione concettuale*
Di seguito alcuni modelli concettuali:
- **Modello entità-relazione:**
- **Modello dimensionale:**
- **Modello concettuale ad oggetti:**

### Premessa

Consideriamo un frammento della realtà che può essere isolato e identificato rispetto al "resto del mondo". L'obiettivo è descriverlo nel modo più completo possibile, creando un modello concettuale che sia:

- **Completo:** Deve includere tutti gli elementi (concetti) che compongono il frammento di realtà e che lo distinguono da altri.
Ogni elemento deve essere descritto correttamente, identificando tutte le sue caratteristiche (attributi) rilevanti nel contesto considerato e ignorando quelle superflue.
- **Coerente:** Tutti i concetti identificati devono essere logicamente collegati tra loro. Non ci devono essere concetti (o insiemi di concetti) "isolati" dagli altri.

Se due concetti possono essere descritti indipendentemente l'uno dall'altro (es. "Cliente" e "Prodotto"), non possono costituire la descrizione completa di un contesto comune.

### Introduzione alle relazioni
Per descrivere un contesto completo, come ad esempio un negozio, non è sufficiente considerare solo i concetti di "Cliente" e "Prodotto". Serve un elemento che li colleghi, ossia una relazione o associazione.

### Caratteristiche delle relazioni:

Una relazione non può esistere indipendentemente dai concetti che collega.
La relazione è caratterizzata da specifici attributi.

    Esempio:

    La descrizione di una vendita in un negozio includerà:

    Cliente: identificativo, nome, cognome, etc.
    Prodotto: codice, descrizione, prezzo, etc.
    Relazione di vendita: data, quantità, prezzo di vendita, etc.

**Attributi multi-valore:** si riferiscono a quegli attributi di un'entità che possono assumere più di un valore per ogni istanza dell'entità stessa. Ad esempio, un'entità "Persona" potrebbe avere un attributo "Telefono" che può contenere più numeri di telefono. Gli attributi multi-valore possono essere gestiti nei modelli concettuali e logici attraverso appropriate strutture dati, come array o elenchi.

## Modelli logici
Modelli le quali strutture, pur essendo astratte, riflettono una specifica costruzione locio-matematica (alberi, grafi, tabelle, oggetti), con cui i dati possono essere organizzati all'interno del calcolatore. Di seguito i modelli logici più utilizzati:

- **Modello relazionale:** basato su un modello tabellare dei dati
- **Modello gerarchico:** basato su strutture ad albero, utilizzato nei primi DBMS (anni 60)
- **Modello reticolare:** basato sui grafi, estende il modello gerarchico
- **Modello a oggetti:** basato sui paradigmi della *programmazione ad oggetti,* estende il modello relazionale
- **Modello semistrutturato (XML):** Deriva dal modello gerarchico ma è più flessibile

## Modello relazionale
In informatica il modello relazionale è una teoria matematica che offre gli strumenti concettuali per modellare una base di dati in termini di valori atomici e relazioni tra di essi.

Codice utilizzato nel calcolatore
- Non valgono gli attributi multi-valore
- Un modello relazionale è poco efficiente dal piunto di vista computazionale ma robusto per la consistenza dei dati, perché caratterizzato da un numero di vincoli elevato che devono essere rispettati in qualunque momento.
- 
## Architettura Client-Server
Utente, Applicazioe, Richiesta al Server, Richiesta all'interprete SQL, Risposta HTML



Nel modello concettuale entità relazione, i concetti vengono rappresentati con rettangoli, la relazione con dei robi, la coppia numerica indica numero minimo e numero massimo in cui una istanza di una certa entità è coinvolta in una relazione

**Esempio:**
$$\text{Prodotto} \rightarrow \text{Acquisto} \rightarrow \text{Cliente}$$

Quei valori si chiamano cardinalità minima o numero di occorrenza minima. 




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


### Note
Aggiungi informazioni sulla architettura standard (ANSI/SPARC) a tre livelli per DBMS
- Concetto di vista


## Accesso alla base di dati
È possibile accedere alla base di dati tramite i seguenti strumenti
- Linguaggi testuali interattivi (Linea di comando, interprete SQL, ecc...)
- Comandi inclusi in estenzioni di linguaggi tradizionali (API di Python)
- Comandi inclusi in linguaggi di sviluppo ad hoc (fornita dal DBMS come ambiente di sviluppo orientato ad ottimizare le sue prestazioni)
- Interfacce grafiche amichevoli (Microsoft Access)


**Linguaggi di definizione di dati:** Attraverso SQL possiamo popolare la base di dati 
**Linguaggi di manipolazione di dati:** Utilizzati per interogare e aggiornare i contenuti della base di dati

> **Nota:** SQL presenta entrambe le caratteristiche di linguaggio.
    
- Ottimizzatore delle query
- Per la manutenzione di una base di dati è fondamentale che il codice e la documentazione e le aplicazioni che devono accedere alla base di dati, privilegino la chiarezza
  

## SQL, un linguaggio interattivo e algebra relazionale
- SELECT Corso, Aula, Piano
- FROM Aule, Corsi
- WHERE Nome = Aula
- AND Piano = "Terra"

Criteri di selezione o di proiezione
  
### Progettazione concettuale
Finalizzata alla progettaazione dei dati, definisce cosa verrà inserito nella base dei dati. Si divide nei seguenti steps:
- **Studio di fattibilità:** si studiano alternative possibili, si valutano i costi e le priorità di realizzazioni.
- **Raccolta e analisi dei requisiti:** Fase in cui si raggiungono le specifiche per realizzare la base di dati, bisogna definire, ancora in modo astratto le funzionalià del sistema tramite l'interazione con gli utenti e la definizione informale dei dati e delle operazioni. 

### Progettazione logica
Trasforma le informazioni descitte nella progettazione concettuale con tutti i relativi modelli in un prodotto fisico, accessibile e funzionale. Individua la struttura e organizzazione dei dati e le caratteristiche degli applicativi che vi dovranno accedere.
- **Progettazione dei dati:** 
- **Progettazione delle applicazioni:** 

### Implementazione
Realizza la base dei dati e il codice dei programmi conformemente alle specifiche

### Validazione e collaudo
Verifica il corretto funzionamento del sistema informativo realizzato

### Funzionamento
Il sistema informativo viene resto operativo 

## Metodologia di progettazione
Una metodologia di progettazione è un algorigtmo atto a sviluppare correttamente una base di dati

## Progettazione di una base di dati
Di seguito le fasi della progettazione di una base dei dati
- Raccolta delle specifiche
- Progettazione concettuale
- Progettazione logica
- Progettazione fisica

- **Strategia top-down:** viene generato un sistema in cui ogni concetto ha una sua complessità, si parte quindi da una definizione ad alto livello di astrazione. 
- **Strategia bottom-up:** si parte da un livello specifico di generalizzazione, fino a ricustruire un alto livello di astrazione. 

## Metodologia di valutazione
- **Generalità:** il prodotto realizzato deve garantire la possibilità di utilizzare una metodologia independentemente dal problema affrontato
- **Qualità del prodotto:** (correttezza, completezza, efficienza)
- **Facitlità di utilizzo:** il proodotto realizzatto deve essere facilmente usufruibile 

## Raccolta delle speficiche
È una fase in cui si raccolgono dati e appunti, parzialmente formalizzati, osservare le relazioni causa-effetto che risiede tra i dati
- Quali concetti o quali dati, da riunire poi nella descrizione si siversi concetti si devono rappresentare?
- Quali relazioni logiche li collegano?
- In quali situazioni e quanto spesso si usano?
