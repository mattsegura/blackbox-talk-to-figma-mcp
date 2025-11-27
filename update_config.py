import json

config_path = "/Users/matthewsegura/.blackboxcli/mcp_config.json"

with open(config_path, 'r') as f:
    config = json.load(f)

# Update the Talk to Figma MCP command to use bun
config["mcpServers"]["Talk to Figma MCP"]["command"] = "bun"
config["mcpServers"]["Talk to Figma MCP"]["args"] = [
    "run",
    "/Users/matthewsegura/Desktop/blackbox-talk-to-figma-mcp/dist/server.js"
]

with open(config_path, 'w') as f:
    json.dump(config, f, indent=2)

print("✅ Updated MCP config to use bun")
print("\nNew config:")
print(json.dumps(config["mcpServers"]["Talk to Figma MCP"], indent=2))
