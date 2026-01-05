# NextAuth v5 (Auth.js)

## Setup
```ts
// auth.ts
import NextAuth from 'next-auth'
import Google from 'next-auth/providers/google'
import Credentials from 'next-auth/providers/credentials'

export const { handlers, signIn, signOut, auth } = NextAuth({
  providers: [
    Google({
      clientId: process.env.GOOGLE_ID,
      clientSecret: process.env.GOOGLE_SECRET
    }),
    Credentials({
      credentials: {
        email: {},
        password: {}
      },
      authorize: async (credentials) => {
        const user = await getUserFromDb(credentials.email)
        if (!user) return null
        return user
      }
    })
  ],
  callbacks: {
    jwt({ token, user }) {
      if (user) token.role = user.role
      return token
    },
    session({ session, token }) {
      session.user.role = token.role
      return session
    }
  }
})
```

## Route Handler
```ts
// app/api/auth/[...nextauth]/route.ts
export { GET, POST } from '@/auth'
```

## Middleware (Protected Routes)
```ts
// middleware.ts
export { auth as middleware } from '@/auth'

export const config = {
  matcher: ['/dashboard/:path*', '/api/:path*']
}
```

## Server Actions
```ts
'use server'
import { auth } from '@/auth'

export async function protectedAction() {
  const session = await auth()
  if (!session) throw new Error('Unauthorized')
  // Action logic
}
```

## Client Usage
```tsx
'use client'
import { signIn, signOut } from 'next-auth/react'
import { useSession } from 'next-auth/react'

function Component() {
  const { data: session, status } = useSession()

  if (status === 'loading') return <Loading />
  if (!session) return <button onClick={() => signIn()}>Sign In</button>

  return (
    <div>
      {session.user.email}
      <button onClick={() => signOut()}>Sign Out</button>
    </div>
  )
}
```

## Server Component
```tsx
import { auth } from '@/auth'

async function Page() {
  const session = await auth()
  if (!session) redirect('/login')
  return <div>{session.user.email}</div>
}
```

## RBAC (Role-Based Access Control)
```ts
// Extend types
declare module 'next-auth' {
  interface User {
    role: 'admin' | 'user'
  }
  interface Session {
    user: User
  }
}

// Check role
function checkRole(session: Session, role: string) {
  return session.user.role === role
}
```

## OAuth Providers
| Provider | Import |
|----------|--------|
| Google | `next-auth/providers/google` |
| GitHub | `next-auth/providers/github` |
| Discord | `next-auth/providers/discord` |
| Twitter | `next-auth/providers/twitter` |
| Apple | `next-auth/providers/apple` |

## JWT vs Database Sessions
- JWT: Stateless, faster, tokens in cookies
- Database: More secure, can revoke, server queries

## Docs
- https://authjs.dev
