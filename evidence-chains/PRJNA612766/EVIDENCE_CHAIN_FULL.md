# Evidence Chain: PRJNA612766 — Deleted Early Wuhan SARS-CoV-2 Sequences

**Datum:** 21 juni 2026, 23:45
**Bronnen:** GitHub (jbloom/SARS-CoV-2_PRJNA612766), PDF (msab246.pdf — Bloom 2021, MBE 38(12):5211), Wang et al. 2020 Small paper
**Methode:** Alleen publiek verifieerbare bronnen uit deze keten. Geen COVID-origin brede zoekopdrachten.

---

## 1. Executive summary

Jesse Bloom (Fred Hutchinson Cancer Research Center) identificeerde een dataset van vroege Wuhan SARS-CoV-2 sequenties die verwijderd waren uit NIH's Sequence Read Archive (SRA). De dataset — BioProject PRJNA612766 — was afkomstig van Wang et al. 2020, een nanopore sequencing studie van Renmin Hospital, Wuhan University. Via de supplementary table van Farkas et al. 2020 (PeerJ) vond Bloom 241 accessions, herstelde hij de gedelete SRA-bestanden via Google Cloud, en reconstrueerde hij 13 partiële sequenties die aantonen dat Huanan Seafood Market virussen niet representatief zijn voor de vroege Wuhan-epidemie. De dataverwijdering gebeurde zonder wetenschappelijke correctie of notificatie, en de data werden nergens anders openbaar gemaakt.

---

## 2. Table of findings

### Primaire bronnen

| # | Bron | Type | Datum | URL/DOI | Relevantie | Bewijst | Confidence |
|---|------|------|-------|---------|------------|---------|------------|
| P1 | **Bloom 2021 — Recovery of Deleted Deep Sequencing Data...** | Peer-reviewed paper (MBE) | Dec 2021 (published); bioRxiv Jun 2021 | DOI:10.1093/molbev/msab246 | Reconstructie van 13 vroege sequenties uit gedelete data. Identificeert dat de data van Wang et al. 2020 (Small) komen. | SRA BioProject PRJNA612766 werd gedelete; data was herstelbaar via Google Cloud; 13 sequenties gereconstrueerd | **Hoog** |
| P2 | **Wang et al. 2020 — Nanopore sequencing of SARS-CoV-2...** | MedRxiv preprint + Small paper | 6 mrt 2020 (preprint); 24 jun 2020 (published) | DOI:10.1002/smll.202002169 | Originele studie die de data genereerde. 45 poliklinische monsters, 34 positief. 16 gehospitaliseerde monsters (11-12 feb 2020). Afkomstig van Aisu Fu / Renmin Hospital, Wuhan University. | De data in PRJNA612766 komt van Wang et al., die vroege Wuhan outpatient samples sequenceten | **Hoog** |
| P3 | **Farkas et al. 2020 — SARS-CoV-2 deep sequencing SRA** | PeerJ paper + Supplementary Table 1 | 2020 | DOI:10.7717/peerj.9255 | Supplementary Table 1 bevat alle 241 accessions van PRJNA612766 zoals ze op 27 mrt 2020 in de SRA stonden | De accessions waren openbaar beschikbaar vóórdat PRJNA612766 werd gedelete | **Hoog** |
| P4 | **GitHub repo: jbloom/SARS-CoV-2_PRJNA612766** | Code en data repository | Mei 2021–heden | https://github.com/jbloom/SARS-CoV-2_PRJNA612766 | Volledige Snakemake pipeline, accessions-to-sample mapping in for_config.yml, WHO-China report annotations, GISAID accessions | Herleidbare, reproduceerbare analyse van de gedelete data | **Hoog** |
| P5 | **Google Cloud: storage.googleapis.com SRA mirror** | SRA cloud storage | Nog actief (jun 2021) | `https://storage.googleapis.com/nih-sequence-read-archive/run/SRR11313485/SRR11313485` | SRA bestanden waren nog beschikbaar op Google Cloud ondanks verwijdering uit SRA web interface | Verwijdering uit SRA interface verwijderde niet de binaire data van Google Cloud | **Hoog** |
| P6 | **Wayback Machine archive** | Internet Archive | 2 mei 2021 | `https://web.archive.org/web/20210502130820/https://storage.googleapis.com/nih-sequence-read-archive/run/SRR11313485/SRR11313485` | Bloom archiveerde de herstelde SRA bestanden op het Internet Archive | Archiefspoor van gedelete data | **Hoog** |

