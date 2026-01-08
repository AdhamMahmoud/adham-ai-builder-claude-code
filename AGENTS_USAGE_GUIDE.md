# How to Use the Idea Validator & Marketing Expert Agents

## Overview

Two powerful agents have been created based on David Andre's proven playbook:

1. **Idea Validator (David Andre Framework)** - Validates AI SaaS ideas using painful problem test, niche strategy, and software scaling laws
2. **Marketing Expert (4 Methods)** - Designs customer acquisition strategies using Organic Content, Cold DMs, Micro-Influencers, and SEO

---

## Quick Start

### Using Idea Validator

**When to use:**
- You have a SaaS idea and want to validate it
- You're choosing between multiple ideas
- You want to avoid building something nobody wants
- You need to identify risky assumptions

**How to invoke:**

```bash
# Using Task tool
Task(
  subagent_type="adham-ai-builder:idea-validator",
  description="Validate AI SaaS idea",
  prompt="I want to build [your idea description].

  My target customer is [describe them].

  The problem I'm solving is [describe problem].

  Please validate this idea using the David Andre framework."
)
```

**What you'll get:**
- Painful Problem Score (out of 10)
- Target Avatar Clarity (out of 10)
- Niche Strategy Assessment (out of 10)
- 10 Assumptions Audit
- Business Model Score (out of 40)
- Competition Gap Analysis
- AI Leverage Score (out of 5)
- Distribution Reality Check (out of 4)
- Path to $100K ARR calculation
- GO / NO-GO / PIVOT verdict

---

### Using Marketing Expert

**When to use:**
- You have a product and need customers
- You're stuck at 0 users
- You want to get first 10-100 customers
- You need a clear marketing roadmap

**How to invoke:**

```bash
# Using Task tool
Task(
  subagent_type="adham-ai-builder:marketing-expert",
  description="Create customer acquisition plan",
  prompt="My product is [description].

  Target avatar: [specific person description]

  Main pain point: [what you solve]

  Current customers: [0 / 10 / 50 / etc.]

  Budget: $[amount or $0]

  Time available: [hours per day]

  Please design a marketing strategy to get my first 100 customers."
)
```

**What you'll get:**
- Primary/Secondary/Tertiary method recommendations
- 30-day marketing sprint with weekly checklists
- Specific tactics for each method
- Success metrics to track
- Common mistakes to avoid
- Daily action items

---

## Example Scenarios

### Scenario 1: Brand New Idea

**Situation:** You have an idea but haven't built anything yet.

**Step 1: Validate the Idea**

```bash
# Use Idea Validator first
Task(
  subagent_type="adham-ai-builder:idea-validator",
  prompt="I want to build an AI tool that helps real estate agents
  automate their lead follow-up emails.

  Target: Real estate agents with 2-10 employees who spend 15+ hours/week
  on manual follow-ups.

  Problem: They lose leads because they can't follow up quickly enough.

  Validate this idea."
)
```

**Expected verdict:**
- If GO → Proceed to build MVP
- If NO-GO → Pivot to different idea
- If PIVOT → Adjust based on feedback

**Step 2: Build MVP (if GO)**
- Use AI agents (Cursor, Claude Code) to build
- Aim for 30-day MVP

**Step 3: Create Marketing Plan**

```bash
# Use Marketing Expert once MVP is ready (or 80% ready)
Task(
  subagent_type="adham-ai-builder:marketing-expert",
  prompt="Product: AI email automation for real estate lead follow-ups

  Target: Real estate agents with 2-10 employees

  Pain: Losing leads due to slow follow-up

  Current customers: 0

  Budget: $0

  Time: 2 hours/day for marketing

  Design my strategy to get first 100 customers."
)
```

**Expected output:**
- Recommended: Cold DMs (primary) + Organic Content (secondary)
- 30-day sprint with specific daily tasks
- Exact scripts and templates

---

### Scenario 2: Product Built, Zero Customers

**Situation:** You built something but have 0 customers. Not sure why.

**Step 1: Reverse Validation**

```bash
# Use Idea Validator to diagnose
Task(
  subagent_type="adham-ai-builder:idea-validator",
  prompt="I built [product description].

  I think my target customer is [description].

  But I have 0 customers after 2 months.

  Diagnose what might be wrong using the framework."
)
```

