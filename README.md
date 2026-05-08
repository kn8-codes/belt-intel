# belt-intel

Dark web and threat intelligence monitoring feed. Built in Akron. Running on agents and spite.

## What this is

This repo currently holds planning documents, data source research, and a SQL schema stub for an intelligence aggregation platform. No scrapers or agents are running yet — this is the blueprint phase.

## What's here

- `data-sources.md` — evaluated feeds and APIs
- `ghost-setup-checklist.md` — infrastructure setup log
- `posts-week1.md` — early content experiments
- `schema-ioc.sql` — IOC database schema stub

## Status

**Planning / docs-only.** Code coming when the architecture settles.

## Stack (planned)

- Python + asyncio for scrapers
- Redis for queueing
- Supabase for storage
- Ghost for publishing

---

*Akron, Ohio. Built by kn8.*
