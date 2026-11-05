-- Run once in the Supabase SQL Editor to create the petition log.
create table if not exists public.signatures (
  id bigint generated always as identity primary key,
  full_name text not null check (char_length(full_name) between 1 and 100),
  email text not null unique check (char_length(email) <= 254),
  connection text not null default 'Prefer not to say',
  consent boolean not null check (consent = true),
  created_at timestamptz not null default now()
);

alter table public.signatures enable row level security;

-- Visitors may submit a signature. They cannot read, change, or delete the petition database.
drop policy if exists "Anyone can sign the petition" on public.signatures;
create policy "Anyone can sign the petition"
  on public.signatures for insert to anon
  with check (consent = true);

grant insert (full_name, email, connection, consent) on public.signatures to anon;
grant usage on sequence public.signatures_id_seq to anon;