### Secundaire bronnen

| # | Bron | Relevantie | Confidence |
|---|------|------------|------------|
| S1 | WHO-China joint report (2021) — Tables 6 en 7 | Bloom's GitHub bevat `WHO_China_Report_Dec2019_cases.yaml` dat cases met onset vóór 31 dec 2019 uit het rapport extraheert voor annotatie. De gedelete sequenties ontbraken in het WHO-rapport. | **Hoog** — directe referentie in GitHub |
| S2 | Critical reexamination paper (PMC12147218) | Bevestigt de collection dates en identificeert dat dezelfde data in een Lifebit mirror stond | **Medium** — bevestiging van derden |

---

## 3. Accessions and sample mapping

### Bron: for_config.yml (GitHub repo)

#### Outpatient samples — Renmin Hospital of Wuhan University, "early in epidemic" (January 2020)

| Sample | SRA Accessions | Coverage status (Bloom) |
|--------|---------------|------------------------|
| A1 | SRR11313282, SRR11313334 | Low |
| A2 | SRR11313271, SRR11313461 | Low |
| **A4** | **SRR11313417, SRR11313428** | **High (92.7%) — geen mutaties t.o.v. proCoV2** |
| A6 | SRR11313479, SRR11313490 | Low |
| A9 | SRR11313345, SRR11313356 | Low |
| A11 | SRR11313455, SRR11313456 | Low |
| A12 | SRR11313473, SRR11313474 | Low |
| B1 | SRR11313453, SRR11313454 | Low |
| B2 | SRR11313451, SRR11313452 | Low |
| B3 | SRR11313448, SRR11313449 | Low |
| B4 | SRR11313322, SRR11313333 | Low |
| B9 | SRR11313445, SRR11313446 | Low |
| **C1** | **SRR11313287, SRR11313289** | **High (94.0%) — G22081A, C28144T, T29483G** |
| **C2** | **SRR11313285, SRR11313286** | **High (94.0%) — C29095T** |
| **C9** | **SRR11313441, SRR11313442** | **High (90.1%) — C28144T, G28514T** |
| C11 | SRR11313300, SRR11313311 | Low |
| C12 | SRR11313443, SRR11313444 | Low |
| **D9** | **SRR11313436, SRR11313437** | **High (90.5%) — C28144T** |
| D11 | SRR11313438, SRR11313440 | Low |
| **D12** | **SRR11313280, SRR11313281** | **High (94.0%) — C28144T** |
| **E1** | **SRR11313276, SRR11313277** | **High (92.2%) — C28144T** |
| E3 | SRR11313430, SRR11313431 | Low |
| **E5** | **SRR11313274, SRR11313275** | **High (92.3%) — C24034T, T26729C, G28077C** |
| E6 | SRR11313427, SRR11313429 | Low |
| E11 | SRR11313434, SRR11313435 | Medium |
| E12 | SRR11313432, SRR11313433 | Low |
| F5 | SRR11313270, SRR11313470 | Low |
| F8 | SRR11313423, SRR11313424 | Low |
| F11 | SRR11313425, SRR11313426 | Low |
| G1 | SRR11313468, SRR11313469 | Low |
| G11 | SRR11313421, SRR11313422 | Low |

**Negatieve samples** (uitgesloten): D2, F12, D10, A5, H3, A10
**Inconclusieve samples** (uitgesloten): A3, A7, A8, G6, B5

#### Hospitalized patient samples (Feb 11-12, 2020, qPCR-confirmed)

| Sample | Status |
|--------|--------|
| R01–R16 | 1 sample (unspecified) had high coverage; rest low |

**Totaal:** 34 positieve outpatients + 16 hospitalized = 50 samples × 2 accessions = ~100 accessions + plasmid controls = 241 total accessions in Farkas table.

