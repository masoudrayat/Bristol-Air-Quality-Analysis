# PHASE 1: filter based on date
import pandas as pd
from datetime import datetime

# Load the dataset
df = pd.read_csv('Air_Quality_Continuous_1.csv')  

# Convert the date column to datetime format
df['date_column'] = pd.to_datetime(df['date_column'])

# Task i: Crop the dataset to hold only the data from 1st January 2015 on
df = df[df['date_column'] >= '2015-01-01']

# Task ii: Cleanse the cropped dataset
start_date = '2015-01-01'
end_date = '2023-10-22'
df = df[(df['date_column'] >= start_date) & (df['date_column'] <= end_date)]

# Save the cropped and cleansed dataset to a new CSV file
df.to_csv('cropped_dataset1.csv', index=False)




#PHASE 2: merge csv files
import pandas as pd

# Read CSV files into DataFrames
station_df = pd.read_csv('Station.csv')
constituency_df = pd.read_csv('Constituency.csv')
reading_df = pd.read_csv('output_file.csv')

# Merge station and constituency files on Constituency_ID
merged_df1 = pd.merge(station_df, constituency_df, on='Constituency_ID', how='inner')

# Merge the result with the reading file on Station_ID
final_merged_df = pd.merge(merged_df1, reading_df, on='Station_ID', how='inner')

# Save the final merged DataFrame to a new CSV file
final_merged_df.to_csv('merged_result.csv', index=False)





# Phase 3: removing empty site id
import pandas as pd

# Read the merged CSV file into a DataFrame
df = pd.read_csv('merged_file.csv')

# Assuming 'Site_ID' is the column with empty cells
# Replace 'Site_ID' with the actual column name if different
df = df.dropna(subset=['Site_ID'])

# Now, df no longer contains rows with empty cells in the 'Site_ID' column

# If you want to save the modified DataFrame back to a CSV file
df.to_csv('your_modified_file.csv', index=False)





# phase 4: removing duplicates
import pandas as pd

# Read the CSV file into a DataFrame
df = pd.read_csv('your_modified_file.csv')

# Drop duplicate rows based on the first two columns
df = df.drop_duplicates(subset=['Date_Time', 'Site_ID'])

# If you want to save the modified DataFrame back to a CSV file
df.to_csv('modified_file.csv', index=False)





# phase 5: removing negative values

import pandas as pd

# Load the CSV file into a DataFrame
df = pd.read_csv('modified_file.csv')

# Specify the columns to check for negative values
columns_to_check = ['NOx', 'NO2', 'NO', 'PM10', 'O3', 'NVPM10', 'VPM10', 'NVPM2_5', 'PM2_5', 'VPM2_5','CO']  # Add the columns you want to include

try:
    # Create a condition to filter rows with non-negative values in specified columns (considering empty cells)
    condition = (df[columns_to_check].fillna(0) >= 0).all(axis=1)
    
    # Apply the condition to keep rows satisfying the condition
    df = df[condition]

    if not df.empty:
        # Save the modified DataFrame back to a CSV file
        df.to_csv('output_file.csv', index=False)
        print("Rows with non-negative values in specified columns considered empty cells. Output saved to 'output_file.csv'.")
    else:
        print("No rows left after removing rows with non-negative values in specified columns and considering empty cells.")
except Exception as e:
    print(f"An error occurred: {e}")

