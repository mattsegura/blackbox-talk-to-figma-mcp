# Blackbox + Talk to Figma MCP - Setup Guide

## ✅ Installation Complete!

The MCP server has been successfully installed and configured for Blackbox.

## 🚀 Quick Start

### 1. WebSocket Server (Already Running)
The WebSocket server is running on port 3055 in the background.

To check if it's running:
```bash
lsof -i :3055
```

To restart it if needed:
```bash
cd /Users/matthewsegura/Desktop/blackbox-talk-to-figma-mcp
bun socket
```

### 2. Install Figma Plugin

**Option A: From Figma Community (Recommended)**
1. Open Figma
2. Go to Plugins → Browse plugins in Community
3. Search for "Blackbox MCP Plugin"
4. Click Install

**Option B: Install Locally for Development**
1. Open Figma
2. Go to Plugins → Development → New Plugin
3. Choose "Link existing plugin"
4. Select: `/Users/matthewsegura/Desktop/blackbox-talk-to-figma-mcp/src/blackbox_mcp_plugin/manifest.json`

### 3. Connect Plugin to WebSocket
1. In Figma, run the plugin: Plugins → Development → Blackbox MCP Plugin
2. The plugin UI will show connection status
3. Enter a channel name (e.g., "my-design-session")
4. Click Connect

### 4. Use with Blackbox

The MCP is now configured in your Blackbox settings. Restart Blackbox to load the new MCP server.

## 🎨 Example Prompts for Blackbox

### Basic Design Creation

**Create a Simple Button:**
```
Create a button in Figma at position (100, 100) with:
- Width: 200px, Height: 50px
- Blue background (#0066FF)
- White text saying "Click Me"
- Rounded corners (8px)
```

**Create a Login Screen:**
```
Build a login screen in Figma with:
- Main container frame (400x600)
- Logo at top
- Email input field
- Password input field
- Login button
- "Forgot password?" link
Use modern design with proper spacing
```

**Create a Card Component:**
```
Create a card component in Figma:
- Frame 300x200px
- White background with subtle shadow
- Title text at top
- Description text below
- Action button at bottom
- 16px padding all around
```

### Advanced Design Generation

**Create a Dashboard Layout:**
```
Create a dashboard layout in Figma with:
- Header bar (full width, 80px height)
- Sidebar (250px wide)
- Main content area
- 3 stat cards in a row
- Chart placeholder below
Use auto-layout for responsive design
```

**Create a Form:**
```
Build a contact form in Figma with:
- Name field
- Email field
- Phone field
- Message textarea
- Submit button
- Proper labels and spacing
- Modern input styling
```

## 🛠️ Available MCP Tools

### Document & Selection
- `get_document_info` - Get current document info
- `get_selection` - Get selected nodes
- `read_my_design` - Get detailed selection info
- `get_node_info` - Get specific node details
- `get_nodes_info` - Get multiple nodes info

### Creating Elements
- `create_frame` - Create container frames with auto-layout
- `create_rectangle` - Create rectangles/shapes
- `create_text` - Create text elements
- `create_component_instance` - Instantiate components

### Styling
- `set_fill_color` - Set background colors
- `set_stroke_color` - Set border colors
- `set_corner_radius` - Round corners
- `set_text_content` - Update text

### Layout & Positioning
- `move_node` - Move elements
- `resize_node` - Resize elements
- `set_auto_layout` - Configure auto-layout

### Batch Operations
- `set_multiple_text_contents` - Update multiple texts
- `delete_multiple_nodes` - Delete multiple nodes
- `clone_node` - Duplicate elements

### Advanced
- `scan_text_nodes` - Find all text in design
- `scan_nodes_by_types` - Find nodes by type
- `export_node_as_image` - Export as PNG/SVG/JPG
- `get_annotations` - Read annotations
- `set_annotation` - Create annotations

## 🔧 Troubleshooting

### MCP Not Connecting
1. Restart Blackbox
2. Check WebSocket server is running: `lsof -i :3055`
3. Verify MCP config: `cat /Users/matthewsegura/Desktop/blackbox_mcp_settings.json`

### Figma Plugin Not Connecting
1. Make sure WebSocket server is running
2. Check plugin is running in Figma
3. Verify you've joined a channel in the plugin UI
4. Check browser console for errors (Plugins → Development → Open Console)

### Commands Timing Out
1. Ensure Figma plugin is active and connected
2. Check WebSocket server logs
3. Try reconnecting the plugin

## 📝 How It Works

```
┌─────────────┐         ┌──────────────┐         ┌────────────┐
│  Blackbox   │ ◄─MCP──►│  WebSocket   │ ◄─WS───►│   Figma    │
│   (Client)  │         │    Server    │         │   Plugin   │
└─────────────┘         └──────────────┘         └────────────┘
```

1. You prompt Blackbox with a design request
2. Blackbox uses MCP tools to send commands
3. Commands go through WebSocket server (port 3055)
4. Figma plugin receives and executes commands
5. Results flow back to Blackbox

## 🎯 Next Steps

1. **Restart Blackbox** to load the new MCP configuration
2. **Open Figma** and install/run the plugin
3. **Connect the plugin** to the WebSocket server
4. **Try a simple prompt** like "Create a blue button in Figma"
5. **Experiment** with more complex designs!

## 📚 Resources

- MCP Server Code: `/Users/matthewsegura/Desktop/blackbox-talk-to-figma-mcp/src/talk_to_figma_mcp/server.ts`
- Figma Plugin Code: `/Users/matthewsegura/Desktop/blackbox-talk-to-figma-mcp/src/blackbox_mcp_plugin/`
- WebSocket Server: Running on `ws://localhost:3055`

---

**Ready to create designs with AI! 🎨✨**
