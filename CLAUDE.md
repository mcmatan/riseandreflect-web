# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a single-page static landing page for Rise & Reflect, an AI-powered voice journaling and personal reflection app. The landing page is built with pure HTML/CSS/JavaScript (no build process) and designed to be deployed to GitHub Pages.

**Key Philosophy**: Rise & Reflect is positioned as a "guide that helps you guide yourself" - a personal reflection companion focused on self-discovery, not advice-giving or therapy. The app emphasizes goal tracking (both project and self-improvement), pattern recognition, and memory keeping of user insights.

## File Structure

```
rise-reflect-landing/
├── index.html              # Single-page website (complete)
├── images/                 # App screenshots (3 required)
├── setup-images.sh         # Helper script to add screenshots
├── README.md              # Documentation and deployment guide
└── CLAUDE.md              # This file
```

## Key Design Principles

### Brand Colors
- **Primary Orange**: #FF9500 (morning/sunrise theme)
- **Primary Purple**: #9B59B6 (evening theme)
- **Gradient**: Orange → Purple (used throughout for brand consistency)

### Messaging Guidelines
- Focus on "reflection" not "therapy"
- Emphasize user's own solutions and strategies
- No prescriptive or advice-giving language
- Highlight goal tracking and pattern recognition features
- Core positioning: "Guide that helps you guide yourself"

## Common Tasks

### Preview Locally
```bash
open index.html
```

### Add Screenshots
The page requires three app screenshots in the `images/` folder:
- `screenshot-1.png` - Morning journal home screen (orange gradient card)
- `screenshot-2.png` - AI Weekly Insights screen (patterns breakdown)
- `screenshot-3.png` - Active reflection session (AI is thinking)

Using the helper script:
```bash
bash setup-images.sh
```

Or manually:
```bash
cp /path/to/your/screenshot.png images/screenshot-1.png
cp /path/to/your/screenshot.png images/screenshot-2.png
cp /path/to/your/screenshot.png images/screenshot-3.png
```

### Deploy to GitHub Pages

1. Initialize and push to GitHub:
```bash
git init
git add .
git commit -m "Initial commit: Rise & Reflect landing page"
git remote add origin https://github.com/USERNAME/rise-reflect-landing.git
git branch -M main
git push -u origin main
```

2. Enable GitHub Pages:
   - Go to repository Settings → Pages
   - Source: "Deploy from a branch"
   - Branch: `main` → `/ (root)`
   - Save

Site will be live at: `https://USERNAME.github.io/rise-reflect-landing`

## Important Code Sections

### Email Form (index.html:552-563)
Currently logs to console only. To capture emails, integrate with a service:
- Formspree (recommended): https://formspree.io
- Netlify Forms
- EmailJS
- Custom backend API

Update the JavaScript fetch call around line 558 to connect to your chosen service.

### App Store Link (index.html:536-538)
Currently disabled with `opacity: 0.5; pointer-events: none;`. When app launches:
1. Update href to actual App Store URL
2. Remove the opacity and pointer-events styles

### Screenshots Section (index.html:449-483)
Contains fallback gradient cards that display when images are missing. The `onerror` handler shows placeholder cards if screenshot files don't exist.

## Architecture Notes

### Responsive Design
- Mobile-first approach with `@media (max-width: 768px)` breakpoint
- Grid layouts with `auto-fit` for flexible column counts
- Touch-friendly button sizes (50px+ tap targets)

### Navigation Structure
- Fixed top navigation with blur backdrop
- Smooth scroll to anchor links (#terms, #subscribe, etc.)
- Single-page layout with semantic sections

### Content Sections (in order)
1. Navigation - Logo and Terms link
2. Hero - Main headline and CTA
3. What We Do - 4 key value propositions
4. Features - 6 detailed feature cards
5. Screenshots - 3 app images with fallbacks
6. How It Works - 4-step process
7. Email Subscribe - Launch notification signup
8. App Store - Download badge (coming soon)
9. Footer - Copyright and legal links

## Technology Stack

- **HTML5** - Semantic markup
- **CSS3** - Flexbox and Grid layouts, gradients, animations
- **Vanilla JavaScript** - Form handling and smooth scrolling
- **No dependencies** - No npm, no build process
- **Static hosting ready** - Works on any web server

## Notes for AI Assistance

- This is a marketing landing page, not the actual Rise & Reflect app
- The app itself is a separate iOS application (not in this repository)
- All content should align with the "guide that helps you guide yourself" positioning
- Maintain the clean, modern aesthetic inspired by Day One journaling app
- Keep the orange → purple gradient theme consistent throughout
- The page is fully self-contained in `index.html` - no separate CSS/JS files
