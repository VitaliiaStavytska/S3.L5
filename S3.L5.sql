/*1. Creazione delle Tabelle: •Scrivi le istruzioni SQL per creare le tabelle vendite e dettagli_vendite.*/

-- Creo la Tabella per le vendite.

CREATE TABLE vendite (
    ID_transazione INT PRIMARY KEY,
    categoria_prodotto VARCHAR(50),
    costo_vendita DECIMAL(10, 2),
    sconto DECIMAL(5, 2)
);

-- Creo la Tabella per i dettagli delle vendite.

CREATE TABLE dettagli_vendite (
    ID_cliente INT,
    ID_transazione INT,
    data_transazione DATETIME,
    quantita INT,
    PRIMARY KEY (ID_cliente, ID_transazione),
    FOREIGN KEY (ID_transazione) REFERENCES vendite(ID_transazione)
);

 /*2. Inserimento dei Dati: •Crea e inserisci un set di dati di esempio in entrambe le tabelle.*/

-- Inserisco i dati nella tabella "vendite".

INSERT INTO vendite (ID_transazione, categoria_prodotto, costo_vendita, sconto)
VALUES
    (101, 'Elettronica', 500.00, 0.05),
    (102, 'Abbigliamento', 120.50, 0.10),
    (103, 'Casa', 300.25, 0.08),
    (104, 'Alimentari', 50.75, 0.70),
    (105, 'Sport', 200.00, 0.15),
    (106, 'Elettronica', 700.00, 0.60),
    (107, 'Abbigliamento', 80.00, 0.07),
    (108, 'Casa', 450.50, 0.10),
    (109, 'Alimentari', 30.20, 0.2),
    (110, 'Sport', 150.75, 0.10);

-- Inserisco i dati nella tabella "dettagli_vendite".

INSERT INTO dettagli_vendite (ID_cliente, ID_transazione, data_transazione, quantita)
VALUES
    (11, 101, '2024-01-01', 2),
    (12, 102, '2024-01-01', 1),
    (13, 103, '2023-01-02', 3),
    (14, 104, '2024-01-02', 1),
    (15, 105, '2023-01-03', 2),
    (16, 106, '2024-01-04', 1),
    (17, 107, '2024-01-07', 1),
    (18, 108, '2023-08-09', 2),
    (19, 109, '2023-06-09', 1),
    (20, 110, '2023-10-10', 3);

-- Cancello la colonna ID_cliente dalla tabella "dettagli_vendite".

ALTER TABLE dettagli_vendite
DROP COLUMN ID_cliente;

-- Aggiungo altri dati nella tabella "vendite".

INSERT INTO vendite (ID_transazione, categoria_prodotto, costo_vendita, sconto)
VALUES
    (201, 'Elettronica', 450.00, 0.08),
    (202, 'Abbigliamento', 80.75, 0.12),
    (203, 'Casa', 200.50, 0.05),
    (204, 'Alimentari', 30.25, 0.03),
    (205, 'Sport', 150.00, 0.10),
    (206, 'Elettronica', 600.00, 0.15),
    (207, 'Abbigliamento', 120.00, 0.67),
    (208, 'Casa', 400.75, 0.10),
    (209, 'Alimentari', 40.20, 0.02),
    (210, 'Sport', 180.50, 0.10),
    (211, 'Elettronica', 550.00, 0.06),
    (212, 'Abbigliamento', 90.25, 0.08),
    (213, 'Casa', 250.00, 0.12),
    (214, 'Alimentari', 35.75, 0.54),
    (215, 'Sport', 170.00, 0.09),
    (216, 'Elettronica', 800.00, 0.20),
    (217, 'Abbigliamento', 110.50, 0.75),
    (218, 'Casa', 350.25, 0.18),
    (219, 'Alimentari', 25.20, 0.80),
    (220, 'Sport', 160.75, 0.12),
    (221, 'Elettronica', 480.00, 0.10),
    (222, 'Abbigliamento', 95.25, 0.05),
    (223, 'Casa', 180.50, 0.07),
    (224, 'Alimentari', 60.75, 0.15),
    (225, 'Sport', 220.00, 0.20),
    (226, 'Elettronica', 700.00, 0.18),
    (227, 'Abbigliamento', 130.50, 0.12),
    (228, 'Casa', 320.25, 0.10),
    (229, 'Alimentari', 45.20, 0.03),
    (230, 'Sport', 190.75, 0.15);

