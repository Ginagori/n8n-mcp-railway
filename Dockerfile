FROM n8nio/n8n

# Cambiar temporalmente a root para configurar entorno
USER root

# Crear carpeta para paquetes globales accesibles por "node"
RUN mkdir -p /home/node/.npm-global \
    && npm config set prefix '/home/node/.npm-global'

# Añadir esa carpeta al PATH global
ENV PATH=/home/node/.npm-global/bin:$PATH

# Instalar herramientas MCP necesarias
RUN npm install -g \
    firecrawl-mcp \
    @openbnb/mcp-server-airbnb

# Regresar al usuario node para ejecutar n8n de forma segura
USER node
