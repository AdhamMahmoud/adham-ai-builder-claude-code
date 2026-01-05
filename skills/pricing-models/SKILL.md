---
name: pricing-models
description: SaaS pricing models including tiered pricing, freemium, usage-based credits, per-seat pricing, and Stripe implementation patterns. Use when designing pricing strategies or implementing billing systems.
---

# SaaS Pricing Models

## Common Models

| Model | Best For | Pros | Cons |
|-------|----------|------|------|
| **Flat Rate** | Simple products | Easy to explain | Leaves money on table |
| **Tiered** | Most SaaS | Captures different segments | Complex to explain |
| **Usage-Based** | APIs, infra | Fair, scales with value | Unpredictable revenue |
| **Per Seat** | Team tools | Grows with team | Users share accounts |
| **Freemium** | PLG, viral | User acquisition | Low conversion rates |
| **Free Trial** | B2B SaaS | Shows value upfront | Requires activation |
| **Credits** | AI tools | Flexible, pre-paid | Can be confusing |

## Tiered Pricing Structure

### Example: Project Management Tool
```
FREE
- 1 project
- 5 tasks
- Basic features

STARTER - $15/mo
- 10 projects
- Unlimited tasks
- Integrations
- Email support

PRO - $49/mo
- Unlimited projects
- Advanced features
- Priority support
- Custom fields
- API access

ENTERPRISE - Custom
- SSO
- SLA
- Dedicated support
- Custom integrations
```

## Freemium Strategy

### Free Tier Limits
- Feature limits (not usage)
- Example: "10 AI generations/month"
- Give core value
- Make paid upgrade obvious

### Conversion Tactics
- Usage prompts ("You've used 8/10")
- Soft gates ("Pro users get X")
- Time-based ("Upgrade this month, get 20% off")
- Social proof ("Join 10k Pro users")

### Benchmarks
- 2-5% free → paid conversion
- 30-day trial outperforms 14-day
- Annual plans (20% discount) = predictable revenue

## Usage-Based (Credits)

### Pricing Structure
```
PAY AS YOU GO
- $0.01 per API call
- No monthly fee

STARTER - $29/mo
- 5,000 credits included
- $0.008 overage
- Save 20%

PRO - $99/mo
- 20,000 credits included
- $0.006 overage
- Save 40%
```

### Credit Allocation
- AI generation: 10 credits
- Basic API call: 1 credit
- Advanced feature: 50 credits

### Stripe Implementation
```ts
// Checkout with credits
const session = await stripe.checkout.sessions.create({
  mode: 'payment',
  line_items: [
    {
      price_data: {
        currency: 'usd',
        product_data: { name: '1000 Credits' },
        unit_amount: 1000 // $10
      },
      quantity: 1
    }
  ],
  metadata: { credits: '1000' }
})
```

## Pricing Psychology

### Anchoring
```
STARTER - $29
PRO - $79 ⭐ MOST POPULAR
ENTERPRISE - $299
```
- Middle tier appears reasonable
- Use "Most Popular" badge

### Decoy Pricing
```
BASIC - $10 (Limited)
PRO - $20 (Everything)
PREMIUM - $50 (Pro + dedicated support)
```
- Premium makes Pro look better

### Annual Discount
- Offer 20% off annual plans
- "Save $60/year"
- Improves cash flow + retention

## Per-Seat Pricing

### Structure
```
$15/user/month
- Minimum 2 users
- Volume discounts:
  - 10+ users: 10% off
  - 50+ users: 20% off
  - 100+ users: Custom
```

### Stripe Implementation
```ts
const subscription = await stripe.subscriptions.create({
  customer: customerId,
  items: [
    {
      price: priceId,
      quantity: numberOfSeats
    }
  ]
})
```

## Value Metrics

### Choose Right Metric
| Product Type | Good Metrics | Bad Metrics |
|--------------|--------------|-------------|
| Email tool | Contacts, emails sent | Users |
| CRM | Contacts, deals | Features |
| Project mgmt | Projects, users | Storage |
| API | Requests, data | Time |
| Analytics | Events, data points | Dashboards |

### Why Value Metrics?
- Aligns pricing with value delivered
- Grows with customer success
- Easier to justify increases

## Pricing Tiers: What to Gate

### Free Tier
- Core functionality
- Low usage limits
- Community support
- Branding

### Starter ($20-50/mo)
- Remove branding
- Higher limits
- Integrations
- Email support

### Pro ($50-200/mo)
- Advanced features
- Unlimited usage
- Priority support
- API access
- Custom fields

### Enterprise (Custom)
- SSO/SAML
- SLA
- Dedicated support
- Custom contracts
- On-prem option

## Stripe Pricing Setup

### Create Products
```ts
const product = await stripe.products.create({
  name: 'Pro Plan',
  description: 'Full access'
})

const price = await stripe.prices.create({
  product: product.id,
  unit_amount: 4900, // $49
  currency: 'usd',
  recurring: { interval: 'month' }
})
```

### Metered Billing
```ts
const price = await stripe.prices.create({
  product: product.id,
  currency: 'usd',
  recurring: {
    interval: 'month',
    usage_type: 'metered'
  },
  billing_scheme: 'per_unit',
  unit_amount: 10 // $0.10 per unit
})

// Report usage
await stripe.subscriptionItems.createUsageRecord(
  subscriptionItemId,
  { quantity: 100, timestamp: 'now' }
)
```

## Pricing Page Best Practices

### Structure
- 3-4 tiers max
- Highlight recommended tier
- Annual toggle (show savings)
- Feature comparison table
- FAQ below

### Copy
- "Starts at $X/mo"
- "Save 20% with annual"
- "No credit card required"
- "Cancel anytime"
- "14-day free trial"

### CTA
- "Start Free Trial" (not "Sign Up")
- "Get Started" (Pro tier)
- "Contact Sales" (Enterprise)

## Resources
- ProfitWell (pricing intel)
- Price Intelligently (research)
- OpenView (SaaS benchmarks)
- SaaS Pricing Strategy (book)