**Likely findings:**
- Problem is "vitamin" not "painkiller" (low urgency)
- Target avatar too broad ("everyone" = no one)
- Missing distribution channels
- Wrong pricing
- Risky assumptions not validated

**Step 2: Get Immediate Marketing Plan**

```bash
# Use Marketing Expert for quick wins
Task(
  subagent_type="adham-ai-builder:marketing-expert",
  prompt="I have a product with 0 customers.

  [Product description]
  [Target avatar]
  [Budget available]
  [Time available]

  I need customers FAST. What's the quickest path to 10 paying customers?"
)
```

**Expected output:**
- Focus on Cold DMs (fastest method)
- Specific communities to join
- Exact DM scripts
- 2-week sprint to first customers

---

### Scenario 3: Choosing Between Multiple Ideas

**Situation:** You have 3 ideas and want to pick the best one.

**Process: Score All Three**

```bash
# Validate Idea A
Task(
  subagent_type="adham-ai-builder:idea-validator",
  prompt="Idea A: [description]
  Target: [avatar]
  Problem: [pain point]

  Score this idea."
)

# Validate Idea B
Task(
  subagent_type="adham-ai-builder:idea-validator",
  prompt="Idea B: [description]
  Target: [avatar]
  Problem: [pain point]

  Score this idea."
)

# Validate Idea C
Task(
  subagent_type="adham-ai-builder:idea-validator",
  prompt="Idea C: [description]
  Target: [avatar]
  Problem: [pain point]

  Score this idea."
)
```

**Compare:**
- Overall Score (out of 100)
- Business Model Score (out of 40)
- Painful Problem Score (out of 10)
- Distribution Reality (out of 4)

**Pick:** Highest overall score with GO verdict

**Then:**
- Build MVP for winner
- Use Marketing Expert for go-to-market

---

### Scenario 4: Stuck at 10-50 Customers

**Situation:** You have initial traction but growth plateaued.

**Use Marketing Expert for Scaling**

```bash
Task(
  subagent_type="adham-ai-builder:marketing-expert",
  prompt="Current state:
  - Product: [description]
  - Customers: 25 paying
  - MRR: $2,500
  - How I got them: Cold DMs and word of mouth

  I'm stuck. How do I scale to 100-200 customers?

  Budget: $500-1000/month
  Time: 3-4 hours/day for marketing"
)
```

**Expected output:**
- Shift to Micro-Influencers (primary)
- Continue Organic Content (secondary)
- Start SEO for long-term (tertiary)
- List of 20-30 micro-influencers to reach out to
- Affiliate offer structure
- 60-day scaling plan

---

### Scenario 5: Pre-Launch Validation + Marketing

**Situation:** You want to do this right from day one.

**Week 1-2: Validate Before Building**

```bash
Task(
  subagent_type="adham-ai-builder:idea-validator",
  prompt="[Your idea in detail]

  I haven't built anything yet. Should I?"
)
```

**If GO:**

**Week 3-4: Build MVP**
- Use AI coding agents
- Build minimum viable version
- Don't aim for perfect

**Week 4: Launch Marketing While Building**

```bash
Task(
  subagent_type="adham-ai-builder:marketing-expert",
  prompt="Product: [description] (80% built)

  I want to start marketing NOW before launch.

  Create a pre-launch marketing strategy."
)
```

**Expected output:**
- Build waitlist landing page
- Start organic content (document build journey)
- Join communities and provide value
- Collect emails of interested people
- Launch to warm audience

---

## Best Practices

### For Idea Validator

**✅ DO:**
- Be specific about target avatar (not "everyone")
- Describe problem in detail (not just features)
- List all your assumptions honestly
- Ask for harsh truth (not validation)

**❌ DON'T:**
- Be vague about who it's for
- Focus only on cool features
- Skip the distribution reality check
- Get defensive about feedback

### For Marketing Expert

**✅ DO:**
- State current situation clearly (0, 10, 50 customers)
- Mention budget and time constraints
- Describe target avatar precisely
- Ask for specific tactics (not just theory)

**❌ DON'T:**
- Say "target is everyone"
- Skip mentioning your constraints
- Ask for all methods at once
- Ignore the 50/50 rule (50% marketing, 50% building)

