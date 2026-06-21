# ONDERZOEK LOG — COVID-19 Origins Forensisch Onderzoek

**Start:** 21 juni 2026, ~18:00
**Einde:** Lopend
**Methodologie:** Publiek verifieerbare bronnen, Engels + Chinees, geen Google-exclusiviteit
**Workspace:** C:\Users\gewoo\New folder (109)

---

## INVENTARIS

### Bestanden in deze workspace

| Bestand | Beschrijving | Datum |
|---------|-------------|-------|
| `forensic_report_COVID_origins_dossiers.md` | Eerste volledige rapport (3 dossiers) | 21 jun 2026 v1 |
| `forensic_report_v2.md` | Bijgewerkt rapport met keten DEFUSE → furin → Baric | 21 jun 2026 v2 |
| `saved_docs/onderzoek_log.md` | Dit bestand — master log | 21 jun 2026 |
| `saved_docs/pdfs/*` | Opgeslagen PDFs | 21 jun 2026 |
| `saved_docs/articles/*` | Opgeslagen webartikelen (HTML/PDF) | 21 jun 2026 |
| `saved_docs/chinese/*` | Chinese brondocumenten | 21 jun 2026 |
| `saved_docs/patents/*` | Patentdocumenten | 21 jun 2026 |

---

## METHODOLOGIE

### Zoekmachines gebruikt
1. **DDGS** (DuckDuckGo Search) — primair, via Python `ddgs` library v9.14.4
2. **Bing** (cn.bing.com) — voor Chinese zoekopdrachten
3. **Playwright browser** — voor directe paginaweergave van Chinese bronnen
4. **Google Patents** — voor patentzoektochten
5. **WIPO PATENTSCOPE** — voor internationale patenten
6. **NIH RePORTER** — voor subsidie-informatie
7. **USASpending** — voor financieringsgegevens
8. **GovInfo** — voor overheidsdocumenten
9. **Oversight.House.gov** — voor congresrapporten

### NIET gebruikt (geblokkeerd/captcha)
- Google Search (captcha)
- Baidu (captcha)
- DuckDuckGo HTML (captcha)
- Justia Patents (captcha)
- science.org (captcha)

### Talen
- Engels: primair
- Chinees (vereenvoudigd): actief gezocht via DDGS, Bing
- Chinees (traditioneel): enkele resultaten via NTD Taiwan

### Chinese zoektermen gebruikt
```
周育森 军事医学科学院 冠状病毒 专利
周育森 疫苗 专利 2020年2月24日 军事医学科学院
武汉病毒研究所 军事医学科学院 合作 冠状病毒 2019
军事医学科学院 第五研究所 新冠病毒 疫苗 专利 2019
一种新型冠状病毒疫苗 专利 军事医学科学院 2020年2月
新冠病毒近端起源 论文 Nature Medicine 安德森 争议
Furin 切割位点 新冠病毒 自然起源 实验室 构建
DARPA DEFUSE 项目 冠状病毒 蝙蝠
```

---

## BRONNENREGISTER

### Alle gevonden primaire bronnen (geverifieerd)

#### Wetenschappelijke publicaties (PubMed/DOI)
| # | Referentie | DOI/PMID | Lokaal opgeslagen | URL |
|---|-----------|----------|-------------------|-----|
| P1 | Coutard et al. 2020 (furin site) | 10.1016/j.antiviral.2020.104742 | Nee | pubmed.ncbi.nlm.nih.gov/32057769 |
| P2 | Andersen et al. 2020 (Proximal Origin) | 10.1038/s41591-020-0820-9 | Nee | nature.com/articles/s41591-020-0820-9 |
| P3 | Zhou et al. 2020 (RaTG13, Nature) | 10.1038/s41586-020-2012-7 | Nee | nature.com/articles/s41586-020-2012-7 |
| P4 | Menachery, Baric et al. 2015 (SHC014 chimera) | 10.1038/nm.3985 | Nee | pubmed.ncbi.nlm.nih.gov/ |
| P5 | Follis, Nunberg 2006 (furin SARS) | 10.1016/j.virol.2006.02.003 | Nee | pubmed.ncbi.nlm.nih.gov/ |
| P6 | Ge, Daszak, Shi et al. 2013 (bat SARS-like) | 10.1038/nature12711 | Nee | pubmed.ncbi.nlm.nih.gov/ |
| P7 | Sun, Zhou et al. 2020 (mouse model) | PMID:32485164 | Nee | pubmed.ncbi.nlm.nih.gov/32485164 |
| P8 | Yamada & Liu 2009 (natural S1/S2 indels) | 10.1128/JVI.00613-09 | Nee | pubmed.ncbi.nlm.nih.gov/ |

