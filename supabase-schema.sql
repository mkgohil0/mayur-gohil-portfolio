-- Supabase production schema
create table if not exists public.site_content (
 id bigint primary key generated always as identity,
 section text not null unique,
 data jsonb not null default '{}'::jsonb,
 updated_at timestamptz not null default now()
);
alter table public.site_content enable row level security;
create policy "public read site content" on public.site_content for select to anon,authenticated using (true);

create table if not exists public.contact_messages (
 id bigint primary key generated always as identity,
 name text not null,email text not null,message text not null,
 created_at timestamptz not null default now()
);
alter table public.contact_messages enable row level security;
create policy "public submit contact" on public.contact_messages for insert to anon,authenticated with check (true);

-- Do NOT create public update/delete policies.
-- Admin writes should use Supabase Auth + authenticated/RLS-protected operations.
