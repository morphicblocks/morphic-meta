# Palette

The colors of record for Morphic Blocks. Each site keeps its own design tokens
and is not expected to match the others exactly; only the two brand colors
below are fixed.

## Brand

| Role | Hex | Used for |
| --- | --- | --- |
| Primary | `#00509b` | Logo body, links, buttons, headings on light backgrounds |
| Secondary | `#55bdcb` | Accents, rules, the logo's inner mark |

Both come from the Leibniz University Hannover corporate identity: `#00509b` is
the university primary, `#55bdcb` the color of the Fachgebiet Didaktik der
Elektrotechnik und Informatik.

## Leibniz University Hannover corporate identity

Reference only, for cases that call for strict compliance.
Source: <https://www.corporate.uni-hannover.de/die-marke/farben>

| Role | Hex |
| --- | --- |
| Primary | `#00509b`, `#c8d317` |
| Secondary | `#99b9d8`, `#dee574` |
| Typography | `#000000`, `#666666`, `#b2b2b2`, `#e5e5e5` |
| Department | `#55bdcb` |

The greens are reserved for explicit branding moments and are currently unused.

## How the sites use this

Each site copies `tokens.css` in and maps these two colors onto its own
semantic tokens:

```css
--accent: var(--brand-primary);
```

Everything else (backgrounds, borders, text, radii) belongs to the site that
defines it and is allowed to differ. The docs site differs only in naming: it
maps the same two values onto Starlight's `--sl-*` custom properties.

They are copied rather than published as a package. Only two values are shared,
so a versioned dependency would cost more than it saves; revisit that if the
shared surface grows.

The neutrals on morphicblocks.com are blue-tinted rather than the corporate
grays above. That is a deliberate house style, not an oversight.
