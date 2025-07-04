# 🇮🇳 India General Elections 2024 - SQL Data Analysis Project

## 📊 Project Overview
This project analyzes the 2024 Indian General Election results using SQL. The data has been extracted from publicly available sources and organized into multiple relational tables for analysis. The queries focus on **state-wise, party-wise, and alliance-wise performance**, including voter statistics and seat margins.

## 🗂️ Datasets Used
-  "C:\Users\manvi\Downloads\states.csv" – List of Indian states with unique IDs  
-  "C:\Users\manvi\Downloads\statewise_results.csv"– Mapping of states to constituencies  
-  "C:\Users\manvi\Downloads\partywise_results.csv" – Party-wise seats won
-  "C:\Users\manvi\Downloads\constituencywise_results.csv"– Candidate-level win data  
-  "C:\Users\manvi\Downloads\constituencywise_details.csv" – EVM & postal vote breakdowns

## 🧠 Key SQL Concepts Applied
- Joins (`INNER JOIN`)
- Aggregations (`SUM`, `COUNT`, `GROUP BY`)
- Filtering (`WHERE`, `IN`)
- Conditional logic (`CASE WHEN`)
- Updating tables (`ALTER TABLE`, `UPDATE`)
- Sorting and ranking

## 🔍 Key Questions Answered
1. Total seats in the election  
2. State-wise seat distribution  
3. Seats won by NDA and I.N.D.I.A alliances  
4. Party-wise performance under each alliance  
5. Vote margin and candidate insights for key constituencies  
6. EVM vs postal vote distribution  
7. Top-performing candidates by EVM votes  
8. Alliance-wise seat wins per state  

## 💡 Tools Used
- SQL Server (SSMS)
- Flat File Import for CSVs

## 🧾 Notes
- Data is loaded via flat file import.
- All queries are written to be easy to modify for different constituencies or states.
- Alliance column (`party_alliance`) was created and updated manually for better analysis.

## 🚀 How to Use
1. Open `INDIA GENERAL ELECTIONS RESULT ANALYSIS 2024.sql` in SQL Server Management Studio.  
2. Import the CSV files using **Import Flat File Wizard**.  
3. Run each query section to explore insights.

## 📌 Author
**Manvi Rana**  
*Aspiring Data Analyst | Skilled in SQL & Excel | Portfolio-Driven Learner*
