
import pandas as pd
from sqlalchemy import create_engine

# MySQL database configuration
username = 'root'
password = 'your_password'
host = 'localhost'
database_name = 'mydb'

# CSV file path
csv_file_path = 'output_file.csv'

# SQLAlchemy engine
engine = create_engine(f'mysql://{username}:@{host}/{database_name}')

# Read CSV file into Pandas DataFrame
df = pd.read_csv(csv_file_path)

# Specify the target table in the database
table_name = 'reading'

# Add data to MySQL database
df.to_sql(name=table_name, con=engine, if_exists='replace', index=False)

# Optional: Print confirmation message
print(f'Data from {csv_file_path} added to {table_name} in {database_name} database.')

