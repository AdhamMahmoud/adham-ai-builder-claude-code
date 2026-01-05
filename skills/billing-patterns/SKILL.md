---
name: billing-patterns
description: Stripe billing patterns including checkout sessions, subscription management, credits systems, webhook handlers, and customer portal. Use when implementing payments, subscriptions, or billing features.
---

# Stripe Billing Patterns

## Setup
```ts
import Stripe from 'stripe'
export const stripe = new Stripe(process.env.STRIPE_SECRET_KEY!)
```

## Create Checkout Session
```ts
const session = await stripe.checkout.sessions.create({
  mode: 'subscription', // or 'payment'
  line_items: [
    {
      price: 'price_xxxxx', // Price ID from Stripe
      quantity: 1
    }
  ],
  success_url: `${process.env.URL}/success?session_id={CHECKOUT_SESSION_ID}`,
  cancel_url: `${process.env.URL}/cancel`,
  customer_email: user.email,
  metadata: {
    userId: user.id
  }
})

// Redirect to session.url
```

## Subscription Management
```ts
// Create subscription
const subscription = await stripe.subscriptions.create({
  customer: customerId,
  items: [{ price: priceId }],
  payment_behavior: 'default_incomplete',
  expand: ['latest_invoice.payment_intent']
})

// Cancel subscription
await stripe.subscriptions.cancel(subscriptionId)

// Update subscription
await stripe.subscriptions.update(subscriptionId, {
  items: [{ id: itemId, price: newPriceId }]
})
```

## Credits System
```ts
// DB Schema
credits: integer('credits').default(0)

// Deduct credits
await db.update(users)
  .set({ credits: sql`credits - ${amount}` })
  .where(eq(users.id, userId))

// Add credits via webhook
await db.update(users)
  .set({ credits: sql`credits + ${amount}` })
  .where(eq(users.id, userId))
```

## Webhook Handler
```ts
// app/api/webhooks/stripe/route.ts
import { headers } from 'next/headers'

export async function POST(req: Request) {
  const body = await req.text()
  const sig = headers().get('stripe-signature')!

  const event = stripe.webhooks.constructEvent(
    body,
    sig,
    process.env.STRIPE_WEBHOOK_SECRET!
  )

  switch (event.type) {
    case 'checkout.session.completed':
      const session = event.data.object
      // Grant credits or activate subscription
      break

    case 'customer.subscription.deleted':
      // Handle cancellation
      break

    case 'invoice.payment_succeeded':
      // Renew subscription
      break

    case 'invoice.payment_failed':
      // Handle failed payment
      break
  }

  return new Response('OK', { status: 200 })
}
```

## Customer Portal
```ts
const session = await stripe.billingPortal.sessions.create({
  customer: customerId,
  return_url: `${process.env.URL}/dashboard`
})

// Redirect to session.url
```

## Pricing Models
| Model | Stripe Mode | Best For |
|-------|-------------|----------|
| One-time | `payment` | Credits, lifetime deals |
| Subscription | `subscription` | Monthly/yearly plans |
| Usage-based | `subscription` with metered billing | Pay-per-use |
| Freemium | Free tier + paid tiers | User acquisition |

## Metadata Pattern
```ts
// Store custom data
metadata: {
  userId: user.id,
  credits: '1000',
  plan: 'pro'
}

// Access in webhook
const userId = event.data.object.metadata.userId
```

## Test Cards
- Success: `4242 4242 4242 4242`
- Decline: `4000 0000 0000 0002`
- 3DS: `4000 0025 0000 3155`

## Webhook Testing
```bash
stripe listen --forward-to localhost:3000/api/webhooks/stripe
```

## Docs
- https://stripe.com/docs
- https://stripe.com/docs/webhooks
