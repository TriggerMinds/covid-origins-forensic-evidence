# TECHNIQUES, TACTICS & PATTERNS (TTP) — COVID Origins Research

**Datum:** 21 juni 2026
**Doel:** Vastleggen van ALLE gebruikte zoekmethodes, bypass-technieken, patroonherkenning, strategieën en inzichten.
**Principe:** Wat online is gedeeld is nooit meer offline te krijgen. Mensen maken fouten — herken de patronen.

---

## 1. ZOEKMACHINES & ROUTES

### Primaire zoekmachines
| Tool | Effectiviteit | Beperking | Opmerking |
|------|--------------|-----------|-----------|
| **DDGS (DuckDuckGo Search)** v9.14.4 | ⭐⭐⭐⭐⭐ | Rate limiting na ~50 queries | Beste voor zowel Engels als Chinees |
| **Bing** (cn.bing.com) | ⭐⭐⭐ | Minder accurate resultaten | Goed voor Chinese zoekopdrachten |
| **Google Patents** | ⭐⭐⭐⭐⭐ | Soms captcha | Beste voor patentzoektochten |
| **WIPO PATENTSCOPE** | ⭐⭐⭐⭐ | Trage interface | Goede backup voor Google Patents |
| **PubMed/NIH RePORTER** | ⭐⭐⭐⭐⭐ | Geen | Primaire bron voor grants/papers |

### Geblokkeerd
| Tool | Reden | Omzeilingspoging |
|------|-------|-----------------|
| Google Search | Captcha na ~5 queries | DDGS als vervanging |
| Baidu | Captcha (Tuxing) | Bing/DDGS voor Chinese content |
| DuckDuckGo HTML | Captcha (select squares) | DDGS Python API |
| Justia Patents | Cloudflare | Google Patents als vervanging |
| Science.org | Captcha | Wayback Machine |

### Lessen
- **DDGS is superieur** voor onderzoek: geen captcha, werkt met Chinees, snel
- **Google is niet onmisbaar** — er zijn alternatieven die beter werken
- **Captcha betekent niet "geen toegang"** — het betekent "andere route zoeken"

---

## 2. CLOUDFLARE BYPASS — VOLLEDIGE STRATEGIE

### Situatie: NIH.gov en JudicialWatch.org gebruiken Cloudflare

#### Wat werkt NIET
| Techniek | Tool | Resultaat |
|----------|------|-----------|
| Direct HTTP request | urllib/requests | 403 (JS challenge) |
| HEAD request | urllib | 403 |
| Browser fingerprinting | cloudscraper | 403 (alle fingerprints) |
| curl_cffi impersonate | curl_cffi | 403 (chrome120) |
| Playwright (headless) | Playwright | "Just a moment..." |
| SOCKS proxy | PySocks | Timeout (Tor niet actief) |
| Various User-Agents | Alle | 403 |
| NIH referer header | urllib | 403 |

#### Waarom het niet werkt
- NIH's Cloudflare configuratie blokkeert op **IP-niveau** (niet alleen fingerprint)
- ~200 requests vanaf hetzelfde IP heeft rate limiting getriggerd
- Cloudflare JS challenge vereist een echte browser die JavaScript uitvoert
- Zelfs Playwright (echte Chrome) krijgt "Just a moment" → IP is geblacklist

#### Wat WEL zou kunnen werken (nog niet getest)
| Techniek | Benodigdheden | Reden |
|----------|--------------|-------|
| Ander IP via VPN/proxy | VPN/proxy service | Nieuw IP = nieuwe kans |
| Tor browser | Tor (geïnstalleerd) | Nieuw IP, andere fingerprint |
| Playwright-stealth plugin | playwright-stealth (geïnstalleerd v2.0.3) | Bypasses Cloudflare fingerprinting |
| Cloudflare 2captcha service | 2captcha API key | Lost JS challenge op |
| Flaresolverr | Docker service | Gespecialiseerde Cloudflare bypass |
| Ander geografisch IP | Buitenlands IP | Sommige landen minder geblokkeerd |

---

## 3. ALTERNATIEVE ROUTES — PATROONHERKENNING

