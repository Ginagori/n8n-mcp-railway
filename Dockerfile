FROM n8nio/n8n

# Instala herramientas MCP necesarias
RUN npm install -g \
    firecrawl-mcp \
    @openbnb/mcp-server-airbnb
  