-- Inserisco altri dati nella tabella "dettagli_vendite".
INSERT INTO dettagli_vendite (ID_transazione, data_transazione, quantita)
VALUES
    (201, '2023-11-01', 2),
    (202, '2022-01-01', 1),
    (203, '2024-01-02', 3),
    (204, '2022-07-02', 1),
    (205, '2023-08-03', 2),
    (206, '2022-02-04', 1),
    (207, '2023-02-07', 1),
    (208, '2023-09-09', 2),
    (209, '2022-12-09', 1),
    (210, '2023-10-10', 3),
    (211, '2023-11-01', 2),
    (212, '2022-08-01', 1),
    (213, '2023-09-02', 3),
    (214, '2022-10-02', 1),
    (215, '2023-11-03', 2),
    (216, '2022-12-04', 1),
    (217, '2023-01-07', 1),
    (218, '2022-02-09', 2),
    (219, '2023-03-09', 1),
    (220, '2022-04-10', 3),
    (221, '2023-05-01', 2),
    (222, '2022-06-01', 1),
    (223, '2023-09-02', 3),
    (224, '2022-08-02', 1),
    (225, '2023-07-03', 2),
    (226, '2023-08-04', 1),
    (227, '2022-09-07', 1),
    (228, '2023-10-09', 2),
    (229, '2022-11-09', 1),
    (230, '2023-12-10', 3);

--      Tabella "vendite"
/*+-----------------+-------------------+--------------+--------+
| ID_transazione | categoria_prodotto | costo_vendita| sconto |
+-----------------+-------------------+--------------+--------+
|       101       |    Elettronica     |    500.00    | 0.05   |
|       102       |   Abbigliamento    |    120.50    | 0.10   |
|       103       |        Casa        |    300.25    | 0.08   |
|       104       |     Alimentari     |    50.75     | 0.70   |
|       105       |        Sport       |    200.00    | 0.15   |
|       106       |    Elettronica     |    700.00    | 0.60   |
|       107       |   Abbigliamento    |    80.00     | 0.07   |
|       108       |        Casa        |    450.50    | 0.10   |
|       109       |     Alimentari     |    30.20     | 0.20   |
|       110       |        Sport       |    150.75    | 0.10   |
|       201       |    Elettronica     |    450.00    | 0.08   |
|       202       |   Abbigliamento    |    80.75     | 0.12   |
|       203       |        Casa        |    200.50    | 0.05   |
|       204       |     Alimentari     |    30.25     | 0.03   |
|       205       |        Sport       |    150.00    | 0.10   |
|       206       |    Elettronica     |    600.00    | 0.15   |
|       207       |   Abbigliamento    |    120.00    | 0.67   |
|       208       |        Casa        |    400.75    | 0.10   |
|       209       |     Alimentari     |    40.20     | 0.02   |
|       210       |        Sport       |    180.50    | 0.10   |
|       211       |    Elettronica     |    550.00    | 0.06   |
|       212       |   Abbigliamento    |    90.25     | 0.08   |
|       213       |        Casa        |    250.00    | 0.12   |
|       214       |     Alimentari     |    35.75     | 0.54   |
|       215       |        Sport       |    170.00    | 0.09   |
|       216       |    Elettronica     |    800.00    | 0.20   |
|       217       |   Abbigliamento    |    110.50    | 0.75   |
|       218       |        Casa        |    350.25    | 0.18   |
|       219       |     Alimentari     |    25.20     | 0.80   |
|       220       |        Sport       |    160.75    | 0.12   |
|       221       |    Elettronica     |    480.00    | 0.10   |
|       222       |   Abbigliamento    |    95.25     | 0.05   |
|       223       |        Casa        |    180.50    | 0.07   |
|       224       |     Alimentari     |    60.75     | 0.15   |
|       225       |        Sport       |    220.00    | 0.20   |
|       226       |    Elettronica     |    700.00    | 0.18   |
|       227       |   Abbigliamento    |    130.50    | 0.12   |
|       228       |        Casa        |    320.25    | 0.10   |
|       229       |     Alimentari     |    45.20     | 0.03   |
|       230       |        Sport       |    190.75    | 0.15   |
+-----------------+-------------------+--------------+--------+*/

 --       Tabella "dettagli_vendite"

