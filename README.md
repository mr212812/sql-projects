# sql-projects

# 🛒 Zepto SQL Data Analysis Project

This SQL project analyzes product-level data from Zepto, a quick-commerce grocery delivery platform. The goal is to clean the data, extract meaningful patterns, and generate business insights.

## 📁 Dataset
- **File:**  https://github.com/mr212812/sql-projects/blob/main/zepto_v1.xlsx
- **Contents:** Product name, category, MRP, discount, stock, quantity, weight, etc.

## 🛠 Tools Used
- SQL Server / MySQL
- Excel (for initial exploration)

## ✅ Key SQL Tasks Performed
- Removed zero-priced entries and converted paise to rupees
- Checked and handled null values
- Found duplicate product names and cleaned them
- Calculated:
  - Revenue by category
  - Top 10 discounted products
  - High MRP products out of stock
  - Price per gram for bulk products
- Grouped products into `LOW`, `MEDIUM`, and `BULK` by weight
- Calculated inventory weight by category

## 🔍 Sample Queries
- What are the top discounted products?
- Which categories offer the highest average discounts?
- How much estimated revenue is generated per product category?

## 📂 Files
-  Dataset - https://github.com/mr212812/sql-projects/blob/main/zepto_v1.xlsx
-  SQL queries - https://github.com/mr212812/sql-projects/blob/main/zepto_analysis.sql

## 👩‍💻 Author
**Manvi Rana**  
SQL & Data Analysis Enthusiast  
