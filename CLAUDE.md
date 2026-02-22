# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an MkDocs documentation site ("Experiments with AI Code Assistant") deployed to GitHub Pages. It documents AI-assisted development practices through a series of experiments — from legacy Spring Boot app migration to building new apps with structured AI workflows (prompts, SpecKit, Skills, AGENT.md).

## Commands

```bash
# Step 1: Preview locally with live reload (http://127.0.0.1:8000)
./docs.sh serve

# Step 2: Build site and copy to GH Pages repo
./docs.sh publish

# Step 3: Commit and push GH Pages repo (optional custom message)
./docs.sh commit
./docs.sh commit -m "describe changes"
```

Package management uses `uv` (not pip). To sync dependencies: `uv sync`.

## Architecture

- **Site generator**: MkDocs with `mkdocs-material` theme
- **Configuration**: `mkdocs.yml` — defines navigation, theme, markdown extensions, and plugins
- **Content**: All documentation lives in `docs/` as Markdown files
- **Build output**: `site/` (gitignored)
- **Publishing**: `docs.sh` builds site and copies to a sibling `amitrajpurkar.github.io` repo for GitHub Pages deployment

## Content Organization

- `docs/index.md` — main landing page
- `docs/experiment01/` — Legacy Spring Boot app migration (largest section, 30+ docs)
- `docs/experiment02/` through `docs/experiment05/` — Weather and Q&A app experiments
- `docs/06restaurants/`, `docs/07geoemerge/` — EDA experiments
- `docs/quick-start/` — Quick reference guides for specific technologies
- `docs/stylesheets/extra.css` — Custom CSS overrides

## Markdown Conventions

The site uses extensive `pymdownx` extensions. When writing docs, these are available:
- Mermaid diagrams via fenced code blocks (` ```mermaid `)
- Admonitions (`!!! note`, `!!! warning`, etc.)
- Tabbed content (`=== "Tab 1"`)
- Task lists (`- [x] done`)
- Code blocks with syntax highlighting and copy buttons
- Math via `pymdownx.arithmatex`

## Key Files

- `mkdocs.yml` — Primary config; navigation structure must be updated here when adding pages
- `pyproject.toml` — Python project metadata (minimal; deps are mkdocs + material + pymdown-extensions)
- `docs.sh` — Three-step documentation workflow (serve, publish, commit)
- `vercel.json` — Alternate Vercel deployment config (currently using GitHub Pages instead)
