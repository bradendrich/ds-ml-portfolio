
# Machine Learning in Business — Oil Well Profitability Analysis (OilyGiant)

## 📌 Project Overview
You are working as an analyst for **OilyGiant**, a mining company exploring three potential regions for a new oil well field.  
The goal: **identify the most profitable region with an acceptable risk threshold**.

This project integrates business-focused data science, including:
- Data preparation  
- Linear regression modeling  
- Profit estimation  
- Bootstrapping  
- Risk analysis and decision-making  

Your final recommendation should satisfy:
- **Risk of loss < 2.5%**
- **Highest average profit among eligible regions**

---

## 📂 Dataset Description

You are given geological data for **three regions**:

- `geo_data_0.csv`
- `geo_data_1.csv`
- `geo_data_2.csv`

Each contains:

| Feature | Description |
|---------|-------------|
| `id` | Unique oil well identifier |
| `f0`, `f1`, `f2` | Geological features |
| `product` | Volume of reserves (thousand barrels) |

Target:
- `product`

Constraints:
- Only **LinearRegression** can be used (other models do not generalize reliably for this synthetic dataset).

---

## 🧹 Step 1 — Data Preparation

For each region:
- Loaded datasets  
- Checked for missing values  
- Validated data types  
- Analyzed feature distributions  
- Separated features (`f0`, `f1`, `f2`) and target (`product`)

No deep cleaning is needed since the dataset is synthetic and well-structured.

---

## 🤖 Step 2 — Model Training and Validation

For each region:

### 2.1 Train–Validation Split
- **75% train / 25% validation**

### 2.2 Linear Regression Model
Trained using:
```python
from sklearn.linear_model import LinearRegression
```

### 2.3 Predictions Saved
- Stored predictions + actual target values for later profit calculations.

### 2.4 Model Evaluation
For each region:
- Mean predicted reserves  
- Validation RMSE  
- Difference between prediction mean and actual mean  
- Quality of predictions

### 2.5 Insights
RMSE identifies:
- Which regions have predictable reserve volumes  
- Which region has the most modeling uncertainty

---

## 💰 Step 3 — Profit Calculation Prep

### Key business parameters:
- **Budget:** $100M  
- **New wells:** 200  
- **Revenue per thousand barrels:** $4,500  
- **Max wells explored:** 500  
- Must choose the **top 200 wells** per region based on predicted reserves.

### 3.2 Break-even Point
The project computes:
- Minimum reserve volume required to avoid loss  
- Compares it to each region’s average predicted reserves  

### 3.3 Findings
Identifies whether the region has:
- Enough high-producing wells  
- Low risk of negative profit  

---

## 🧮 Step 4 — Profit Function

The project defines a function to:
1. Select top 200 predicted wells  
2. Summarize true product values  
3. Compute profit:  
   \[
   	ext{profit} = \sum(	ext{true product} 	imes 4500) - 100,000,000
   \]

A region is recommended if:
- Profit is positive  
- Risk of loss < 2.5%

---

## 📈 Step 5 — Bootstrapping: Profit & Risk Analysis

For each region:
- **1000 bootstrap samples**  
- Computed profit distribution  
- Calculated:
  - Mean profit  
  - 95% confidence interval  
  - Probability of loss (negative profit)

### Interpretation:
A strong candidate region has:
- Confidence interval far above zero  
- Average profit highest among valid regions  
- Loss probability well under 2.5%  

---

## 🏆 Step 6 — Final Recommendation

The notebook concludes with:
- Comparison across all three regions  
- Identification of the safest, most profitable region  
- Business justification using:
  - Profit margin  
  - Uncertainty  
  - Bootstrapped risk  

---

## 🗂 Suggested Repository Structure

```
project8-ml-business/
│── data/
│── notebooks/
│   └── project8_ml_business_clean.ipynb
│── README.md
│── CHANGELOG.md
│── requirements.txt
```

---

## ▶️ Running the Project

```bash
pip install -r requirements.txt
jupyter notebook notebooks/project8_ml_business_clean.ipynb
```

---

## 👤 Author
**Braden Richards**  
Data Science | Machine Learning | Risk Analysis  
Focused on business-oriented ML, forecasting, and decision-making.
