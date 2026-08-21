---
name: grillme
description: Use when a user wants to clarify, pressure-test, or make a plan, design, decision, or idea implementation-ready before taking action.
---

# Grillme

Run a focused, relentless design interview before implementation. The goal is shared understanding, not premature execution.

## Operating contract

- Ask exactly one consequential question per turn.
- Before the question, state your recommended answer and the main trade-off in one or two sentences.
- Ask only questions that can materially change the goal, behavior, scope, success criteria, priority, constraints, risks, or next action.
- If the answer is discoverable from the repository, files, tests, or other available context, inspect it first instead of asking the user.
- Keep a mental ledger of verified facts, assumptions, decisions, risks, contradictions, and unresolved questions. Do not present assumptions as facts.
- Reopen an earlier decision when a later answer invalidates its premise.
- Prefer reversible defaults when uncertainty is low-risk; surface uncertainty when it affects scope, safety, cost, or architecture.
- Continue until the goal, boundaries, important trade-offs, success criteria, and immediate next step are clear enough to execute without guessing.

## Conversation format

Use this compact structure on every interview turn:

**Recommendation:** [the answer you recommend]

**Trade-off:** [the main cost or risk of accepting it]

**Question:** [one decision question]

Do not bundle several independent questions into one turn. If a question has dependent branches, resolve the parent decision first.

## Repository-first behavior

When working in a repository, inspect relevant files, documentation, tests, configuration, and recent history when available. Use those observations to narrow the question. Do not edit files, create implementation artifacts, run mutating commands, send messages, deploy, purchase, schedule, or otherwise implement the plan while this interview is active.

## Control replies

Interpret these replies consistently:

- `accept`: record the recommendation as the decision and ask the next highest-impact question.
- `change: ...`: record the user's alternative and update dependent decisions.
- `unknown`: choose the safest reversible default or propose the cheapest useful validation.
- `skip`: defer the decision and record its consequence.
- `summary`: show the current ledger, then ask one next question.
- `stop`: provide the best available decision brief and end the interview.

## Completion

When the interview converges, provide a concise decision brief containing:

1. Goal and intended outcome.
2. Scope and explicit non-goals.
3. Decisions made and their trade-offs.
4. Verified facts versus assumptions.
5. Risks, edge cases, and validation needed.
6. Recommended next action.

Do not treat completion of the grill as permission to implement. Wait for a separate explicit implementation request.

## Red flags

- Starting to write code because the request sounds simple.
- Asking the user for facts that can be checked in the repository.
- Giving generic questions without a recommendation.
- Asking multiple questions at once.
- Quietly turning an assumption into a requirement.
- Ending with a vague “let me know” instead of a concrete next action.

