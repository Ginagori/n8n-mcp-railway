# n8n-mcp-railway

Repositorio para desplegar una instancia personalizada de [n8n](https://n8n.io) en Railway con soporte para herramientas MCP (Machine Control Protocol) como `firecrawl-mcp`, `@openbnb/mcp-server-airbnb` y más.

## 🚀 ¿Qué hace este repositorio?

Este proyecto permite:

- Desplegar n8n en Railway con un `Dockerfile` personalizado.
- Instalar herramientas MCP que normalmente no están incluidas en la imagen oficial.
- Ejecutar comandos tipo `npx` desde nodos `MCP Client Tool` de n8n sin errores de permisos.

---

## 🛠️ Estructura del Dockerfile

El `Dockerfile`:

- Usa como base la imagen oficial de n8n.
- Cambia temporalmente al usuario `root` para configurar el entorno.
- Define una ruta segura para instalar paquetes globales (`.npm-global`).
- Instala herramientas MCP que necesitas.
- Vuelve al usuario `node` para garantizar compatibilidad con n8n.

```dockerfile
FROM