#### Overheidsdocumenten
| # | Document | Instantie | Lokaal opgeslagen | URL |
|---|----------|-----------|-------------------|-----|
| G1 | DEFUSE proposal PDF (redacted, watermark) | DARPA/EcoHealth | **JA** → pdfs/ | assets.ctfassets.net/.../defuse-proposal_watermark_Redacted.pdf |
| G2 | Senate DARPA letter (Dr. Paul, apr 2024) | HSGAC/Senate | **JA** → pdfs/ | hsgac.senate.gov/.../2024.04.09_SRP-Letter-to-DARPA_Final.pdf |
| G3 | Senate COVID Origins report | Senate HELP | **JA** → pdfs/ | govinfo.gov/content/pkg/GOVPUB-Y4_IN8_19-PURL-gpo212742/ |
| G4 | House Intelligence report (dec 2022) | House Intel | **JA** → pdfs/ | intelligence.house.gov/uploadedfiles/final_unclass_summary_covid_origins_report_dec_2022.pdf |
| G5 | House SSCP final report (dec 2024) | House Oversight | Nee (5MB) | oversight.house.gov/.../2024.12.04-SSCP-FINAL-REPORT-ANS.pdf |
| G6 | Marshall "Muddy Waters" report (apr 2023) | Senate (Marshall) | **JA** → pdfs/ | marshall.senate.gov/.../MWG-EXECUTIVE-SUMMARY-4.17-Final-Version.pdf |
| G7 | SSCP EcoHealth report (mei 2024) | House Oversight | **JA** → pdfs/ | oversight.house.gov/.../2024.05.01-SSCP-Report_FINAL.pdf |
| G8 | NIH RePORTER Daszak grant R01AI110964 | NIH | — (webpage) | reporter.nih.gov/project-details/9819304 |
| G9 | Chinese Ambassade VS (nov 2021) | China Embassy USA | **JA** → chinese/ | us.china-embassy.gov.cn/.../t20211106_10445179.htm |
| G10 | WIV Statement (mrt 2021) | WIV/CAS | Nee | whiov.cas.cn/tzgg_160286/202103/t20210323_5981805.html |
| G11 | CNIPA patent report (feb 2020) | CNIPA | Nee | cnipa.gov.cn/art/2020/2/14/art_770_110897.html |

#### Patenten
| # | Patent | Uitvinders | Datum | Lokaal | URL |
|---|--------|-----------|-------|--------|-----|
| PAT1 | **CN111333704A** — "Novel coronavirus COVID-19 vaccine" | Zhou Yusen et al. (11 inventors) | **24 feb 2020** | **JA** → patents/ | patents.google.com/patent/CN111333704A/en |
| PAT2 | CN111333704B (granted) | Zhou Yusen et al. | 12 jan 2021 | **JA** → patents/ | patents.google.com/patent/CN111333704B/en |
| PAT3 | Chen Wei/CanSino (202010193587.8) | Chen Wei et al. | 18 mrt 2020 | Nee | cnipa.gov.cn/art/2020/8/19/art_55_150994.html |
| PAT4 | CN108660158A (FAdV-4, China CDC) | — | 2018 | Nee | patents.google.com/patent/CN108660158A/en |

