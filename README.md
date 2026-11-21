# ARTI 303 — Lab Assignment 12

## Graphs — Finding Paths Between Cities

**Course:** ARTI 303 — Artificial Intelligence Principles and Techniques  
**Lab:** 12

### Files

| **File** | **Description** |
| --- | --- |
| `graphs.pl` | Task 1 — Directed city graph and travel path rules |
| `answers.txt` | Test queries and expected paths |

### Tasks

1. **Task 1:** Represent seven Saudi cities as a directed graph using Prolog facts.
2. **Path Finding:** `travel(Start, End, Path)` finds possible routes between two cities using recursion and backtracking.
3. **Testing:** Find paths between Dammam, Madinah, Riyadh, and Makkah, including alternative routes.

### How to Run

Open SWI-Prolog and execute each query separately:

```prolog
?- consult('graphs.pl').
?- travel('Dammam', 'Madinah', P).
?- travel('Riyadh', 'Makkah', P).
?- travel('Makkah', 'Riyadh', P).
?- travel('Makkah', 'Madinah', P).
```

Press `;` to display additional possible paths.
