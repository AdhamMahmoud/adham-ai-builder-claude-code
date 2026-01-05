---
name: animation-library
description: Animation libraries including Framer Motion, GSAP, and React Spring with patterns for basic animations, variants, gestures, scroll animations, and performance tips. Use when adding animations to React components.
---

# Animation Libraries

## Framer Motion (Recommended)

### Basic Animation
```tsx
import { motion } from 'framer-motion'

<motion.div
  initial={{ opacity: 0, y: 20 }}
  animate={{ opacity: 1, y: 0 }}
  exit={{ opacity: 0, y: -20 }}
  transition={{ duration: 0.3 }}
/>
```

### Variants
```tsx
const variants = {
  hidden: { opacity: 0, scale: 0.8 },
  visible: { opacity: 1, scale: 1 }
}

<motion.div
  variants={variants}
  initial="hidden"
  animate="visible"
/>
```

### Gestures
```tsx
<motion.button
  whileHover={{ scale: 1.05 }}
  whileTap={{ scale: 0.95 }}
  drag
  dragConstraints={{ left: 0, right: 300 }}
/>
```

### Layout Animations
```tsx
<motion.div layout />
// Auto-animates position/size changes
```

### AnimatePresence
```tsx
<AnimatePresence>
  {show && (
    <motion.div
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      exit={{ opacity: 0 }}
    />
  )}
</AnimatePresence>
```

### Scroll Animations
```tsx
import { useScroll, useTransform } from 'framer-motion'

const { scrollYProgress } = useScroll()
const scale = useTransform(scrollYProgress, [0, 1], [1, 1.5])

<motion.div style={{ scale }} />
```

## GSAP

### Timeline
```ts
import gsap from 'gsap'

gsap.timeline()
  .to('.box', { x: 100, duration: 1 })
  .to('.circle', { rotation: 360, duration: 1 }, '-=0.5')
```

### ScrollTrigger
```ts
import { ScrollTrigger } from 'gsap/ScrollTrigger'
gsap.registerPlugin(ScrollTrigger)

gsap.to('.element', {
  scrollTrigger: {
    trigger: '.container',
    start: 'top center',
    end: 'bottom top',
    scrub: true
  },
  x: 500
})
```

## React Spring

### useSpring
```tsx
import { useSpring, animated } from '@react-spring/web'

const springs = useSpring({
  from: { opacity: 0 },
  to: { opacity: 1 }
})

<animated.div style={springs} />
```

### useTrail
```tsx
const trail = useTrail(items.length, {
  from: { opacity: 0, y: 20 },
  to: { opacity: 1, y: 0 }
})

{trail.map((style, i) => (
  <animated.div key={i} style={style}>
    {items[i]}
  </animated.div>
))}
```

## Common Patterns

### Fade In
```tsx
initial={{ opacity: 0 }}
animate={{ opacity: 1 }}
```

### Slide In
```tsx
initial={{ x: -100 }}
animate={{ x: 0 }}
```

### Scale In
```tsx
initial={{ scale: 0 }}
animate={{ scale: 1 }}
```

### Stagger Children
```tsx
const container = {
  hidden: { opacity: 0 },
  show: {
    opacity: 1,
    transition: {
      staggerChildren: 0.1
    }
  }
}

const item = {
  hidden: { opacity: 0 },
  show: { opacity: 1 }
}

<motion.ul variants={container} initial="hidden" animate="show">
  {items.map(i => (
    <motion.li key={i} variants={item} />
  ))}
</motion.ul>
```

## Performance Tips
- Use `transform` and `opacity` (GPU-accelerated)
- Avoid animating `width`, `height`, `top`, `left`
- Use `will-change` CSS for complex animations
- `layoutId` for shared element transitions

## Docs
- https://framer.com/motion
- https://gsap.com/docs
- https://react-spring.dev
