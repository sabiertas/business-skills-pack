---
name: business-quarterly
description: >-
  Planificacion trimestral contra objetivos de negocio. Revisa cada stream (progreso, ingresos, decision continuar/pausar/matar), define OKRs y asigna recursos.
  Usa cuando el usuario mencione revision trimestral, quarterly review, planificacion trimestral, OKRs, objetivos del trimestre, quarterly planning, o trimestre.
argument-hint: "[trimestre, ej: Q2-2026]"
---

# Planificacion Trimestral

Revision estrategica de trimestre para fundador solo o micro-equipo. Evalua cada stream de negocio, fija OKRs realistas (maximo 3 objetivos) y decide donde poner tiempo, dinero y energia los proximos 90 dias.

**IDIOMA: Todo el contenido generado debe estar en espanol de Espana.**

## Cuando activar

- Ultimo viernes del trimestre o primera semana del nuevo
- Cuando el usuario necesite decidir que priorizar los proximos 3 meses
- Tras un cambio significativo en el negocio (perdida de cliente grande, nuevo producto, cambio de runway)
- Invocacion directa: "revision trimestral", "quarterly", "OKRs", "planificar el trimestre"

## Proceso paso a paso

### Paso 1: Cargar contexto y datos

1. Lee `~/.claude/business-context.md` — streams, prioridades, runway, situacion actual
2. Lee las revisiones semanales del trimestre en `~/.claude/memory/business/weekly-reviews/`
   - Si hay 12+ revisiones: leer las ultimas 13 (un trimestre)
   - Si hay menos: leer todas las disponibles
3. Lee el plan trimestral anterior en `~/.claude/memory/business/quarterly-plans/` si existe
4. Lee `~/.claude/projects-registry.json` para la lista completa de proyectos

### Paso 2: Evaluar cada stream de negocio

Para cada stream declarado en business-context.md, construir una ficha:

```
### Stream: {nombre}

**Estado**: Activo / En pausa / En construccion
**Ingresos este trimestre**: {real o estimado}
**Ingresos trimestre anterior**: {si hay datos}
**Tendencia**: Creciendo / Estable / Decreciendo / Sin datos
**Horas invertidas**: {estimacion basada en sesiones de trabajo}
**ROI subjetivo**: Alto / Medio / Bajo / Negativo

**Que funciono**:
- ...

**Que no funciono**:
- ...

**Decision**: Continuar / Escalar / Pausar / Matar
**Justificacion**: una frase
```

**Criterios de decision**:
- **Continuar**: genera ingresos o tiene traccion clara, ROI positivo
- **Escalar**: funciona y hay capacidad para invertir mas
- **Pausar**: potencial pero ahora mismo consume tiempo sin retorno. Retomar cuando haya margen
- **Matar**: no genera valor, no tiene futuro realista, consume energia. Cerrar con dignidad

**Regla del fundador solo**: Si tienes mas de 3 streams activos simultaneamente, algo esta mal. Dos es ideal, tres es el maximo sostenible.

### Paso 3: Definir OKRs del trimestre

Maximo 3 objetivos. Cada uno con maximo 3 resultados clave medibles.

**Formato**:
```
## OKR 1: {Objetivo cualitativo, inspirador pero concreto}

- KR1: {Metrica especifica con numero objetivo}
- KR2: {Metrica especifica con numero objetivo}
- KR3: {Metrica especifica con numero objetivo}

Stream principal: {stream asociado}
Riesgo: {que podria impedir lograrlo}
```

**Reglas para OKRs de fundador solo**:
- No poner objetivos que requieran un equipo que no tienes
- Cada KR debe ser medible por ti mismo (sin depender de herramientas que no usas)
- Al menos 1 OKR debe estar directamente ligado a ingresos
- Los OKRs de "construccion" (producto, contenido) solo si el runway lo permite
- Si el runway es <3 meses, el OKR #1 SIEMPRE es sobre ingresos/supervivencia

