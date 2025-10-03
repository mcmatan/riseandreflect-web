# Adding Screenshots to Landing Page

The landing page is set up to display the three app screenshots. To complete the setup:

## Option 1: Manual Copy (Recommended)

1. Save your three screenshot images as:
   - `screenshot-1.png` - Morning journal home screen
   - `screenshot-2.png` - AI Weekly Insights screen
   - `screenshot-3.png` - Morning Reflection active session

2. Copy them to the images folder:
   ```bash
   cp /path/to/your/screenshot-1.png /Users/matanca@melio.com/sampleApplications/rise-reflect-landing/images/
   cp /path/to/your/screenshot-2.png /Users/matanca@melio.com/sampleApplications/rise-reflect-landing/images/
   cp /path/to/your/screenshot-3.png /Users/matanca@melio.com/sampleApplications/rise-reflect-landing/images/
   ```

## Option 2: Extract from iOS Simulator/Device

If the screenshots are from the iOS simulator, you can find them at:
- **Simulator**: `~/Desktop/` (screenshots appear on your desktop)
- **Physical Device**: Use AirDrop or Photos app to transfer

## What the HTML expects

The `index.html` file currently has placeholder images. Once you add the actual screenshots to the `images/` folder, the page will automatically display them.

The screenshots will be shown in a responsive grid with:
- iPhone device frame styling
- Hover animations
- Mobile-responsive layout
- Captions describing each screen

## Preview

Open `index.html` in your browser to see the layout. The screenshots will appear in the "See It In Action" section between the features and "How It Works" sections.
