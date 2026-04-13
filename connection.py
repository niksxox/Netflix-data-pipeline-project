
import mysql.connector as mysql 

import mysql.connector as mysql

import pandas as pd

df = pd.read_csv("netflix_titles_cleaned.csv")

try:
    conn = mysql.connect(
        host="localhost",
        user="root",
        password="password",
        database="netflix_db"
    )
    cursor = conn.cursor()

    #data for batch insertion
    sql = "INSERT INTO netflix (title, director, country, release_year, type) VALUES (%s, %s, %s, %s, %s)"
    values = [
        (row['title'], row['director'], row['country'], int(row['release_year']), row['type'])
        for _, row in df.iterrows()
    ]

    cursor.executemany(sql, values)
    conn.commit()
    print(f"Successfully inserted {cursor.rowcount} rows.")

except mysql.Error as err:
    print(f"Error: {err}")
finally:
    if 'conn' in locals() and conn.is_connected():
        conn.close()