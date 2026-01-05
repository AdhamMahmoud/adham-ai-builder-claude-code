---
name: rag-tools
description: RAG (Retrieval-Augmented Generation) tools including vector databases (Pinecone, Chroma, pgvector), embedding models, chunking strategies, and hybrid search. Use when building RAG pipelines or document search systems.
---

# RAG (Retrieval-Augmented Generation) Tools

| Tool | Type | Best For | Hosted | Docs |
|------|------|----------|--------|------|
| **LlamaIndex** | Framework | Document indexing, query engines | No | https://docs.llamaindex.ai |
| **Haystack** | Framework | NLP pipelines, complex workflows | No | https://haystack.deepset.ai |
| **Chroma** | Vector DB | Local development, embeddings | Yes/No | https://docs.trychroma.com |
| **Pinecone** | Vector DB | Production, scale, managed | Yes | https://docs.pinecone.io |
| **Weaviate** | Vector DB | Hybrid search, GraphQL | Yes/No | https://weaviate.io/developers/weaviate |
| **Qdrant** | Vector DB | Fast search, filtering | Yes/No | https://qdrant.tech/documentation |
| **pgvector** | Postgres ext | Existing Postgres, simple | No | https://github.com/pgvector/pgvector |
| **Milvus** | Vector DB | Large scale, distributed | Yes/No | https://milvus.io/docs |
| **Supabase Vector** | Vector DB | Supabase integration, Postgres | Yes | https://supabase.com/docs/guides/ai |
| **Typesense** | Search | Typo-tolerance, faceted search | Yes/No | https://typesense.org/docs |

## RAG Pattern

### 1. Document Loading
```ts
// Load documents
const documents = await loadDocuments('./docs')
```

### 2. Text Splitting
```ts
// Split into chunks
const chunks = await splitDocuments(documents, {
  chunkSize: 1000,
  chunkOverlap: 200
})
```

### 3. Generate Embeddings
```ts
// Create embeddings
const embeddings = await openai.embeddings.create({
  model: 'text-embedding-3-small',
  input: chunks
})
```

### 4. Store in Vector DB
```ts
// Store vectors
await vectorStore.add({
  ids: chunks.map(c => c.id),
  documents: chunks.map(c => c.text),
  embeddings: embeddings.data.map(e => e.embedding)
})
```

### 5. Query
```ts
// Search similar documents
const queryEmbedding = await openai.embeddings.create({
  model: 'text-embedding-3-small',
  input: query
})

const results = await vectorStore.query({
  queryEmbeddings: [queryEmbedding.data[0].embedding],
  nResults: 5
})
```

### 6. Generate Response
```ts
// Add context to prompt
const context = results.documents.join('\n\n')
const prompt = `Context: ${context}\n\nQuestion: ${query}`

const response = await openai.chat.completions.create({
  model: 'gpt-4',
  messages: [{ role: 'user', content: prompt }]
})
```

## Vector DB Comparison

### Pinecone
- Pros: Managed, scalable, simple
- Cons: Paid only
- Use: Production, don't want to manage infra

### Chroma
- Pros: Easy local dev, open source
- Cons: Not for large scale
- Use: Prototyping, small projects

### pgvector
- Pros: Use existing Postgres, simple
- Cons: Slower than specialized DBs
- Use: Already using Postgres, simple RAG

### Qdrant
- Pros: Fast, filtering, self-hosted option
- Cons: Smaller community
- Use: Need fast search with filters

### Weaviate
- Pros: GraphQL, hybrid search, modules
- Cons: Complex setup
- Use: Complex schemas, hybrid search

## Embeddings Models

| Model | Provider | Dimensions | Cost | Use |
|-------|----------|------------|------|-----|
| text-embedding-3-small | OpenAI | 1536 | $ | General purpose |
| text-embedding-3-large | OpenAI | 3072 | $$ | Higher quality |
| embed-english-v3.0 | Cohere | 1024 | $ | English text |
| voyage-2 | Voyage | 1024 | $$ | Code, multilingual |
| all-MiniLM-L6-v2 | Open | 384 | Free | Local, fast |

## Chunking Strategies

### Fixed Size
```ts
chunkSize: 1000
chunkOverlap: 200
```

### Semantic
```ts
// Split by sentences/paragraphs
```

### Recursive
```ts
// Try multiple separators: \n\n, \n, " "
```

## Metadata Filtering
```ts
await vectorStore.query({
  queryEmbeddings: [embedding],
  nResults: 5,
  where: {
    type: 'documentation',
    date: { $gte: '2024-01-01' }
  }
})
```

## Hybrid Search (Vector + Keyword)
```ts
// Combine vector similarity with keyword search
const vectorResults = await vectorSearch(query)
const keywordResults = await keywordSearch(query)
const combined = mergeResults(vectorResults, keywordResults)
```

## Reranking
```ts
// Use reranker model to improve results
const reranked = await cohere.rerank({
  query,
  documents: results,
  topN: 5
})
```

## Docs
- https://docs.llamaindex.ai
- https://docs.trychroma.com
- https://docs.pinecone.io
