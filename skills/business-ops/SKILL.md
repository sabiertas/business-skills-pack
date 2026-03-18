---
name: "business-ops"
description: "Revision operativa para negocio unipersonal. Analisis de procesos, automatizacion vs manual, capacidad del fundador, herramientas, flujos de trabajo. Referencia Board 43 (Auto vs Manual). Usa cuando el usuario mencione operaciones, procesos, automatizacion, herramientas, capacidad, workflow, eficiencia, tooling, o invoque /business ops."
argument-hint: "[capacity | sin argumento = revision completa]"
---

# Business Ops — Operaciones para Fundador Solo

Revision operativa adaptada a un negocio de 1-3 personas. No hay departamentos, no hay org chart, no hay COO. El fundador ES las operaciones. El objetivo: identificar que se puede automatizar, sistematizar o eliminar para liberar capacidad del fundador.

**IDIOMA: Todo en espanol de Espana.**

## Contexto Obligatorio

**ANTES de cada revision:**
1. Leer `~/.claude/business-context.md` para conocer streams, herramientas y restricciones
2. Tener presente el stack de herramientas: Fluent Boards, FluentCRM, Claude Code, n8n, GitHub, Obsidian
3. Referencia: Board 43 "Control del Negocio" usa labels Auto (581) vs Manual (582) para clasificar tareas

## 1. Revision Operativa Completa

Comando: `/business ops` (sin argumentos)

### Areas a Revisar

#### A. Mapa de Procesos

Identificar los procesos recurrentes del negocio y clasificarlos:

| Proceso | Frecuencia | Tiempo | Automatizado | Documentado | Estado |
|---------|-----------|--------|--------------|-------------|--------|
| [Proceso] | [Diario/Semanal/Mensual] | [X min/h] | [Si/No/Parcial] | [Si/No] | [OK/Mejorable/Critico] |

**Procesos tipicos a mapear:**
- Captacion de clientes (outreach, seguimiento, propuestas)
- Onboarding de proyecto nuevo
- Desarrollo y entrega de proyecto
- Facturacion y cobro
- Soporte y mantenimiento
- Publicacion de contenido (LinkedIn, comunidad)
- Deploy de codigo
- Backup y seguridad
- Sync de tareas entre herramientas
- Gestion de emails

#### B. Automatizacion vs Manual

Para cada proceso, evaluar:

| Criterio | Automatizar SI... | Mantener manual SI... |
|----------|-------------------|----------------------|
| Frecuencia | Se repite > 3 veces/semana | Ocurre < 1 vez/mes |
| Complejidad | Pasos predecibles, reglas claras | Requiere juicio humano cada vez |
| Coste de error | Error tiene bajo impacto | Error puede perder un cliente |
| Tiempo de setup | < 2 horas para automatizar | > 1 dia y uso infrecuente |

**Herramientas de automatizacion disponibles:**
- **n8n**: Workflows complejos, integraciones entre servicios
- **Claude Code scheduled tasks**: Tareas de codigo y analisis periodicas
- **WP Cron / FluentCRM automations**: Dentro del ecosistema WordPress
- **GitHub Actions**: CI/CD, deploys automaticos
- **Scripts bash**: Tareas simples de sistema (rsync, backups)

#### C. Revision de Herramientas

Para cada herramienta en el stack:

| Herramienta | Coste/mes | Uso real | Alternativa mas barata | Veredicto |
|-------------|----------|---------|----------------------|-----------|
| [Herramienta] | [X EUR] | [Alto/Medio/Bajo] | [Si existe] | [Mantener/Evaluar/Cancelar] |

**Regla**: Si una herramienta no se usa al menos 3 veces por semana, cuestionar si es necesaria.

#### D. Cuellos de Botella Operativos

Identificar los 3 principales cuellos de botella:

1. **Cuello de botella del fundador**: Tareas que solo el puede hacer y que bloquean a otros (o a si mismo)
2. **Cuello de botella de proceso**: Pasos que ralentizan todo el flujo
3. **Cuello de botella de herramienta**: Limitaciones de las herramientas actuales

### Output: OPS-REVIEW.md

