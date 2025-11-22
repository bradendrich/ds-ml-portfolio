
# Supervised Learning — Bank Customer Churn Prediction (Beta Bank)

## 📌 Project Overview
Beta Bank is experiencing customer churn — clients gradually leaving over time.  
Since **retaining customers is cheaper than acquiring new ones**, the company wants to predict which customers are at risk so they can intervene.

Your task is to build a **supervised classification model** that predicts whether a client will leave the bank.  
The goal is to maximize **F1-score**, with a required threshold of **0.59**.  
You also compare **AUC-ROC** with the F1-score to evaluate model robustness.

This project simulates applied machine learning workflows used in fintech and customer analytics.

---

## 📂 Dataset Description

Source: `/datasets/Churn.csv`

| Feature | Description |
|--------|-------------|
| `RowNumber` | Row index |
| `CustomerId` | Unique identifier |
| `Surname` | Last name |
| `CreditScore` | Credit score |
| `Geography` | Country of residence |
| `Gender` | Gender |
| `Age` | Customer age |
| `Tenure` | Years of holding a fixed deposit |
| `Balance` | Account balance |
| `NumOfProducts` | Number of products used |
| `HasCrCard` | Credit card flag |
| `IsActiveMember` | Activity status |
| `EstimatedSalary` | Salary estimate |
| **Target: `Exited`** | 1 if the customer left, 0 otherwise |

---

## 🧹 Data Preparation

### ✔ Converted categorical variables:
- `Geography` → One-hot encoding  
- `Gender` → Binary encoding  

### ✔ Dropped identifiers:
- `RowNumber`, `CustomerId`, `Surname`  
These contain no predictive signal.

### ✔ Numerical features:
Scaled using **StandardScaler** to improve model performance on distance-based algorithms.

### ✔ Checked and handled:
- Missing values  
- Data types  
- Distribution shapes  

---

## ⚖️ Class Imbalance Investigation

The target `Exited` is **highly imbalanced**:
- Majority: customers who stayed (0)  
- Minority: customers who left (1)  

Initial (baseline) model trained **without handling imbalance** shows:
- High accuracy
- Low F1-score  
(because accuracy is misleading when classes are uneven)

This highlights the need for **imbalance correction**.

---

## 🛠 Fixing Class Imbalance

At least two techniques were used:

### **1. Class Weighting**
Passing `class_weight='balanced'` to algorithms like:
- Logistic Regression
- Random Forest
- Decision Tree

This increases penalty for misclassifying minority customers.

### **2. Oversampling (Random Oversampling / SMOTE)**
Synthetic minority generation via:
- **RandomOversampler**
- **SMOTE**

Creates synthetic minority examples to balance the training data.

### **3. Undersampling (optional)**
Reduces majority class size—used for experimentation.

Each technique was compared using validation F1-score.

---

## 🤖 Model Training & Hyperparameter Tuning

Multiple models were tested:

### **1. Logistic Regression**
- With/without scaling  
- Balanced class weights  
- Penalty tuning (L2)

### **2. Decision Tree**
- Tuning: `max_depth`, `min_samples_split`, `criterion`

### **3. Random Forest**
- Tuning: `n_estimators`, `max_depth`, `min_samples_leaf`
- With class weights + oversampling

### **4. Gradient Boosting (if used)**
- Sometimes improves F1 further.

A systematic grid search or manual tuning was performed using the **validation set**.

---

## 🧪 Final Model Testing

After selecting the best model using validation F1:
- Trained on combined train+validation set  
- Tested on the held-out **test set**

Reported metrics:
- **Final F1-score** (must be ≥ 0.59 to pass)
- **AUC-ROC**  
- **Confusion matrix & interpretation (optional)**

Interpretation includes:
- How well the model identifies churners  
- Trade-offs between precision and recall  
- Whether performance is acceptable for bank operations  

---

## 📌 Conclusions

The project concludes with:
- Which model performed best and why  
- Impact of handling class imbalance  
- Interpretation of AUC-ROC vs F1  
- Business implications for churn reduction  
- Suggestions for further model improvements:
  - More customer behavior features  
  - Ensemble methods  
  - Adding cost-sensitive training  

---

## 📁 Suggested Repository Structure

```
project7-supervised-learning/
│── data/
│── notebooks/
│   └── project7_supervised_clean.ipynb
│── README.md
│── CHANGELOG.md
│── requirements.txt
```

---

## ▶️ Running the Project

```bash
pip install -r requirements.txt
jupyter notebook notebooks/project7_supervised_clean.ipynb
```

---

## 👤 Author
**Braden Richards**  
Data Science | Machine Learning | Predictive Modeling  
Focused on churn analysis, customer behavior prediction, and supervised ML pipelines.