/*+-----------------+---------------------+---------+
| ID_transazione  | data_transazione    | quantita |
+-----------------+---------------------+---------+
| 101             | 2024-01-01 00:00:00 | 2       |
| 102             | 2024-01-01 00:00:00 | 1       |
| 103             | 2023-01-02 00:00:00 | 3       |
| 104             | 2024-01-02 00:00:00 | 1       |
| 105             | 2023-01-03 00:00:00 | 2       |
| 106             | 2024-01-04 00:00:00 | 1       |
| 107             | 2024-01-07 00:00:00 | 1       |
| 108             | 2023-08-09 00:00:00 | 2       |
| 109             | 2023-06-09 00:00:00 | 1       |
| 110             | 2023-10-10 00:00:00 | 3       |
| 201             | 2023-11-01 00:00:00 | 2       |
| 202             | 2022-01-01 00:00:00 | 1       |
| 203             | 2024-01-02 00:00:00 | 3       |
| 204             | 2022-07-02 00:00:00 | 1       |
| 205             | 2023-08-03 00:00:00 | 2       |
| 206             | 2022-02-04 00:00:00 | 1       |
| 207             | 2023-02-07 00:00:00 | 1       |
| 208             | 2023-09-09 00:00:00 | 2       |
| 209             | 2022-12-09 00:00:00 | 1       |
| 210             | 2023-10-10 00:00:00 | 3       |
| 211             | 2023-11-01 00:00:00 | 2       |
| 212             | 2022-08-01 00:00:00 | 1       |
| 213             | 2023-09-02 00:00:00 | 3       |
| 214             | 2022-10-02 00:00:00 | 1       |
| 215             | 2023-11-03 00:00:00 | 2       |
| 216             | 2022-12-04 00:00:00 | 1       |
| 217             | 2023-01-07 00:00:00 | 1       |
| 218             | 2022-02-09 00:00:00 | 2       |
| 219             | 2023-03-09 00:00:00 | 1       |
| 220             | 2022-04-10 00:00:00 | 3       |
| 221             | 2023-05-01 00:00:00 | 2       |
| 222             | 2022-06-01 00:00:00 | 1       |
| 223             | 2023-09-02 00:00:00 | 3       |
| 224             | 2022-08-02 00:00:00 | 1       |
| 225             | 2023-07-03 00:00:00 | 2       |
| 226             | 2023-08-04 00:00:00 | 1       |
| 227             | 2022-09-07 00:00:00 | 1       |
| 228             | 2023-10-09 00:00:00 | 2       |
| 229             | 2022-11-09 00:00:00 | 1       |
| 230             | 2023-12-10 00:00:00 | 3       |
+-----------------+---------------------+---------+*/

  /* 3. 1.Query Semplici: •Seleziona tutte le vendite avvenute in una specifica data. 
2.Elenco delle vendite con sconti maggiori del 50%.*/

-- 1.Elenco tutte le vendite avvenute in una specifica data.

SELECT vendite.*, dettagli_vendite.*
FROM vendite
JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
WHERE dettagli_vendite.data_transazione = '2024-01-09';

-- 2.Elenco delle vendite con sconti maggiori del 50%.

SELECT vendite.*, dettagli_vendite.*
FROM vendite
JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
WHERE vendite.sconto > 0.50;

 /*4. Aggregazione dei Dati: 1.Calcola il totale delle vendite per categoria. 
2.Trova il numero totale di prodotti venduti per ogni categoria.*/

-- 1.Calcolo il totale delle vendite per categoria.

SELECT categoria_prodotto, SUM(costo_vendita) AS totale_vendite
FROM vendite
GROUP BY categoria_prodotto;

-- 2.Cerco il numero totale di prodotti venduti per ogni categoria.