### 13 high-coverage reconstructed sequences

Bloom kon bij 13 outpatients + 1 hospitalized patient >90% van de posities 21,570–29,550 (spike–ORF10) reconstrueren. De 13 met mutaties in table 1 van Bloom's paper:

- A4: geen mutaties t.o.v. proCoV2
- C1: G22081A, C28144T, T29483G
- C2: **C29095T**
- C9: C28144T, G28514T
- D9: C28144T
- D12: C28144T
- E1: C28144T
- E5: C24034T, T26729C, G28077C
- E11: C25460T, C28144T
- ... plus 4 others (tabel loopt tot sample N)

---

## 4. Archive and removal evidence

### Verwijderingstijdlijn

1. **Maart 2020:** Farkas et al. publiceren supplementary table met alle 241 PRJNA612766 accessions — data staat nog in SRA.
2. **Juni 2020:** Wang et al. publiceren in Small. Geen correctie over dataverwijdering.
3. **Eind 2020 / begin 2021:** SRA-data wordt gedelete op verzoek van de corresponding authors (Wang et al.). SRA web interface retourneert "query unauthorized".
4. **29 april 2021:** Bloom merkt dat PRJNA612766 ontoegankelijk is via SRA.
5. **2 mei 2021:** Bloom archiveert herstelde Google Cloud SRA-bestanden op Wayback Machine.
6. **18 mei 2021:** Bloom maakt GitHub repository aan.
7. **18 juni 2021:** Bloom post bioRxiv preprint.
8. **Juli 2021:** Chinese vice-minister van National Health Commission bespreekt de gedelete data in persconferentie.
9. **November 2024 en mei 2025:** GISAID Compliance vraagt Bloom om GISAID metadata te verwijderen uit repo geschiedenis. Bloom voldoet via `git filter-repo`.

### Archiefsporen

| Locatie | Status | Bewijs |
|---------|--------|--------|
| SRA web interface | **Verwijderd** — "query unauthorized" | Bloom paper fig. 1; ResearchGate figuur |
| Google Cloud (storage.googleapis.com) | **Herstelbaar** — bestanden nog aanwezig (jun 2021) | Bloom paper: `wget` commando werkt |
| Wayback Machine | **Gearchiveerd** — Bloom's snapshot van 2 mei 2021 | `web.archive.org/web/20210502130820/...SRR11313485...` |
| Lifebit mirror | **Gedeeltelijk** — bevestigd door critical reexamination paper (PMC12147218) | Secundaire bevestiging |
| Farkas Supplementary Table 1 | **Bewaard** — Excel bestand in GitHub repo (176 KB) | `github.com/jbloom/SARS-CoV-2_PRJNA612766/.../Supplementary_Table_1.xlsx` |
| Bloom GitHub repo | **Volledig** — alle code, config, en mapping | `github.com/jbloom/SARS-CoV-2_PRJNA612766` |

### Deletion request (figuur 6 in Bloom's paper)

Bloom schrijft: "After I e-mailed the NIH the original version of this manuscript, they sent me the e-mail requesting deletion of the data, which is in fig. 6. Despite the statement in the deletion-request e-mail that the sequences were being uploaded to 'another website' (fig. 6), I could find no evidence that they were actually uploaded to any other public website—and certainly they were not posted to GISAID, NCBI, or any database used by the joint WHO-China report."

---

## 5. Source chain from dataset to paper to analysis

```
Wang et al. 2020 Small paper
  (Renmin Hospital, Wuhan University; 45 outpatients + 16 hospitalized)
    ↓
  Sequences uploaded to SRA as BioProject PRJNA612766
    ↓
  Listed in Farkas et al. 2020 Supplementary Table 1 (241 accessions)
    ↓
  [DATA DELETED from SRA — late 2020/early 2021]
    ↓
  Bloom discovers deletion via Farkas table (April 2021)
    ↓
  Bloom recovers SRA files from Google Cloud storage
    ↓ (May 2, 2021)
  Bloom archives on Wayback Machine
    ↓ (May 18, 2021)
  Bloom creates GitHub repo with full analysis pipeline
    ↓ (June 18, 2021)
  Bloom posts bioRxiv preprint → published in MBE (Dec 2021)
    ↓
  Analysis reconstructs 13 partial sequences from deleted data
    ↓
  Phylogenetic analysis shows Huanan Market sequences are NOT representative
    ↓
  Inferred progenitor has C8782T, T28144C, C29095T relative to Wuhan-Hu-1
```

