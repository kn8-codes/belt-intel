# belt.intel — CONTEXT.md
Version: 0.1 (founding document)
Created: 2026-04-29
Status: Pre-launch

## What This Is

belt.intel is a dark web and threat 
intelligence monitoring service built 
for people who are still figuring it out.

Not for enterprise SOC teams.
Not for $50k/year contract buyers.

For the self-taught 20-something at 2am
who just passed Security+ and doesn't 
know where to look next.
For the bug bounty hunter on their 
first few programs.
For the homelab defender who wants to 
feel connected to the real threat landscape.

For the person we used to be.

## The Problem

Threat intel exists in two places:

1. Enterprise platforms (Recorded Future,
   Mandiant, CrowdStrike) — $50k+/year,
   written for analysts who already know
   everything, completely inaccessible
   to beginners.

2. Raw chaos — Reddit noise, random 
   Telegram channels, Twitter threads
   that assume you already know what
   "threat actor 888" means.

Nobody is in the middle.
Nobody is taking the real signal and
explaining it in plain language to the
person who wants to learn.

That's the gap. That's belt.intel.

## The Differentiator

DWI and everyone else posts the WHAT.
belt.intel posts the WHAT + the WHY
+ here's how to look at this yourself.

And we show the machine that runs it.

The agent stack that scrapes, normalizes,
and flags the intel is visible. 
Open sourced. Documented. 
The tool is the content.
The build log is the portfolio.

## The Feeling

When someone lands on belt.intel 
for the first time the feeling should be:

"Where has this been my entire life."

That's the brand.
That's the only metric that matters
in year one.

## URL
intel.belt.works

## Platform
Ghost (v1)
Migrate to SvelteKit when proven.

## Companion Product
ioc.belt.works — IOC database
Same infrastructure, different front door.

## Target Audience

Primary:
- Self-taught security people, 20s-30s
- TryHackMe / HTB / OSCP crowd
- Bug bounty hunters, early stage
- Homelab defenders
- People searching for:
  TryHackMe, Hak5, IPPSec,
  Black Hills InfoSec, Canary tokens

Secondary:
- Junior SOC analysts
- Sysadmins who want to level up
- Anyone who ever searched for
  a ripped Udemy security course

## Content Format (every post)

WHAT:    one sentence, what happened
WHO:     victim, threat actor, target
WHY:     plain language, 2-3 sentences
         why this matters right now
HOW:     how the agent found it
         (show the machine)
GO LOOK: one tool, one search,
         one thing they can do
         right now to dig deeper

## Data Sources (v1)

Clearnet:
- ransomware.live
- ransomlook.io
- haveibeenransom.com
- breach.house
- NVD RSS (CVE advisories)
- GitHub Security Advisories RSS
- Exploit-DB
- DWI public feed

Telegram (via Telethon):
- seed list from deepdarkCTI
  github.com/fastfire/deepdarkCTI
- ransomware group channels
- leak announcement channels
- threat actor channels
- stealer log channels

## Tech Stack

Scraper:    Python + Telethon on M1
            runs every 6 hours
            normalizes to Supabase
Storage:    Supabase
            (iocs, alerts, posts tables)
Site:       Ghost on intel.belt.works
Email:      Ghost native
Alerts:     Telegram t.me/beltintel
            (bot auto-posts raw alerts)
API:        ioc.belt.works
            (free tier: 100 calls/day)
Repos:      github.com/kn8-codes/belt-intel
            github.com/kn8-codes/belt-ioc

## Agent Stack

M1:   scraper node
      runs Telethon + source scrapers
      normalizes and flags high signal
      feeds Supabase continuously

M4:   build node
      Ghost admin
      content queue management

Jeep: orchestration
      Hermes monitors the pipeline
      flags anomalies
      Telegram alerts to Nate

Nate: the voice
      reviews the flagged queue
      writes the human layer
      posts the content
      that's the only job
      that can't be automated

## Monetization

Free forever:
- daily email digest
- public posts
- Telegram channel (raw alerts)
- ioc.belt.works search (100/day)

Paid ($4/month):
- real-time Telegram alerts
- unredacted feed
- unlimited IOC API access

Paid ($8/month):
- everything above
- historical search
- early belt.data API access
- SIEM integration guides

## Companion Products (roadmap)

1. ioc.belt.works  — IOC database (NOW)
2. belt.recon      — passive recon reports
3. belt.exposed    — personal exposure monitor
4. belt.cve        — plain language CVE feed
5. belt.hunt       — threat hunting playbooks
6. belt.ops        — the meta build log

## The Origin Story

Built by 0x0sec.
Akron, Ohio.
Been in this world for years
without the title or the credential.

Built for the person who used to feel
lonely because nobody around them
wanted to learn this stuff.

The legitimacy isn't a certification.
It's the receipts.
The commits.
The pipeline running at 3am
while everyone else is asleep.

## North Star (30 days)

One person DMs and says:
"where has this been my whole life."

That's it. That's the whole thing.

---
INJECT THIS at the top of any session
to restore full belt.intel context.
---
