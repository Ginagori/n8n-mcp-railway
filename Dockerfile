FROM n8nio/n8n:1.91.2

# Instala herramientas MCP necesarias
RUN npm install -g \
    firecrawl-mcp \
    @openbnb/mcp-server-airbnb \
    mercury-mcp
