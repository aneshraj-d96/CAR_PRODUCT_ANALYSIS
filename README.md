# 🚗 Car Product Analysis

## 📌 Overview
This project explores a dataset of 100,000 car listings to uncover insights into pricing, mileage trends, brand performance, and condition-based valuation. Using Python, SQL, and machine learning, the goal is to build a predictive model and deliver interactive dashboards for business decision-making in the automobile resale domain.

---

## 🚗 **GitHub Project Repository:** 
[Click to view CAR_PRODUCT_ANALYSIS](https://github.com/aneshraj-d96/CAR_PRODUCT_ANALYSIS)



---

## 🧠 Skills & Technologies Used

- **Languages & Tools:** Python, SQL, Excel, Streamlit, Tableau
- **Libraries:** Pandas, NumPy, Scikit-learn
- **Platforms:** Jupyter Notebook, VS Code
- **Techniques:** Data Cleaning, Feature Engineering, Regression Modeling, Label Encoding, Data Visualization

---

## 📊 Dataset Summary

- **Total Records:** 100,000
- **Columns:**
  - `ID`, `Brand`, `Model`, `Year`, `Color`, `Mileage`, `Price`, `Condition`
- **Target Variable:** `Price`
- **Features Used:** Car age, mileage, brand, condition, and encoded categorical variables

---

## 📂 Project Structure

| File Name                          | Description                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------|
| `car_product_analysis.sql`        | SQL queries for data extraction and transformation                         |
| `car product analysis.ipynb`      | Jupyter notebook with full analysis workflow                               |
| `sqlconnect.py`                   | Python script for SQL database connection                                  |
| `app.py`                          | Streamlit app for interactive model deployment                             |
| `car_price_model.pkl`             | Trained machine learning model for price prediction                        |
| `feature_names.pkl`               | Serialized feature list used in model training                             |
| `label_encoders.pkl`              | Encoders for categorical variables                                         |
| `Car Product Analysis DASHBOARD.twb` | Tableau dashboard visualizing key metrics and trends                    |
| `cleaned_car_sales.csv`           | Preprocessed dataset used for modeling                                     |
| `Car_Data.csv`                    | Raw dataset containing 100,000 car listings                                |

---

## 🔍 Key Insights

- **Price vs. Mileage:** Older cars with higher mileage show predictable depreciation.
- **Brand Analysis:** Premium brands maintain higher resale value across years.
- **Condition Impact:** "New" cars command significantly higher prices than "Used."
- **Model Performance:** Regression model predicts car prices with high accuracy.
- **Deployment:** Streamlit app allows users to input car attributes and receive price predictions.

---

## 📈 Dashboard Preview

Dashboards are provided as images in the repository. They include:

- Price distribution by brand and year
- Mileage trends and condition breakdown
- KPI cards for average price, mileage, and car age

**Tabelau Dashboard**  
  <img src="https://image2url.com/images/1755687080391-fb555241-253c-4f23-84e4-fed6175f39b7.png" alt="Dashboard Preview" width="600"/>
  
**Streamlit app Dashboard**  
  <img src="https://image2url.com/images/1755856540117-f72ce694-f0b0-430e-a451-a8f28698b9e6.png" alt="Dashboard Preview" width="600"/>
  
---

## 🚀 How to Run

1. Clone the repository  
   `git clone https://github.com/aneshraj-data-96/CAR_PRODUCT_ANALYSIS.git`

2. Install dependencies  
   `pip install -r requirements.txt`

3. Run the Streamlit app  
   `streamlit run app.py`

---

## 📬 Contact

Created by **Anesh**  
Feel free to connect or reach out for collaboration!