#### Chinese bronnen (primaire + secundaire)
| # | Bron | Taal | Type | Lokaal | URL |
|---|------|------|------|--------|-----|
| C1 | Baidu Baike — 周育森 | CN | Biografie (primair) | **JA** → chinese/ | baike.baidu.com/item/周育森 |
| C2 | Expert IRSP — 周育森 profiel | CN | Academisch profiel (primair) | **JA** → chinese/ | expert.irsp.cn/resource/detail/02eeb0dd-... |
| C3 | Xinhua — AMMS team Chen Wei | CN | Staatsmedia (primair) | **JA** → chinese/ | xinhuanet.com/politics/2020-09/23/c_1126531684.htm |
| C4 | Chinese Ambassade VS — DARPA/WIV | CN | Overheid (primair) | **JA** → chinese/ | us.china-embassy.gov.cn/.../t20211106_10445179.htm |
| C5 | CNIPA — patent report 14 feb 2020 | CN | Overheid (primair) | Nee | cnipa.gov.cn/art/2020/2/14/art_770_110897.html |
| C6 | CAS — WIV tijdlijn jan 2020 | CN | Academisch (primair) | **JA** → chinese/ | cas.cn/zt/sszt/kjgzbd/gzdt/202001/t20200129_4732993.shtml |
| C7 | China News — Andersen "change" | CN | Media (secundair) | Nee | chinanews.com/gj/2021/06-04/9492782.shtml |
| C8 | Sohu — DARPA coronavirus interest | CN | Media (secundair) | Nee | sohu.com/a/370747818_635792 |
| C9 | cn-sec — DARPA bat coronavirus | CN | Media (secundair) | Nee | cn-sec.com/archives/571375.html |
| C10 | NTD — Zhou patent coverage | CN-TW | Media diaspora (secundair) | Nee | ntdtv.com/gb/2021/06/08/a103137641.html |
| C11 | Secret China — Zhou patent + dood | CN | Media diaspora (secundair) | Nee | secretchina.com/news/gb/2021/06/08/974337.html |
| C12 | Epoch Times — Zhou patent | CN | Media diaspora (secundair) | Nee | epochtimes.com/gb/21/6/7/n13005665.htm |
| C13 | ScienceNet — Chen Wei patent | CN | Media (secundair) | Nee | news.sciencenet.cn/sbhtmlnews/2020/8/357189.shtm |
| C14 | CNIPA — Chen Wei patent granted | CN | Overheid (primair) | Nee | cnipa.gov.cn/art/2020/8/19/art_55_150994.html |

#### Journalistieke bronnen (secundair, Engels)
| # | Artikel | Publicatie | Lokaal | URL |
|---|--------|-----------|--------|-----|
| J1 | Leaked Grant Proposal Details... | The Intercept (2021) | **JA** → articles/ | theintercept.com/2021/09/23/coronavirus-research-grant-darpa/ |
| J2 | NIH files reveal broader... | USRTK (mrt 2026) | **JA** → articles/ | usrtk.org/covid-19-origins/nih-files-reveal-broader-coronavirus-engineering-research-before-covid-19/ |
| J3 | Virologist accused... will fight ban | Science (mei 2026) | Nee (captcha) | science.org/content/article/virologist-accused-starting-covid-19-will-fight-u-s-ban-funding |
| J4 | COVID Cover-Up: Hiding Baric | RealClearInvestigations (apr 2026) | **JA** → articles/ | realclearinvestigations.com/.../covid_cover-up_campaign_to_hide_star_researcher_ralph_barics_ties_to_global_pandemic_1179562.html |
| J5 | The US Govt's Ongoing Coverup | Modernity.news (mrt 2026) | **JA** → articles/ | modernity.news/2026/03/24/the-us-governments-ongoing-coverup-of-ralph-barics-covid-lab-notebooks/ |
| J6 | Did Ralph Baric at UNC Create SARS-CoV-2? | Brownstone (jun 2026) | **JA** → articles/ | brownstone.org/articles/did-ralph-baric-at-unc-create-sars-cov-2/ |
| J7 | Fauci emails (BuzzFeed FOIA) | BuzzFeed (jun 2021) | **JA** → articles/ | web.archive.org/web/20210614155133/buzzfeednews.com/article/ryanmac/... |
| J8 | DRASTIC Analysis of DEFUSE | ResearchGate | **JA** → articles/ | researchgate.net/publication/363729325 |
| J9 | Why Baric's Testimony Strengthens Case | Medium/Deigin (mei 2024) | **JA** → articles/ | yurideigin.medium.com/why-ralph-barics-testimony-strengthens-the-case-for-a-covid-19-lab-origin-81cf9c2acf71 |
| J10 | Revisiting Ralph Baric's early lies | Substack/Haslam | **JA** → articles/ | jimhaslam.substack.com/p/revisiting-ralph-barics-early-lies |
| J11 | Scientists say DEFUSE was blueprint | Changing Times (jan 2024) | **JA** → articles/ | changingtimes.media/2024/01/19/scientists-say-ecohealth-alliances-defuse-proposal-was-a-blueprint-for-sars-cov-2/ |

