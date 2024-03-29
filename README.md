# HR Analysis

![b3](https://github.com/stephen-dk/HR-Analysis/assets/144712896/dc54140a-c90d-494a-b78e-83b246be4eae)
--
## Project Overview

The aim of this data analytics project is to analyze an imaginary company's employee dataset with over 270 rows from the year 2018 to 2021,provide clarity and gain deeper understanding of this company data to answer questions and make data driven recommendations. 

## Data Source

HR data: The dataset used in this analysis is a ".xlsx" file,containing detailed information about each employee in the company.

## Problem Statement

1. Total number of employees.
2. what is the department breakdown of employees in the company from highest to lowest.
3. how many employees work remotly vs on site.
4. what is the gender breakdown of employees in the company.
5. what department is the highest paid.
6. Top 10 highest paid employees.

## Tools Used
- SQL (Data loading, Data inspection, Data cleaning and Analysis).
- Power BI (Visualization).

## Data Preparation

The following tasks were performed in the preparation phase.
1. data loading and inspection.
2. Handling missing values.
3. Data cleaning and formatting
```sql
UPDATE employees 
SET 
    start_date = DATE_FORMAT(STR_TO_DATE(start_date, '%m/%d/%Y'),'%Y/%m/%d');
```

_Dirty Data_ ☹️
![dirty_data](https://github.com/stephen-dk/HR-Analysis/assets/144712896/11a09668-3f60-425a-928e-c44750cab588)
--

_clean data_ 😄
![sql_table](https://github.com/stephen-dk/HR-Analysis/assets/144712896/eb36b515-73b7-48f3-ad0d-7336b5997f92)
--


## Data Visualization

![bi_img2](https://github.com/stephen-dk/HR-Analysis/assets/144712896/ad7a2867-a53a-4743-9ca0-d024d175a3be)
---

## Summary And Findings

- The company has a total of 226 employees.
- 51% of total employees are male and 49% are female.
- the company has way more employees working onsight than remotely.
- _Edd  MacKnockiter, Collen Dunbleton, Ewart Hovel, Eilis Pavlasek, Shellysheldon Mahady, Alexis Gotfrey, Cletus McGarahan, Hogan Iles, Alic Bagg_ and _Westbrook Brandino_ are the top 10 most paid employees with salaries rangimg from $114k to $119k.
- Product management is the most populated department with a total of 23 employees.
- Marketing is the least populated department with a total of 12 employees.
- the training department is on average the highest paid department.





