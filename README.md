# Rise & Reflect Landing Page

A beautiful single-page website for Rise & Reflect - a personal reflection companion that helps you guide yourself through voice conversations.

## Quick Start

### 1. Add Screenshots (Important!)

The landing page needs three app screenshots. Add them to the `images/` folder:

**Option A - Using the helper script:**
```bash
cd /Users/matanca@melio.com/sampleApplications/rise-reflect-landing
bash setup-images.sh
```
Then drag-and-drop your screenshot files when prompted.

**Option B - Manual copy:**
```bash
# Copy your screenshots to:
cp /path/to/morning-home.png images/screenshot-1.png
cp /path/to/insights-screen.png images/screenshot-2.png
cp /path/to/active-session.png images/screenshot-3.png
```

**Screenshot Details:**
- **screenshot-1.png**: Morning journal home screen (orange gradient card)
- **screenshot-2.png**: AI Weekly Insights screen (patterns breakdown)
- **screenshot-3.png**: Active reflection session (AI is thinking...)

### 2. Preview Locally

Open `index.html` in your browser to preview the landing page locally.

## Deploy to GitHub Pages

### Option 1: Via GitHub Website (Easiest)

1. Create a new repository on GitHub (e.g., `rise-reflect-landing`)
2. Upload `index.html` to the repository
3. Go to repository Settings → Pages
4. Under "Source", select "Deploy from a branch"
5. Select `main` branch and `/ (root)` folder
6. Click Save
7. Your site will be live at `https://yourusername.github.io/rise-reflect-landing`

### Option 2: Via Git Command Line

```bash
# Initialize git repository
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Rise & Reflect landing page"

# Add GitHub remote (replace with your repo URL)
git remote add origin https://github.com/yourusername/rise-reflect-landing.git

# Push to GitHub
git branch -M main
git push -u origin main

# Enable GitHub Pages
# Go to your repository on GitHub → Settings → Pages
# Select "Deploy from a branch" and choose "main" branch
```

### Option 3: Quick Deploy Script

1. Create a new repository on GitHub
2. Run these commands (replace `yourusername` with your GitHub username):

```bash
cd /Users/matanca@melio.com/sampleApplications/rise-reflect-landing
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/yourusername/rise-reflect-landing.git
git push -u origin main
```

Then enable GitHub Pages in repository settings.

## Features

- ✨ Clean, modern design inspired by Day One app
- 📱 Fully responsive for mobile and desktop
- 🎨 Gradient color scheme matching the app's branding (Orange/Purple)
- 📧 Email subscription form for launch notifications
- 🍎 App Store badge placeholder
- 🔗 Terms of Service section
- ⚡ Smooth scrolling and animations

## Customization

### Update App Store Link

When your app is live on the App Store, update line 288:

```html
<a href="YOUR_APP_STORE_URL">
    <img src="https://developer.apple.com/assets/elements/badges/download-on-the-app-store.svg" alt="Download on the App Store">
</a>
```

And remove the opacity/pointer-events styles to enable the link.

### Email Form Backend

The email form currently logs to console. To connect it to a backend:

1. Sign up for a service like:
   - [Formspree](https://formspree.io/) (easiest)
   - [Netlify Forms](https://www.netlify.com/products/forms/)
   - [EmailJS](https://www.emailjs.com/)
   - Your own backend API

2. Update the form submission handler (around line 319):

```javascript
// For Formspree example:
fetch('https://formspree.io/f/YOUR_FORM_ID', {
    method: 'POST',
    body: JSON.stringify({ email: email }),
    headers: { 'Content-Type': 'application/json' }
});
```

### Terms of Service & Privacy Policy

Create separate pages or use a legal document service:
- Add `terms.html` and `privacy.html` files
- Or link to documents hosted elsewhere
- Or use a service like [Termly](https://termly.io/)

## File Structure

```
rise-reflect-landing/
├── index.html          # Main landing page
└── README.md          # This file
```

## Technology

- Pure HTML/CSS/JavaScript (no build process needed)
- No dependencies or frameworks
- Works on any static hosting platform

## Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## License

All rights reserved © 2025 Rise & Reflect
