---
name: "business-decide"
description: "Framework de decision estructurada con scoring, analisis de reversibilidad y escenarios. Registra decisiones en un log persistente. Usa cuando el usuario necesite tomar una decision concreta, evaluar opciones, analizar riesgos, o mencione decidir, decision, opciones, comparar, tradeoff, riesgo, escenario, reversible."
argument-hint: "<descripcion de la decision>"
---

# Business Decide — Decision Estructurada

Framework para tomar decisiones de forma rigurosa cuando la intuicion no basta. Adaptado para fundador solo — decisiones rapidas pero no impulsivas.

**IDIOMA: Todo en espanol de Espana.**

## Contexto Obligatorio

**ANTES de cada decision:**
1. Leer `~/.claude/business-context.md` para conocer prioridades y restricciones
2. Leer `~/.claude/docs/decision-log.md` si existe, para verificar decisiones previas relacionadas
3. Tener presente: runway limitado, capacidad limitada, sin equipo para absorber errores

## Estructura de Decision

### Paso 1: Enunciar la Decision

Formular la decision de forma clara y concreta:

```
DECISION A TOMAR: [Frase que empiece con "¿Deberia/Deberiamos...?"]
CONTEXTO: [Por que surge esta decision ahora]
DEADLINE: [¿Cuando hay que decidir? Si no hay deadline, poner "sin urgencia"]
```

**Regla**: Si no puedes formular la decision en una frase, probablemente son dos decisiones. Separalas.

### Paso 2: Identificar Opciones

Listar todas las opciones viables (minimo 2, maximo 5):

| Opcion | Descripcion breve |
|--------|-------------------|
| A | [Descripcion] |
| B | [Descripcion] |
| C | [Descripcion] |
| (inaccion) | No hacer nada / postponer |

**Siempre incluir la opcion "no hacer nada"** — a veces es la mejor.

### Paso 3: Criterios de Evaluacion

Definir los criterios relevantes para esta decision y su peso:

| Criterio | Peso | Descripcion |
|----------|------|-------------|
| **Impacto en revenue** | 30% | ¿Cuanto dinero genera o protege? |
| **Esfuerzo del fundador** | 25% | ¿Cuantas horas/semanas requiere? |
| **Reversibilidad** | 20% | ¿Se puede deshacer si sale mal? |
| **Riesgo** | 15% | ¿Que pasa en el peor caso? |
| **Alineacion estrategica** | 10% | ¿Encaja con la vision a 12 meses? |

Los pesos pueden ajustarse segun el tipo de decision. Preguntar al fundador si los criterios y pesos son correctos antes de puntuar.

### Paso 4: Scoring

Puntuar cada opcion en cada criterio (1-5):

| Criterio (peso) | Opcion A | Opcion B | Opcion C | Inaccion |
|------------------|----------|----------|----------|----------|
| Impacto revenue (30%) | X | X | X | X |
| Esfuerzo (25%) | X | X | X | X |
| Reversibilidad (20%) | X | X | X | X |
| Riesgo (15%) | X | X | X | X |
| Alineacion (10%) | X | X | X | X |
| **TOTAL PONDERADO** | **X.X** | **X.X** | **X.X** | **X.X** |

Escala: 1 = muy malo, 2 = malo, 3 = neutro, 4 = bueno, 5 = excelente.
Para "Esfuerzo": 5 = poco esfuerzo, 1 = mucho esfuerzo (invertido).
Para "Riesgo": 5 = bajo riesgo, 1 = alto riesgo (invertido).

### Paso 5: Analisis de Reversibilidad (Bezos Framework)

Clasificar la decision:

**Puerta de un sentido (irreversible):**
- Una vez tomada, no hay vuelta atras o el coste de revertir es altisimo
- Ejemplos: firmar un contrato largo, lanzar un producto con tu nombre, abandonar un cliente
- Tratamiento: dedicar tiempo, analizar a fondo, pedir consejo

