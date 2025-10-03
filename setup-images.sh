#!/bin/bash

# Script to help add screenshots to the landing page

echo "Rise & Reflect Landing Page - Screenshot Setup"
echo "=============================================="
echo ""
echo "This script will help you add the three app screenshots."
echo ""
echo "Please drag and drop your screenshot files when prompted:"
echo ""

# Create images directory if it doesn't exist
mkdir -p images

# Screenshot 1 - Morning Journal
echo "1. Drag and drop the MORNING JOURNAL screenshot (home screen with orange card)"
read -p "   File path: " screenshot1
if [ -f "$screenshot1" ]; then
    cp "$screenshot1" images/screenshot-1.png
    echo "   ✓ Screenshot 1 added!"
else
    echo "   ✗ File not found. Skipping."
fi
echo ""

# Screenshot 2 - Insights
echo "2. Drag and drop the WEEKLY INSIGHTS screenshot (patterns and streaks)"
read -p "   File path: " screenshot2
if [ -f "$screenshot2" ]; then
    cp "$screenshot2" images/screenshot-2.png
    echo "   ✓ Screenshot 2 added!"
else
    echo "   ✗ File not found. Skipping."
fi
echo ""

# Screenshot 3 - Active Session
echo "3. Drag and drop the ACTIVE SESSION screenshot (AI is thinking...)"
read -p "   File path: " screenshot3
if [ -f "$screenshot3" ]; then
    cp "$screenshot3" images/screenshot-3.png
    echo "   ✓ Screenshot 3 added!"
else
    echo "   ✗ File not found. Skipping."
fi
echo ""

echo "=============================================="
echo "Setup complete!"
echo ""
echo "Next steps:"
echo "1. Open index.html in your browser to preview"
echo "2. The screenshots should now appear in the 'See It In Action' section"
echo ""
echo "To deploy to GitHub Pages, see README.md for instructions."
