# Make a study map for your own course or skill

Paste this prompt into a Claude text chat (a chat that can create files), fill in the `[BRACKETS]`, and attach your syllabus or notes.

```
Create a comprehensive Excalidraw master reference file (.excalidraw) for the topic below. I will study from it every day on a 32-inch widescreen monitor, so it must be dense, complete and scannable in one view.

TOPIC / COURSE: [e.g. "AWS Solutions Architect – Domain 2: Resilient Architectures"]
MY GOAL: [e.g. pass the certification exam / interview for X role / become an expert in X]
WEIGHT / PRIORITY: [e.g. 27% of the exam, or "most asked in interviews"]
MY LEVEL: [beginner / intermediate / advanced] — [any weak spots]
SOURCES: [paste syllabus, sidebar list, study guide URL, or notes. If I give none, research official docs first and tell me which sources you used.]

STEP 0 — COVERAGE FIRST
Before building, list every sub-topic or task statement from the sources. Open the file with a COVERAGE TABLE: sub-topic → which panel covers it → anything to verify. If you could not confirm the official list, say so at the top of the file. Do not claim 100% coverage unless you checked it against the official list.

BUILD THESE SECTIONS (add as many boxes as the material needs; do not trim for space):

1. TEACHING PANELS, one per sub-topic. Each panel has:
   - Core idea in one plain sentence
   - How it works (steps, flow, or mini diagram with arrows)
   - Key terms and exact names (flags, fields, commands, numbers, limits)
   - A concrete worked example
   - "Looks similar but is different" comparison
   - Exam/interview traps for this sub-topic
   - Links to related panels
2. DISCRIMINATORS: "If you see X → choose Y, because Z", at least 20 rules.
3. DECISION MATRIX: scenario vs option, showing which approach fits and why the others fail.
4. TRAPS (wrong answers that look right): for each, the tempting wrong answer, why it fails, and the correct answer. Include the "fix that isn't a fix" pattern.
5. WORDS TO LOOK FOR: signal words in a question or interview prompt that point to the right answer (e.g. "first", "most cost-effective", "root cause", "guarantee", "always"), what each usually means, and common distractor words.
6. GLOSSARY: 20–40 terms with a one-line plain-English definition and a "say it like this in an interview" phrase.
7. FLASHCARDS: 30+ Q/A cards (definitions, numbers, when-to-use, differences).
8. SCENARIO Q&A: 20+ realistic questions in exam or interview style, with the answer, the reasoning, and why each wrong option is wrong. Mix easy, medium and hard.
9. NUMBERS & LIMITS CHEAT-SHEET: every figure, default, limit, percentage and flag worth memorizing.
10. MY WEAK SPOTS box: [list what I have missed before, or leave empty].
11. ONE-PAGE SUMMARY: the 10 things to remember if I remember nothing else.

LAYOUT & STYLE
- Wide layout that fills a 32-inch landscape screen.
- Colour-code by section type (teaching = blue, traps = red, flashcards = yellow, Q&A = green, numbers = grey). Add a legend.
- Everything must be real, editable Excalidraw elements (rectangles, text, arrows), not an image or an HTML page.
- Readable font sizes at a distance; keep box text short and bulleted.

ACCURACY RULES
- Do not invent facts, names, flags or numbers. Mark anything unverified with "VERIFY" and list those items in a box at the top.
- If a source is unofficial, say so.
- Tell me if something I said in the prompt looks wrong.

ALSO PRODUCE A "SIMPLE" VERSION
A second file with the same layout, where the teaching panels and glossary are rewritten in plain, short words, with an analogy for each concept.

DELIVERY
- Validate that each file is valid Excalidraw JSON before sending.
- Tell me honestly what you did NOT verify and what to send you next to close any gaps.
```

Tips: do one domain or topic per file, ask for the coverage table first, and check every `VERIFY` item yourself.
