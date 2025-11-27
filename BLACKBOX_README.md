# 🎨 Blackbox + Figma MCP Integration

Generate Figma designs using natural language with Blackbox AI!

## ✅ Installation Status

- [x] Dependencies installed
- [x] MCP server built
- [x] Blackbox MCP configuration updated
- [x] WebSocket server running on port 3055

## 🚀 Quick Start

### 1. Start the WebSocket Server

```bash
cd /Users/matthewsegura/Desktop/blackbox-talk-to-figma-mcp
./start-server.sh
```

Or manually:
```bash
bun socket
```

### 2. Install Figma Plugin

**In Figma:**
1. Go to **Plugins → Development → New Plugin**
2. Choose **"Link existing plugin"**
3. Select: `/Users/matthewsegura/Desktop/blackbox-talk-to-figma-mcp/src/blackbox_mcp_plugin/manifest.json`

### 3. Connect Plugin

1. In Figma, run: **Plugins → Development → Blackbox MCP Plugin**
2. Enter a channel name (e.g., "my-session")
3. Click **Connect**

### 4. Restart Blackbox

Restart Blackbox to load the new MCP configuration.

## 💬 Example Prompts

### Simple Button
```
Create a blue button in Figma at position (100, 100) 
with text "Click Me", size 200x50px, and rounded corners
```

### Login Screen
```
Build a login screen in Figma with:
- Main container 400x600px
- Logo at top
- Email input field
- Password input field  
- Login button
- Forgot password link
Use modern styling with proper spacing
```

### Card Component
```
Create a card component in Figma:
- 300x200px white frame
- Title text at top (18px bold)
- Description text (14px gray)
- Action button at bottom
- 16px padding, auto-layout
```

## 🛠️ Available Tools

The MCP provides 40+ tools for Figma manipulation:

**Creating Elements:**
- `create_frame` - Containers with auto-layout
- `create_rectangle` - Shapes
- `create_text` - Text elements

**Styling:**
- `set_fill_color` - Background colors
- `set_stroke_color` - Borders
- `set_corner_radius` - Rounded corners

**Layout:**
- `move_node` - Position elements
- `resize_node` - Change dimensions
- `set_auto_layout` - Configure layouts

**Batch Operations:**
- `set_multiple_text_contents` - Update multiple texts
- `delete_multiple_nodes` - Delete multiple elements

**And many more!** See `BLACKBOX_SETUP_GUIDE.md` for full list.

## 📚 Documentation

- **Setup Guide:** `BLACKBOX_SETUP_GUIDE.md` - Complete installation and usage guide
- **Prompt Cheatsheet:** `DESIGN_PROMPTS_CHEATSHEET.md` - Design pattern examples
- **MCP Server Code:** `src/talk_to_figma_mcp/server.ts` - Tool implementations

## 🔧 Management Commands

**Check if server is running:**
```bash
lsof -i :3055
```

**Stop the server:**
```bash
lsof -ti:3055 | xargs kill
```

**Restart the server:**
```bash
lsof -ti:3055 | xargs kill && ./start-server.sh
```

**View server logs:**
```bash
tail -f ~/.blackbox/tmp/shell_tool_*.log
```

## 🎯 How It Works

```
You: "Create a login screen in Figma"
  ↓
Blackbox AI (understands design requirements)
  ↓
MCP Tools (create_frame, create_text, etc.)
  ↓
WebSocket Server (ws://localhost:3055)
  ↓
Figma Plugin (executes in Figma)
  ↓
Your Design! 🎨
```

## 🐛 Troubleshooting

**MCP not working in Blackbox:**
- Restart Blackbox after configuration changes
- Check MCP config: `cat /Users/matthewsegura/Desktop/blackbox_mcp_settings.json`

**Plugin not connecting:**
- Ensure WebSocket server is running: `lsof -i :3055`
- Check plugin is active in Figma
- Verify channel name is entered

**Commands timing out:**
- Restart the WebSocket server
- Reconnect the Figma plugin
- Check Figma plugin console for errors

## 🎨 Tips for Best Results

1. **Be specific** with dimensions, colors, and spacing
2. **Use hex colors** (#0066FF) or RGBA format
3. **Specify positions** for precise placement
4. **Request auto-layout** for responsive designs
5. **Name elements** descriptively for organization

## 📦 Configuration Files

- **MCP Config:** `/Users/matthewsegura/Desktop/blackbox_mcp_settings.json`
- **Plugin Manifest:** `src/blackbox_mcp_plugin/manifest.json`
- **Server Code:** `src/talk_to_figma_mcp/server.ts`

## 🚀 Next Steps

1. ✅ Server is running
2. 🔄 Restart Blackbox
3. 🎨 Install Figma plugin
4. 🔌 Connect plugin to server
5. 💬 Try your first design prompt!

---

**Ready to create amazing designs with AI! 🎨✨**

For detailed examples and patterns, see `DESIGN_PROMPTS_CHEATSHEET.md`
