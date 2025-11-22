
# Linear Algebra Project — Insurance Customer Similarity, Prediction, & Data Masking

## 📌 Project Overview
This project applies linear algebra concepts to real business-focused machine learning tasks.  
You work with customer data from **Sure Tomorrow Insurance** and complete four major tasks:

1. **Find similar customers** using vector space geometry  
2. **Predict whether a new customer will receive an insurance benefit**  
3. **Predict the number of benefits** using linear regression  
4. **Protect personal data using linear-algebra–based transformations** (data obfuscation)

This project demonstrates:

- Vector similarity (cosine distance)
- Machine learning evaluation
- Linear regression mathematics
- Matrix transformations and invertibility
- Proof that data obfuscation can preserve model quality

---

## 📂 Dataset Description

Source: `/datasets/insurance_us.csv`

**Features:**
- `gender`  
- `age`  
- `salary`  
- `family_members`

**Target:**
- `benefits` — number of insurance benefits received over the last five years

Dataset contains no missing values and is structurally clean.

---

# 🧹 1. Data Preparation
Completed checks:
- No missing values  
- No extreme or invalid values  
- Converted categorical variable `gender` to numeric form  
- Verified distributions of numerical features

Data was then split into matrices/vectors for algebraic operations and ML tasks.

---

# 🔍 2. Task 1 — Finding Similar Customers

To identify similar customers for marketing:

### ✔ Converted each customer into a feature vector  
\[
v = [	ext{gender},\, 	ext{age},\, 	ext{salary},\, 	ext{family\_members}]
\]

### ✔ Used **cosine similarity**:
\[
\cos(	heta) = rac{v_1 \cdot v_2}{||v_1|| \, ||v_2||}
\]

Customers with the **highest cosine similarity** are most alike.

### ✔ Findings:
- The approach works effectively even without scaling because cosine similarity is scale-invariant.
- Nearest neighbors are identified accurately using vector operations.

---

# 🤖 3. Task 2 — Predicting Whether a Customer Will Receive a Benefit

The task compares:
- **DummyClassifier** (baseline)
- **Logistic Regression** (trained model)

### ✔ Observations:
- The dummy model sometimes does surprisingly well in imbalanced datasets  
- The trained model:
  - Learns real structure in the data  
  - Achieves higher accuracy/F1 than dummy  
  - Never performs worse *systematically*, because it learns from actual patterns

Evaluation metrics:
- Accuracy  
- F1-score (for imbalance)  

---

# 📈 4. Task 3 — Predicting Number of Benefits with Linear Regression

A linear regression model was trained to predict the **number of benefits**.

### ✔ Steps:
- Built design matrix `X`  
- Fit regression coefficients  
- Predicted target values  
- Calculated model metrics such as:
  - RMSE  
  - MAE  
  - R²  

### ✔ Findings:
The model provides reasonable predictions but is limited because:
- The target is discrete  
- Regression assumes linear relationships  
- The dataset is small  

Still, it serves as a perfect platform for demonstrating the next task: **data masking via invertible matrix multiplication**.

---

# 🔒 5. Task 4 — Data Masking with Linear Algebra

Goal:
> Protect client data while preserving the quality of machine learning predictions.

### ✔ Transformation:
Multiply data matrix `X` by a **random invertible matrix** `R`:

\[
X' = X R
\]

### ✔ Why the model still works:
Linear regression computes:
\[
w' = (X'^T X')^{-1} X'^T y
\]

Substitute:
\[
X' = XR
\]

After simplification:
\[
w = R w'
\]

Thus, predictions remain unchanged:
\[
\hat{y} = X w = X R w' = X' w'
\]

### ✔ Benefits:
- Personal feature values become unrecoverable without inverse matrix  
- Model performance is **identical**  
- Data is protected without introducing noise or distortion  

This demonstrates **secure linear-algebra data obfuscation**.

---

# 📝 Final Conclusions  
This project showcases practical uses of linear algebra in machine learning:

- Vector similarity enables customer matching  
- Model evaluation shows real vs dummy model performance  
- Regression equations connect directly to matrix math  
- Data masking via invertible matrices protects client privacy while preserving model output  

The mathematical elegance of linear algebra is fully demonstrated:  
> You can transform data in powerful ways **without altering what ML models learn**.

---

# 🗂 Suggested Repository Structure

```
project10-linear-algebra/
│── data/
│── notebooks/
│   └── project10_linear_algebra_clean.ipynb
│── README.md
│── CHANGELOG.md
│── requirements.txt
```

---

# ▶️ Running the Project

```bash
pip install -r requirements.txt
jupyter notebook notebooks/project10_linear_algebra_clean.ipynb
```

---

# 👤 Author  
**Braden Richards**  
Data Science | Machine Learning | Applied Mathematics  
Focused on ML theory, privacy-preserving transformations, and real-world analytical modeling.
