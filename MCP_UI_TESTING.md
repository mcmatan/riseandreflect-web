# How to View UI Changes with MCP Puppeteer

## Quick Start

1. **Start local HTTP server** (in project directory):
   ```bash
   python3 -m http.server 8000
   ```
   Or use file:// protocol directly (no server needed)

2. **Navigate to page**:
   ```javascript
   // Using local server
   mcp__puppeteer__puppeteer_navigate("http://localhost:8000/index.html")

   // Using file protocol (recommended - no server needed)
   mcp__puppeteer__puppeteer_navigate("file:///absolute/path/to/index.html")
   ```

3. **Take screenshots**:
   ```javascript
   // Desktop view
   mcp__puppeteer__puppeteer_screenshot({
     name: "desktop-view",
     width: 1440,
     height: 3000
   })

   // Mobile view
   mcp__puppeteer__puppeteer_screenshot({
     name: "mobile-view",
     width: 375,
     height: 2000
   })
   ```

4. **Interact with page**:
   ```javascript
   // Click elements
   mcp__puppeteer__puppeteer_click("button.cta-button")

   // Fill forms
   mcp__puppeteer__puppeteer_fill("input[type='email']", "test@example.com")

   // Execute JavaScript
   mcp__puppeteer__puppeteer_evaluate("window.scrollTo(0, 500)")
   ```

## Full Workflow for This Project

### View entire landing page:
```bash
# 1. Navigate using file protocol (no server needed)
file:///Users/matanca@melio.com/sampleApplications/rise-reflect-landing/index.html

# 2. Take full page screenshot
Screenshot at 1440x3000

# 3. Scroll to different sections
window.scrollTo(0, 3000)  # See footer
window.scrollTo(0, 0)     # Back to top

# 4. Test mobile responsive
Screenshot at 375x2000
```

### Test interactive elements:
```javascript
// Test email form
mcp__puppeteer__puppeteer_fill("input[type='email']", "test@example.com")
mcp__puppeteer__puppeteer_click("button[type='submit']")

// Check console for errors
ReadMcpResourceTool({server: "puppeteer", uri: "console://logs"})
```

## Common Viewport Sizes

- **Desktop**: 1440x900, 1920x1080
- **Tablet**: 768x1024, 834x1194 (iPad)
- **Mobile**: 375x667 (iPhone), 390x844 (iPhone 12+), 414x896 (iPhone XR)

## Tips

- Use file:// protocol to avoid HTTP server issues
- Take multiple screenshots at different scroll positions for long pages
- Test responsive breakpoints (mobile < 768px)
- Check console logs for JavaScript errors: `ReadMcpResourceTool`
- Screenshots can capture specific elements: `selector: ".hero-section"`

## Auto-approve Permissions

To avoid approval prompts, add these to Claude Code settings:
- `mcp__puppeteer__puppeteer_navigate`
- `mcp__puppeteer__puppeteer_screenshot`
- `mcp__puppeteer__puppeteer_evaluate`
- `mcp__puppeteer__puppeteer_click`
- `mcp__puppeteer__puppeteer_fill`
