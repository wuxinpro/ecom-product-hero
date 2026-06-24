# Ecom Product Hero

Generate premium product poster images for retail displays, convenience store banners, and e-commerce hero shots.

Inspired by high-end Chinese beverage advertising (百岁山, 依云), this Claude Code skill produces product posters with full-bleed landscape backgrounds, atmospheric blending, and scientific-looking data matrices.

[中文说明](#chinese)

## Quick Start

1. Install this skill into your Claude Code project
2. Prepare: product PNG (transparent background) + landscape photo matching product origin
3. Tell Claude: "帮我用 ecom-product-hero 做一张产品海报"
4. Claude will ask for product image, background, specs, and dimensions
5. One PNG output, ready for print or e-commerce upload

## What It Produces

A single high-resolution poster image suitable for:

- **Convenience store 易拉宝** (80×100cm, 80×200cm, etc.)
- **Wall posters** for retail display
- **E-commerce hero images** (淘宝/京东 product main image)

![Example output — 7.7Hz mineral water poster](examples/poster-80x100cm.png)

## Visual Style

- Full-bleed landscape matching product origin story
- Cool-tone gradient overlay creating a "spotlight" on the product
- Product floating naturally in the scene (glow + light rays + ground mist blending)
- Large hero metric number on the right (the "wow" factor)
- Multi-column data matrix at bottom (builds credibility)
- Gold accent (#d4a853) for key data and keywords

## Folder Structure

```
ecom-product-hero/
  SKILL.md              ← Skill definition & workflow
  README.md             ← This file
  assets/
    template.html       ← Seed HTML template
  references/
    design-system.md    ← Full design spec & adaptation guide
```

## Requirements

- Claude Code (any version)
- Product image (transparent PNG strongly recommended)
- Landscape background photo (matching product origin)
- Playwright (for rendering)

## License

MIT

---

## Chinese

# 电商产品主图技能

为线下零售（便利店易拉宝、墙面海报）和电商主图生成高端产品海报。

设计灵感源自百岁山、依云等高端饮品广告——全幅景观背景、氛围融合层、科技感数据矩阵。

### 使用方法

1. 将本 skill 安装到 Claude Code 项目中
2. 准备：产品 PNG 图（透明底最佳）+ 与产品产地匹配的景观背景图
3. 对 Claude 说："帮我用 ecom-product-hero 做一张产品海报"
4. Claude 会询问产品图、背景图、规格数据和尺寸
5. 输出一张高清 PNG，可直接打印或上传电商平台

### 设计风格

- 全幅景观背景（匹配产品产地故事）
- 冷色调渐变遮罩（聚光效果）
- 产品自然融入场景（光晕 + 光线 + 地面雾气 3 层融合）
- 右侧大字核心指标（视觉冲击）
- 底部多数值矩阵（建立可信度）
- 金色点缀（#d4a853）用于关键数据和标题关键词
