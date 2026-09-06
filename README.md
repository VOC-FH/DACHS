# DACHS 2026 — Biel/Bienne

LaTeX/Beamer slide deck for the DACHS Symposium 2026.

**Working title:** *Kollaboratives Software Engineering mit KI*

The deck focuses on teaching scenarios enabled by SNode.C, OpenAI Codex app-server, AISuite/codex-bridge and CodexUI/CodexWebUI, with particular emphasis on multi-client collaboration, explicit controller/observer roles and native/browser participation.

## Build

Clone with the personal FH Upper Austria style submodule and build with:

```sh
git clone --recurse-submodules https://github.com/VOC-FH/DACHS.git
cd DACHS
make
```

Technical diagrams are authored directly in TikZ. A local lightweight `fh-ooe.def.tex` shadows the course-oriented package bundle from the style repository so the talk only loads the packages it needs.
