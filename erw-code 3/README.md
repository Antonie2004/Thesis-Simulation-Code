# Elephant Random Walk — Figure & Table Code

Code for the figures and tables of the bachelor's thesis
*Large-Scale Properties of the Elephant Random Walk* (Mathematics,
Utrecht University). The thesis itself is in
[`thesis/`](thesis/Bachelor_Thesis.pdf).

This repository contains **only the code** — one notebook per figure or
table, named after its number in the thesis and grouped by chapter.
The generated figure files (PDF/PNG) are intentionally **not** tracked;
run a notebook to regenerate its figure.

## The Elephant Random Walk

The ERW is a one-dimensional, non-Markovian random walk with full
memory: at each step the walker recalls a uniformly chosen past step
and repeats it with probability `p` (or reverses it otherwise), with
the first step governed by `q`. Its behaviour splits into three
regimes: **diffusive** (`p < 3/4`), **critical** (`p = 3/4`) and
**superdiffusive** (`p > 3/4`).

## Layout

```
erw-code/
├── README.md
├── requirements.txt
├── .gitignore           # ignores generated figures (*.pdf/*.png), keeps the thesis
├── publish.sh / .ps1    # one-command publish to GitHub via gh
├── thesis/
│   └── Bachelor_Thesis.pdf
└── notebooks/
    ├── Chapter 3/   Figure 3.1 ... 3.6
    ├── Chapter 4/   Figure 4.1 ... 4.8
    ├── Chapter 5/   Figure 5.1, 5.3, 5.4, 5.5
    ├── Chapter 6/   Figure 6.1, 6.2, 6.3 + Table 6.1
    ├── Chapter 7/   Figure 7.1
    └── Other/       plots without a numbered figure in the thesis
```

## Setup

```bash
python -m venv .venv
source .venv/bin/activate        # Windows: .venv\Scripts\activate
pip install -r requirements.txt
jupyter lab
```

Run a notebook top to bottom to regenerate its figure. A few notebooks
write to an absolute path in their top-of-cell config block; edit that
`savefig` target if you want the output elsewhere.

## What each notebook produces

| File | Figure / table | Original notebook |
| --- | --- | --- |
| `Chapter 3/Figure 3.1.ipynb` | ERW sample paths (p = 0.30, 0.80) | `SamplePAths.ipynb` |
| `Chapter 3/Figure 3.2.ipynb` | Empirical mean, q = 0.30, 0.70 | `ExpectedValueNegq.ipynb` |
| `Chapter 3/Figure 3.3.ipynb` | Empirical mean vs beta*n^a/Gamma(a+1), p = 0.65 | `ExpectedValue.ipynb` |
| `Chapter 3/Figure 3.4.ipynb` | S_n^2 paths, diffusive (p = 0.30, 0.60) | `SecondMoment1.ipynb` |
| `Chapter 3/Figure 3.5.ipynb` | S_n^2 paths, critical (p = 3/4) | `SecondMoment2.ipynb` |
| `Chapter 3/Figure 3.6.ipynb` | S_n^2 paths, superdiffusive (p = 0.80, 0.90) | `Secondmoment3.ipynb` |
| `Chapter 4/Figure 4.1.ipynb` | Paths of (S_n - E[S_n])/n | `LLN.ipynb` |
| `Chapter 4/Figure 4.2.ipynb` | Paths of S_n/n, three regimes | `4.2.ipynb` |
| `Chapter 4/Figure 4.3.ipynb` | Diffusive CLT histogram | `4.3.ipynb` |
| `Chapter 4/Figure 4.4.ipynb` | Critical-regime density (p = 3/4) | `CRitDISTEIBUTIUON.ipynb` |
| `Chapter 4/Figure 4.5.ipynb` | Unrescaled S_n, superdiffusive | `4.5.ipynb` |
| `Chapter 4/Figure 4.6.ipynb` | Rescaled superdiffusive histograms | `4.6.ipynb` |
| `Chapter 4/Figure 4.7.ipynb` | Rescaled histograms across q | `4.7.ipynb` |
| `Chapter 4/Figure 4.8.ipynb` | Rescaled superdiffusive histograms | `4.8.ipynb` |
| `Chapter 5/Figure 5.1.ipynb` | QSL statistic Q_n, diffusive | `Untitled9.ipynb` |
| `Chapter 5/Figure 5.3.ipynb` | LIL scaled paths, diffusive (p = 0.35, 0.65) | `LILDIF.ipynb` |
| `Chapter 5/Figure 5.4.ipynb` | LIL scaled paths, critical (p = 3/4) | `5.3.ipynb` |
| `Chapter 5/Figure 5.5.ipynb` | Counting-zero process (recurrence) | `Untitled10.ipynb` |
| `Chapter 6/Figure 6.1.ipynb` | Sample paths + running QMLE estimator | `Chapter6.ipynb` |
| `Chapter 6/Figure 6.2.ipynb` | Asymptotic CI length, diffusive | `6.2.ipynb` |
| `Chapter 6/Figure 6.3.ipynb` | Empirical coverage of the diffusive CI | `EmpericalCODE.ipynb` |
| `Chapter 6/Table 6.1.ipynb` | Monte Carlo coverage study (LaTeX table + plot) | user-provided code |
| `Chapter 7/Figure 7.1.ipynb` | Sample paths of the 3D ERW | `MERW.ipynb` |
| `Other/Superdiffusive distribution grid (Section 4.2.3).ipynb` | 3x3 histogram grid (p x q) | `9 grid plot distr.ipynb` |
| `Other/Transience - counting zeros (Section 5.4).ipynb` | Counting zeros, superdiffusive | `THeorem5.4.ipynb` |

### Notes / please verify

- **Figure 5.1, 5.5** and **Figure 3.1** were matched by their content
  (the QSL / Q_n plot, the counting-zero process, and the ERW sample
  paths). Their parameter values are close to the thesis captions but
  not a verbatim match, so confirm these three pick the version you
  actually used.
- **Chapter 5 numbering**: Figures 5.1 (QSL, diffusive) and 5.4 (LIL,
  critical) are present; **5.2** (QSL, critical) had no matching
  notebook in the source set.
- **`Other/`** holds two plots that don't correspond to a numbered
  thesis figure: the transience counting-zero illustration (Section 5.4
  has no numbered figure) and an exploratory 3x3 distribution grid for
  Section 4.2.3.
- **No code was found** in the source set for Figures 1.1, 2.1, 2.2,
  2.3, 5.2 and 6.4.

## License

No license is specified. All rights reserved unless stated otherwise;
contact the author before reuse.
