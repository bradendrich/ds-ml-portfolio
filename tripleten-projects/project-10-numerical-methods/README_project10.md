
# Numerical Methods — Rusty Bargain Car Price Prediction

## 📌 Project Overview
Rusty Bargain, a used car sales service, wants to build an app that instantly estimates car prices based on technical specifications and listing information.  
Your task is to:

1. **Explore and preprocess the dataset**
2. **Train multiple machine learning models**
3. **Compare prediction quality, training speed, and inference time**
4. **Select the best-performing model using RMSE**

This project introduces numerical optimization, model benchmarking, and high-performance gradient boosting libraries.

---

## 📁 Dataset Description
Source: `/datasets/car_data.csv`

### Features:
- `DateCrawled` — date the profile was downloaded  
- `VehicleType` — vehicle body type  
- `RegistrationYear` — year of vehicle registration  
- `Gearbox` — transmission type  
- `Power` — horsepower  
- `Model` — car model  
- `Mileage` — odometer reading (km)  
- `RegistrationMonth` — month of registration  
- `FuelType` — fuel type  
- `Brand` — manufacturer  
- `NotRepaired` — 'yes' or 'no' for unrepaired damage  
- `DateCreated` — listing creation date  
- `NumberOfPictures` — number of photos  
- `PostalCode` — seller postal code  
- `LastSeen` — last user activity  

### Target:
`Price` — vehicle price in Euros  

---

## 🧹 Step 1 — Data Preparation
The notebook includes:

- Removal of unrealistic values (e.g., registration year < 1900, power 0)  
- Converting dates into numeric/cyclical representations  
- One-hot encoding for categorical features when needed  
- Train-test split  

Data cleaning ensures stable model training and prevents numeric instability.

---

## 🤖 Step 2 — Model Training

The project compares the following models:

### ✔ Linear Regression (Sanity Check)
- Extremely fast to train  
- Helps verify that boosting models perform **better**  
- RMS error used as a baseline  

### ✔ Decision Tree Regressor
- Tuned for `max_depth`, `min_samples_split`  
- Risk of overfitting but good for establishing non-linearity  

### ✔ Random Forest Regressor
- Tuned `n_estimators`, `max_depth`  
- More stable predictions  
- Slower training than single tree  

### ✔ LightGBM (Gradient Boosting)
- Handles categorical features natively  
- Very fast training  
- High-quality predictions  
- Tuned with:
  - `num_leaves`
  - `learning_rate`
  - `n_estimators`

### ✔ CatBoost (optional)
- Handles categorical features extremely well  
- Good performance with minimal preprocessing  

### ✔ XGBoost (optional)
- Requires one-hot encoding  
- Competitive model quality  

---

## ⚙️ Step 3 — Performance Comparison

Metrics tracked:

### **1. RMSE (Quality)**  
Used as the primary evaluation metric:
\[
RMSE = \sqrt{rac{1}{n}\sum (y - \hat{y})^2}
\]

### **2. Training Time**  
Measured with Jupyter `%%time` magic.

### **3. Prediction Time**  
Useful for real-time value prediction in the mobile app.

### ✔ Key Findings:
- **LightGBM** and **CatBoost** deliver the best RMSE  
- **Linear Regression** is fast but inaccurate  
- **Random Forest** performs well but is slower  
- **Gradient boosting** provides the best tradeoff between speed & accuracy  

---

## 📝 Final Conclusions
Your notebook concludes with:

- Best model selected using RMSE  
- Benchmark comparison across:
  - Prediction speed  
  - Training time  
  - Accuracy  
- Pros & cons of each algorithm  
- A clear justification for the recommended model  

---

## 🗂 Suggested Repository Structure

```
project11-numerical-methods/
│── data/
│── notebooks/
│   └── project11_numerical_clean.ipynb
│── README.md
│── CHANGELOG.md
│── requirements.txt
```

---

## ▶️ Running the Project

```bash
pip install -r requirements.txt
jupyter notebook notebooks/project11_numerical_clean.ipynb
```

---

## 👤 Author
**Braden Richards**  
Machine Learning • Numerical Optimization • Model Benchmarking  
Focused on ML performance, speed optimization, and applied regression modeling.

