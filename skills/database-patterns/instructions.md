# Drizzle ORM + PostgreSQL

## Setup
```ts
// drizzle.config.ts
export default {
  schema: './lib/db/schema.ts',
  out: './drizzle',
  dialect: 'postgresql'
}
```

## Schema Definition
```ts
// lib/db/schema.ts
import { pgTable, text, serial, timestamp } from 'drizzle-orm/pg-core'

export const users = pgTable('users', {
  id: serial('id').primaryKey(),
  email: text('email').notNull().unique(),
  name: text('name'),
  createdAt: timestamp('created_at').defaultNow()
})

export const posts = pgTable('posts', {
  id: serial('id').primaryKey(),
  userId: integer('user_id').references(() => users.id),
  title: text('title').notNull(),
  content: text('content')
})
```

## Database Connection
```ts
// lib/db/index.ts
import { drizzle } from 'drizzle-orm/postgres-js'
import postgres from 'postgres'

const client = postgres(process.env.DATABASE_URL!)
export const db = drizzle(client)
```

## Queries
```ts
// Select
const users = await db.select().from(users)
const user = await db.select().from(users).where(eq(users.id, 1))

// Insert
await db.insert(users).values({ email: 'test@test.com' })

// Update
await db.update(users).set({ name: 'New' }).where(eq(users.id, 1))

// Delete
await db.delete(users).where(eq(users.id, 1))
```

## Joins
```ts
const result = await db
  .select()
  .from(users)
  .leftJoin(posts, eq(users.id, posts.userId))
```

## Transactions
```ts
await db.transaction(async (tx) => {
  await tx.insert(users).values({ ... })
  await tx.insert(posts).values({ ... })
})
```

## Migrations
```bash
# Generate migration
drizzle-kit generate

# Push to DB (dev)
drizzle-kit push

# Run migrations (prod)
drizzle-kit migrate
```

## Relations
```ts
export const usersRelations = relations(users, ({ many }) => ({
  posts: many(posts)
}))

export const postsRelations = relations(posts, ({ one }) => ({
  user: one(users, {
    fields: [posts.userId],
    references: [users.id]
  })
}))
```

## Filters
```ts
import { eq, gt, gte, lt, lte, ne, like, and, or } from 'drizzle-orm'

// Operators
eq(users.id, 1)
gt(users.age, 18)
like(users.email, '%@gmail.com')
and(eq(users.active, true), gt(users.age, 18))
```

## Pagination
```ts
const page = await db
  .select()
  .from(users)
  .limit(10)
  .offset(page * 10)
```

## Docs
- https://orm.drizzle.team/docs
