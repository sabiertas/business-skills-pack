# Business Skills Pack for Claude Code

Suite de 11 skills de gestión de negocio para Claude Code (y OpenCode).
Diseñados para fundadores solo, freelancers y pequeñas agencias digitales.

## Qué incluye

| Skill | Comando | Qué hace |
|-------|---------|----------|
| `business` | `/business` | Orquestador — enruta a los sub-skills |
| `business-coach` | `/business coach` | Coaching: foco, energía, delegación, bottlenecks |
| `business-cfo` | `/business cfo` | Finanzas: cashflow, runway, unit economics, pricing |
| `business-client` | `/business client` | Scoring de salud de clientes (5 dimensiones) |
| `business-council` | `/business council` | Consejo multi-perspectiva (CFO/CPO/CMO/CTO) |
| `business-decide` | `/business decide [tema]` | Framework de decisión con scoring y escenarios |
| `business-hr` | `/business hr` | Contratar vs externalizar vs automatizar |
| `business-ops` | `/business ops` | Procesos, automatización, capacidad |
| `business-quarterly` | `/business quarterly` | Planificación trimestral + OKRs |
| `business-weekly` | `/business weekly` | Revisión operativa semanal |
| `pricing-strategy` | `/pricing-strategy` | Pricing, tiers, packaging (Van Westendorp, etc.) |

## Instalación

### Opción A: Script automático (recomendado)

```bash
bash install.sh
```

### Opción B: Manual

Copia la carpeta `skills/` a tu directorio de Claude Code:

```bash
cp -r skills/* ~/.claude/skills/
```

Para OpenCode, copia a `.opencode/skills/` en su lugar.

## Configuración (opcional pero recomendada)

Los skills de negocio leen automáticamente un archivo de contexto para personalizar el análisis a tu situación. Crea este archivo:

```bash
touch ~/.claude/business-context.md
```

Y rellénalo con la información de tu negocio:

```markdown
# Business Context

## Streams de negocio activos
| Stream | Tipo | Estado | Prioridad |
|--------|------|--------|-----------|
| Mi Agencia | Servicios | Activo | Alta |
| Mi Producto | SaaS | En desarrollo | Media |

## Prioridades actuales
1. Cerrar proyecto X
2. Lanzar producto Y

## Situación financiera
- Runway: X meses
- Ingresos mensuales: X€
- Gastos fijos: X€
```

Los skills también crean memoria persistente en `~/.claude/memory/business/`:
- `decisions.md` — log de decisiones
- `weekly-reviews/` — archivo de revisiones semanales
- `quarterly-plans/` — planes trimestrales

Estos directorios se crean automáticamente la primera vez que usas los skills.

## Uso rápido

```
# Coaching estratégico
/business coach

# Revisión financiera
/business cfo

# Decisión difícil
/business decide "¿Debería lanzar el producto ahora o esperar a tener más features?"

# Revisión semanal (ideal para viernes o lunes)
/business weekly

# Evaluar clientes
/business client

# Consejo multi-perspectiva
/business council
```

## Requisitos

- Claude Code o OpenCode instalado
- No requiere APIs externas ni dependencias

## Licencia

MIT — Usa, modifica y comparte libremente.
Basado parcialmente en [alirezarezvani/claude-skills](https://github.com/alirezarezvani/claude-skills) (MIT).
