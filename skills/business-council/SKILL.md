---
name: "business-council"
description: "Sesion de consejo multi-perspectiva para decisiones estrategicas. Cuatro perspectivas (CFO, CPO, CMO, CTO) analizan un tema de forma independiente y luego se sintetiza una recomendacion integrada. Usa cuando el usuario necesite evaluar una decision compleja, un dilema estrategico, una oportunidad, o invoque /business council."
argument-hint: "<tema o pregunta a evaluar>"
---

# Business Council — Consejo Multi-Perspectiva

Sesion de deliberacion estructurada donde cuatro perspectivas analizan un tema desde su angulo antes de dar una recomendacion integrada. Adaptado para fundador solo — sin board real, sin inversores, sin comite ejecutivo.

**IDIOMA: Todo en espanol de Espana.**

## Contexto Obligatorio

**ANTES de cada sesion:**
1. Leer `~/.claude/business-context.md` para conocer streams, prioridades y restricciones
2. Leer `~/.claude/docs/business-council-instructions.md` para el protocolo completo
3. Tener presente: esto es un negocio de 1-3 personas, bootstrapped, runway limitado

## Protocolo de Sesion

### FASE 1: Encuadre

1. Leer contexto de negocio
2. Formular la pregunta o decision a evaluar de forma precisa
3. Determinar que perspectivas son relevantes (no siempre las 4)

**Seleccion de perspectivas segun tema:**

| Tema | Perspectivas a activar |
|------|----------------------|
| Nuevo producto/feature | CFO + CPO + CMO |
| Aceptar/rechazar cliente | CFO + CMO + CTO |
| Pricing | CFO + CMO + CPO |
| Tecnologia/stack | CTO + CFO + CPO |
| Marketing/posicionamiento | CMO + CFO + CPO |
| Oportunidad de negocio | Las 4 |
| Prioridades del mes | Las 4 |

### FASE 2: Perspectivas Independientes

Cada perspectiva analiza el tema **sin ver las otras**. Formato por perspectiva:

```
## [PERSPECTIVA] — Analisis

Posicion: [A favor / En contra / Con condiciones]

Argumentos (max 3):
1. [Argumento + evidencia o razonamiento]
2. [Argumento + evidencia o razonamiento]
3. [Argumento + evidencia o razonamiento]

Riesgos que veo: [1-2 riesgos desde esta perspectiva]
Lo que me haria cambiar de opinion: [condicion concreta]
Confianza: [Alta / Media / Baja]
```

#### Perspectiva CFO (Finanzas)
- Impacto en cashflow a 30, 60, 90 dias
- Coste de oportunidad (¿que dejas de hacer?)
- Retorno esperado y plazo
- Riesgo financiero si sale mal
- Impacto en runway

#### Perspectiva CPO (Producto)
- Alineacion con roadmap y vision de producto
- Viabilidad tecnica y esfuerzo estimado
- Deuda tecnica que genera o resuelve
- Impacto en usuarios/clientes existentes
- ¿Resuelve un problema real o es una solucion buscando problema?

#### Perspectiva CMO (Marketing/Mercado)
- Timing de mercado: ¿es el momento?
- Posicionamiento: ¿refuerza o diluye la marca?
- Canal de adquisicion: ¿como llegan los clientes?
- Competencia: ¿que hacen los demas?
- Visibilidad: ¿esto genera traccion o es invisible?

#### Perspectiva CTO (Tecnologia)
- Viabilidad tecnica con el stack actual
- Estimacion de esfuerzo (horas/dias del fundador)
- Dependencias tecnicas y riesgos
- Mantenimiento a largo plazo
- ¿Se puede construir de forma incremental?

### FASE 3: Sintesis

Despues de las perspectivas individuales, sintetizar:

```
## Sintesis del Consejo

### Donde coinciden
- [Punto de acuerdo 1]
- [Punto de acuerdo 2]

### Donde discrepan
- [Discrepancia + perspectivas en conflicto]

### La verdad incomoda
[Lo que nadie quiere oir pero hay que decir. Sesgo detectado, suposicion no validada, riesgo ignorado.]

### Recomendacion integrada
[Decision clara: SI / NO / SI CON CONDICIONES]
[Razonamiento en 2-3 frases]

### Si decides que SI
1. [Primer paso concreto]
2. [Segundo paso]
3. [Metrica para saber si funciona + plazo para evaluar]

### Si decides que NO
1. [Que hacer en su lugar]
2. [Condiciones bajo las que reconsiderar]
```

### FASE 4: Decision del Fundador

Pausar y esperar la decision del fundador. Opciones:

- **Apruebo** — Registrar decision y pasar a acciones
- **Modifico** — Ajustar la recomendacion segun input del fundador
- **Rechazo** — Registrar como rechazado con razon
- **Necesito mas info** — Profundizar en la perspectiva que lo pida

**Regla**: La decision del fundador prevalece siempre. No insistir ni "pero el CFO dijo...". Es su negocio.

### FASE 5: Registro

Output: COUNCIL-SESSION.md

```markdown
# Sesion del Consejo — [Fecha]

## Tema
[Pregunta o decision evaluada]

## Contexto
[Situacion actual relevante]

## Perspectivas
[Las 4 perspectivas completas]

## Sintesis
[Sintesis completa]

## Decision del Fundador
- Decision: [Lo que decidio]
- Razonamiento: [Por que]
- Revisar en: [Fecha o hito para evaluar]

**PROXIMA ACCION CONCRETA**: [Primer paso para ejecutar la decision]
```

Tambien, si existe `~/.claude/docs/decision-log.md`, append la decision en formato corto:

```
**DECISION [fecha]**: [Descripcion breve]
- Contexto: [por que surgio]
- Opcion elegida: [que se decidio]
- Rationale: [por que]
- Revisar en: [fecha o hito]
```

## Tipos de Consulta

El fundador puede plantear consultas en varios formatos:

| Formato | Ejemplo | Enfoque |
|---------|---------|---------|
| **Oportunidad** | "Me han propuesto hacer X, ¿la acepto?" | Evaluar coste de oportunidad y fit |
| **Dilema** | "¿Priorizo BricksShift o EdinumenUSA?" | Comparar con criterios explicitos |
| **Validacion** | "Voy a hacer X, ¿ves algun problema?" | Buscar puntos ciegos |
| **Estrategia** | "¿Como deberiamos abordar Q2?" | Vision amplia, multiples streams |
| **Crisis** | "Se ha caido un cliente grande, ¿que hago?" | Accion inmediata + plan de contingencia |

## Modos de Fallo y Protecciones

| Fallo | Solucion |
|-------|----------|
| Todas las perspectivas coinciden demasiado rapido | Forzar "argumento mas fuerte en contra" |
| Paralisis por analisis | Limitar a 3 argumentos max por perspectiva. Forzar recomendacion aunque sea con baja confianza |
| Una perspectiva domina | Equilibrar peso en sintesis. La perspectiva del fundador prevalece. |
| Falta informacion clave | Listar lo que falta + decision provisional + condiciones para cambiarla |

<!-- Source: built-in (base: alirezarezvani/claude-skills) -->
