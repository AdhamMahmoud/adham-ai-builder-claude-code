# React 19 Patterns

## Core Hooks
| Hook | Use Case |
|------|----------|
| `useState` | Local state |
| `useEffect` | Side effects, lifecycle |
| `useRef` | DOM refs, mutable values |
| `useCallback` | Memoize functions |
| `useMemo` | Memoize values |
| `useContext` | Consume context |
| `useReducer` | Complex state logic |
| `useTransition` | Non-blocking updates |
| `useDeferredValue` | Defer expensive renders |

## Server Components
```tsx
// Default in Next.js App Router
async function ServerComponent() {
  const data = await db.query()
  return <div>{data}</div>
}
```

## Client Components
```tsx
'use client'
function ClientComponent() {
  const [state, setState] = useState()
  return <button onClick={() => setState()}>Click</button>
}
```

## Suspense Patterns
```tsx
<Suspense fallback={<Loading />}>
  <AsyncComponent />
</Suspense>
```

## Error Boundaries
```tsx
<ErrorBoundary fallback={<Error />}>
  <Component />
</ErrorBoundary>
```

## Form Actions (React 19)
```tsx
<form action={serverAction}>
  <input name="title" />
  <button type="submit">Submit</button>
</form>
```

## useOptimistic (React 19)
```tsx
const [optimisticState, setOptimisticState] = useOptimistic(state)
// Instant UI updates before server confirmation
```

## Context Pattern
```tsx
const Context = createContext<Type>()

export function Provider({ children }) {
  return <Context.Provider value={value}>{children}</Context.Provider>
}

export function useMyContext() {
  return useContext(Context)
}
```

## Compound Components
```tsx
<Tabs>
  <TabList>
    <Tab>One</Tab>
    <Tab>Two</Tab>
  </TabList>
  <TabPanels>
    <TabPanel>Content 1</TabPanel>
    <TabPanel>Content 2</TabPanel>
  </TabPanels>
</Tabs>
```

## Render Props
```tsx
<DataProvider render={(data) => <Display data={data} />} />
```

## Custom Hooks Pattern
```tsx
function useCustomHook() {
  const [state, setState] = useState()
  useEffect(() => { ... })
  return { state, actions }
}
```

## Docs
- https://react.dev
