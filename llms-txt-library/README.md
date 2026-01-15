# LLMs.txt Library

Official documentation files optimized for LLM context loading.

## ✅ Downloaded Files (4 files - 166 KB)

### Frontend (3 files - 97 KB)
- `frontend/nextjs.txt` (61 KB) - Next.js 16+ App Router documentation
- `frontend/shadcn-ui.txt` (10 KB) - shadcn/ui component library
- `frontend/magic-ui.txt` (26 KB) - Magic UI animations & components

### AI/ML (1 file - 69 KB)
- `ai-ml/langchain.txt` (69 KB) - LangChain framework documentation

## 📥 How to Download More

Use the provided script or curl directly:

```bash
# Single file
curl -o frontend/react.txt https://react.dev/llms.txt

# Batch from SOURCES.md list
cat SOURCES.md | grep "https://" | while read url; do
  # Extract library name and download
  curl -s "$url" -o "$(echo $url | cut -d/ -f3 | cut -d. -f1).txt"
done
```

## 🔗 Known Working Sources

| Source | URL | Size |
|--------|-----|------|
| Next.js | https://nextjs.org/docs/llms.txt | 61 KB ✅ |
| LangChain | https://docs.langchain.com/llms.txt | 69 KB ✅ |
| Magic UI | https://magicui.design/llms.txt | 26 KB ✅ |
| shadcn/ui | https://ui.shadcn.com/llms.txt | 10 KB ✅ |

## 🎯 Recommended for RAG

Start with these 4 files for comprehensive coverage of:
- Full-stack web development (Next.js)
- Component libraries (shadcn/ui, Magic UI)
- AI framework (LangChain)

## 📂 Folder Structure

```
llms-txt-library/
├── INDEX.md              # Full library index
├── SOURCES.md            # List of official llms.txt endpoints
├── STRUCTURE.md          # Detailed file structure plan
├── README.md             # This file
├── download-llms.sh      # Download script
│
├── frontend/             # UI frameworks
│   ├── nextjs.txt
│   ├── shadcn-ui.txt
│   └── magic-ui.txt
│
├── ai-ml/                # AI/ML libraries
│   └── langchain.txt
│
├── backend/              # Empty - ready for files
├── auth/                 # Empty - ready for files
├── testing/              # Empty - ready for files
├── devops/               # Empty - ready for files
├── utilities/            # Empty - ready for files
└── monitoring/           # Empty - ready for files
```

## 💡 Using in RAG Systems

### Load Files into Vector DB

```typescript
import fs from 'fs'
import path from 'path'

const llmsTxtDir = './llms-txt-library'

// Load all llms.txt files
const documents = []
const walk = (dir: string) => {
  for (const file of fs.readdirSync(dir)) {
    const filePath = path.join(dir, file)
    if (fs.statSync(filePath).isDirectory()) {
      walk(filePath)
    } else if (file.endsWith('.txt')) {
      documents.push({
        id: filePath,
        content: fs.readFileSync(filePath, 'utf-8'),
        metadata: { source: file, category: path.basename(dir) }
      })
    }
  }
}

walk(llmsTxtDir)
// Index into Pinecone, Chroma, or pgvector
await vectorDb.upsert(documents)
```

### Use in System Prompt

```markdown
You are a full-stack developer assistant. You have comprehensive
documentation for Next.js, React, LangChain, and more in your context.

Use this knowledge to help build web applications and AI features.
```

## 🚀 Next Steps

1. **Expand Coverage**: Try downloading more official sources from SOURCES.md
2. **Custom Files**: Add proprietary llms.txt files for internal tools
3. **Index**: Load all files into your vector database
4. **Use**: Reference in RAG prompts and AI workflows

## 📊 Statistics

- **Total Files**: 4
- **Total Size**: 166 KB
- **Categories Covered**: 2 (Frontend, AI/ML)
- **Categories Ready**: 6 (Backend, Auth, Testing, DevOps, Utilities, Monitoring)

## 🔄 Maintenance

These files are official documentation snapshots. Update them when:
- Major version releases (e.g., Next.js 17)
- Significant API changes
- Better examples become available

---

**Last Updated**: 2026-01-15
**Files Downloaded**: 4
**Status**: Ready for use in RAG systems
