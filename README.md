# ETL_Country_Economics
The sources of data that you will extract from.

We retrived data from the World Bank for our Youth Unemployment dataset. Our Economic Freedom dataset came from Kaggle. Both datasets were in a CSV format with different encodings.


The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).
For our Youth Unemployment dataset, we reviewed the CSV file and deleted out the empty rows that were non-relevent. This incuded years starting from 1970 that did not contain any data. We were only concerned with the year 2016. We also renamed columns to align with the database.

For our World Bank dataset, we dropped all rows that were missing data. We extracted only the columns that were relevant for our analysis and renamed the column headers to align with our database.
 

The type of final production database to load the data into (relational or non-relational).
We used a relational database MySql to load the data. Due to the standardization of the data sources, using a relational databases is more logical because it is easier for co-workers to join data for analysis.

The final tables or collections that will be used in the production database.
We created two tables; Unemployment and Economic_freedom. We loaded our data into these two tables. 

You will be required to submit a final technical report with the above information and steps required to reproduce your ETL process.

At the end of the week, your team will submit a Final Report that describes the following:

Step by Step process for ETL Ecomoic Freedom Process:
1. Go to the world bank and download the Youth unemployment rate .csv.
2. Go to https://www.fraserinstitute.org/studies/economic-freedom-of-the-world-2018-annual-report and download the annual report as a .csv.
3. Open Youth unemployment file and delete columns 1970-2015. Pandas will incur an error if this step is missed.
4. Move both files into folder "Mystuff."
5. Find ETL_Grp_Prj.ipynb in folder "Mystuff" and open in jupyter lab.
6. Run each cell. Note: You will see an error when loading the data into the database. This is due to the change in decimal places. You can ignore these warnings.
7. Open MySql workbench and check the database World Economics to verify the data was correctly loaded.
8. Now run basic joins such as:
SELECT Economic_freedom.Countries, Unemployment.Youth_Unemployment
FROM Economic_freedom
JOIN Unemployment
ON Economic_freedom.Countries = Unemployment.Countries;
