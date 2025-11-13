# Data Science & ML Portfolio

A curated, 12‑project portfolio demonstrating data wrangling, analysis, machine learning, and deployment skills.
Projects scale from fundamentals to an end‑to‑end app.

> Start here: clone the repo, create the environment, then open each project folder.

## Quickstart
```bash
# 1) Rename the folder and initialize git
mv ds-ml-portfolio YOUR_REPO_NAME
cd YOUR_REPO_NAME
git init

# 2) Create a virtual environment
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt

# (alternative) Conda
conda env create -f environment.yml
conda activate ds-ml-portfolio

# 3) Install pre-commit hooks (optional but recommended)
pre-commit install
```

## Projects
1. **week-01-eda** — EDA fundamentals (CO₂ & ocean health)  
2. **week-02-wrangling** — Environmental data pipeline (NOAA/NASA)  
3. **week-03-regression** — Predictive regression (housing / coral)  
4. **week-04-stats** — Hypothesis testing (MPA effectiveness)  
5. **week-05-sql** — SQL analysis (energy dataset)  
6. **week-06-classification** — Churn / species status classifier  
7. **week-07-forecasting** — Time series forecasting (SST / energy)  
8. **week-08-clustering** — Clustering & PCA (WB indicators)  
9. **week-09-nlp** — Sentiment analysis (climate tweets)  
10. **week-10-ml-pipeline** — End‑to‑end ML pipeline  
11. **week-11-cv** — Image classification (coral/fish)  
12. **week-12-app** — Streamlit/Dash dashboard + deployment

## Repo Layout
```
.
├── projects/
│   ├── week-01-eda/
│   ├── week-02-wrangling/
│   ├── week-03-regression/
│   ├── week-04-stats/
│   ├── week-05-sql/
│   ├── week-06-classification/
│   ├── week-07-forecasting/
│   ├── week-08-clustering/
│   ├── week-09-nlp/
│   ├── week-10-ml-pipeline/
│   ├── week-11-cv/
│   └── week-12-app/
├── requirements.txt
├── environment.yml
├── .gitignore
├── .gitattributes
├── .editorconfig
├── .pre-commit-config.yaml
├── Makefile
├── LICENSE
└── README.md
```

## Commit Convention
- Use small, purposeful commits with conventional prefixes:
  - `feat:`, `fix:`, `docs:`, `refactor:`, `test:`, `chore:`

## Data Policy
- Do **not** commit large raw datasets (>50MB). Store links to data sources in each project README.
- For small samples used for unit tests or demos, place inside `data/`.

## License
MIT © 2025
