# Introduzione
- Il modello fu proposto in una pubblicazione scientifica nel 1970, al fine di superare i limiti dei modelli utilizzati all'epoca.
  - Non permettevano di realizzare la proprietà di **indipendenza dei dati**, concetto ampiamente coperto dal modello relazionale.
  - A causa dell'alto livello di astrazione ha visto una lenta espansione fino al 1980.

## Il modello relazionale: strutture
### Modelli logici nei sistemi di basi di dati
Il modello relazionale si basa su due concetti, *relazione* e *tabella*
- **Relazione:** nozione matematica relativa alla teoria degli insiemi.
- **Tabella:** concetto intuitivo.
  
Il modello prevede una distinzione tra livello *fisico* e livello *logico*

## Relazione
Una relazione è definita a livello matematico come sottoinsieme del **prodotto cartesiano tra due insiemi**
- Siano dati due insiemi $D_1$ e $D_2$ (domini)
- Prodotto cartesiano: $D_1 \times D_2$ l'insieme delle coppie ordinate $v_1$,$v_2$ tali che $v_1 \isin D_1$ e $v_2 \isin D_2$ $D_1 \times D_2 = \{v_1,v_2:v_1\isin D_1,v_2\isin D_2\}$
- Le relazioni possono essere rappresentate in forma tabellare

## Esempio:
- Sia $A = \{1,2,4\}$
- Sia $B = \{a,b\}$
- $A \times B = \{(1,a),(1,b),(2,a),(2,b),(4,a),(4,b)\}$
- Una possibile relazione è costituita dagli elementi ${(1,a),(1,b),(4,b)}$


## Proprietà delle relazioni
**Perché si chiama tupla?** n
1. Ogni tupla è internamente ordinata
2. Non esiste ordinamento intrinseco tra le tuple
3. Non sono ammesse tuple uguali 

Conseguenze: 
1. Lo scambio fra le righe di una tabella non modifica la relazione.
2. Lo scambio fra le colonne di una tabella può portare ad una **inconsistenza** con lo schema.

Uno schema di relazione è la rappresentazione di una relazione
$R(X)$
- Lettera maiuscola indica lo schema
- Le istanze di uno schema si rappresentano con la lettera minuscola

Esempio
Corsi(Codice, Titolo, Docente)

$X = \{A_1, A_2, ... , A_n\}$ <br>
$\text{Codice} = \{01,02,03\}$ <br>
$\text{Titolo} = \{\text{Analisi, Chimica}\}$ <br>
$\text{Docente} = \{\text{Rossi, Bruni, Verdi}\}$

| Codice | Titolo | Docente
| --- | --- | --- |
| 01 | Analisi | Rossi |
| 02 | Chimica | Bruni |
| 04 | Chimica | Verdi |

Posso ora definire il concetto di Base di dati: insieme di schemi i relazioni con nomi diversi
$$R = \{R_n(X_n)\}$$

A livello di rappresentazione una base di dati è un insieme di tabelle. 


