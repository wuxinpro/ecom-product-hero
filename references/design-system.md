# Design System: Ecom Product Hero

## Design Philosophy

This layout is reverse-engineered from high-end Chinese beverage advertising (百岁山, 依云, 农夫山泉高端线). The core insight: **premium product posters don't sell features — they sell origin stories and data credibility.**

### The 3-Second Rule

A convenience store poster is viewed from 3 meters away for 3 seconds. The visual hierarchy must answer:

1. **What is this?** → Product image (center, largest element)
2. **Why is it good?** → Hero metric (right side, big numbers)
3. **Can I trust it?** → Data matrix (bottom, scientific-looking)
4. **Where is it from?** → Background landscape (visual origin story)

## Layout Anatomy

```
┌─────────────────────────────────────┐
│  TOP: Brand story title              │  ← 10% height
│       Subtitle 2-3 lines             │
│                                      │
│          ┌──────────┐                │
│          │          │   [HERO METRIC]│  ← 50% height
│          │ PRODUCT  │   65-80 mg/L   │     product + key number
│          │  IMAGE   │   偏硅酸        │
│          │          │                │
│          └──────────┘                │
│  ~~~ ground mist ~~~                 │
│                                      │
│  Tech summary line                   │
│  ┌──────┬──────┬──────┬──────┬─────┐ │  ← 25% height
│  │数据1 │数据2 │数据3 │数据4 │数据5│ │     data credibility
│  └──────┴──────┴──────┴──────┴─────┘ │
│  Footer spec line                    │
└─────────────────────────────────────┘
```

## Atmosphere System

The "百岁山 effect" comes from 5 stacked layers between the background photo and the content:

### Layer 1: Scene (z-index: 0)
- Full-bleed landscape photo relevant to product origin
- `background-size: cover`, `background-position: center 45%`
- Must MATCH the product story — a mountain for spring water, ocean for seafood, field for tea

### Layer 2: Overlay (z-index: 1)
- Cool-tone gradient (dark blue-grey, NOT warm brown)
- Top: 60-72% opacity — dark enough for white title readability
- Center (35-55%): 20-30% opacity — product's spotlight zone
- Bottom: 50-62% opacity — frames the data matrix

### Layer 3: Product Glow (z-index: 1)
- Large radial gradient (800-1200px diameter)
- Warm tones: rgba(200,180,140,.18) → transparent
- Centered behind product position
- Purpose: creates a natural "light source" that the product belongs to

### Layer 4: Light Rays (z-index: 1)
- Two overlapping radial gradients
- One horizontal ellipse (1000×700px), one vertical (600×900px)
- Very subtle: rgba(255,255,255,.04) at center
- Purpose: atmospheric depth, makes the background feel 3D

### Layer 5: Ground Mist (z-index: 1)
- Horizontal band near product base (bottom 32-38%)
- Linear gradient: transparent → warm ground color → transparent
- Purpose: anchors the product — without this it "floats"

## Typography

| Element | Size | Weight | Color | Notes |
|---------|------|--------|-------|-------|
| Main title | 76px | 700 | #fff | Gold keyword via `.gold` class |
| Subtitle lines | 24px | 400 | rgba(255,255,255,.78) | 2-3 lines max |
| Hero metric number | 96px | 200 | #fff | Thin weight = premium feel |
| Hero metric label | 30px | 600 | #d4a853 | Gold = data credibility |
| Matrix number | 38px | 200 | #fff | Thin, scientific |
| Matrix name | 20px | 500 | #fff | Bold enough to read at distance |
| Matrix detail | 16px | 400 | rgba(255,255,255,.6) | Supporting text |
| Bottom subhead | 26px | 400 | rgba(255,255,255,.7) | Tech summary |
| Spec footer | 22px | 400 | rgba(255,255,255,.5) | Quiet but present |

### Golden Rule
- **Numbers use weight 200** — thin numbers feel scientific and luxury
- **Chinese labels use weight 500-700** — need heft to be readable
- **Gold (#d4a853) reserved for data and one keyword** — too much gold = cheap

## Product Image

- **Transparent PNG strongly preferred** — JPG with background will look pasted
- Position: centered, `object-fit: contain`, max-height ~1100px on 2000px canvas
- Drop shadow: dual-layer — dark shadow + warm ambient glow
  ```css
  filter: drop-shadow(0 8px 32px rgba(0,0,0,.25))
          drop-shadow(0 0 80px rgba(200,170,120,.15));
  ```

## Data Matrix

- 5 columns is the sweet spot (4 = too sparse, 6+ = unreadable)
- Each column: number + name + one-line detail
- Semi-transparent black background: `rgba(0,0,0,.35)`
- Hairline dividers: `1px solid rgba(255,255,255,.1)`

## Color Palette

| Role | Color | Usage |
|------|-------|-------|
| Gold accent | `#d4a853` | Hero metric label, keyword highlight, promo badge border |
| Overlay base | `rgba(10-22, 20-40, 35-46, var)` | Cool dark blue-grey gradient |
| Text white | `#fff` | Titles, numbers — always with text-shadow |
| Muted text | `rgba(255,255,255,.5-.78)` | Subtitles, detail lines |
| Promo red | `#c0392b → #8b1a1a` | Optional seal badge background |

### Why Cool Tones?
Warm/brown overlays feel "earthy" but also "cheap." Cool blue-grey overlays on nature photography create the "premium water" association (clarity, purity, science). This is one of the key differentiators from generic poster templates.

## Adapting For Different Products

| Product type | Background | Overlay adjustment | Metric placement |
|-------------|-----------|-------------------|-----------------|
| Beverage/water | Mountains, glaciers | Default cool blue-grey | Right side |
| Tea/coffee | Terraced fields, misty hills | Slightly warmer grey | Right side |
| Wine/liquor | Vineyards, oak barrels | Darker overall (product is dark glass) | Right side |
| Seafood | Ocean, coastline | Keep cool tones | Right side |
| Rice/grain | Golden fields | Warmer overlay (brown-grey) | Adjust position if product is wide |