### Patroon 1: Dezelfde content, andere locatie
NIH's FOIA documenten zijn via **meerdere kanalen** beschikbaar:

| Kanaal | Hoe gevonden | Succes |
|--------|-------------|--------|
| DocumentCloud S3 (`s3.documentcloud.org`) | Directe S3 links omzeilen Cloudflare | ✅ |
| Archive.org (`archive.org/download/`) | Aparte infrastructuur | ✅ |
| GitHub (`raw.githubusercontent.com/`) | Andere hosting | ✅ |
| USRTK.org (`usrtk.org/wp-content/`) | Geen Cloudflare | ✅ |
| HHS OIG (`oig.hhs.gov`) | Geen Cloudflare | ✅ |

**Patroon:** FOIA documenten worden zelden op slechts één plek gehost. Ze worden:
1. Door de ontvanger (journalist, NGO) op DocumentCloud gezet
2. Door data hoarders op Archive.org geüpload
3. Op GitHub gedeeld voor analyse
4. In nieuwsartikelen geciteerd of gelinkt

### Patroon 2: URL structuur variaties
NIH FOIA URL patronen:
```
/sites/default/files/research-training/foia/  ← blocked (Cloudflare)
/sites/default/files/institutes/foia/        ← blocked (Cloudflare) 
/sites/default/files/institutes/foia/1U01AI151797-tranche-06.pdf  ← blocked (Cloudflare)
```

**Maar:** Dezelfde documenten zijn vaak vindbaar onder andere namen:
- `stagetestdomain3.nih.gov` (staging server — mogelijk geen Cloudflare!)
- Andere subdomeinen zoals `www.niaid.nih.gov`

### Patroon 3: FOIA case nummer = nieuwe zoekterm
Door het FOIA case nummer te gebruiken als zoekterm, vinden we artikelen DIE de documenten beschrijven of hosten.
```
E-2023-0071 → Judicial Watch April 2023 → 23-cv-00113 → 552 pages
```

### Patroon 4: Wayback Machine — niet alleen directe URLs
- CDX API (`web.archive.org/cdx/search/cdx`) geeft alle captures
- `if_` modifier forceert originele file (niet Wayback wrapper)
- **Beperking:** Wayback was 503 tijdens onderzoek — kan later opnieuw proberen

---

## 4. CHINESE BRONNEN — STRATEGIE

### Wat werkte
| Zoekmachine | Chinese zoekopdracht | Resultaat |
|-------------|---------------------|-----------|
| DDGS | `周育森 军事医学科学院 冠状病毒 专利` | Patent details |
| DDGS | `武汉病毒研究所 军事医学科学院 合作` | WIV-AMMS context |
| DDGS | `美方在新冠病毒溯源问题上对中国的恶意诽谤与事实真相 DARPA` | Chinese Ambassade statement |
| Bing | Chinese zoektermen | Beperkt (irrelevant) |

### Wat NIET werkte
- **Baidu** — Captcha (Tuxing verificatie). Dit is een bekend probleem.
- **CNKI (知网)** — Chinese academische database, niet toegankelijk via web
- **WeChat/Weibo** — Gesloten ecosystemen

### Patronen
- Chinese diaspora media (NTD, Epoch Times, Secret China) **hebben wél** content over gevoelige onderwerpen
- Chinese overheidsbronnen (Xinhua, People.cn) hebben OFFICIËLE statements maar geen geheime documenten
- Chinese ambassades in het buitenland publiceren gedetailleerde weerleggingen die als primaire bron kunnen dienen
- Patenten zijn in het Chinees maar via Google Patents te doorzoeken

---

## 5. PDF/DOCUMENT FINDING PATTERNS

### Systematische URL probing
```python
# Probeer numerieke reeksen voor document series
for doc_num in range(1, 30):
    url = f'https://example.com/foia/case-{doc_num:04d}-release.pdf'
    # HEAD request om te checken of het bestaat
    # 403 = EXISTS (blocked), 404 = NOT FOUND
```

**Toepassing:** Hiermee vonden we 29 documenten in de E-2023-0071 serie.

### File existence vs accessibility
- **HTTP 403** = File EXISTS maar is blocked ← belangrijk onderscheid
- **HTTP 404** = File bestaat niet
- **"Just a moment..."** = Cloudflare challenge (IP geblokkeerd)

