# Ghost Setup Checklist
# intel.belt.works
# Run this Wednesday morning

## STEP 1 — GHOST ACCOUNT (15 min)
□ Go to ghost.org
□ Start free trial (no card needed)
□ Site name: belt.intel
□ Site URL: intel.belt.works
  (we'll point DNS after)
□ Skip theme selection for now

## STEP 2 — DNS (10 min)
□ Log into GoDaddy (belt.works)
□ Add CNAME record:
  Name:  intel
  Value: [ghost provided URL]
  TTL:   600
□ Wait for Ghost to confirm
  (can take up to 30 min)
□ SSL auto-provisions after DNS

## STEP 3 — THEME (20 min)
□ Ghost Admin → Design
□ Install theme: Casper (default)
  we'll customize later
□ Set accent color: #00FF41
  (matrix green — terminal aesthetic)
□ Set background: #0A0A0A
□ Font: monospace where possible
□ Logo: text only for now
  "belt.intel" in monospace
□ Cover image: none, black

## STEP 4 — BASIC SETTINGS (10 min)
□ Settings → General
  Title: belt.intel
  Description: "Dark web and threat
  intelligence monitoring for people
  who are still figuring it out."
  Timezone: America/New_York
□ Settings → Members
  Membership: enabled
  Free tier: on
  Paid tier: off for now
    (turn on after 100 subscribers)
□ Settings → Email
  Enable email newsletters: yes
  Email from name: belt.intel
  Reply to: your email

## STEP 5 — NAVIGATION (5 min)
□ Primary nav:
  Feed → /
  IOC Database → https://ioc.belt.works
  About → /about
  Subscribe → #subscribe
□ Secondary nav: none for now

## STEP 6 — PAGES (20 min)
□ Create About page:
  Title: About
  Content:
  "belt.intel is dark web and threat
  intelligence monitoring for people
  who are still figuring it out.

  Built by 0x0sec. Akron, Ohio.
  Been in this world for years
  without the title or the credential.

  Built for the person who used to
  feel lonely because nobody around
  them wanted to learn this stuff.

  The legitimacy isn't a certification.
  It's the receipts."

  No more than that.
  Less is more.

## STEP 7 — EMAIL SIGNUP (5 min)
□ Ghost native signup is automatic
□ Confirm subscribe CTA visible
  on homepage
□ Test: subscribe with your own email
□ Confirm welcome email arrives

## STEP 8 — INTEGRATIONS (15 min)
□ Settings → Integrations
□ Add Zapier (free):
  Trigger: new member
  Action: add to tracking sheet
□ Add Telegram webhook (later)
  skip for now

## STEP 9 — WRITE POST #1 (45 min)
□ New post
□ Title: "I built this for the 
  person I used to be"
□ Write from the outline
  in posts-week1.md
□ No featured image
□ Tag: origin, about
□ Publish: now
□ Share URL on Twitter immediately

## STEP 10 — CONFIRM LIVE (5 min)
□ Visit intel.belt.works
□ Post is visible
□ Subscribe form works
□ Welcome email arrives
□ Mobile looks clean
□ Screenshot everything
□ Post the screenshot on Twitter:
  "day one. belt.intel is live.
   built for the person I used to be.
   intel.belt.works"

═══════════════════════════════════════
TOTAL TIME: ~2.5 hours
Do this Wednesday 6am-8:30am
Before work. No excuses.
═══════════════════════════════════════
