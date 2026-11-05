# Hungry for Change · OSU

A lightweight, one-page campaign website for GitHub Pages. It uses plain HTML, CSS, and JavaScript with no build step. Campaign signatures are collected on Change.org; this repository does not collect or store signer names, emails, or other signature details.

## Change.org petition setup

This project cannot create or publish a Change.org petition through a public integration. A campaign organizer must sign in to Change.org, create the petition, review its terms, and publish it. The call to action currently points to Change.org's petition creation page until the campaign URL is configured.

Suggested petition title: **Make Food Affordable and Accessible for Oregon State Students**

Suggested petition text:

> Oregon State University students deserve affordable, nourishing food available when and where they need it. In an OSU classroom-based study conducted in 2023–24, 36.4% of 569 students in one comparison reported food insecurity. Among students living on campus, the reported rate was 35.5%. These findings describe the students surveyed and are not a random census of the whole university.
>
> We call on Oregon State University Housing & Dining Services and student housing representatives to work with students on measurable improvements: expand SNAP acceptance at campus food locations, publish clear low-cost meal options and prices, review dining hours with students, and report progress publicly. A required meal plan should provide meaningful access to food that fits students' needs.

After publishing, put the public petition URL in `config.js` as `changeOrgUrl`, then commit and push the edit. Change.org handles signatures on its site; signatures are not copied into this public GitHub repository. Its help center says petition owners can request a CSV export from the petition dashboard, available no earlier than 24 hours after petition creation: [Download your signatures](https://help.change.org/download-your-signatures?kb_language=en_US).

## GitHub Pages

The site is hosted from the repository's default branch (`master`) and root folder. To publish a change, commit it in GitHub Desktop and push to GitHub. GitHub Pages deploys the static files automatically.

## Editing

- Campaign text and source links are in `index.html`; comments mark the editable stats, asks, and Change.org setup.
- Beaver orange (`#D73F09`) and black accents are set near the start of the stylesheet in `index.html`.
- The public Change.org petition link is in `config.js`.
- Do not commit signer information, exports, private contact lists, access tokens, or API keys to this repository. It is public.

## Verified data notes

- OPAL's 2024 report surveyed 656 students in classes. In its on-campus comparison table, 35.5% of respondents who lived on campus and 38.0% off campus were food insecure; the total for that table was 36.4% (n=569). It is a classroom survey, not a random campus census.
- OSU UHDS lists Dining Plan 4 at $1,050 per term / $3,150 per year for 2026–27, and says residence hall students are required to have a dining plan.
- See citations and direct links in the page's Sources section. Review the live OSU rates before each academic-year update.
