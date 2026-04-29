# belt.intel — Data Sources
# Version: 0.1
# Created: 2026-04-29
# This is the seed list for the M1 scraper agent

## CLEARNET SOURCES

### Ransomware & Breach Monitoring
url: https://ransomware.live
type: ransomware
format: web/API
notes: live ransomware group activity,
       victim posts, leak announcements
priority: HIGH

url: https://ransomlook.io
type: ransomware
format: web/API
notes: ransomware groups + crypto tracking
       open source, has API
priority: HIGH

url: https://breach.house
type: breach
format: web
notes: real-time leak monitoring
       aggregates underground forums
priority: HIGH

url: https://haveibeenransom.com
type: breach
format: web
notes: infostealer log checker
       personal exposure monitoring
priority: MEDIUM

### CVE & Vulnerability Feeds
url: https://nvd.nist.gov/feeds/xml/cve/misc/nvd-rss-analyzed.xml
type: cve
format: RSS
notes: official NVD CVE feed
       pull every 6 hours
priority: HIGH

url: https://github.com/advisories
type: cve
format: RSS/API
notes: GitHub security advisories
       covers npm, pip, gem, etc
priority: HIGH

url: https://www.exploit-db.com/rss.xml
type: exploit
format: RSS
notes: fresh exploits as they drop
       high signal for active threats
priority: HIGH

### Aggregators
url: https://darkwebinformer.com
type: aggregator
format: web/RSS
notes: DWI public feed
       good signal, manual curation
       use as cross-reference
priority: MEDIUM

url: https://github.com/Bert-JanP/Open-Source-Threat-Intel-Feeds
type: aggregator
format: GitHub
notes: curated IOC feeds in CSV
       IPs, URLs, CVEs, hashes
       KQL queries included
priority: HIGH

url: https://otx.alienvault.com
type: threat intel
format: API
notes: AlienVault OTX
       free API, massive IOC database
       cross-reference source
priority: HIGH

url: https://www.abuseipdb.com
type: ip reputation
format: API
notes: IP reputation database
       free tier: 1000 checks/day
       auto cross-reference all IPs
priority: HIGH

url: https://www.virustotal.com
type: hash/url reputation  
format: API
notes: free tier: 4 lookups/min
       auto cross-reference hashes
priority: HIGH

## TELEGRAM SOURCES
# via Telethon — public channels only
# seed list from:
# github.com/fastfire/deepdarkCTI

### Categories to Monitor
- ransomware group announcement channels
- data leak channels
- threat actor channels  
- stealer log announcement channels
- CVE/exploit announcement channels
- hacktivist channels
- OSINT community channels

### How to Find Them
1. Start with deepdarkCTI list
2. Follow cross-references in posts
   (channels promote each other)
3. Search Telegram for:
   "ransomware" "leak" "breach"
   "databreach" "hack" "cve"
4. Monitor who reposts what
5. Build the list organically

### Monitoring Rules
- public channels only (v1)
- no joining private groups
- no interacting — observe only
- log channel name, message id,
  timestamp, content
- flag keywords:
  "breach" "leak" "victim"
  "CVE-" "0day" "RCE"
  "critical" "patch" "exploit"
  "database" "credentials" "dump"

## PASTE SITES
url: https://pastebin.com
type: paste
format: web/API
notes: classic paste site
       watch for credential dumps
priority: MEDIUM

url: https://paste.fo  
type: paste
format: web
notes: newer paste site
       growing threat actor usage
priority: MEDIUM

## SCRAPER SCHEDULE

Every 6 hours (M1 cron):
- All RSS feeds
- ransomware.live
- ransomlook.io
- breach.house
- OTX new pulses
- Telegram channel sweep

Every 1 hour:
- NVD CVE feed
- GitHub advisories
- Exploit-DB

Real-time (Telegram):
- Telethon listener
- runs continuously
- flags and queues high signal

## NORMALIZATION RULES

Every item gets:
- type (breach/cve/exploit/leak/apt)
- source (where it came from)
- raw_content (original text)
- extracted_iocs (auto-parsed)
- confidence (default 50)
- severity (auto-scored by keywords)
- flagged (boolean — needs Nate review)
- flagged_reason (why it was flagged)

Flag if contains:
- CVE with CVSS > 8.0
- known ransomware group name
- "critical" + "patch" 
- "0day" or "zero day"
- "RCE" or "remote code execution"
- mass credential dump (>10k records)
- US critical infrastructure mention

## CROSS REFERENCE PIPELINE

For every IOC extracted:
1. Check AbuseIPDB (IPs)
2. Check VirusTotal (hashes/URLs)
3. Check Shodan (IPs/domains)
4. Check OTX for existing pulse
5. Score confidence based on hits
6. Write to iocs table in Supabase
7. Link back to source alert

## GITHUB REPOS TO WATCH
github.com/fastfire/deepdarkCTI
github.com/Bert-JanP/Open-Source-Threat-Intel-Feeds
github.com/hslatman/awesome-threat-intelligence
github.com/paralax/awesome-honeypots
github.com/rshipp/awesome-malware-analysis

## NOTES
- Start manual. Watch what comes in.
- Automate what you trust.
- Never auto-publish — Nate reviews
  everything before it goes live.
- The human layer is non-negotiable.
- Bad intel is worse than no intel.
