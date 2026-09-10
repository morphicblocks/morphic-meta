#!/usr/bin/env bash
#
# Renders the Open Graph social cards from card.svg, one per site. The design
# lives in a single template; only the domain line differs.
#
#   ./render.sh <output-dir>
#
# Each rendered PNG belongs in that site's own repo, served from its own domain:
#
#   landing.png     ->  morphicblocks.com/public/og.png
#   docs.png        ->  docs/public/og.png
#   playground.png  ->  playground/gallery/public/og.png
#
# Requires rsvg-convert (brew install librsvg). PNG, not SVG: social media
# crawlers do not render SVG.
set -euo pipefail

out="${1:?usage: ./render.sh <output-dir>}"
here="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$out"

render() { # <name> <domain>
	sed "s|{{DOMAIN}}|$2|g" "$here/card.svg" |
		rsvg-convert -w 1200 -h 630 -o "$out/$1.png"
	echo "  $out/$1.png  ($2)"
}

render landing morphicblocks.com
render docs docs.morphicblocks.com
render playground playground.morphicblocks.com