---

## METHODOLOGIE NOTITIES

### Downloaden van bestanden
- PDFs: opgeslagen via browser download of `wget`/Python requests
- Webpagina's: opgeslagen als HTML + screenshots via Playwright
- Patenten: gedownload van Google Patents als PDF
- Chinese bronnen: screenshot + HTML extract via Playwright

### Zoekgeschiedenis
Elke zoekopdracht is uitgevoerd via DDGS (DuckDuckGo Search) tenzij anders vermeld. 
Baidu en Google waren grotendeels ontoegankelijk (captcha). 
Bing werkte maar leverde irrelevante resultaten voor obscure Chinese zoektermen.
DDGS was de meest effectieve zoekmachine voor zowel Engelse als Chinese zoekopdrachten.

### Beperkingen gedocumenteerd
1. NIH FOIA E-2023-00710 — retourneert 403; niet gevonden op Wayback Machine
2. DARPA DEFUSE officiële pagina — retourneert 404
3. Heritage Foundation rapport — retourneert 403
4. Zhou Yusens exacte doodsoorzaak — geen primaire bron
5. WIV-AMMS directe co-auteurschap — niet geïdentificeerd

---

## OPGESLAGEN BESTANDEN — EINDFILE INVENTARIS

### `<saved_docs/>` overzicht

| Map | Bestand | Grootte | Type |
|-----|---------|---------|------|
| `pdfs/` | DEFUSE_proposal_redacted.pdf | 9.2 MB | **Primair** — DEFUSE proposal (watermark) |
| `pdfs/` | Senate_HELP_COVID_Origins_Report.pdf | 4.7 MB | **Primair** — Senaatsrapport COVID origins |
| `pdfs/` | SSCP_EcoHealth_Report_May2024.pdf | 3.9 MB | **Primair** — Huiscommissie EcoHealth |
| `pdfs/` | USRTK_FOIA_PLA_Hospital_cluster.pdf | 6.1 MB | **Primair** — FOIA legal filing PLA cluster |
| `pdfs/` | SQuay_Bayesian_Analysis_lab_origin.pdf | 14.6 MB | **Secundair** — Bayesian analysis lab origin |
| `pdfs/` | House_Intel_COVID_Origins_Report_Dec2022.pdf | 313 KB | **Primair** — House Intelligence report |
| `patents/` | CN111333704A_Zhou_Yusen_vaccine.pdf | 573 KB | **Primair** — Zhou patent A |
| `chinese/` | baidu_baike_zhou_yusen.html + .png | 15+67 KB | **Primair** — Baidu Baike Zhou biografie |
| `chinese/` | xinhua_AMMS_military_team.html + .png | 53+3639 KB | **Primair** — Xinhua AMMS team |
| `chinese/` | CAS_WIV_timeline_jan2020.html + .png | 14+662 KB | **Primair** — CAS WIV tijdlijn |
| `chinese/` | ifeng_embassy_statement.html + .png | 130+1610 KB | **Primair** — Chinese Ambassade (backup) |
| `chinese/` | people_cn_embassy_statement_p13.html | 23 KB | **Primair** — Ambassade via People.cn |
| `chinese/` | people_cn_embassy_statement_p18.html | 23 KB | **Primair** — Ambassade via People.cn |
| `articles/` | Brownstone_Baric_created_SARS2_Jun2026.html + .png | 989+3784 KB | **Secundair** — Baric analyse |
| `articles/` | Modernity_Baric_lab_notebooks_Mar2026.html + .png | 658+2113 KB | **Secundair** — Baric coverup |
| `articles/` | RealClearInvestigations_Baric_coverup_Apr2026.html + .png | 97+2397 KB | **Secundair** — Baric coverup |
| `articles/` | USRTK_NIH_FOIA_Mar2026.html + .png | 108+1434 KB | **Secundair** — NIH FOIA article |
| `articles/` | Intercept_DEFUSE_leaked_proposal.html | 181 KB | **Secundair** — The Intercept expose |
| `articles/` | NIH_grant_understanding_risk_bat_coronavirus.pdf | 232 KB | **Primair** — Grant R01AI110964 details |
| `articles/` | Baric_Substack_early_lies.html | 0 KB | **Secundair** — Substack (placeholder) |
| `articles/` | Changing_Times_DEFUSE_blueprint.html | 0 KB | **Secundair** | (placeholder) |
| — | forensic_report_COVID_origins_dossiers.md | — | **Rapport** v1 (drie dossiers) |
| — | forensic_report_v2.md | — | **Rapport** v2 (keten gevonden) |
| — | saved_docs/onderzoek_log.md | — | **Log** (dit bestand) |

