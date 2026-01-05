# MCP (Model Context Protocol) Tools

## Official MCP Servers

| Server | Purpose | Docs |
|--------|---------|------|
| **@modelcontextprotocol/server-filesystem** | File operations | https://github.com/modelcontextprotocol/servers |
| **@modelcontextprotocol/server-github** | GitHub API access | https://github.com/modelcontextprotocol/servers |
| **@modelcontextprotocol/server-postgres** | PostgreSQL queries | https://github.com/modelcontextprotocol/servers |
| **@modelcontextprotocol/server-slack** | Slack integration | https://github.com/modelcontextprotocol/servers |
| **@modelcontextprotocol/server-memory** | Persistent memory | https://github.com/modelcontextprotocol/servers |
| **@modelcontextprotocol/server-google-drive** | Google Drive access | https://github.com/modelcontextprotocol/servers |
| **@modelcontextprotocol/server-google-maps** | Google Maps API | https://github.com/modelcontextprotocol/servers |
| **@modelcontextprotocol/server-brave-search** | Web search | https://github.com/modelcontextprotocol/servers |
| **@modelcontextprotocol/server-puppeteer** | Web automation | https://github.com/modelcontextprotocol/servers |
| **@modelcontextprotocol/server-sqlite** | SQLite queries | https://github.com/modelcontextprotocol/servers |

## Community MCP Servers

### Development
- **server-git** - Git operations
- **server-docker** - Docker management
- **server-kubernetes** - K8s operations

### Databases
- **server-mysql** - MySQL queries
- **server-mongodb** - MongoDB operations
- **server-redis** - Redis cache operations
- **server-supabase** - Supabase integration

### APIs & Services
- **server-stripe** - Stripe payments
- **server-sendgrid** - Email sending
- **server-twilio** - SMS/voice
- **server-aws** - AWS operations
- **server-firebase** - Firebase services

### Productivity
- **server-notion** - Notion database access
- **server-airtable** - Airtable operations
- **server-calendar** - Calendar integration
- **server-email** - Email operations

### AI & ML
- **server-openai** - OpenAI API
- **server-anthropic** - Claude API
- **server-huggingface** - HF models
- **server-replicate** - Replicate models

## MCP Config

### Claude Desktop Config
```json
// ~/Library/Application Support/Claude/claude_desktop_config.json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/path/to/allowed/dir"]
    },
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_TOKEN": "your-token"
      }
    },
    "postgres": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-postgres"],
      "env": {
        "DATABASE_URL": "postgresql://..."
      }
    }
  }
}
```

### Programmatic Usage
```ts
import { Client } from '@modelcontextprotocol/sdk/client/index.js'
import { StdioClientTransport } from '@modelcontextprotocol/sdk/client/stdio.js'

const transport = new StdioClientTransport({
  command: 'npx',
  args: ['-y', '@modelcontextprotocol/server-filesystem', '/path']
})

const client = new Client({ name: 'my-app', version: '1.0' }, { capabilities: {} })
await client.connect(transport)

// List available tools
const tools = await client.listTools()

// Call a tool
const result = await client.callTool({
  name: 'read_file',
  arguments: { path: '/path/to/file.txt' }
})
```

## Common Tools by Server

### Filesystem
- `read_file` - Read file contents
- `write_file` - Write to file
- `list_directory` - List files
- `create_directory` - Make directory
- `delete_file` - Remove file

### GitHub
- `create_issue` - New issue
- `list_issues` - Get issues
- `create_pull_request` - New PR
- `search_code` - Code search
- `get_file_contents` - Read repo file

### Postgres
- `query` - Execute SQL query
- `list_tables` - Show tables
- `describe_table` - Table schema

### Slack
- `send_message` - Post message
- `list_channels` - Get channels
- `search_messages` - Search history

### Memory
- `store` - Save information
- `retrieve` - Get stored data
- `search` - Search memory

## Building Custom MCP Server

```ts
// server.ts
import { Server } from '@modelcontextprotocol/sdk/server/index.js'
import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js'

const server = new Server(
  { name: 'custom-server', version: '1.0.0' },
  { capabilities: { tools: {} } }
)

// Define tools
server.setRequestHandler('tools/list', async () => ({
  tools: [
    {
      name: 'custom_tool',
      description: 'Does something',
      inputSchema: {
        type: 'object',
        properties: {
          param: { type: 'string' }
        }
      }
    }
  ]
}))

// Handle tool calls
server.setRequestHandler('tools/call', async (request) => {
  if (request.params.name === 'custom_tool') {
    // Implementation
    return { content: [{ type: 'text', text: 'Result' }] }
  }
  throw new Error('Unknown tool')
})

// Start server
const transport = new StdioServerTransport()
await server.connect(transport)
```

## Use Cases

### AI Coding Assistant
- Filesystem: Read/write code
- GitHub: Create PRs, issues
- Postgres: Query database

### Customer Support Bot
- Slack: Send messages
- Memory: Remember conversations
- Database: Look up customer data

### Data Analysis Agent
- Postgres/SQLite: Query data
- Filesystem: Read datasets
- Brave Search: Research context

### Automation Agent
- Puppeteer: Web scraping
- Email: Send notifications
- Calendar: Schedule tasks

## Security Notes
- MCP servers have full access to specified resources
- Use environment variables for secrets
- Restrict filesystem access to specific directories
- Validate all inputs in custom servers

## Docs
- https://modelcontextprotocol.io
- https://github.com/modelcontextprotocol/servers
- https://github.com/modelcontextprotocol/typescript-sdk
