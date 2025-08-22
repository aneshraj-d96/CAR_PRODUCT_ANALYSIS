# 🚗 Car Product Analysis

A full-stack analytics solution designed to uncover pricing dynamics, mileage trends, and brand valuation in the automobile resale market. This project empowers dealerships, resale platforms, and analysts with predictive modeling and interactive dashboards for smarter pricing and inventory decisions.

---

## 🚗 GitHub Project Repository  
🔗 [Click to view CAR_PRODUCT_ANALYSIS](https://github.com/aneshraj-d96/CAR_PRODUCT_ANALYSIS)

---

## 🧠 Project Overview

The resale value of a car depends on multiple factors—brand, mileage, condition, and age. This project analyzes **100,000+ car listings** to build a regression model that predicts price and visualizes key market insights.

**Key Objectives:**
- Clean and preprocess car listing data  
- Engineer features for price modeling and dashboarding  
- Build regression models to predict car resale value  
- Deploy interactive dashboards for business decision-making  

---

## 📁 Project Structure

| File Name                          | Description                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------|
| `Car_Data.csv`                    | Raw dataset containing 100,000 car listings                                |
| `cleaned_car_sales.csv`           | Preprocessed dataset used for modeling                                     |
| `car product analysis.ipynb`      | Jupyter notebook with full analysis workflow                               |
| `car_product_analysis.sql`        | SQL queries for data extraction and transformation                         |
| `sqlconnect.py`                   | Python script for SQL database connection                                  |
| `car_price_model.pkl`             | Trained machine learning model for price prediction                        |
| `feature_names.pkl`               | Serialized feature list used in model training                             |
| `label_encoders.pkl`              | Encoders for categorical variables                                         |
| `app.py`                          | Streamlit app for interactive model deployment                             |
| `Car Product Analysis DASHBOARD.twb` | Tableau dashboard visualizing key metrics and trends                    |

---

## 🧹 Data Preprocessing

- Imputed missing values in `Mileage` and `Condition`  
- Created derived features like `Car Age` from `Year`  
- Encoded categorical variables (`Brand`, `Model`, `Color`, `Condition`)  
- Removed outliers in `Price` and `Mileage`  
- Optimized data types for memory efficiency  

---

## 📈 Exploratory Data Analysis

- Price distribution across brands and years  
- Mileage trends segmented by car condition  
- Age-based depreciation curves  
- Condition impact on pricing  
- Correlation matrix of features influencing price  

---

## 🤖 Modeling Approach

- **Target Variable**: `Price`  
- **Algorithms Used**: Linear Regression, Random Forest, XGBoost  
- **Evaluation Metrics**: RMSE, MAE, R² Score  
- **Feature Importance**: `Car Age`, `Mileage`, `Brand`, `Condition`, `Model`  

---

## 📊 Dashboard Overview

### 📍 Tableau Dashboard  
Visualizes key pricing and mileage metrics:

- 📊 Price distribution by brand and year  
- 🚗 Mileage trends segmented by condition  
- 📈 KPI cards for average price, mileage, and car age  
- 🧠 Feature impact on predicted price  

![Tableau Preview](https://image2url.com/images/1755687080391-fb555241-253c-4f23-84e4-fed6175f39b7.png)

---

### 🟢 Streamlit App  
Interactive model deployment with real-time predictions:

- 🛠️ Input car attributes to get predicted price  
- 📉 Visual breakdown of feature importance  
- 🔍 Dynamic filtering by brand, condition, and year  
- 🧮 SQL-integrated querying for custom car segments  

![Streamlit Preview](https://image2url.com/images/1755856540117-f72ce694-f0b0-430e-a451-a8f28698b9e6.png)

---

## 🚀 Deployment

- Model serialized with `joblib` as `car_price_model.pkl`  
- Dashboard deployed via **Streamlit Cloud**  
- Tableau dashboard built using `.twb` workbook  
- SQL integration for dynamic data querying  
- Git LFS used for large file management  

---

## 🧠 Business Impact

- Enables accurate pricing for resale platforms and dealerships  
- Identifies undervalued or overvalued listings  
- Supports inventory planning based on brand and condition trends  
- Enhances customer trust with data-driven pricing transparency  

---

## 🛠️ Tech Stack

- **Python**: Pandas, NumPy, Scikit-learn, Streamlit  
- **SQL**: Data extraction and transformation  
- **Visualization**: Tableau, Matplotlib, Seaborn  
- **Deployment**: Streamlit Cloud, GitHub, Git LFS  

---

## 📌 Future Enhancements

- Integrate web scraping for real-time car listings  
- Add classification model for condition prediction  
- Enable user-uploaded car specs for instant valuation  
- Expand dashboard to include brand-wise ROI and depreciation curves  

---

## 👤 Author

**Anesh Raj**  
Data Analyst | Data Scientist | Business Analyst  
Focused on multi-industry impact through predictive modeling and dashboarding.  
📍 Chennai, India  
🔗 [GitHub Profile](https://github.com/aneshraj-d96)
