
# Megaline Plan Revenue Analysis — Statistical Data Analysis Project

## 📌 Overview
This project performs **Statistical Data Analysis (SDA)** on subscriber behavior for the telecom operator **Megaline**.  
The company offers two prepaid plans — **Surf** and **Ultimate** — and wants to understand **which plan generates more revenue**.

Using real-world-style datasets (calls, messages, internet usage, users, and plan details), this project includes:

- Data cleaning and preprocessing  
- Monthly usage calculations  
- Revenue computation  
- Descriptive statistics  
- Distribution analysis  
- Hypothesis testing with statistical rigor  

This project mimics real analytical work in telecom, finance, and product analytics.

---

## 🎯 Business Objective
Determine **which prepaid plan (Surf or Ultimate)** brings in **more revenue**, and whether:

1. Revenue differs significantly between Surf and Ultimate users.
2. Revenue differs between users in the **NY–NJ region** vs. all other regions.

These insights help Megaline optimize marketing budgets and plan pricing.

---

## 📂 Dataset Description

The project uses **five CSV files**:

### **1. users (megaline_users.csv)**
Contains subscriber information.
- `user_id`
- `first_name`, `last_name`
- `age`
- `reg_date`, `churn_date`
- `city`
- `plan` (Surf/Ultimate)

### **2. calls (megaline_calls.csv)**
- `id`
- `call_date`
- `duration` (in minutes, rounded up)
- `user_id`

### **3. messages (megaline_messages.csv)**
- `id`
- `message_date`
- `user_id`

### **4. internet (megaline_internet.csv)**
- `id`
- `mb_used`
- `session_date`
- `user_id`

### **5. plans (megaline_plans.csv)**
Surf vs. Ultimate plan specifications:
- Free minutes, texts, MB
- Overage pricing
- Monthly fee

---

## 🔧 Project Workflow

### **1. Load & Inspect Data**
- Use `pandas` to explore each table
- Identify irregularities, missing values, duplicates

### **2. Data Cleaning**
- Convert date columns to datetime
- Convert all ID fields to integers
- Handle missing values logically
- Remove duplicate messages/calls/internet sessions
- Fix impossible values (e.g., negative duration)

✔ All corrections were explained in the notebook.

---

## 📊 3. Usage Calculations per User (Monthly)

For each user-month:

- Total calls  
- Total minutes (rounded per Megaline rules)  
- Number of messages  
- Data usage (total MB → GB rounded up)  
- Monthly revenue calculated as:

```
monthly_revenue =
    plan_monthly_fee
    + overage_minutes  * price_per_minute
    + overage_texts    * price_per_text
    + overage_gb       * price_per_gb
```

---

## 📈 4. Descriptive Statistics & Visualizations

Computed for Surf & Ultimate:

- Mean, variance, standard deviation of:
  - Minutes
  - Messages
  - Data usage
  - Revenue

Visualizations included:

- Histograms of usage distributions  
- Revenue distribution by plan  
- Call/message/data usage patterns  

All plots include proper titles, axes, and legends.

---

## 🔬 5. Hypothesis Testing

### **Hypothesis 1: Mean revenue differs between Surf and Ultimate**

- **H₀:** Mean revenue is the same  
- **H₁:** Mean revenue differs  

Method:
- Two-sample **t-test** (independent)
- Unequal variance (Welch's t-test)

---

### **Hypothesis 2: NY–NJ users differ in revenue from other regions**

- **H₀:** Mean revenue is the same for NY–NJ vs other regions  
- **H₁:** Mean revenue differs  

Method:
- Two-sample **t-test**

---

## 🧪 Why t-tests?
- Revenue is numeric and approximately normally distributed due to the central limit theorem.
- Sample sizes are large (> 30)
- Groups are independent

---

## 📝 Final Summary

The notebook concludes with:

- Statistical significance results  
- Business interpretation  
- Recommendation on which plan earns more revenue  
- Whether regional differences matter  
- Suggestions for Megaline’s marketing and operations teams  

---

## 📁 Suggested Repository Structure

```
project3-megaline-SDA/
│── data/ 
│── notebooks/
│   └── project3_SDA_clean.ipynb
│── README.md
│── CHANGELOG.md
│── requirements.txt
```

---

## ▶️ Running the Project

```bash
pip install -r requirements.txt
jupyter notebook notebooks/project3_SDA_clean.ipynb
```

---

## 👤 Author
**Braden Richards**  
Data Science & Machine Learning  
Focused on telecom analytics, applied statistics, and real-world business data problems.


