---
name: ecom-product-hero
description: Generate premium product poster images for retail displays, convenience store banners, and e-commerce hero shots. Full-bleed landscape background + centered product + data matrix layout inspired by high-end beverage advertising. Use when the user asks for 产品海报, product poster, 易拉宝, retail banner, 便利店海报, product hero image, or 产品主图.
---

# Ecom Product Hero Skill

Generate premium product poster images for physical retail displays (易拉宝, wall posters, convenience store banners) and e-commerce hero shots.

## What This Skill Does

Creates product posters with the "百岁山 layout" — a proven Chinese premium beverage advertising format:

- **Full-bleed landscape background** relevant to product origin
- **Dark cool-tone gradient overlay** — dark top/bottom, lighter center (spotlight effect)
- **Atmosphere layers** — warm glow, light rays, ground mist to blend the product into the scene
- **Product image centered** — transparent PNG floats in the lit center zone
- **Key metric badge** — large numbers on the right side (e.g. "65-80mg/L 偏硅酸")
- **Top section** — brand title + gold-highlighted keywords + 2-3 line subtitle
- **Bottom section** — tech/spec summary line + multi-column data matrix + footer

## When To Use

Use for:
- Convenience store posters (易拉宝), wall posters, retail display banners
- E-commerce product hero images (淘宝/京东主图)
- Premium product advertising where the product needs to feel "natural" and "high-end"
- Physical retail displays viewed from 3+ meters away

Do NOT use for:
- Xiaohongshu carousel images (use guizang-social-card-skill for those)
- Multi-page slide decks
- Products without a transparent PNG or good product photo

## Visual Identity

The style is inspired by high-end Chinese beverage advertising (百岁山, 依云):

- **Cool tones** — deep blue-grey overlays on landscape photography
- **Gold accents** — `#d4a853` for key data and keyword highlights
- **Lightweight typography** — thin weights (200-300) for numbers, bold only for Chinese titles
- **Minimal text** — products sell on image + data, not paragraphs
- **Atmospheric blending** — the product should feel like it belongs in the landscape

## Required Inputs

- Product image (transparent PNG preferred, or well-lit photo)
- Landscape background image (mountain, ocean, forest, field, etc. — match to product origin story)
- Product name and tagline
- Key numeric spec (the "hero metric" — e.g. concentration, size, speed)
- 3-5 supporting data points for the bottom matrix
- Optional: "gift badge" or promotional badge placement

## Workflow

### 1. Gather Inputs

Ask the user for:
- Product image (PNG with transparent background is ideal)
- Background preference or origin story (so we can find matching landscape)
- Key product specs (numbers for the matrix)
- Poster dimensions (default: 80×100cm for 易拉宝)
- Any promo badges (e.g. "送礼首选")

### 2. Find Background

If the user has no background:
- Search Unsplash/Pexels for landscape matching product origin (e.g. "Kunlun mountain" for mineral water from昆仑山)
- Match the tone: the landscape IS the product's origin story

### 3. Build HTML From Template

Copy `assets/template.html` and customize:
1. Set poster dimensions in CSS
2. Replace background image
3. Update overlay gradient stops for the specific photo
4. Place product image, adjust max-height
5. Fill in title, subtitle, metric, matrix data
6. Add/remove promo badges

### 4. Render

Use Playwright to screenshot the poster at target resolution.
Default render: 1600×2000px for 80×100cm print.

### 5. Deliver

Output a single high-resolution PNG. The user can add final touches (product placement adjustments, additional badges) in their preferred image editor.

## Non-Negotiables

- Never put long body text on the poster — it's read from 3 meters away
- Never use pure white (#fff) on dark backgrounds — always slightly warm (the water poster uses the glow layers, not just white text)
- Never forget the blending layers (glow, rays, mist) — without them the product looks pasted on
- Always match the landscape to the product's origin story — a random mountain for a spring water product breaks credibility
- Keep the data matrix to 4-5 columns — more than 5 is unreadable at distance
- Title must have a gold-highlighted keyword — this is the 百岁山 signature element
