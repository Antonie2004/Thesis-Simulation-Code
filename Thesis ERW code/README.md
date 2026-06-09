# Elephant Random Walk — Thesis Simulation Code

Code for the figures and tables of the bachelor's thesis
*Large-Scale Properties of the Elephant Random Walk* (Mathematics,
Utrecht University). The thesis PDF is in `thesis/`.

## Contents

Each figure and table has its own notebook in `notebooks/`, named after
its number in the thesis and grouped by chapter.

## Running

Requires Python 3.10+ with NumPy, SciPy, Matplotlib and pandas:

```bash
pip install -r requirements.txt
jupyter lab
```

Run a notebook from top to bottom to regenerate its figure or table.
Sample-path figures use a fresh random draw on each run; the Monte Carlo
tables fix their seeds for exact reproducibility (Section 4.2.4 uses
`20260612`, Table 6.1 uses `20260525`).

## What each notebook shows

| Notebook | What it shows |
| --- | --- |
| Figure 3.1 | ERW sample paths, diffusive vs superdiffusive (`p = 0.30, 0.80`) |
| Figure 3.2 | ERW paths and empirical mean for `q = 0.30, 0.70` (direction of the drift) |
| Figure 3.3 | ERW paths with empirical mean against `beta*n^a/Gamma(a+1)`, `p = 0.65` |
| Figure 3.4 | Sample paths of `S_n^2`, diffusive regime (`p = 0.30, 0.60`) |
| Figure 3.5 | Sample paths of `S_n^2`, critical regime (`p = 3/4`) |
| Figure 3.6 | Sample paths of `S_n^2`, superdiffusive regime (`p = 0.80, 0.90`) |
| Figure 4.1 | Paths of `(S_n - E[S_n])/n` converging to 0 (law of large numbers) |
| Figure 4.2 | Paths of `S_n/n` across the three regimes |
| Figure 4.3 | Histogram of the rescaled walk vs the Gaussian limit, diffusive (CLT) |
| Figure 4.4 | Limit density in the critical regime (`p = 3/4`) |
| Figure 4.5 | Histograms of the unrescaled `S_n`, superdiffusive regime |
| Figure 4.6 | Histograms of the rescaled walk, superdiffusive regime |
| Figure 4.7 | Rescaled superdiffusive histograms across `q = 0.25, 0.50, 0.75` |
| Figure 4.8 | Rescaled superdiffusive histograms (further values) |
| Table (Section 4.2.4) | Empirical mean, variance, skewness and kurtosis of the superdiffusive limit |
| Figure 5.1 | Running quadratic-strong-law statistic `Q_n`, diffusive regime |
| Figure 5.3 | LIL scaled paths with the envelope, diffusive (`p = 0.35, 0.65`) |
| Figure 5.4 | LIL scaled paths, critical regime (`p = 3/4`) |
| Figure 5.5 | Counting-zero process (recurrence), `p <= 3/4` |
| Figure 6.1 | ERW sample paths and the running QMLE estimator `p_hat_n` |
| Figure 6.2 | Asymptotic confidence-interval length, diffusive regime |
| Figure 6.3 | Empirical coverage of the diffusive confidence interval |
| Table 6.1 | Monte Carlo coverage study (mean estimator, coverage, interval lengths) |
| Figure 7.1 | Sample paths of the three-dimensional ERW |
| Other / distribution grid (4.2.3) | 3x3 grid of rescaled histograms across `p` and `q` |
| Other / counting zeros (5.4) | Counting-zero process in the superdiffusive (transient) regime |