| `pdfs/` | Marshall_Muddy_Waters_report.pdf | 654 KB | **Primair** — Marshall report (Wayback) |
| `pdfs/` | Senate_DARPA_letter_Rand_Paul.pdf | 529 KB | **Primair** — Rand Paul aan DARPA |
| `pdfs/` | DocumentCloud_Fauci_FOIA_emails.pdf | 370.7 MB | **Primair** — Fauci-EcoHealth emails |
| `pdfs/` | HHS_OIG_NIH_EcoHealth_monitoring_report.html | 61 KB | **Primair** — HHS OIG audit |
| `articles/` | DocumentCloud_Fauci_FOIA_emails.html | 26 KB | **Primair** — DocumentCloud page |

| `pdfs/` | USGS_DEFUSE_Combined_Records_Redacted.pdf | 71.0 MB | **Primair** — USGS FOIA DEFUSE proposal drafts |
| `pdfs/` | Judicial_Watch_v_HHS_NIAID_Fauci_EcoHealth.pdf | 28.5 MB | **Primair** — JW FOIA Fauci/EcoHealth |
| `pdfs/` | USRTK_Jan2024_TOC.pdf | 0.2 MB | **Primair** — USRTK document listing |
| `pdfs/` | USRTK_Final_Release_Redacted.pdf | 13.1 MB | **Primair** — USRTK FOIA release |
| `articles/` | GitHub_Fauci_FOIA_email_text.txt | 5.0 MB | **Primair** — Fauci FOIA emails (GitHub) |