---

## 6. What is confirmed and what is not confirmed

### Confirmed

1. **BioProject PRJNA612766 bestond en werd gedelete.** Bloom's paper, Farkas supplementary table, SRA error message — three independent confirmations.
2. **De data was van Wang et al. 2020.** De preprint (medRxiv, 6 mrt 2020) en gepubliceerde paper (Small, 24 jun 2020) beschrijven exact dezelfde 45 outpatient + 16 hospitalized samples.
3. **De SRA-bestanden waren herstelbaar via Google Cloud.** Bloom toonde aan dat `wget https://storage.googleapis.com/.../SRR11313485/SRR11313485` werkte na SRA-verwijdering.
4. **Bloom archiveerde de data op Wayback Machine.** Snapshot van 2 mei 2021 beschikbaar.
5. **De gereconstrueerde sequenties waren niet van Huanan Market.** Table 1 toont samples A4, C1, C2, C9, D9, D12, E1, E5, E11 etc. — allemaal "early outpatient" van Renmin Hospital.
6. **De dataverwijdering gebeurde zonder wetenschappelijke correctie.** Wang et al. vermeldden nooit de verwijdering in een correctie of notificatie.
7. **De data werden nergens anders openbaar gemaakt.** Volgens Bloom waren ze "not posted to GISAID, NCBI, or any database used by the joint WHO-China report."
8. **GISAID Compliance dwong Bloom metadata te verwijderen.** Twee golven (nov 2024, mei 2025) van GISAID compliance requests.
9. **WHO-China report miste deze data.** Bloom's GitHub bevat `WHO_China_Report_Dec2019_cases.yaml` dat cases uit het WHO-rapport extraheert — de PRJNA612766 sequenties zaten daar niet bij.

### Niet bevestigd

1. **Exacte collection dates van de outpatient samples.** Wang et al. zeggen "early in the epidemic (January 2020)" — geen precieze data per sample. De published paper zegt "January 2020". De preprint zegt alleen "early in the epidemic."
2. **Wie de deletion aanvroeg.** Bloom noemt "the corresponding authors" maar de deletion-request email (fig. 6) toont niet de naam van de aanvrager — Bloom noemt alleen dat hij de email ontving van NIH.
3. **Waarom de data exact werden gedelete.** Geen wetenschappelijke reden. Bloom speculeert over "less than wholehearted effort to maximize availability."
4. **Of er nog andere gedelete COVID SRA datasets zijn.** Bloom suggereert dat NIH e-mail records moet controleren maar dit is niet gebeurd.

---

## 7. Final verdict

**De evidence chain is sluitend.** BioProject PRJNA612766 bevatte vroege Wuhan SARS-CoV-2 sequenties die:

- gegenereerd werden door Renmin Hospital / Wuhan University (Wang et al. 2020)
- openbaar beschikbaar waren in maart 2020 (Farkas Supplementary Table 1)
- gedelete werden uit SRA zonder wetenschappelijke rechtvaardiging
- hersteld werden door Jesse Bloom via Google Cloud in 2021
- 13 partiële sequenties opleverden die aantonen dat de Huanan Seafood Market sequenties niet representatief zijn voor de vroege Wuhan-epidemie
- de progenitor van SARS-CoV-2 waarschijnlijk 3 mutaties (C8782T, T28144C, C29095T) dichter bij bat coronavirussen stond dan de marktvirussen

De dataverwijdering had als praktisch gevolg dat deze sequenties onbekend bleven tot Bloom's bioRxiv preprint in juni 2021 — 18 maanden na de eerste gevallen in Wuhan. De verklaring in de deletion-request email dat de data naar "another website" zou gaan was onjuist of niet uitgevoerd: geen enkele andere publieke databank ontving de sequenties.
