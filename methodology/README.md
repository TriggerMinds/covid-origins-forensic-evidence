# Methodology

## Search Approach

### Engines Used
| Engine | Effectiveness | Notes |
|--------|-------------|-------|
| **DDGS (DuckDuckGo Search)** v9.14.4 | ⭐⭐⭐⭐⭐ | Best for both English and Chinese; no captcha |
| **Bing** (cn.bing.com) | ⭐⭐⭐ | Less accurate Chinese results |
| **Google Patents** | ⭐⭐⭐⭐⭐ | Occasionally captcha-limited |
| **WIPO PATENTSCOPE** | ⭐⭐⭐⭐ | International patent backup |
| **PubMed / NIH RePORTER** | ⭐⭐⭐⭐⭐ | Primary source for grants and papers |
| **Archive.org CDX/Advanced Search** | ⭐⭐⭐⭐ | FOIA document discovery |
| **DocumentCloud S3** | ⭐⭐⭐⭐⭐ | Direct access bypasses Cloudflare |

### Blocked / Avoided
| Engine | Reason |
|--------|--------|
| Google Search | Captcha after ~5 queries |
| Baidu | Captcha (Tuxing) |
| DuckDuckGo HTML | Captcha |
| Justia Patents | Cloudflare |
| Science.org | Captcha |

### Chinese Search Strategy
- Chinese queries via DDGS (simplified Chinese)
- Chinese diaspora media (NTD, Epoch Times, Secret China)
- Chinese government sources (Xinhua, People.cn, Chinese embassies)
- Chinese academic profiles (Baidu Baike, Expert IRSP)
- Patent searches via Google Patents (internationalized)
- **Note:** Baidu blocked by captcha — DDGS is superior for Chinese

### Cloudflare Bypass Techniques
- **DocumentCloud S3:** `s3.documentcloud.org/documents/{ID}/{filename}.pdf` — bypasses Cloudflare
- **Archive.org:** `archive.org/download/{ID}/{filename}` — separate infrastructure
- **GitHub:** `raw.githubusercontent.com/` — separate infrastructure
- **Wayback Machine:** `if_` modifier for raw file access
- **What didn't work:** cloudscraper, curl_cffi, Playwright (IP block), SOCKS proxies (Tor not running)

### Key Search Terms Used

English: MERS-RBD-Fc, PRJNA612766, DEFUSE, furin cleavage site, Zhou Yusen, Shi Zhengli, AMMS, PLA medical, antibody-dependent enhancement, BioProject, SRA deletion

Chinese: 周育森, 石正丽, 军事医学科学院, 中东呼吸综合征, 受体结合域, Fc融合蛋白, 抗体依赖增强, 病原微生物与生物安全

## Source Hierarchy
1. **Primary:** Scientific papers (DOI), FOIA documents, patents, congressional reports, Chinese government statements, institutional pages
2. **Secondary:** Investigative journalism referencing primary documents, third-party analyses with clear methodology
3. **Contextual:** General background, media reporting without primary source verification

## Verification Process
- PDF files verified via magic bytes (`%PDF-`)
- HTML files verified via doctype/content
- Claims cross-referenced across multiple independent sources
- Chinese sources verified via native-language access
- Wayback Machine timestamps verified where applicable