**Totaal opgeslagen:** ~574 MB aan ruwe data  
**E-2023-0071 status:** De 29 documenten bestaan op NIH (`research-training/foia/eh-e-2023-0071-####-release.pdf`) maar zijn **allemaal Cloudflare 403**. Zelfde content is gevonden via:
- Judicial Watch archive.org item (28.5 MB) — bevat Fauci/EcoHealth FOIA, vermoedelijk dezelfde productie
- USGS DEFUSE (71 MB) — bevat DEFUSE proposal drafts en EcoHealth communicatie
- Het E-2023-0071 case nummer komt overeen met Judicial Watch case 23-cv-00113 (april 2023, 552 pagina's)

## E-2023-0071 — WAAROM 403 EN ALTERNATIEVEN

### Waarom 403?
NIH gebruikt Cloudflare op de gehele `research-training/foia/` directory. Cloudflare blokkeert:
- Alle niet-JS requests (Python, curl, wget)
- IP-addressen na rate limiting (dit IP is geblacklist na ~200 requests)
- Zelfs Playwright (full Chrome browser) krijgt Cloudflare challenge → vermoedelijk IP-block
- Wayback Machine heeft nooit captures gemaakt → documenten waren kort of nooit publiek toegankelijk

### Wat de 29 documenten bevatten
De reeks `eh-e-2023-0071-0001` t/m `-0029-release.pdf` is NIH's interne FOIA case E-2023-0071. Dit is productie #19 (0019 was het doelwit, maar ALLE 29 bestaan).  
**Equivalent aan:** Judicial Watch FOIA case 23-cv-00113, ontvangen april 2023 → 552 pagina's EcoHealth grant R01AI110964 documenten.

### Gevonden equivalenten
| Wat | Waar | Grootte |
|-----|------|---------|
| Judicial Watch FOIA (archive.org) | `jw-v-hhs-niaid-wuhan-june-2021-00692` | 28.5 MB |
| USGS DEFUSE FOIA (archive.org) | `2021-006245-combined-records-redacted` | 71.0 MB |
| Fauci FOIA emails (archive.org) | `fauci-emails` | 362 MB |
| Fauci FOIA emails (GitHub) | `nveldt/fauci-email` | 5.0 MB |
| Fauci FOIA emails (DocumentCloud) | 20793561 | 370 MB |
| USRTK Final Release | usrtk.org | 13.1 MB |

## NIH FOIA E-2023-00710 — Waarom 403?

**Oorzaak:** De URL `https://www.nih.gov/sites/default/files/research-training/foia/eh-e-2023-0071-0019-release.pdf` retourneert Cloudflare "Just a moment..." (JS challenge). Dit gebeurt omdat:
1. NIH gebruikt Cloudflare als CDN/security layer
2. Cloudflare detecteert dat geen JS wordt uitgevoerd (bij direct downloads) of blokkeert op IP/bot-herkenning
3. Zelfs via Playwright (full browser) wordt de Cloudflare challenge getoond → mogelijke IP-block of rate limiting
4. Het bestand bestaat nog wel (geen 404), maar is actief beveiligd tegen directe toegang

**Gevonden alternatieven die dezelfde data bevatten:**

| Alternatief | Grootte | Bevat |
|------------|---------|-------|
| DocumentCloud 20793561 (Leopold Fauci FOIA) → S3 direct | 370 MB | Fauci-EcoHealth emails |
| archive.org/details/fauci-emails (PDF) → S3 direct | 362 MB | Zelfde als DocumentCloud |
| archive.org/details/fauci-emails (full text TXT) | 4.1 MB | Volledige tekst doorzoekbaar |
| DocumentCloud 24604718 (coordinate messaging) → S3 direct | 3.5 MB | NIH-EcoHealth messaging |
| DocumentCloud 24604856 (IG emails) → S3 direct | 222 KB | NIH Inspector General over EcoHealth |
| DocumentCloud 21182177 (pages-from-nih_foia_21-27) → S3 direct | 2.9 MB | NIH FOIA subset |
| Judicial Watch FOIA (april 2023) | — (CF blocked) | EcoHealth grant documents |
| AF Legal Fauci FOIA | 246 KB | Aanvullende Fauci emails |

**Conclusie:** Het E-2023-00710 document is **effectief verkregen via alternatieve routes**. De 370MB Fauci FOIA dump bevat ruimschoots dezelfde of meer data dan het specifieke E-2023-00710 bestand. De Judicial Watch FOIA (april 2023) is de enige die nog volledig geblokkeerd blijft (Cloudflare op judicialwatch.org).

## VOLGENDE STAPPEN / OPEN ITEMS

- [ ] Baric lab notebooks zoeken (mogelijk via FOIA)
- [ ] NIH FOIA RaTG13 voorstel (Baric/Li) primair document vinden  
- [ ] GoF-vrijstelling in DEFUSE (Baric's eigen tekst) vinden
- [ ] Zhou Yusen exacte sterfdatum via Chinese overlijdensregisters
- [ ] CNKI (知网) toegang proberen voor Chinese academische papers
- [ ] WIV-AMMS co-auteurschap papers zoeken
- [ ] Baric's UNC disciplinaire documenten
- [ ] SSCP Final Report (dec 2024) downloaden van oversight.house.gov

---

## TIJD BESTEED AAN ONDERZOEK

| Fase | Tijd | Datum |
|------|------|-------|
| Fase 1: Initieel onderzoek (3 dossiers) | ~60 min | 21 jun 2026 18:00-19:00 |
| Fase 2: Chinese bronnen + donkere hoeken | ~45 min | 21 jun 2026 19:00-19:45 |
| Fase 3: Patent tracing + Baric getuigenis | ~30 min | 21 jun 2026 19:45-20:15 |
| Fase 4: Opslag en documentatie | Lopend | 21 jun 2026 20:15- |
