
# Integrated Project — Gold Recovery Prediction (Open Ore Processing)

## 📌 Project Overview
This integrated project focuses on analyzing gold ore processing data and building predictive models to estimate **final concentrate recovery**.  
The task simulates real industrial workflows used in mining, metallurgy, and chemical processing.

The project includes:
- Validation of recovery calculation formulas  
- Exploration of ore concentration behavior at each purification stage  
- Statistical comparison between train and test datasets  
- Anomaly removal  
- Building and evaluating ML models using **sMAPE**  
- Final model selection and testing  

This project demonstrates your ability to handle complex industrial datasets and create high-quality predictive models.

---

## 📁 Dataset Description

You are given three files:

- `gold_recovery_train.csv` — Training data  
- `gold_recovery_test.csv` — Test data (some columns missing)  
- `gold_recovery_full.csv` — Full raw dataset  

### Columns include:
- **Features of ore feed**  
- **Features of rougher concentrate**  
- **Features of final concentrate**  
- **Recovery parameters**  
- **Ore component concentrations (Au, Ag, Pb)**  
- **Date index**  

### Target variables:
- `rougher.output.recovery`  
- `final.output.recovery`

Test set **does not contain targets**, and has fewer features because some parameters are measured later in production.

---

## 🧹 Step 1 — Data Preparation

### ✔ 1.1 Inspecting raw data  
Viewed column relationships, missing values, and structure.

### ✔ 1.2 Recovery Calculation Validation  
Checked if:
\[
	ext{recovery} = rac{C \cdot (F - T)}{F \cdot (C - T)} 	imes 100
\]
Matched `rougher.output.recovery`.

- Calculated recovery  
- Compared with provided value  
- Computed **MAE**  
- Low MAE = correct calculation pipeline  
- High MAE = identified and investigated potential issues  

### ✔ 1.3 Missing Features in Test Set  
Identified which columns appear in train but not test:
- Typically **output** or *mid-process measurements*  
- E.g., `rougher.output.*`, `final.output.*`  
- Not available during real-time prediction scenarios  

### ✔ 1.4 Data Preprocessing  
Performed:
- Removal of obviously impossible values  
- Forward filling on time-index where appropriate  
- Dropping rows with missing target columns  
- Scaling numerical features  
- Ensuring identical feature sets between train and test  

---

## 📊 Step 2 — Data Analysis

### ✔ 2.1 Metal Concentration Behavior (Au, Ag, Pb)
Plotted and analyzed:
- Concentration trends from feed → rougher concentrate → final concentrate  
- Expected behavior:
  - Au ↑ significantly during processing  
  - Ag moderately concentrated  
  - Pb behaves inconsistently  

### ✔ 2.2 Feed Particle Size Distributions  
Compared train vs test:
- Ensured both distributions follow similar shapes  
- Checked using:
  - Histograms  
  - Kernel Density Estimates  

A major mismatch would invalidate model evaluation.

### ✔ 2.3 Total Concentration Analysis  
Computed total sum of ore constituents:
- Flagged rows where sum ≈ 0  
- Identified anomalous rows with impossible concentrations  
- Removed anomalies from both train and test for consistency  

---

## 🤖 Step 3 — Model Development

### ✔ 3.1 sMAPE Metric Function  
Implemented:
\[
sMAPE = rac{1}{N} \sum rac{|y - \hat{y}|}{(|y| + |\hat{y}|)/2} 	imes 100\%
\]

Final score is:
\[
rac{1}{2}(sMAPE_{	ext{rougher}} + sMAPE_{	ext{final}})
\]

### ✔ 3.2 Model Training  
Tested:
- Linear Regression  
- Random Forest Regressor  
- Gradient Boosting (if used)  
- LightGBM / CatBoost (optional upgrades)

Used:
- **Cross-validation**  
- **Feature alignment** for test and train sets  

Selected best-performing model by minimizing final sMAPE.

### ✔ 3.3 Final Model Testing  
- Trained on full training set  
- Evaluated on test set  
- Reported final sMAPE  
- Interpreted whether model is accurate enough for industrial use  

---

## 📝 Final Conclusions  
Notebook concludes with:

- Correctness of recovery formula  
- Behavior of ore concentration patterns  
- Data integrity and anomaly handling  
- Best model selected and its sMAPE  
- Final recommendation on model’s suitability for deployment  

---

## 🗂 Suggested Repository Structure

```
project9-integrated/
│── data/
│── notebooks/
│   └── project9_integrated_clean.ipynb
│── README.md
│── CHANGELOG.md
│── requirements.txt
```

---

## ▶️ Running the Project

```bash
pip install -r requirements.txt
jupyter notebook notebooks/project9_integrated_clean.ipynb
```

---

## 👤 Author
**Braden Richards**  
Data Science | Machine Learning | Industrial Analytics  
Focused on predictive modeling, anomaly detection, and applied statistical analysis.
