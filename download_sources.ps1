# Download all source files
# Run: PowerShell -ExecutionPolicy Bypass -File download_sources.ps1

$outDir = "saved_sources"
New-Item -ItemType Directory -Path $outDir -Force | Out-Null

$files = @(
    # FOIA documents (publicly accessible)
    @{URL="https://assets.ctfassets.net/syq3snmxclc9/4NFC6M83ewzKLf6DvAygb4/0cf477f75646e718afb332b7ac6c3cd1/defuse-proposal_watermark_Redacted.pdf"; Name="DEFUSE_proposal_redacted.pdf"},
    @{URL="https://archive.org/download/2021-006245-combined-records-redacted/2021-006245%20-%20Combined%20Records_Redacted.pdf"; Name="USGS_DEFUSE_Combined_Records.pdf"},
    @{URL="https://archive.org/download/jw-v-hhs-niaid-wuhan-june-2021-00692/JW-v-HHS-NIAID-Wuhan-June-2021-00692.pdf"; Name="Judicial_Watch_Fauci_EcoHealth.pdf"},
    @{URL="https://archive.org/download/fauci-emails/fauci-emails.pdf"; Name="Fauci_FOIA_emails.pdf"},
    @{URL="https://archive.org/download/fauci-emails/fauci-emails_djvu.txt"; Name="Fauci_FOIA_emails.txt"},
    @{URL="https://archive.org/download/usrtk-jan-2024-toc/USRTK%20Jan%202024%20TOC.pdf"; Name="USRTK_TOC.pdf"},
    # Patent
    @{URL="https://patentimages.storage.googleapis.com/97/41/44/d1ca7d8928f221/CN111333704A.pdf"; Name="CN111333704A_Zhou_vaccine.pdf"},
    # Congressional reports
    @{URL="https://www.govinfo.gov/content/pkg/GOVPUB-Y4_IN8_19-PURL-gpo212742/pdf/GOVPUB-Y4_IN8_19-PURL-gpo212742.pdf"; Name="Senate_HELP_COVID_Origins.pdf"},
    @{URL="https://intelligence.house.gov/uploadedfiles/final_unclass_summary_covid_origins_report_dec_2022.pdf"; Name="House_Intel_Report.pdf"},
    @{URL="https://oversight.house.gov/wp-content/uploads/2024/12/2024.12.04-SSCP-FINAL-REPORT-ANS.pdf"; Name="SSCP_Final_Report_Dec2024.pdf"},
    @{URL="https://www.hsgac.senate.gov/wp-content/uploads/2024.04.09_SRP-Letter-to-DARPA_Final.pdf"; Name="Senate_DARPA_letter.pdf"},
    # Chinese sources
    @{URL="https://www.xinhuanet.com/politics/2020-09/23/c_1126531684.htm"; Name="Xinhua_AMMS_team.html"},
    @{URL="https://us.china-embassy.gov.cn/zmgx_1/zxxx/202111/t20211106_10445179.htm"; Name="Chinese_Embassy_statement.html"}
)

foreach ($f in $files) {
    $dest = Join-Path $outDir $f.Name
    if (Test-Path $dest) {
        Write-Host "SKIP: $($f.Name) already exists"
        continue
    }
    Write-Host "DOWNLOAD: $($f.Name)..."
    try {
        Invoke-WebRequest -Uri $f.URL -OutFile $dest -TimeoutSec 300
        Write-Host "  OK: $( (Get-Item $dest).Length / 1KB ) KB"
    } catch {
        Write-Host "  FAIL: $_"
    }
}
Write-Host ""
Write-Host "Done. Files in: $outDir"
