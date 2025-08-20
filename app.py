# app.py

import streamlit as st
import pandas as pd
import joblib

# Load model and encoders
model = joblib.load('C:\\Users\\Dhusyath\\Downloads\\PROJECTS_DA\\PROJECTS_DA\\car product\\car_price_model.pkl')
label_encoders = joblib.load('C:\\Users\\Dhusyath\\Downloads\\PROJECTS_DA\\PROJECTS_DA\\car product\\label_encoders.pkl')
feature_names = joblib.load('C:\\Users\\Dhusyath\\Downloads\\PROJECTS_DA\\PROJECTS_DA\\car product\\feature_names.pkl')

st.title("🚗 Car Price Predictor")

# Create input form
user_input = {}

# Dropdowns for categorical features
for col in ['Brand', 'Model', 'Color', 'Condition']:
    options = label_encoders[col].classes_.tolist()
    selected = st.selectbox(f"{col}", options)
    encoded = label_encoders[col].transform([selected])[0]
    user_input[col] = encoded

# Numeric inputs
user_input["Year"] = st.number_input("Year", min_value=1980, max_value=2025, value=2020)
user_input["Mileage"] = st.number_input("Mileage", min_value=0.0, value=30000.0)

# Predict button
if st.button("Predict Price"):
    input_df = pd.DataFrame([user_input])[feature_names]
    prediction = model.predict(input_df)[0]
    st.success(f"💰 Estimated Price: ₹{prediction:,.2f}")

