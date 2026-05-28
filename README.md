# LLM Safety & Mechanistic Interpretability — Lecture Slides

[![Build Slides PDF](https://github.com/YOUR_USERNAME/YOUR_REPO/actions/workflows/build.yml/badge.svg)](https://github.com/YOUR_USERNAME/YOUR_REPO/actions/workflows/build.yml)

Beamer lecture slides for a 1.5-hour graduate seminar covering four recent survey papers on **LLM Safety** and **Mechanistic Interpretability**.

---

## Papers Covered

| # | Title | Authors | Venue |
|---|-------|---------|-------|
| ① | [LLM Safety: A Holistic Survey](https://arxiv.org/abs/2412.17686) | Shi et al. | arXiv 2024 |
| ② | [Locate, Steer, and Improve: Actionable MI in LLMs](https://arxiv.org/abs/2601.14004) | Zhang et al. | arXiv 2026 |
| ③ | [Interpretation Meets Safety](https://aclanthology.org/2025.emnlp-main.1091) | Lee et al. | EMNLP 2025 |
| ④ | [Safety at Scale: Large Model and Agent Safety](https://arxiv.org/abs/2502.05206) | Ma et al. | arXiv 2025 |

---

## Lecture Structure

| Part | Topic | Time | Papers |
|------|-------|------|--------|
| 1 | **LLM Safety Landscape** — taxonomy, value misalignment, adversarial attacks, misuse, autonomous AI risks, agent safety, governance | ~30 min | ① ④ |
| 2 | **Mechanistic Interpretability** — Locate→Steer→Improve pipeline, interpretable objects, localizing & steering methods, applications | ~30 min | ② |
| 3 | **Interpretation ↔ Safety Bridge** — workflow-stage framework, training attribution, token attribution, latent probing, dual-use risks | ~25 min | ② ③ |

---

## Repository Structure

```
├── main.tex                  # All 42 slides
├── beamerthemeUCR.sty        # Custom UCR Beamer theme
├── Makefile                  # Build commands
├── .github/
│   └── workflows/
│       └── build.yml         # GitHub Actions — auto-build PDF
└── README.md
```

---

## Building

### Prerequisites

- A full TeX Live installation (or MiKTeX on Windows)
- Required packages: `beamer`, `tcolorbox`, `tikz`, `booktabs`, `multicol`, `xcolor`, `colortbl`

All packages are included in **TeX Live Full** or **MacTeX**. If using a minimal install:

```bash
tlmgr install beamer tcolorbox tikz booktabs multicol xcolor colortbl
```

### Build the PDF

```bash
# Recommended (handles multi-pass automatically)
make

# Fallback (pdflatex directly, two passes)
make pdflatex

# Watch mode — auto-rebuild on save
make watch
```

Output: `build/main.pdf`

### Clean build artefacts

```bash
make clean
```

---

## Theme Customization (`beamerthemeUCR.sty`)

The custom theme defines:

| Variable | Colour | Use |
|----------|--------|-----|
| `UCRnavy` | `#003DA5` | Titles, primary text, dark slides |
| `UCRgold` | `#F1AB00` | Accents, gold bar under titles, section dividers |
| `UCRteal` | `#0A7B8C` | Mechanistic interpretability content |
| `UCRred` | `#C0392B` | Threats, warnings |
| `UCRgreen` | `#1A7A4A` | Defenses, safety improvements |

### Key environments

```latex
% Left-bordered card with coloured accent
\begin{ucrcard}[UCRnavy]{Card Title}
  Content here.
\end{ucrcard}

% Blue info callout
\begin{ucrinfo}
  Important note here.
\end{ucrinfo}

% Red warning box
\begin{ucrwarn}
  This is a warning.
\end{ucrwarn}

% Dark navy block
\begin{ucrdark}
  White text on navy background.
\end{ucrdark}

% Full section divider frame
\sectionframe{1}{Section Title}{Subtitle}{Paper tags}
```

---

## Notes for Instructors

- Slides are designed for **16:9** aspect ratio (`aspectratio=169` in `\documentclass`)
- Each slide is intentionally **not dense** — suitable for 2-minute presentation pacing
- Speaker notes can be added with `\note{}` inside each frame
- The `\papertag` command marks which paper a slide draws from:
  ```latex
  \papertag[UCRteal]{Paper ②}
  ```

---

## License

Released under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
Feel free to adapt for your own courses — attribution appreciated.
