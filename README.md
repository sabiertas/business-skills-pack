# Business Skills Pack for Claude Code

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude_Code-compatible-blue)](https://claude.ai/claude-code)
[![OpenCode](https://img.shields.io/badge/OpenCode-compatible-blue)](https://github.com/opencode-ai/opencode)
[![Skills](https://img.shields.io/badge/skills-11-orange)]()

Suite of 11 business management skills for [Claude Code](https://claude.ai/claude-code) and [OpenCode](https://github.com/opencode-ai/opencode).
Designed for **solo founders, freelancers, and small digital agencies** — not enterprise.

No APIs. No dependencies. Just markdown skills that make Claude your business advisor.

---

## What's included

| Skill | Command | What it does |
|-------|---------|--------------|
| `business` | `/business` | Orchestrator — routes to sub-skills |
| `business-coach` | `/business coach` | Strategic coaching: focus, energy, delegation, bottlenecks |
| `business-cfo` | `/business cfo` | Finance: cashflow, runway, unit economics, pricing |
| `business-client` | `/business client` | Client health scoring (5 dimensions, traffic light system) |
| `business-council` | `/business council` | Multi-perspective advisory (CFO/CPO/CMO/CTO hats) |
| `business-decide` | `/business decide [topic]` | Structured decision framework with scoring and scenarios |
| `business-hr` | `/business hr` | Hire vs outsource vs automate — for micro-teams |
| `business-ops` | `/business ops` | Processes, automation, capacity planning |
| `business-quarterly` | `/business quarterly` | Quarterly planning + OKRs |
| `business-weekly` | `/business weekly` | Weekly operational review |
| `pricing-strategy` | `/pricing-strategy` | Pricing tiers, packaging, Van Westendorp |

## Quick start

```bash
git clone https://github.com/sabiertas/business-skills-pack.git
cd business-skills-pack
bash install.sh
```

The installer auto-detects Claude Code (`~/.claude/`) or OpenCode (`~/.opencode/`) and copies the skills. It won't overwrite existing skills.

You can also install manually:

```bash
cp -r skills/* ~/.claude/skills/
```

## Usage

Just type naturally — Claude will activate the right skill:

```
"I need to review my finances"         → activates business-cfo
"Should I hire or outsource?"          → activates business-hr
"Help me decide between X and Y"      → activates business-decide
"Let's do the weekly review"           → activates business-weekly
"How are my clients doing?"            → activates business-client
```

Or invoke directly:

```
/business coach
/business cfo
/business decide "Should I launch now or wait for more features?"
/business council
/business weekly
```

## Configuration (optional but recommended)

The skills read `~/.claude/business-context.md` to personalize the analysis. Create this file with your business info:

```markdown
# Business Context

## Active business streams
| Stream | Type | Status | Priority |
|--------|------|--------|----------|
| My Agency | Services | Active | High |
| My Product | SaaS | In development | Medium |

## Current priorities
1. Close project X
2. Launch product Y

## Financial situation
- Runway: X months
- Monthly revenue: X€
- Fixed costs: X€
```

Without this file, the skills still work — they'll just ask you for context during the session.

## How it works

Each skill is a `SKILL.md` file with YAML frontmatter and structured instructions that Claude follows. No code, no APIs, no runtime — just well-crafted prompts.

```
skills/
├── business/              # Orchestrator (routes commands)
├── business-coach/        # Coaching skill
├── business-cfo/          # Finance skill
├── business-client/       # Client health skill
├── business-council/      # Multi-perspective advisory
├── business-decide/       # Decision framework
├── business-hr/           # Team decisions
├── business-ops/          # Operations review
├── business-quarterly/    # Quarterly planning
├── business-weekly/       # Weekly review
└── pricing-strategy/      # Pricing & packaging
```

The skills also create persistent memory in `~/.claude/memory/business/`:
- `decisions.md` — decision log (from `/business decide`)
- `weekly-reviews/` — weekly review archive
- `quarterly-plans/` — quarterly plans

## Design principles

- **No corporate jargon** — outputs are actionable, not PowerPoint-ready
- **Solo founder scale** — "streams" not "departments", real constraints not infinite resources
- **Always ends with a next action** — every skill output ends with a concrete step
- **Spanish output by default** — change the language instruction in each SKILL.md if needed
- **Context-aware** — reads your business context file for personalized analysis

## Requirements

- [Claude Code](https://claude.ai/claude-code) or [OpenCode](https://github.com/opencode-ai/opencode)
- No external APIs, no dependencies, no build step

## Contributing

PRs welcome. Each skill follows the format in `SKILL.md`:

```yaml
---
name: "skill-name"
description: "When to activate and what it does"
argument-hint: "[args]"
---

# Skill instructions in markdown...
```

## License

MIT — Use, modify, and share freely.

Partially based on [alirezarezvani/claude-skills](https://github.com/alirezarezvani/claude-skills) (MIT).

---

Made with Claude Code by [@sabiertas](https://github.com/sabiertas)
