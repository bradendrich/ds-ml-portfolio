 Braden Richards — Data Science & Machine Learning Portfolio

A curated collection of data science, machine learning, and statistical analysis projects completed through the TripleTen Data Science Bootcamp and additional independent study.  
This portfolio highlights practical experience solving business, analytics, and machine learning problems with clean code, documentation, and reproducible workflows.

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
---

## 🚀 Featured Machine Learning Projects

### 🔹 Gold Recovery Prediction (Integrated Project)
Regression modeling to predict gold extraction efficiency at multiple processing stages.  
Includes custom sMAPE metric implementation, anomaly removal, cross‑validation, and multi‑stage processing analysis.

### 🔹 Oil Well Profit Optimization (ML in Business)
Modeled oil well productivity across three regions using linear regression.  
Performed bootstrapping to estimate average profit, confidence intervals, and loss risk to guide business investment decisions.

### 🔹 Bank Customer Churn Prediction (Supervised Learning)
Classification project involving heavy class imbalance.  
Applied oversampling, class weighting, and SMOTE; optimized F1 score; evaluated ROC‑AUC for model robustness.

### 🔹 Car Price Prediction (Numerical Methods)
Benchmarked LightGBM, CatBoost, XGBoost, RandomForest, and Linear Regression.  
Compared training time, prediction speed, and RMSE to determine the most practical model for a real‑time pricing app.

### 🔹 Instacart EDA (Exploratory Data Analysis)
Analyzed customer purchasing behavior, order patterns, and product preferences across multiple relational datasets.

---

## 📁 Repository Structure

```
ds-ml-portfolio/
  tripleten-projects/
    project01-working-with-data/
    project02-eda/
    project03-sda/
    project04-video-game-sales-forecasting/
    project05-intro-to-ml/
    project06-supervised-learning/
    project07-ml-in-business/
    project08-integrated-project/
    project9-linear-algebra/
    project10-numerical-methods/
  README.md
  .gitignore
```

Each project includes:
- Cleaned Jupyter notebooks  
- Project‑specific README  
- CHANGELOG  
- Requirements file  

---

## 🧪 Skills Demonstrated

- Python, Pandas, NumPy  
- Scikit-learn, LightGBM, XGBoost, CatBoost  
- Exploratory Data Analysis (EDA)  
- Regression & Classification  
- Statistical Modeling & Bootstrapping  
- Gradient Boosting & Tree Models  
- Data Cleaning & Feature Engineering  
- Model Evaluation & Selection  
- Business‑Driven Machine Learning  
- Git, GitHub, Project Structuring  

---


A curated, 12‑project portfolio that is a work in progress, demonstrating data wrangling, analysis, machine learning, and deployment skills.
Projects scale from fundamentals to an end‑to‑end app.

---

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

**LinkedIn:** https://www.linkedin.com/in/bradenrichards  
**GitHub:** https://github.com/bradendrich  
**Email:** bradendrich@hotmail.com