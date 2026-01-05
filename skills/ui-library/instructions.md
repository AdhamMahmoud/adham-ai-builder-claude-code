# shadcn/ui + Radix + Tailwind

## shadcn Components List
- `accordion` - Collapsible content sections
- `alert` - Contextual feedback messages
- `alert-dialog` - Modal dialogs for interruptions
- `avatar` - User profile images
- `badge` - Status indicators
- `button` - Interactive buttons
- `calendar` - Date picker
- `card` - Content containers
- `checkbox` - Binary input
- `combobox` - Searchable select
- `command` - Command palette (Cmd+K)
- `context-menu` - Right-click menu
- `dialog` - Modal overlay
- `dropdown-menu` - Dropdown actions
- `form` - Form with validation (React Hook Form + Zod)
- `hover-card` - Tooltip on hover
- `input` - Text input
- `label` - Form labels
- `menubar` - Horizontal menu
- `navigation-menu` - Site navigation
- `popover` - Floating content
- `progress` - Progress indicator
- `radio-group` - Single selection
- `scroll-area` - Custom scrollbar
- `select` - Dropdown select
- `separator` - Visual divider
- `sheet` - Slide-over panel
- `skeleton` - Loading placeholder
- `slider` - Range input
- `switch` - Toggle switch
- `table` - Data table
- `tabs` - Tab navigation
- `textarea` - Multiline input
- `toast` - Notification
- `toggle` - Toggle button
- `tooltip` - Hover tooltip

## Install Components
```bash
npx shadcn@latest add button
npx shadcn@latest add dialog
npx shadcn@latest add form
# Adds to components/ui/
```

## Radix Primitives
| Primitive | Use Case |
|-----------|----------|
| `@radix-ui/react-accordion` | Accordion |
| `@radix-ui/react-alert-dialog` | Alert modals |
| `@radix-ui/react-dialog` | Dialogs |
| `@radix-ui/react-dropdown-menu` | Dropdowns |
| `@radix-ui/react-popover` | Popovers |
| `@radix-ui/react-select` | Select inputs |
| `@radix-ui/react-tabs` | Tabs |
| `@radix-ui/react-tooltip` | Tooltips |

## Tailwind Utilities
```ts
// Layout
'flex items-center justify-between'
'grid grid-cols-3 gap-4'
'container mx-auto px-4'

// Spacing
'p-4 m-2' // padding, margin
'space-x-2 space-y-4' // gap between children

// Typography
'text-lg font-bold text-gray-900'
'leading-tight tracking-wide'

// Colors
'bg-blue-500 text-white'
'hover:bg-blue-600'
'dark:bg-gray-800'

// Borders
'border border-gray-300 rounded-lg'
'ring-2 ring-blue-500'

// Effects
'shadow-md hover:shadow-lg'
'transition-all duration-200'
'opacity-50 hover:opacity-100'
```

## Form Pattern with Zod
```tsx
import { useForm } from 'react-hook-form'
import { zodResolver } from '@hookform/resolvers/zod'
import * as z from 'zod'

const schema = z.object({
  email: z.string().email(),
  password: z.string().min(8)
})

function Form() {
  const form = useForm({
    resolver: zodResolver(schema)
  })

  return (
    <Form {...form}>
      <FormField
        control={form.control}
        name="email"
        render={({ field }) => (
          <FormItem>
            <FormLabel>Email</FormLabel>
            <FormControl>
              <Input {...field} />
            </FormControl>
            <FormMessage />
          </FormItem>
        )}
      />
    </Form>
  )
}
```

## Theme Config
```ts
// tailwind.config.ts
export default {
  darkMode: ['class'],
  content: ['./app/**/*.{ts,tsx}'],
  theme: {
    extend: {
      colors: {
        border: 'hsl(var(--border))',
        primary: 'hsl(var(--primary))',
        // ... custom colors
      }
    }
  }
}
```

## Docs
- https://ui.shadcn.com
- https://radix-ui.com
- https://tailwindcss.com/docs