### Paso 4: Asignacion de recursos

Para un fundador solo, los recursos son: **tiempo**, **dinero** y **energia mental**.

```
## Asignacion de recursos — Q{X} {ano}

| Stream | % Tiempo | Presupuesto | Energia (Alta/Media/Baja) |
|--------|----------|-------------|--------------------------|
| ... | ... | ... | ... |
| TOTAL | 100% | ... | — |

### Notas:
- Maximo 2 streams con >25% del tiempo
- "Energia" = motivacion + carga cognitiva. Un stream con alta energia es sostenible; uno con baja energia te quema aunque sea rentable
- Si un stream consume >40% del tiempo y genera <20% de los ingresos, hay un problema
```

### Paso 5: Comparar con trimestre anterior

Si existe plan trimestral anterior:

1. Revisar cada OKR del trimestre pasado:
   - Conseguido / Parcialmente / No conseguido
   - Por que si o por que no
2. Decisiones que se tomaron bien vs mal
3. Que se habria hecho diferente con la informacion de hoy

Si no existe plan anterior: omitir y anotar "primer plan trimestral"

### Paso 6: Generar documento

Crear archivo `~/.claude/memory/business/quarterly-plans/QUARTERLY-PLAN-{YYYY}-Q{X}.md` con:

```markdown
# Plan Trimestral — Q{X} {ano}

> Creado: {fecha}
> Periodo: {mes inicio} — {mes fin} {ano}
> Runway al inicio del trimestre: {X meses}

## Resumen ejecutivo

{3-5 lineas: situacion actual, decision principal del trimestre, resultado esperado}

## Evaluacion de streams

{fichas del Paso 2 para cada stream}

## OKRs del trimestre

{OKRs del Paso 3}

## Asignacion de recursos

{tabla del Paso 4}

## Revision del trimestre anterior

{comparacion del Paso 5, si aplica}

## Riesgos y mitigaciones

| Riesgo | Probabilidad | Impacto | Mitigacion |
|--------|-------------|---------|------------|
| ... | Alta/Media/Baja | ... | ... |

## Decisiones pendientes

{lista de decisiones que hay que tomar este trimestre, con fecha limite}
```

### Paso 7: Accion concreta siguiente

Despues de generar el plan, SIEMPRE proponer:

1. **Las 3 acciones de la primera semana del trimestre** — concretas, con stream y tiempo
2. **La decision mas urgente** que hay que tomar (de la lista de decisiones pendientes)
3. **Un stream a pausar o reducir** si hay sobrecarga (>3 streams activos)

Ejemplo: "Esta primera semana, dedica lunes y martes a [stream prioritario], miercoles a cerrar [decision pendiente], y jueves-viernes a [segundo stream]. El fin de semana no trabajes en [stream a pausar]."

## Reglas

- No poner mas de 3 OKRs. Si el usuario insiste en mas, explicar por que es contraproducente para un fundador solo
- No copiar frameworks enterprise (Scaling Up, EOS) literalmente — adaptar a la escala real
- Los numeros importan: si no hay datos de ingresos, pedirlos al usuario o estimar con rango
- Ser honesto sobre streams que no funcionan — mejor matar a tiempo que arrastrar
- Si el runway es critico, el tono debe ser de urgencia (sin dramatismo, pero claro)

## Integracion

| Cuando... | Conecta con... | Para... |
|-----------|---------------|---------|
| Hay preguntas financieras | business-cfo | Proyecciones de cashflow por stream |
| Hay que decidir sobre equipo | business-hr | Analisis de contratar vs automatizar |
| Clientes afectan la decision | business-client | Health scoring para priorizar |
| Falta foco | business-coach | Coaching de prioridades |
| Datos semanales insuficientes | business-weekly | Generar revisiones pendientes primero |

<!-- Source: built-in (base: alirezarezvani/claude-skills) -->
