# Algebra relazionale
L'algebra relazionale è un linguaggio procedurale, utilizzato nell'ambito delle basi di dati per costruire interrogazioni, si parla quindi di linguaggi di interrogazione.
- È costituita da un insieme di *operatori* definiti su *relazioni.*
- Produce una nuova relazione a sua volta.

## Operatori
- **Insiemistici:**
  1. Unione
  2. Intersezione
  3. Differenza
- **Specifici:**
  1. Ridenominazione
  2. Selezione
  3. 3.Proiezione

- **Join:**
  1. Join Naurale
  2. Prodotto cartesiano
  3. Theata Join

### Operatori insiemistici
Le relazioni sono insiei di tuple *omogenee*, pertanto è fondamentale ereditare le operazioni fondamentali della teoria degli insiemi.
Importante notare che le relazioni devono essere definite su gli stessi attributi.

| Matricola | Cognome | Età |
|-|-|-|
| 7274 | Rossi | 37 |
| 7432 | Neri | 39 |
| 9824 | Verdi | 28 |

| Matricola | Cognome | Età |
|-|-|-|
| 9297 | Neri | 56 |
| 7432 | Neri | 39 |
| 9824 | Verdi | 38 |

#### Unione
L'unione di due relazioni $r_1$ e $r_2$ definite sullo stesso insieme $X$ di attributi è una relazione ancora su $X$ contentente le tuple che appartengono a $r_1$, oppure ad $r_2$, oppure ad entrambe. È indicata con 
$$r_1 \cup r_2$$ 

| Matricola | Cognome | Età |
|-|-|-|
| 7274 | Rossi | 37 |
| 7432 | Neri | 39 |
| 9824 | Verdi | 28 |
| 9297 | Neri | 56 |

#### Intersezione: $r_1 \cap r_2$
L'intersezione di $r_1(X)$ e $r_2(X)$ è una relazione su $X$ contenente le tuple che appartengono sia a $r_1$ sia a $r_2$
$$r_1 \cap r_2$$

| Matricola | Cognome | Età |
|-|-|-|
| 7432 | Neri | 39 |
| 9824 | Verdi | 28 |

#### Differenza
La differenza di $r_1(X)$ e $r_2(X)$ è una relazione su $X$ contentene le tuple che appartengono ad $r_1$ e non appartengono ad $r_2$. 
È indicata con 
$$r_1 - r_2$$

| Matricola | Cognome | Età |
|-|-|-|
| 7274 | Rossi | 37 |

### Operatori specifici
#### Ridenominazione
Cambia i nomi degli attributi a seconda delle necessità, al fine di superare le limitazioni imposte agli operatori insiemistici. 
| Padre | Figlio | 
| Madre | Figlio | 