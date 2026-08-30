# DEPLOYMENT PLAN

Recommended free stack:
1. Cloudflare Pages = free hosting + free pages.dev subdomain.
2. Supabase Free = PostgreSQL database + Auth + Storage.
3. Google Drive = optional backup/document storage, NOT the database/server.

The supplied HTML already has a polished glass/3D UI and a browser-only admin system. The production conversion must move admin authentication and writes from client-side JavaScript/localStorage to Supabase Auth + RLS.

Steps:
- Create Supabase project.
- Run supabase-schema.sql.
- Create your admin user in Supabase Auth.
- Connect the site's CRUD forms to site_content.
- Put avatar/project images in a Supabase Storage bucket.
- Connect the contact form to contact_messages.
- Push files to GitHub and connect the repo to Cloudflare Pages.
- Use the free pages.dev address.

CHATBOT:
The included chatbot answers from the portfolio's published profile data and costs nothing. For a true generative AI chatbot, use a server-side/Edge Function and keep the API key off the frontend.

GOOGLE:
Google Drive can be connected through OAuth/API for backups. Never put your Google password or private API credentials in index.html.
