# Elephant Random Walk — Thesis Simulation Code

Code for the figures and tables of the bachelor's thesis
*Large-Scale Properties of the Elephant Random Walk* (Mathematics,
Utrecht University). The thesis PDF is in `thesis/`.

## Contents

Each figure and table has its own notebook in `notebooks/`, named after
its number in the thesis and grouped by chapter (e.g. `Chapter 4/Figure
4.3.ipynb`, `Chapter 6/Table 6.1.ipynb`).

## Running

Requires Python 3.10+ with NumPy, SciPy, Matplotlib and pandas:

```bash
pip install -r requirements.txt
jupyter lab
```

Run a notebook from top to bottom to regenerate its figure or table.
Sample-path figures use a fresh random draw on each run; the Monte Carlo
study behind Table 6.1 fixes the seed (`20260525`) for exact reproducibility.
