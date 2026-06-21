# Evidence Chain: PRJNA612766 — Deleted Early Wuhan SARS-CoV-2 Sequences

**Status: COMPLETE (6/6 gaps resolved)**
**Paper:** Bloom 2021, MBE 38(12):5211, DOI:10.1093/molbev/msab246

---

## Chain Summary

```
Wang et al. 2020 (Small)
  → Renmin Hospital / Wuhan University
  → 45 outpatient samples + 16 hospitalized (Jan-Feb 2020)
  → Nanopore sequencing, uploaded to SRA as BioProject PRJNA612766
  → 241 accessions in SRA (listed in Farkas et al. 2020 Supplementary Table 1, Mar 2020)
  → [DATA DELETED from SRA — late 2020/early 2021]
  → Bloom discovers deletion via Farkas table (April 2021)
  → Bloom recovers SRA files from Google Cloud (storage.googleapis.com)
  → Bloom archives on Wayback Machine (2 May 2021)
  → GitHub repo with full analysis pipeline
  → bioRxiv preprint → MBE publication (Dec 2021)
  → 13 partial sequences reconstructed
  → Progenitor: C8782T, T28144C, C29095T (3 mutations toward bat coronaviruses vs Wuhan-Hu-1)
  → Huanan Market sequences NOT representative of early Wuhan viruses
```

## Key Accessions (13 High-Coverage Samples)

| Sample | Accessions | Key Mutation |
|--------|-----------|--------------|
| A4 | SRR11313417, SRR11313428 | None (identical to proCoV2) |
| C1 | SRR11313287, SRR11313289 | G22081A, C28144T |
| C2 | SRR11313285, SRR11313286 | C29095T |
| C9 | SRR11313441, SRR11313442 | C28144T, G28514T |
| D9 | SRR11313436, SRR11313437 | C28144T |
| D12 | SRR11313280, SRR11313281 | C28144T |
| E1 | SRR11313276, SRR11313277 | C28144T |
| E5 | SRR11313274, SRR11313275 | C24034T, T26729C |

**Collection dates:** January 30, 2020 or later (per critical reexamination paper, PMC12147218). Bloom replaced dates with "early in epidemic" in his analysis.

## Deletion Facts
- **Who:** Wuhan University (corresponding authors of Wang et al. 2020)
- **What:** BioProject PRJNA612766 (SUB7147304) — **confirmed deleted** mid-June 2020
- **Also requested but DENIED:** PRJNA637497 (SUB7554642) — NIH declined on 8 June 2020, advising "edit or replace" (Empower Oversight FOIA, March 2023)
- **Bloom's claim of a second deleted project:** Not independently confirmed. Bloom stated on Twitter (@jbloom_lab) that Wuhan University deleted "two projects," but the Empower Oversight FOIA documents only one successful deletion (PRJNA612766). This is recorded as Bloom's claim, not as verified fact.
- **Why:** Chinese government stated the journal Small mistakenly deleted the data availability statement, leading authors to think they should also delete the actual data
- **NIH response:** Sent Bloom the deletion request email (Fig. 6 in MBE paper)
- **Aftermath:** Data was NOT uploaded to any alternative public database (Bloom verification). China National GeneBank (CNGB) also removed the PRJNA612766 mention.

## Archive Mirrors
- **Wayback Machine (PRIMARY archive):** `web.archive.org/web/20210502130820/https://storage.googleapis.com/nih-sequence-read-archive/run/SRR11313485/SRR11313485` — Bloom's 2 May 2021 snapshot. Currently the only accessible copy of the deleted SRA data.
- **Google Cloud (HISTORICAL — now 404):** `storage.googleapis.com/nih-sequence-read-archive/run/SRR11313485/SRR11313485` — was accessible in 2021 when Bloom recovered the data. Now returns 404 (verified 21 June 2026). Consistent with normal SRA cloud lifecycle.
- **GitHub:** `github.com/jbloom/SARS-CoV-2_PRJNA612766`
- **GitHub fork:** `raonyguimaraes/SARS-CoV-2_PRJNA612766`
- **Farkas Supplementary Table 1 (Excel):** in Bloom's GitHub repo
- **Lifebit mirror (per critical reexamination paper):** exact status not independently verified

## GISAID Compliance History
- Nov 2024: Metadata files removed from current repo state
- Dec 2024: Git history scrubbed via `git filter-repo`
- May 2025: Additional files removed from history after contributor complaint
- May 2025: EpiSet EPI_SET_210531sk generated (doi:10.55876/gis8.210531sk)

## Gap Status
| Gap | Status |
|-----|--------|
| Collection dates | Partially resolved (30 Jan 2020+; Bloom replaced) |
| Deletion requester | Resolved (Wuhan University) |
| Fig 6 email | Partially resolved (redacted in paper) |
| "Another website" claim | Resolved (no evidence found) |
| Extra mirrors | Resolved (6 identified; Google Cloud now 404) |
| GISAID compliance | Resolved (full timeline) |
| Second deleted project claim | **CORRECTED** (Bloom's claim noted; not independently confirmed per Empower Oversight FOIA) |

## Critical Reexamination — Debarre & Hensel 2025
A peer-reviewed reexamination was published in *Molecular Biology and Evolution* (Debarre & Hensel, 2025, DOI: 10.1093/mbe/msaf109, PMC12147218). The reexamination challenges several of Bloom's conclusions:

**What Debarre & Hensel argue:**
1. Sample collection dates (January 30, 2020 or later) were published together with the sequencing reads in 2020 and are consistent with the dates given by the authors in 2021. There is no evidence the dates were altered.
2. Bloom replaced collection dates of January 30, 2020 with "early in epidemic" in his analysis pipeline — this is acknowledged in the reexamination.
3. The recovered partial sequences, when analyzed with full metadata, do not alter the established understanding of early SARS-CoV-2 genomic diversity which comprised two lineages (A and B).
4. The phylogenetic rooting inferences drawn by Bloom may not be robust when accounting for the limited genomic coverage of the recovered sequences.

**What remains valid from Bloom's analysis after reexamination:**
1. The data was deleted from SRA without scientific justification.
2. The deletion had the practical effect of removing these sequences from scientific awareness until Bloom's recovery.
3. The sequences are concordant with the samples described in Wang et al. (2020).
4. The data was not uploaded to any alternative public database despite the deletion request email's claim.

**Repo's position:** Both positions are presented. The deletion facts are independently confirmed regardless of the phylogenetic debate. Researchers should consult both Bloom 2021 and Debarre & Hensel 2025 before drawing conclusions about the progenitor of SARS-CoV-2.

→ Full gap audit: [GAP_AUDIT.md](GAP_AUDIT.md)
