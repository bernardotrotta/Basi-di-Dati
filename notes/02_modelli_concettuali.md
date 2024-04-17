<link href="styles.css" rel="stylesheet"></link>

# Modello Entità-Relazione (E-R)
È un **modello concettuale** di dati.
Fornisce una serie di strutture dette *costrutti* per descrivere un problema in modo chiaro e semplice. I costrutti vengono utilizzati per definire schemi che descrivono struttura e occorrenze.
- **Struttura:** come sono organizzati i dati;
  - entità
  - Relazione
- **Occorrenze:** quanto frequentemente vengono utilizzati i dati

La prima verifica di uno schema concettuale è che il diagramma sia connesso. 

### Entità
Classi di oggetti con proprietà comuni e esistenza propria, indipendente dall'applicazione. 
- **Istanza:** singola rappresentazione di un elemento appartenente alla classe.
  - Esempio: singolo studente appartenente alla classe "Studenti"

#### Entità forte
È un tipo di attributo a cui viene legato un attributo "chiave"
- Non dipende da un'altra entità dello schema
- Ha una chiave primaria che aiuta a identificarla in modo univoco. 

#### Entità debole
- Non possono essere attribuiti attributi chiave

### Attributi
Gli attributi sono tutte le proprietà che definiscono il tipo di entità. In elenco i diversi tipi di attributi:
- **Attributo chiave:** Identifica in modo univoco ogni entità
  - **Simbolo:** ovale con linee sottostanti
  - **Esempio:** numero di matricola di uno studente
- **Attributo composito:** attributo composto da diversi tipi di attributi.
  - **Simbolo:** ovale composto da ovali.
  - **Esempio:** indirizzo di residenza, composto dagli attributi "via", "numero civico", "codice postale".
- **Attributo multi-valore:** attributo composto da più valori per singolo attributo.
  - **Simbolo:** doppio ovale
  - **Esempio:** attributo "Phone-No" di un singolo studente, ogni studente può avere più di un numero di telefono
- **Attributo derivato:** attributo che può essere derivato da altri attributi già presenti.
  - **Simbolo:**
  - **Esempio:** l'attributo età può essere derivato da attributo data di nascita 

## Simboli
- **Rettangolo:** Entità
- **Ellisse:** Attributo
- **Diamante:** Relazioni tra entità
- **Linea:**
- **Doppio rettangolo:** Entità debole
- **Doppia ellisse:** Attributi multi-valore

## Componenti del diagramma ER
1. Entità
   1. Entità debole
   2. Entità forte
2. Attributi
   1. Attributo chiave
   2. Attributo composito
   3. Attributo multi-valore
   4. Attributo derivato
3. Relazioni
   1. Uno a uno
   2. Uno a molti
   3. Molti a uno
   4. Molti a molti

## Relazioni
### Definizione concettuale
Legami logici, tra due o più entita. Una istanza di una relazione è una coppia di istanze di entità partecipanti alla relazione.
### Definizione matematica
Sottoinsieme del prodotto cartesiano delle classi che la compongono. essendo un insieme tutte le istanze di una relazione sono distinte.
- **Relazione ricorsiva:** relazione che lega una entità a se stessa.
- **Cardinalità di relazione:** coppia di numeri naturali che specifica il numero minimo e massimo di istanze di una relazione a cui una istanza dell'entità può partecipare. Quando la cardinalità massima non è nota a priori le si assegna la costante N maggiore di 1. 
