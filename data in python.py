import pandas as pd

df = pd.read_csv("netflix_titles.csv")

print(df.head())
print(df.info())

#printing null values
print(df.isnull().sum())

#handling missing values
df.fillna({
    'director': 'Unknown',
    'cast': 'Unknown',
    'country': 'Unknown',
    'duration': 'Unknown',
    'rating': 'Unknown'
}, inplace=True)

#convert date_added to datetime
df['date_added'] = df['date_added'].str.strip()
df['date_added'] = pd.to_datetime(df['date_added'], errors='coerce')
#extract terms
df['year_added'] = df['date_added'].dt.year
df['month_added'] = df['date_added'].dt.month

#clean duration column
df[['duration_num', 'duration_type']] = df['duration'].str.split(' ', expand=True)

#movies vs tv shows
print(df['type'].value_counts())

#top countries 
print(df['country'].value_counts().head(10))

#content added per year
print(df['year_added'].value_counts().sort_index())

#common genres
print(df['listed_in'].value_counts().head(10))

#saving the data
df.to_csv("netflix_titles_cleaned.csv", index=False)