---

## Advanced Usage

### Chaining Agents for Complete Strategy

**Step 1: Validate**
```bash
Task(subagent_type="adham-ai-builder:idea-validator", ...)
# Get GO verdict with score of 75/100
```

**Step 2: Plan Marketing**
```bash
Task(subagent_type="adham-ai-builder:marketing-expert", ...)
# Get 30-day customer acquisition plan
```

**Step 3: Build Product**
```bash
Task(subagent_type="adham-ai-builder:fullstack-developer", ...)
# Build MVP with full-stack agent
```

**Step 4: Execute Marketing**
- Follow the 30-day sprint from Marketing Expert
- Track metrics weekly
- Adjust based on data

**Step 5: Re-validate at Milestones**
```bash
# After 30 days
Task(subagent_type="adham-ai-builder:idea-validator",
  prompt="Update: I have 8 paying customers...
  Should I continue or pivot?")
```

---

## Key Metrics to Track

### From Idea Validator
- Overall Score: ___/100
- Business Model Score: ___/40
- Painful Problem Score: ___/10
- Distribution Reality: ___/4

### From Marketing Expert
- **Organic Content:**
  - Videos uploaded: ___ per month
  - Views: ___
  - Traffic to site: ___

- **Cold DMs:**
  - Sent: ___ per day
  - Response rate: ___%
  - Customers: ___

- **Micro-Influencers:**
  - Partners: ___
  - Content posted: ___
  - Customers: ___

- **SEO:**
  - Articles: ___
  - Organic visitors: ___
  - Customers: ___

---

## Common Questions

**Q: Should I use both agents?**
A: Yes! Validate first, then market. Don't skip validation.

**Q: How long does validation take?**
A: Agent produces report in 5-10 minutes. You'll need 1-2 hours to digest and act on findings.

**Q: What if I get a NO-GO verdict?**
A: Celebrate! You just saved 6-12 months building wrong thing. Pivot or choose different idea.

**Q: Can I use Marketing Expert with existing customers?**
A: Absolutely. It works for 0 → 10 customers OR 50 → 500 customers. Just state your current situation.

**Q: Which method should I start with?**
A: For first 10 customers: Cold DMs (fastest, $0 cost)

**Q: Do I need all 4 marketing methods?**
A: No. Pick 1-2 max. Master one before adding another.

---

## Success Stories Template

After using these agents, document your journey:

**Before:**
- Idea: [What you were thinking]
- Validation Score: [From agent]
- Verdict: [GO/NO-GO/PIVOT]

**Actions Taken:**
- [What you did based on agent recommendations]

**After 30 Days:**
- Customers: ___
- MRR: $___
- Key learnings: ___

**After 90 Days:**
- Customers: ___
- MRR: $___
- What worked: ___
- What didn't: ___

---

## Quick Reference Card

### When to Use Idea Validator
- ✅ Have new idea → Validate before building
- ✅ Choosing between ideas → Score all, pick winner
- ✅ Have product, 0 customers → Diagnose what's wrong
- ✅ Reached milestone → Re-validate assumptions

### When to Use Marketing Expert
- ✅ Product ready, need customers → Get acquisition plan
- ✅ Stuck at low customer count → Scale past plateau
- ✅ Want to start marketing → Get 30-day sprint
- ✅ Tried marketing, not working → Get new approach

### Red Flags (Use Agents ASAP)
- 🚩 "I'll start marketing once product is perfect"
- 🚩 "My target is everyone"
- 🚩 "It's a cool feature, people will want it"
- 🚩 "I've been building for 6 months, 0 customers"
- 🚩 "I don't know how to get customers"

---

## Next Steps

1. **Read the full playbook:** `AI_BUSINESS_PLAYBOOK.md`
2. **Validate your idea:** Use Idea Validator agent
3. **If GO verdict:** Start building MVP
4. **Get marketing plan:** Use Marketing Expert agent
5. **Execute 30-day sprint:** Follow the checklist
6. **Track metrics:** Weekly reviews
7. **Iterate:** Based on data, not feelings

---

**Remember David Andre's Core Truth:**

> "Most people fail because they pick the wrong business model OR they build what nobody wants. These agents help you avoid both traps."

**Now go validate your idea and get your first 100 customers.**
