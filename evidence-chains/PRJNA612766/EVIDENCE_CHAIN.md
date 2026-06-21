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
- **What:** BioProject PRJNA612766 + **one additional unpublished project**
- **When:** Mid-June 2020
- **Why:** Chinese government stated the journal Small mistakenly deleted the data availability statement, leading authors to think they should also delete the actual data
- **NIH response:** Sent Bloom the deletion request email (Fig. 6 in MBE paper)
- **Aftermath:** Data was NOT uploaded to any alternative public database (Bloom verification). China National GeneBank (CNGB) also removed the PRJNA612766 mention.

## Archive Mirrors
- Google Cloud: `storage.googleapis.com/nih-sequence-read-archive/run/SRR11313485/SRR11313485`
- Wayback Machine: `web.archive.org/web/20210502130820/...` (Bloom's 2 May 2021 snapshot)
- GitHub: `github.com/jbloom/SARS-CoV-2_PRJNA612766`
- GitHub fork: `raonyguimaraes/SARS-CoV-2_PRJNA612766`
- Farkas Supplementary Table 1 (Excel): in Bloom's GitHub repo
- Lifebit mirror (per critical reexamination paper)

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
| Extra mirrors | Resolved (6 additional found) |
| GISAID compliance | Resolved (full timeline) |

→ Full gap audit: [GAP_AUDIT.md](GAP_AUDIT.md)