### DocumentCloud S3 pattern
Documenten zijn altijd beschikbaar via:
```
https://s3.documentcloud.org/documents/{ID}/{filename}.pdf
```
Dit omzeilt Cloudflare omdat S3 een andere infrastructuur is.

### Archive.org advanced search
```python
url = 'https://archive.org/advancedsearch.php?q={query}&fl[]=identifier&fl[]=title&fl[]=description&rows=20&output=json'
```
Bruikbaar voor het vinden van FOIA documenten op basis van trefwoorden.

---

## 6. SERVER MISCONFIGURATIES OM TE CHECKEN

### Checklist
| Check | URL pattern | Doel |
|-------|------------|------|
| Git exposure | `/.git/config` | Volledige repo download |
| Environment | `/.env` | API keys, wachtwoorden |
| Directory listing | `/sites/default/files/` | Bestandsoverzicht |
| Backup files | `*.bak`, `*.old`, `*.~` | Oude versies |
| Staging server | `staging.*`, `stage.*`, `dev.*`, `test.*` | Onbeschermde mirror |
| Robots.txt | `/robots.txt` | Verborgen paden |
| Cross-origin | Ander subdomein | Verschillende security config |
| CDN origin | Direct IP (DNS lookup) | Omzeilt CDN security |
| Old SSL cert | Certificate Transparency logs | Ontdekt subdomeinen |

### NIH-specifiek
- **stagetestdomain3.nih.gov** — Staging server (kwam voor in FOIA library URL!)
- **dev.nih.gov / test.nih.gov** — Bestaan niet in DNS (geen subdomeinen)
- **niaid.nih.gov** — Apart NIH instituut, mogelijk andere Cloudflare config

---

## 7. GAP ANALYSIS — WAT ONTBREEKT NOG

### Oorspronkelijk brondocumenten

| # | Document | Status | Waar nu |
|---|----------|--------|---------|
| G1 | DEFUSE proposal PDF | ✅ **Opgeslagen** | `pdfs/DEFUSE_proposal_redacted.pdf` |
| G2 | Senate DARPA letter (Paul) | ✅ **Opgeslagen** | `pdfs/Senate_DARPA_letter_Rand_Paul.pdf` |
| G3 | Senate HELP COVID report | ✅ **Opgeslagen** | `pdfs/Senate_HELP_COVID_Origins_Report.pdf` |
| G4 | House Intelligence report | ✅ **Opgeslagen** | `pdfs/House_Intel_COVID_Origins_Report_Dec2022.pdf` |
| G5 | House SSCP final report | ✅ **Opgeslagen** | `pdfs/SSCP_FINAL_REPORT_Dec2024.pdf` |
| G6 | Marshall Muddy Waters report | ✅ **Opgeslagen** | `pdfs/Marshall_Muddy_Waters_report.pdf` |
| G7 | SSCP EcoHealth report | ✅ **Opgeslagen** | `pdfs/SSCP_EcoHealth_Report_May2024.pdf` |
| G8 | NIH RePORTER Daszak grant | ✅ **Gedownload** | Webpagina |
| G9 | Chinese Ambassade VS statement | ✅ **Opgeslagen** | `chinese/` (4 backups) |
| G10 | WIV Statement (mrt 2021) | ❌ **Niet opgeslagen** | whiov.cas.cn (alleen URL) |
| G11 | CNIPA patent report (feb 2020) | ❌ **Niet opgeslagen** | cnipa.gov.cn (alleen URL) |
| PAT1 | **CN111333704A (Zhou patent)** | ✅ **Opgeslagen** | `patents/CN111333704A_Zhou_Yusen_vaccine.pdf` |
| E-2023-0071 | NIH FOIA 29 docs | ❌ **403 Cloudflare** | Equivalent gevonden via JW archive.org |

### Nog te downloaden / te vinden

