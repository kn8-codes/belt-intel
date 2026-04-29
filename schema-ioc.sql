-- ioc.belt.works
-- Supabase schema v0.1
-- Created: 2026-04-29

CREATE TABLE iocs (
  id              uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  created_at      timestamp WITH TIME ZONE DEFAULT now(),
  updated_at      timestamp WITH TIME ZONE DEFAULT now(),
  
  type            text NOT NULL,
  value           text NOT NULL UNIQUE,
  confidence      integer DEFAULT 50,
  severity        text DEFAULT 'medium',
  status          text DEFAULT 'active',
  threat_actor    text,
  campaign        text,
  malware_family  text,
  context_note    text,
  source          text NOT NULL,
  source_url      text,
  virustotal_hits integer,
  abuseipdb_score integer,
  shodan_seen     boolean DEFAULT false,
  first_seen      timestamp WITH TIME ZONE,
  last_seen       timestamp WITH TIME ZONE,
  expires_at      timestamp WITH TIME ZONE,
  tags            text[] DEFAULT '{}',
  related_iocs    uuid[] DEFAULT '{}',
  intel_post_url  text
);

CREATE INDEX idx_iocs_type ON iocs(type);
CREATE INDEX idx_iocs_value ON iocs(value);
CREATE INDEX idx_iocs_severity ON iocs(severity);
CREATE INDEX idx_iocs_source ON iocs(source);
CREATE INDEX idx_iocs_threat_actor ON iocs(threat_actor);
CREATE INDEX idx_iocs_tags ON iocs USING GIN(tags);
CREATE INDEX idx_iocs_created_at ON iocs(created_at DESC);

CREATE TABLE submissions (
  id              uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  created_at      timestamp WITH TIME ZONE DEFAULT now(),
  ioc_type        text NOT NULL,
  ioc_value       text NOT NULL,
  context         text,
  source_url      text,
  submitter_email text,
  status          text DEFAULT 'pending',
  reviewed_by     text,
  reviewed_at     timestamp WITH TIME ZONE,
  approved_ioc_id uuid REFERENCES iocs(id)
);

CREATE TABLE api_usage (
  id              uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  created_at      timestamp WITH TIME ZONE DEFAULT now(),
  api_key         text,
  endpoint        text,
  query           text,
  results_count   integer,
  tier            text DEFAULT 'free'
);
