# Instacart EDA Project

## Overview
This project performs **Exploratory Data Analysis (EDA)** on a modified Instacart dataset.  
The goal is to understand customer shopping behavior, clean and prepare the dataset, and generate insights using plots and descriptive statistics.

This project mimics real-world data analytics workflows: data cleaning, missing-value handling, merging relational tables, and communicating insights visually.

## Business Objective
Instacart wants to better understand:
- When customers order groceries (days + hours)
- How frequently customers re-order items
- Which products are most popular
- How many items customers typically buy per order

These insights can be used to optimize marketing campaigns, inventory, and customer engagement.

## Dataset Description
Five CSV files (cleaned and combined in the notebook):

### **instacart_orders.csv**
- `order_id`
- `user_id`
- `order_number`
- `order_dow`
- `order_hour_of_day`
- `days_since_prior_order`

### **products.csv**
- `product_id`
- `product_name`
- `aisle_id`
- `department_id`

### **order_products.csv**
- `order_id`
- `product_id`
- `add_to_cart_order`
- `reordered`

### **aisles.csv**
- `aisle_id`
- `aisle`

### **departments.csv**
- `department_id`
- `department`

## Project Workflow

### **1. Data Loading**
Using `pd.read_csv()` with custom separators and encodings due to nonstandard formatting.

### **2. Data Cleaning**
- Standardized dtypes (IDs → int)
- Handled missing values:
  - Filled missing categorical values
  - Imputed missing numeric intervals
- Removed duplicates across tables
- Justified each cleaning decision in Markdown

### **3. Required EDA Tasks**

### [A] Required Visualizations
- Validation of `order_hour_of_day` (0–23) and `order_dow` (0–6)
- Plot: Orders per hour of day
- Plot: Orders per day of week
- Plot: Distribution of `days_since_prior_order`

### [B] Required Analytical Tasks
- Compare order-hour distributions for Wednesday vs Saturday
- Histogram: number of orders per customer
- Top 20 most frequently ordered products

### [C] Advanced EDA (2+ required)
Examples include:
- Distribution: number of items per order
- Top 20 most reordered products
- Reorder proportions per product
- Reorder proportions per customer
- Most common “first item added to cart” products

## Tools & Technologies
- Python 3.x  
- pandas  
- matplotlib  
- seaborn  
- Jupyter Notebook  

## Repository Structure
```
project2-instacart-eda/
│── data/                           # dataset CSVs (optional upload)
│── notebooks/
│   └── project2_EDA_clean.ipynb
│── README.md
│── CHANGELOG.md
│── requirements.txt
```

## Running the Project
```bash
pip install -r requirements.txt
jupyter notebook notebooks/project2_EDA_clean.ipynb
```

## Author
**Braden Richards**  
Data Science & Analytics  
Passionate about EDA, machine learning, and real-world applied analytics.
