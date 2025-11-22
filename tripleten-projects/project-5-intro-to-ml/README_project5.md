
# Intro to Machine Learning — Megaline Plan Recommendation Model

## 📌 Project Overview
Megaline, a mobile carrier, wants to upgrade its customers from older plans to one of two newer ones: **Smart** or **Ultra**.  
Your task is to build a **classification model** that predicts which plan a subscriber should be recommended based on their monthly usage behavior.

This project integrates your early machine learning skills and follows a realistic model development workflow:
- Data exploration  
- Train/validation/test splitting  
- Model comparison  
- Hyperparameter tuning  
- Test performance evaluation  
- Sanity checking  

The target metric is **accuracy**, with a required minimum of **0.75**.

---

## 📂 Dataset Description

File: `users_behavior.csv`

Each row represents **one user’s monthly activity**, with the following features:

| Feature      | Description |
|--------------|-------------|
| `calls`      | Number of calls made |
| `minutes`    | Total call duration in minutes |
| `messages`   | Number of SMS messages sent |
| `mb_used`    | Internet MB used |
| `is_ultra`   | Target variable (1 = Ultra plan, 0 = Smart plan) |

---

## 🧹 Step 1 — Data Exploration
The notebook includes:
- Previewing the first rows
- Checking for missing values
- Inspecting feature ranges and distributions
- Understanding class balance of `is_ultra`

This helps guide model selection and splitting strategy.

---

## ✂️ Step 2 — Train / Validation / Test Split

Typical structure:
- **Train:** ~60%
- **Validation:** ~20%
- **Test:** ~20%

This ensures:
- Enough data to train on  
- A separate validation set for hyperparameter tuning  
- A true held-out test set for unbiased performance reporting  

Splitting was performed using `train_test_split` from scikit-learn.

---

## 🤖 Step 3 — Model Development & Hyperparameter Tuning

The following models were tested:

### **1. Decision Tree**
- Hyperparameters tested:
  - `max_depth`
  - `criterion`
- Pros: simple, interpretable  
- Cons: prone to overfitting

### **2. Random Forest**
- Hyperparameters tested:
  - `n_estimators`
  - `max_depth`
- Pros: strong baseline, good at handling nonlinear patterns  
- Cons: slower, less interpretable

### **3. Logistic Regression**
- Regularization tuning  
- Pros: fast, good baseline  
- Cons: may underperform on complex patterns

---

## 📊 Findings from Model Comparison

Key observations included:
- Random Forest generally produced the highest validation accuracy  
- Decision Tree performance was highly sensitive to depth  
- Logistic Regression provided stable but lower accuracy  
- Ultra vs Smart classes were decently balanced → standard accuracy metric is appropriate

The tuned model achieving **≥ 0.75 accuracy** on validation was selected for final evaluation.

---

## 🧪 Step 4 — Test Set Evaluation

The best model was evaluated on the **held-out test set** to ensure generalization.

Reported:
- Final test accuracy  
- Comments on potential overfitting  
- Interpretation of results  

If the accuracy ≥ 0.75 → model meets business criteria.

---

## 🧠 Step 5 — Sanity Check (Additional Exercise)

This optional step explores:
- Feature importance
- How well the model generalizes to hypothetical edge cases
- Understanding limitations of the dataset (e.g., small number of features)

---

## 📝 Final Conclusions

The notebook wraps up with:
- Which model performed best and why  
- Whether the model meets the 75% accuracy threshold  
- How Megaline can use this model to recommend new plans  
- Suggestions for improving the model with more data (e.g., demographics or long-term usage patterns)

---

## 🗂 Suggested Repository Structure

```
project6-intro-ml/
│── data/
│── notebooks/
│   └── project6_introML_clean.ipynb
│── README.md
│── CHANGELOG.md
│── requirements.txt
```

---

## ▶️ Running the Project

```bash
pip install -r requirements.txt
jupyter notebook notebooks/project6_introML_clean.ipynb
```

---

## 👤 Author
**Braden Richards**  
Data Science | Machine Learning | Analytics  
Focused on classification models, telecom analytics, and applied predictive modeling.