SELECT categoria_prodotto, SUM(quantita) AS totale_prodotti_venduti
FROM dettagli_vendite
JOIN vendite ON dettagli_vendite.ID_transazione = vendite.ID_transazione
GROUP BY categoria_prodotto;

/* 5. Funzioni di Data: 1.Seleziona le vendite dell'ultimo trimestre.
2.Raggruppa le vendite per mese e calcola il totale delle vendite per ogni mese.*/

-- 1. Seleziono le vendite dell'ultimo trimestre.

SELECT vendite.*, dettagli_vendite.*
FROM vendite
JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
WHERE dettagli_vendite.data_transazione >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AND dettagli_vendite.data_transazione <= CURDATE();

-- 2. Raggruppo le vendite per mese e calcola il totale delle vendite per ogni mese.

SELECT 
    YEAR(dettagli_vendite.data_transazione) AS anno,
    MONTHNAME (dettagli_vendite.data_transazione) AS mese,
    SUM(vendite.costo_vendita) AS totale_vendite
FROM vendite
JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
GROUP BY anno, mese
ORDER BY anno, mese;

/* 7. Analisi degli Sconti: •Trova la categoria con lo sconto medio più alto.*/

-- Cerco la categoria con lo sconto medio più alto.

SELECT categoria_prodotto, AVG(sconto) AS sconto_medio
FROM vendite
GROUP BY categoria_prodotto
ORDER BY sconto_medio DESC
    LIMIT 1;

/* 8. Variazioni delle Vendite: •Confronta le vendite mese per mese per vedere l'incremento o il decremento delle vendite.
Calcola l’incremento o decremento mese per mese*/

-- Confrontazione delle vendite mese per mese e calcolazione dell'incremento o decremento mese per mese.

WITH VenditeMesePrecedente AS (
    SELECT
        YEAR(dettagli_vendite.data_transazione) AS anno,
        MONTH(dettagli_vendite.data_transazione) AS mese,
        SUM(vendite.costo_vendita) AS vendite_mese,
        LAG(SUM(vendite.costo_vendita)) OVER (ORDER BY YEAR(dettagli_vendite.data_transazione), 
        MONTH(dettagli_vendite.data_transazione)) AS vendite_mese_precedente
    FROM vendite
    JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
    GROUP BY anno, mese
)

SELECT
    anno,
    mese,
    vendite_mese,
    COALESCE(vendite_mese - vendite_mese_precedente, 0) AS variazione
FROM VenditeMesePrecedente;

/* 9. Analisi Stagionale: •Confronta le vendite totali in diverse stagioni.*/

-- Confrontazione delle vendite totali in diverse stagioni.

SELECT
    CASE
        WHEN MONTH(data_transazione) BETWEEN 3 AND 5 THEN 'Primavera'
        WHEN MONTH(data_transazione) BETWEEN 6 AND 8 THEN 'Estate'
        WHEN MONTH(data_transazione) BETWEEN 9 AND 11 THEN 'Autunno'
        ELSE 'Inverno'
    END AS stagione,
    SUM(costo_vendita) AS vendite_totali
FROM vendite
JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
GROUP BY stagione
ORDER BY MIN(data_transazione);

/*10. Clienti Fedeli: •Supponendo di avere una tabella clienti con i campi IDCliente e IDVendita,
scrivi una query per trovare i top 5 clienti con il maggior numero di acquisti. */

-- Creo la tabella "clienti".

CREATE TABLE clienti (
    IDCliente INT,
    IDVendita INT,
    FOREIGN KEY (IDVendita) REFERENCES vendite(ID_transazione)
);

-- Aggiungo i dati nella tabella "clienti".

INSERT INTO clienti (IDCliente, IDVendita)
VALUES
    (31, 203),
    (31, 205),
    (31, 208),
    (32, 212),
    (31, 215),
    (36, 218),
    (60, 222),
    (32, 225),
    (39, 227),
    (40, 230),
    (41, 201),
    (44, 207),
    (44, 214),
    (44, 219),
    (45, 220),
    (46, 226),
    (47, 228),
    (48, 229),
    (49, 204),
    (50, 210),
    (51, 110),
    (60, 109),
    (53, 108),
    (54, 107),
    (60, 106),
    (56, 105),
    (59, 104),
    (59, 103),
    (59, 102),
    (60, 101);


