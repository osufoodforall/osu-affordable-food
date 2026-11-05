# Hungry for Change · OSU

A lightweight one-page campaign site for GitHub Pages. The page is plain HTML, CSS, and JavaScript; petition signatures are logged in Supabase (a small hosted database). No build step is required.

## Publish with GitHub Pages

1. Create a GitHub repository and push these files to its `main` branch.
2. In the repository, open **Settings → Pages**.
3. Under **Build and deployment**, select **Deploy from a branch**, choose `main` and `/ (root)`, then save.
4. GitHub will provide the site URL when the deployment finishes.

## Connect petition logging

1. Create a free Supabase project at [supabase.com](https://supabase.com/).
2. In **SQL Editor**, run the contents of [`supabase.sql`](./supabase.sql). This creates a table protected by row-level security: visitors can insert signatures but cannot read or modify petition data.
3. In Supabase **Project Settings → API**, copy the Project URL and the `anon` / publishable key. Never put a `service_role` key in this site.
4. Paste those two values into [`config.js`](./config.js). Commit and push the edit. Since the browser must submit signatures, the anon key is public; the SQL permissions are the protection.
5. Submit a test signature, then verify it appears in Supabase **Table Editor → signatures**. Delete the test row before launch if desired.

The form stores name, email, self-described OSU connection, consent, and database timestamp. Email is used for duplicate prevention and is not shown on the webpage. Limit database access to organizers, explain retention to signers, and delete records when the campaign no longer needs them. Do not collect sensitive personal stories in this petition form.

### Small edits

- Update campaign wording and linked sources in `index.html` (comments mark the petition configuration and editable content sections).
- Change the database project details only in `config.js`.
- Change logged fields and database permissions in `supabase.sql`, keeping the table grants and RLS policies aligned with the form.

## Verified data notes

- OPAL's 2024 report surveyed 656 students in classes. In its on-campus comparison table, 35.5% of respondents who lived on campus and 38.0% off campus were food insecure; the total for that table was 36.4% (n=569). It is a classroom survey, not a random campus census.
- OSU UHDS lists Dining Plan 4 at $1,050 per term / $3,150 per year for 2026–27, and says residence hall students are required to have a dining plan.
- See citations and direct links in the page's Sources section. Review the live OSU rates before each academic-year update.
