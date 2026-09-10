# morphic-meta

Brand assets and shared metadata for **Morphic Blocks** — logos, colors, design
tokens, and other cross-repo resources.

## Contents

- `brand/logos/` holds the logo (`logo.svg`, `logo.png`) and `favicon.svg`.
  Each site keeps its own copy; this folder is the source of truth.
- `brand/og/` holds the Open Graph social card used for link previews.
  `card.svg` is the single template and `render.sh` renders one PNG per site,
  differing only in the domain line:

  ```sh
  ./brand/og/render.sh /tmp/og
  ```

  Each rendered PNG belongs in that site's own repo as `public/og.png`, so it
  is served from that site's domain. PNG rather than SVG, because social media
  crawlers do not render SVG.

## License

© 2026 Gottfried Wilhelm Leibniz Universität Hannover. All rights reserved.

The **Morphic Blocks** name and logo are trademarks of Gottfried Wilhelm Leibniz
Universität Hannover and are not covered by the code licenses. These brand
assets are not open-licensed.
