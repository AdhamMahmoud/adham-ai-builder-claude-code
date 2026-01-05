# Next.js 16 Patterns

## App Router Structure
- `/app` - Routes and layouts
- `/app/api` - API routes
- `/components` - Shared components
- `/lib` - Utilities and configs

## Server Components (Default)
```tsx
// app/page.tsx - Server Component by default
async function Page() {
  const data = await fetch('...', { cache: 'force-cache' })
  return <div>{data}</div>
}
```

## Client Components
```tsx
'use client'
// Use for: interactivity, hooks, browser APIs
```

## Caching Strategies
| Strategy | Code | Use Case |
|----------|------|----------|
| Force cache | `{ cache: 'force-cache' }` | Static data |
| No store | `{ cache: 'no-store' }` | Dynamic data |
| Revalidate | `{ next: { revalidate: 60 } }` | ISR |
| Tag-based | `{ next: { tags: ['posts'] } }` | On-demand revalidation |

## Route Handlers
```tsx
// app/api/route.ts
export async function GET(request: Request) {
  return Response.json({ data })
}
```

## Server Actions
```tsx
'use server'
export async function createPost(formData: FormData) {
  const title = formData.get('title')
  // DB mutation
  revalidatePath('/posts')
}
```

## Turbopack
- Dev: `next dev --turbo`
- 700x faster than Webpack
- Built-in for Next.js 16+

## Metadata API
```tsx
export const metadata = {
  title: 'Page',
  description: '...',
  openGraph: { ... }
}
```

## Parallel Routes
- `@folder` - Named slots
- Render multiple pages in same layout

## Intercepting Routes
- `(.)` - Same level
- `(..)` - One level up
- Modals and overlays

## Key Files
- `layout.tsx` - Shared UI
- `page.tsx` - Route UI
- `loading.tsx` - Loading state
- `error.tsx` - Error boundary
- `not-found.tsx` - 404 page

## Docs
- https://nextjs.org/docs