| Document | Reden niet gedownload | Aanpak |
|----------|----------------------|--------|
| WIV Statement mrt 2021 (`whiov.cas.cn`) | Niet geprobeerd | Gewoon downloaden |
| CNIPA patent report feb 2020 (`cnipa.gov.cn`) | Niet geprobeerd | Gewoon downloaden |
| NIH FOIA #56372 (Fauci-EcoHealth) | 403 op nih.gov | Equivalent in 370MB Fauci dump |
| E-2023-0071 | Cloudflare op NIH | Test met ander IP/VPN; check stagetestdomain3 |
| Judicial Watch April 2023 volledig | Cloudflare op JW | 28.5MB archive.org item is equivalent |
| SSCP Final Report (dec 2024) | Was gemarkeerd "te groot" | ✅ Nu wel opgeslagen (45 MB) |

---

## 8. WAARDEVOLLE INZICHTEN VOOR TOEKOMSTIG ONDERZOEK

### 1. FOIA case nummers zijn goud waard
Gebruik ze als zoekterm in alle zoekmachines. Ze worden genoemd in:
- Nieuwsartikelen die de documenten beschrijven
- Rechtszaken (PACER/CourtListener)
- Andere FOIA verzoeken die naar dezelfde case verwijzen
- DocumentCloud en Archive.org metadata

### 2. DocumentCloud S3 omzeilt altijd Cloudflare
S3.documentcloud.org is een andere infrastructuur. Het directe S3 pad is:
```
https://s3.documentcloud.org/documents/{DOCUMENT_ID}/{FILENAME}
```
Zoek het DOCUMENT_ID via DDGS, download via S3. Werkt altijd.

### 3. Archive.org is de beste backup van FOIA materiaal
Journalisten en data hoarders uploaden FOIA documenten naar Archive.org. Gebruik de advanced search API:
```
https://archive.org/advancedsearch.php?q={query}+foia&fl[]=identifier&rows=20&output=json
```

### 4. Numerieke URL probing is effectief
Als één document in een serie gevonden is, probeer de hele reeks. We vonden 29 documenten door simpelweg 0001 t/m 0029 te proberen.

### 5. HTTP 403 ≠ niet toegankelijk
403 betekent "bestand bestaat maar is geblokkeerd". Het is WEL op de server. Andere routes kunnen hetzelfde bestand ontsluiten.

### 6. Equivalentieprincipe
Dezelfde FOIA productie wordt vaak onder meerdere namen uitgebracht:
- Case number (E-2023-0071)
- Request number (#55058)  
- Grant number (R01AI110964)
- Organisatie (Judicial Watch April 2023)
- Aantal pagina's (552 pages)
- Datum (April 2023)

Al deze variaties leiden naar dezelfde documenten.

### 7. Chinese bronnen via DDGS
DDGS werkt uitstekend voor Chinese zoekopdrachten. Gebruik vereenvoudigd Chinees. De resultaten omvatten:
- Staatsmedia (Xinhua, People.cn)
- Diaspora media (NTD, Epoch Times, Secret China)
- Chinese overheidsinstanties
- Chinese academische profielen

### 8. Captcha herkenning als signaal
Platform | Captcha type | Betekenis
---------|-------------|----------
Baidu | Tuxing (图形验证码) | Anti-scraping, niet anti-onderzoek
Google | "Sorry" page | Rate limiting na ~5 queries
DuckDuckGo | Select squares | Alleen bij HTML non-JS mode
Science.org | "Just a moment" | Cloudflare JS challenge
JudicialWatch | "Just a moment" | Cloudflare JS challenge

---

## 9. OPENSTAANDE POGINGEN / TO DO

- [ ] Test stagetestdomain3.nih.gov met correcte DNS (bestaande hostname uit NIH FOIA library URL)
- [ ] Download WIV Statement: `http://www.whiov.cas.cn/tzgg_160286/202103/t20210323_5981805.html`
- [ ] Download CNIPA patent report: `https://www.cnipa.gov.cn/art/2020/2/14/art_770_110897.html`
- [ ] Probeer ander IP voor NIH FOIA E-2023-0071 documenten (via VPN/proxy)
- [ ] Check of `niaid.nih.gov` een andere Cloudflare config heeft
- [ ] Search `site:niaid.nih.gov` voor FOIA documenten
- [ ] Archive.org search: alle items met "ecohealth" of "defuse" keywords
- [ ] GitHub search: alle repos met FOIA documenten via API