**Puerta de dos sentidos (reversible):**
- Se puede deshacer sin coste significativo
- Ejemplos: probar un canal de marketing, cambiar un precio, lanzar un MVP, probar una herramienta
- Tratamiento: decidir rapido, experimentar, medir y ajustar

**Regla**: La mayoria de decisiones de un negocio pequeno son de dos sentidos. No las trates como irreversibles — eso paraliza.

### Paso 6: Analisis de Escenarios

Para la opcion mejor puntuada, analizar tres escenarios:

```
MEJOR CASO (20% probabilidad):
- Que pasa: [descripcion]
- Resultado: [impacto en revenue, tiempo, posicionamiento]

CASO MAS PROBABLE (60% probabilidad):
- Que pasa: [descripcion]
- Resultado: [impacto realista]

PEOR CASO (20% probabilidad):
- Que pasa: [descripcion]
- Resultado: [impacto negativo]
- Plan B: [que hacer si ocurre]
```

**Pregunta clave**: ¿Puedo sobrevivir al peor caso? Si la respuesta es NO y el runway es < 3 meses, la decision necesita mas analisis o una alternativa menos arriesgada.

### Paso 7: Recomendacion

```
OPCION RECOMENDADA: [Opcion X]
PUNTUACION: [X.X/5.0]
TIPO: [Puerta de un sentido / Puerta de dos sentidos]
CONFIANZA: [Alta / Media / Baja]

RAZONAMIENTO: [2-3 frases explicando por que esta opcion]

SI ELIGES ESTA OPCION:
1. [Primer paso concreto + plazo]
2. [Segundo paso]
3. [Metrica de exito + fecha de revision]

SI ELIGES OTRA:
[Breve nota sobre la segunda mejor opcion]
```

### Paso 8: Registro

Esperar a que el fundador decida. Luego registrar en `~/.claude/docs/decision-log.md` (crear si no existe):

```markdown
---

## [FECHA] — [Titulo de la decision]

**Pregunta**: [La decision formulada]
**Opciones evaluadas**: [Lista breve]
**Decision**: [Lo que se decidio]
**Razonamiento**: [Por que]
**Tipo**: [Irreversible / Reversible]
**Revisar en**: [Fecha o hito]
**Estado**: Pendiente de ejecucion

---
```

## Output Completo

Guardar el analisis completo como DECISION-[fecha]-[tema].md en el directorio actual, y hacer append al log persistente.

```
=== ANALISIS DE DECISION ===

Decision: [Pregunta]
Opciones: [A, B, C, inaccion]
Recomendacion: [Opcion X] (Confianza: [Alta/Media/Baja])
Tipo: [Irreversible / Reversible]

Scoring:
[Tabla de scoring]

Escenarios (opcion recomendada):
- Mejor caso: [resumen]
- Mas probable: [resumen]
- Peor caso: [resumen]

Registrado en: ~/.claude/docs/decision-log.md

**PROXIMA ACCION CONCRETA**: [Primer paso para ejecutar la decision]
```

## Decisiones Rapidas

Para decisiones menores (reversibles, bajo impacto), usar formato abreviado:

```
DECISION RAPIDA: [Pregunta]
Opcion A: [Descripcion] — Pro: [X] — Con: [Y]
Opcion B: [Descripcion] — Pro: [X] — Con: [Y]
Recomendacion: [Opcion] porque [razon en 1 frase]
Tipo: Puerta de dos sentidos
```

No requiere scoring completo ni escenarios. Si registrar en el log.

## Preguntas para Desbloquear

Cuando el fundador esta paralizado:

- "¿Que pasaria si no haces nada durante 2 semanas?"
- "¿Cual es el coste de equivocarte vs el coste de no decidir?"
- "Si tuvieras que decidir en 5 minutos, ¿que elegirias?" (La intuicion suele acertar en decisiones reversibles)
- "¿Que informacion te falta? ¿Puedes conseguirla en < 24 horas?"
- "¿Esta decision importara dentro de 6 meses?"

<!-- Source: built-in (base: alirezarezvani/claude-skills) -->
