📊 Netflix Data Pipeline Project

Overview :-

I built this project to understand how a basic data pipeline works using Python and SQL. The idea was to take raw Netflix data, clean it, store it in a database, and then run queries to get useful insights.

What this project does:
Loads raw Netflix dataset (CSV)  
Cleans the data using Pandas (handles missing values, formats, etc.)  
Extracts useful features like year and month  
Stores the cleaned data into a database  
Runs SQL queries to analyze the data  
Adds a timestamp column to track when data is inserted  

Tech used:  
Python (Pandas, NumPy)  
SQL (MySQL / SQLite)  
VS Code  

How to run:  
Install dependencies -> pip install -r requirements.txt  
Run data cleaning -> python data_cleaning.py  
Run database script -> python connection.py  

Future improvements:   
Automate the pipeline (run daily)  
Add a dashboard for visualization  
Use a cloud database instead of local  
