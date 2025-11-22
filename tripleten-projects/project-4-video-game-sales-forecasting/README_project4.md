
# Video Game Sales Forecasting — Integrated Data Analysis Project

## 🎮 Project Overview
This project analyzes **video game sales across global markets** using historical data up to 2016.  
Your goal is to identify patterns that drive commercial success, allowing the online store **Ice** to forecast sales for 2017 and optimize marketing strategies.

The analysis combines:
- Data cleaning  
- Exploratory analysis  
- Platform and genre trends  
- Regional market behavior  
- Correlation and rating impact  
- Hypothesis testing  
- Business-driven recommendations  

This project represents real-world analytical reasoning for the gaming industry.

---

## 📁 Dataset Description
The input file is **games.csv**, containing the following columns:

- `name` — game title  
- `platform` — console/platform (PS4, XOne, etc.)  
- `year_of_release`  
- `genre`  
- `na_sales` — North America (millions USD)  
- `eu_sales` — Europe (millions USD)  
- `jp_sales` — Japan (millions USD)  
- `other_sales` — all other regions  
- `critic_score` — 0–100  
- `user_score` — 0–10  
- `rating` — ESRB rating  

**Note:** 2016 data may be incomplete.

---

## 🧹 Step 1–2: Data Preparation

### Column Name Standardization
- Converted all column names to **lowercase**.

### Data Type Fixes
Converted:
- `year_of_release` → float → int  
- `critic_score` → float  
- `user_score` → float, replacing `'tbd'` with `NaN`  
- `rating` → category  

### Handling Missing Data
Missing values were analyzed and either:
- Left as `NaN` when inferencing wasn't reliable  
- Filled with median/expected values when appropriate  
- Reasoning was provided (e.g., review scores missing when not yet published)

### Added Feature
`total_sales` = sum of regional sales  
Used to measure global performance.

---

## 📊 Step 3: Exploratory Analysis

### **Game Releases Over Time**
- Sharp rise starting mid‑90s, peak around 2008–2011, then decline.
- Data before ~2000 not reliable for forecasting.

### **Platform Sales Trends**
- Identified top platforms such as PS4, XOne, 3DS.
- Platforms fade after ~8–10 years of lifecycle.
- Legacy platforms (PS2, Wii, DS) show decline → zero sales by 2016.

### **Selecting Relevant Forecast Window**
Based on lifecycle and data quality:
- Use **2010–2016** for trend forecasting.

### **Platform Performance & Growth**
Analyzed:
- Leading platforms globally  
- Platforms gaining vs. shrinking  
- Box plots of global sales by platform  
- Variability & outliers

### **Impact of Reviews on Sales**
Focused on a major platform (e.g., **PS4**):
- Scatter plots for critic/user score vs. sales  
- Correlation coefficients  
- Insights on how review sentiment predicts sales

### **Genre Analysis**
- Action and Sports dominate in volume  
- Role-Playing, Shooter, Platform show strong per‑title sales  
- Puzzle and Strategy have lower performance overall  

---

## 🌍 Step 4: Regional Profiles (NA, EU, JP)

For each region, identified:
- **Top 5 platforms**
- **Top 5 genres**
- **Market share differences**
- **ESRB rating influence** (e.g., Teen vs. Mature)

Findings:
- NA & EU show similar tastes  
- JP has completely different preferences (Nintendo-heavy, RPG-dominant)  
- ESRB rating affects Western regions more than Japan  

---

## 🔬 Step 5: Hypothesis Testing

### **Hypothesis 1**
**Null (H₀):** Average user rating for Xbox One = PC  
**Alt (H₁):** The averages differ  
→ Used **independent t-test** with NaN-safe filtering  
Result interpreted in notebook.

### **Hypothesis 2**
**Null (H₀):** User ratings for Action = Sports  
**Alt (H₁):** Ratings differ  
→ Also tested using independent t-test  
Interpretation provided.

Justification:  
- Continuous numeric data  
- Independent samples  
- Review scores roughly normal due to CLT  
- Adequate sample sizes  

---

## 📌 Step 6: Final Conclusions
The notebook concludes with a structured business summary:

- Platforms to prioritize for 2017  
- Genres with strongest commercial potential  
- How ratings influence performance  
- Regional marketing recommendations  
- General data reliability notes  

---

## 🗂 Suggested Repository Structure

```
project5-video-game-sales/
│── data/
│── notebooks/
│   └── project5_vgsales_clean.ipynb
│── README.md
│── CHANGELOG.md
│── requirements.txt
```

---

## ▶️ Running the Project

```bash
pip install -r requirements.txt
jupyter notebook notebooks/project5_vgsales_clean.ipynb
```

---

## 👤 Author
**Braden Richards**  
Data Science | Machine Learning | Analytics  
Focused on gaming analytics, forecasting models, and real-world data interpretation.


