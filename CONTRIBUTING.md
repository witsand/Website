# Contributing to The Witsand Observer

## Adding a New Article

### Step 1: Create the Article File

Create a new file in `_posts/` with this naming format:
```
YYYY-MM-DD-headline-in-lowercase-with-dashes.md
```

Example: `2026-02-18-mysterious-seagull-returns-to-harbour.md`

### Step 2: Add Front Matter

Every article starts with YAML front matter:

```yaml
---
layout: article
title: "Your Headline Here"
date: 2026-02-18
author: "Reporter Name"
image: /assets/images/optional-image.jpg  # optional
image_caption: "Photo caption here"        # optional
---
```

### Step 3: Write the Article

- **Length**: 400-800 words
- **Tone**: Deadpan serious (the content is absurd, the delivery is not)
- **Structure**:
  - Opening paragraph: The "news" hook
  - Body: Details, context, quotes
  - Closing: Callback or twist

See `WITSAND_CONTEXT.md` for character archetypes and running jokes.

### Step 4: Add Images (Optional)

1. Place images in `assets/images/`
2. Reference in front matter as `/assets/images/filename.jpg`
3. Use descriptive filenames: `2026-02-18-seagull-harbour.jpg`

### Step 5: Update Canon (If Needed)

If your article establishes new "facts" about Witsand, add them to the "Established Facts" section in `WITSAND_CONTEXT.md`.

### Step 6: Test Locally

```bash
bundle exec jekyll serve
```

Open http://localhost:4000 and verify:
- Article appears on homepage
- Article page renders correctly
- Drop cap displays properly
- Images load (if any)

### Step 7: Publish

```bash
git add _posts/YYYY-MM-DD-your-article.md
git add assets/images/  # if you added images
git add WITSAND_CONTEXT.md  # if you updated canon
git commit -m "Add article: Your Headline Here"
git push
```

GitHub Pages will automatically build and deploy.

---

## Article Template

```markdown
---
layout: article
title: "Headline Goes Here"
date: 2026-02-18
author: "Staff Reporter"
---

Opening paragraph establishes the "news" - what happened and why it matters to Witsand's 600 residents.

Additional context and background. Reference local details: the harbour, the 70km drive to Riversdale, the WhatsApp group.

"Quote from a local character," said a longtime resident who was doing something relatable at the time. "Additional commentary that's either profound or absurd."

More details about the situation. Perhaps mention the municipality's response time, or lack thereof.

## Optional Subheading

Further developments or related information.

"Another quote from a different source," noted a WSWF representative, before noting that all contributions to the discussion were entirely voluntary.

Closing paragraph with a callback to an earlier detail or a wry observation about village life.
```

---

## Archiving / Housekeeping

Articles are automatically archived by date. No manual archiving needed.

To remove an article: delete the file from `_posts/` and commit.

To edit an article: modify the file directly and commit.

---

## Style Quick Reference

| Element | Style |
|---------|-------|
| Headlines | Active voice, present tense |
| Body text | Past tense, third person |
| Quotes | Attributed to archetypes or named characters |
| Numbers | Spell out one-ten, numerals for 11+ |
| Dates | "February 17, 2026" in text |
| Municipality | Always mention the 70km distance |
