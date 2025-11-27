#!/bin/bash

# Start the WebSocket server for Blackbox Talk to Figma MCP
# This script starts the server in the background and shows the status

echo "🚀 Starting Blackbox Talk to Figma WebSocket Server..."
echo ""

# Check if server is already running
if lsof -Pi :3055 -sTCP:LISTEN -t >/dev/null ; then
    echo "⚠️  Server is already running on port 3055"
    echo ""
    echo "To stop it, run:"
    echo "  lsof -ti:3055 | xargs kill"
    exit 1
fi

# Start the server
cd "$(dirname "$0")"
bun socket &
SERVER_PID=$!

# Wait a moment for server to start
sleep 2

# Check if server started successfully
if lsof -Pi :3055 -sTCP:LISTEN -t >/dev/null ; then
    echo "✅ WebSocket server started successfully!"
    echo ""
    echo "📡 Server running on: ws://localhost:3055"
    echo "🔢 Process ID: $SERVER_PID"
    echo ""
    echo "Next steps:"
    echo "1. Restart Blackbox to load the MCP configuration"
    echo "2. Open Figma and run the 'Blackbox MCP Plugin'"
    echo "3. Connect the plugin to the WebSocket server"
    echo "4. Start creating designs with Blackbox!"
    echo ""
    echo "To stop the server:"
    echo "  lsof -ti:3055 | xargs kill"
else
    echo "❌ Failed to start server"
    exit 1
fi