```markdown
# Revision Operativa — [Fecha]

## Resumen Ejecutivo
- Procesos mapeados: X
- Automatizados: X (XX%)
- Documentados: X (XX%)
- Tiempo semanal en tareas repetitivas: ~X horas
- Ahorro potencial con automatizacion: ~X horas/semana

## Mapa de Procesos
[Tabla completa]

## Top 3 Oportunidades de Automatizacion
1. [Proceso] — Ahorro estimado: X h/semana — Herramienta: [cual] — Esfuerzo: [X horas]
2. [Proceso] — ...
3. [Proceso] — ...

## Top 3 Cuellos de Botella
1. [Descripcion + impacto + solucion propuesta]
2. ...
3. ...

## Revision de Herramientas
[Tabla con veredicto]

## Estado Board 43
- Tasks marcadas Auto (581): X
- Tasks marcadas Manual (582): X
- Ratio Auto/Manual: XX%
- Objetivo: aumentar ratio Auto progresivamente

## Plan de Accion
1. [Accion + responsable + plazo + impacto]
2. [Accion + responsable + plazo + impacto]
3. [Accion + responsable + plazo + impacto]

**PROXIMA ACCION CONCRETA**: [La automatizacion con mejor ratio impacto/esfuerzo]
```

## 2. Planificacion de Capacidad Semanal

Comando: `/business ops capacity`

El fundador tiene ~40 horas utiles por semana (siendo realista, 30-35 de trabajo efectivo). Distribuir entre streams y tipos de trabajo.

### Framework de Capacidad

**Horas disponibles por semana**: 35 (ajustar segun realidad del fundador)

**Distribucion por tipo de trabajo:**

| Tipo | Descripcion | % Recomendado | Horas |
|------|-------------|---------------|-------|
| **Ejecucion** | Codigo, diseno, entregables de cliente | 50% | 17-18h |
| **Gestion** | Emails, facturacion, admin, seguimiento | 15% | 5h |
| **Estrategia** | Planificacion, decisiones, pensar | 15% | 5h |
| **Captacion** | Outreach, contenido, ventas | 15% | 5h |
| **Recuperacion** | Sin pantalla, descanso mental | 5% | 2h |

**Distribucion por stream** (ajustar segun prioridades del mes):

Leer `~/.claude/business-context.md` para las prioridades actuales y asignar horas proporcionalmente.

**Regla de runway:**
- Runway > 6 meses: distribucion normal
- Runway 3-6 meses: 70% a streams con revenue inmediato
- Runway < 3 meses: 90% a streams con revenue inmediato

### Output en terminal

```
=== CAPACIDAD SEMANAL ===

Horas disponibles: 35h
Runway actual: X meses
Modo: [Normal / Alerta / Emergencia]

Distribucion recomendada:

Stream          | Horas | Tipo principal      | Prioridad
----------------|-------|--------------------|---------
EdinumenUSA     | XXh   | Ejecucion (cliente) | Maxima
SA Captacion    | Xh    | Captacion           | Alta
BricksShift     | Xh    | Ejecucion (producto)| Alta
Mantenimiento   | Xh    | Gestion + captacion | Media
Admin general   | Xh    | Gestion             | Base
Estrategia/foco | Xh    | Estrategia          | Proteger

Alertas:
- [Si alguna asignacion supera capacidad]
- [Si falta tiempo para estrategia]

**PROXIMA ACCION CONCRETA**: [Bloquear las horas en el calendario]
```

## Madurez Operativa

Escala adaptada a negocio unipersonal:

| Nivel | Nombre | Descripcion |
|-------|--------|-------------|
| 1 | **Caos** | Todo en la cabeza del fundador, nada documentado, nada automatizado |
| 2 | **Documentado** | Procesos escritos pero ejecucion manual |
| 3 | **Parcialmente automatizado** | Los procesos mas repetitivos tienen automatizacion |
| 4 | **Sistematizado** | La mayoria de procesos son automaticos o delegados, el fundador solo decide |
| 5 | **Autonomo** | El negocio puede funcionar 1 semana sin el fundador |

**Objetivo realista**: Pasar de nivel 1-2 a nivel 3. Nivel 5 es aspiracional para un negocio unipersonal.

## Preguntas Clave

- "¿Que hiciste esta semana que hiciste identico la semana pasada?"
- "¿Que informacion tienes solo en tu cabeza que, si te pones enfermo, se pierde?"
- "¿Cuantas herramientas abres cada manana? ¿Podrian ser menos?"
- "¿Que proceso te da mas pereza? Ese es el candidato a automatizar."
- "¿El Board 43 refleja la realidad o hay tasks fantasma?"

<!-- Source: built-in (base: alirezarezvani/claude-skills) -->
