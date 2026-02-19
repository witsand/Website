# The Witsand Observer - Project Context

This is a satirical newspaper website for Witsand, South Africa. It's styled as a professional broadsheet but covers absurd small-village news with deadpan seriousness.

## Quick Reference

- **Live site**: https://wswf.co.za
- **Tech**: Jekyll on GitHub Pages
- **Sponsor**: Witsand Sovereign Wealth Fund (WSWF)
- **Tone**: Deadpan satire - treat absurd things seriously

## Key Files to Read

Before writing articles or making changes, read:
- `WITSAND_CONTEXT.md` - Town lore, recurring characters, style guide, and established canon
- `_posts/` - Existing articles for tone reference

## Adding a New Article

1. Create file: `_posts/YYYY-MM-DD-headline-slug.md`
2. Add front matter:
   ```yaml
   ---
   layout: article
   title: "Headline Here"
   date: YYYY-MM-DD
   author: "Reporter Name"
   ---
   ```
3. Write content in markdown (400-800 words ideal)
4. Update "Established Facts" section in `WITSAND_CONTEXT.md` if the article creates new canon
5. Test locally: `bundle exec jekyll serve`
6. Commit and push

## Local Development

```bash
cd /home/mrjonesza/projects/Website
bundle exec jekyll serve
# Opens at http://localhost:4000
```

## Writing Guidelines Summary

- Every story is front-page news (village of 600)
- Include quotes from character archetypes (see WITSAND_CONTEXT.md)
- Reference the 70km distance to Riversdale municipality
- Never break character to explain the joke
- Classic newspaper style: active voice, past tense
