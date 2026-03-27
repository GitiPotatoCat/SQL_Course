## Core Querying 


### __LIKE__ - Pattern matching 
`LIKE` is for partial text matches. SQL Server uses these wildcards: 

| Wildcard / Pattern | Meaning | Example |
|--------------------|---------|----------|
| `%` | Matches **any sequence** of characters (0 or more) | `'A%'` → starts with **A** |
| `_` | Matches **exactly one** character | `'A_'` → A + **one character** |
| `[abc]` | Matches **one character** from the list | `'B[aeiou]g'` → Bag, Beg, Big, etc. |
| `[A-Z]` | Matches **one character** from range | `'[A-M]%'` → starts with A–M |
| `[^abc]` | Matches **one character NOT** in the list | `'[^A]%'` → does **not** start with A |
| `[^A-Z]` | Matches **one character NOT in range** | `'[^0-9]%'` → does **not** start with a digit |
| `ESCAPE` | Treats wildcards as **literal characters** | `LIKE '%!_%' ESCAPE '!'` → matches literal underscore `_` |