/*+-----------+----------+
| IDCliente | IDVendita |
+-----------+----------+
|    31     |   203    |
|    31     |   205    |
|    31     |   208    |
|    32     |   212    |
|    31     |   215    |
|    36     |   218    |
|    60     |   222    |
|    32     |   225    |
|    39     |   227    |
|    40     |   230    |
|    41     |   201    |
|    44     |   207    |
|    44     |   214    |
|    44     |   219    |
|    45     |   220    |
|    46     |   226    |
|    47     |   228    |
|    48     |   229    |
|    49     |   204    |
|    50     |   210    |
|    51     |   110    |
|    60     |   109    |
|    53     |   108    |
|    54     |   107    |
|    60     |   106    |
|    56     |   105    |
|    59     |   104    |
|    59     |   103    |
|    59     |   102    |
|    60     |   101    |
+-----------+----------+*/

-- Cerco i top 5 clienti con il maggior numero di acquisti.

SELECT
    IDCliente,
    COUNT(IDVendita) AS numero_acquisti
FROM clienti
GROUP BY IDCliente
ORDER BY numero_acquisti DESC
LIMIT 5;

 /*11. Le Query in piu'*/

--  1.Elenco le categorie dei prodotti con il costo medio più alto e chiamo il messaggio "Boom!" 
-- se questo valore supera 300.00 euro e se non supera - "Nessuna sorpresa", ordino i risultati in modo discendente.
    
    WITH CostoMedioCategoria AS (
    SELECT
        categoria_prodotto,
        AVG(costo_vendita) AS costo_medio
    FROM vendite
    GROUP BY categoria_prodotto
)

SELECT
    categoria_prodotto,
    costo_medio,
    CASE
        WHEN costo_medio > 300 THEN 'Boom!'
        ELSE 'Nessuna sorpresa'
    END AS sorpresa
FROM CostoMedioCategoria
ORDER BY costo_medio DESC;

 -- Creazione del CTE (Common Table Expression) usando WITH.
 -- Selezione delle colonne dalla CTE,aggiungendo una colonna chiamata "sorpresa" che sarà determinata dalla clausola CASE/END.



--  2. Creazione di una previsione per le vendite del prossimo mese per ogni categoria dei prodotti sulla base di ultimi 3 mesi. 
-- Utilizzo il modello di previsione semplice basato sulla media delle vendite degli ultimi 3 mesi.

-- Calcolo della previsione per il prossimo mese basata sugli ultimi tre mesi per ogni categoria.

WITH VenditeMensiliPerCategoria AS (
    SELECT
        categoria_prodotto,
        YEAR(data_transazione) AS anno,
        MONTH(data_transazione) AS mese,
        SUM(costo_vendita) AS vendite_mensili_categoria
    FROM vendite
    JOIN dettagli_vendite ON vendite.ID_transazione = dettagli_vendite.ID_transazione
    WHERE data_transazione >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AND data_transazione < CURDATE()
    GROUP BY categoria_prodotto, anno, mese
),

MediaMensilePerCategoria AS (
    SELECT
        categoria_prodotto,
        AVG(vendite_mensili_categoria) AS media_mensile_categoria
    FROM VenditeMensiliPerCategoria
    GROUP BY categoria_prodotto
)

-- Calcolo della previsione pesando la media mensile per ogni categoria.

SELECT
    categoria_prodotto,
    media_mensile_categoria * (RAND() / 10 + 0.5) AS previsione_prossimo_mese_categoria
FROM MediaMensilePerCategoria;

 -- "VenditeMensiliPerCategoria" calcola le vendite totali per ogni categoria di prodotti in ogni mese nei tre mesi precedenti.
 -- "MediaMensilePerCategoria" calcola la media di queste vendite mensili per ogni categoria.
 --  La previsione per il prossimo mese viene calcolata moltiplicando la media mensile per un fattore casuale compreso tra -5% e +5% per ogni categoria.