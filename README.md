# Bristol Air Quality Analysis (Data Management Fundamentals)

![MySQL](https://img.shields.io/badge/MySQL-00758F?style=for-the-badge&logo=mysql&logoColor=white)
![MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)
![phpMyAdmin](https://img.shields.io/badge/phpMyAdmin-6C78AF?style=for-the-badge&logo=phpmyadmin&logoColor=white)
![MongoDB Compass](https://img.shields.io/badge/MongoDB%20Compass-47A248?style=for-the-badge&logo=mongodb&logoColor=white)
![ERD](https://img.shields.io/badge/ERD-004088?style=for-the-badge&logo=diagrams.net&logoColor=white)

This project is a component of an air quality monitoring system that specifically focuses on data from Bristol, storing and analysing data related to pollutants and environmental factors. The dataset spans from 1993 to October 22, 2023, and includes information collected from 19 monitoring stations in and around Bristol.

## Table of Contents

1. [Requirements Analysis and Design](#requirements-analysis-and-design)
    - [Requirements Analysis](#requirements-analysis)
    - [Database Design](#database-design)
2. [Database Implementation](#database-implementation)
    - [Database Creation](#database-creation)
    - [Data Loading](#data-loading)
3. [Data Analysis and Reporting](#data-analysis-and-reporting)
    - [Data Analysis](#data-analysis)
4. [Steps Taken](#steps-taken)
    - [Cleaning and Data Preprocessing](#cleaning-and-data-preprocessing)
    - [Visualisation and Statistical Analysis](#visualisation-and-statistical-analysis)
    - [Creating and Implementing a Normalised Database](#creating-and-implementing-a-normalised-database)
    - [Modelling, Implementing, and Querying a NoSQL Database](#modelling-implementing-and-querying-a-nosql-database)
5. [Tools and Programming Languages Used](#tools-and-programming-languages-used)
6. [Project Structure](#project-structure)

---

## Requirements Analysis and Design

- **Requirements Analysis**: Identified project requirements regarding the necessary data, including pollutants, station information, and constituency details.
- **Database Design**: Created an Entity-Relationship Diagram (ERD) to illustrate the database structure and relationships between tables.

## Database Implementation

- **Database Creation**: Used database management tools such as MySQL and phpMyAdmin to create the database. I wrote SQL scripts to create tables and define relationships between them.
- **Data Loading**: Prepared initial data for various tables, such as constituency and station information. Used Python scripts to load data into the database.

## Data Analysis and Reporting

- **Data Analysis**: Wrote SQL queries to extract and analyse data. Analysed air quality data to identify significant patterns and trends.

## A Brief Overview of Steps Taken:

1. **Cleaning and Data Preprocessing**: Initial cleaning of the dataset to remove any inconsistencies and ensure data quality.
2. **Visualisation and Statistical Analysis**: Used various visualisation techniques to explore and understand the data.
3. **Creating and Implementing a Normalised Database**: Designed and implemented a normalised relational database in MySQL.
4. **Modelling, Implementing, and Querying a NoSQL Database**: Used MongoDB for specific queries and data analysis tasks.

Overall, this project allowed me to demonstrate my proficiency in data analysis, database management, and programming while also deepening my understanding of air quality monitoring and environmental data analysis methodologies.

## Tools and Programming Languages Used:

- **Database Management**: MySQL, MongoDB
- **Database Management Tools**: phpMyAdmin, MongoDB Compass
- **Programming Languages**: SQL, Python
- **Data Analysis and Visualisation**: Python (pandas, matplotlib)
- **Design Tools**: ERD software for creating entity-relationship diagrams

## Project Structure

```plaintext
air_quality_project/
├── data/
│   ├── Air_Quality_Continuous.csv
│   ├── pollution.sql
│   ├── query-a.sql
│   ├── query-b.sql
│   ├── query-c.sql
├── cropped/
│   ├── Constituency.csv
│   ├── reading.csv
│   ├── Schema.csv
│   ├── Station.csv
├── scripts/
│   ├── import.py
│   ├── cropped.py
├── images/
│   ├── pollution-er.png
│   ├── readings.png
├── nosql/
│   ├── mongo-q1.jpg
│   ├── mongo-q2.jpg
│   ├── nosql.md
├── report/
│   ├── report.md
│   ├── sql-q1.jpg
│   ├── sql-q2.jpg
│   ├── sql-q3.jpg
├── tests/
│   ├── test_import.py
│   ├── test_cropped.py
│   ├── test_queries.sql
├── .gitignore
├── README.md
