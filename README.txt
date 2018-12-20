ETL_Country_Economics

Project Owners: Maria Jadoon and Brandon Fick

Synopsis:
Perform ETL for data used to compare world economic KPIs.

Extract: Data Sources
Youth Unemployment dataset - retrieved from the World Bank repository (.csv)
Economic Freedom dataset – retrieved from the Fraser Institute repository (.csv) https://www.fraserinstitute.org/studies/economic-freedom-of-the-world-2018-annual-report

Transformation
For the Youth Unemployment dataset:
•	The data set was reviewed and empty non-relevant rows were deleted. The data was then imported by pandas excluded the range of rows with years starting from 1970 to 2015. The first extraction was only concerned with the year 2016. The column names were renamed to align with our database for easy loading.
For our World Bank Dataset:
•	The data set was imported into pandas. Only the columns that were relevant for our analysis were kept. Those columns were renamed to align with our database for easy loading.

Load
Database Type:
Due to the standardization of the data sources, a relational database was used, MySql. This format will make it is easier for co-workers to join and analyze data.

Tables:
Two tables were created, Unemployment and Economic_freedom, to house data for analysis. During the load process specific values were set to each column in which defined decimal places to help predict storage.

How-To Document for Economic Freedom ETL
Please follow this Step by Step guide. For assistance please reach out the the process owners.
1.	Go to the world bank and download the Youth unemployment rate .csv. https://data.worldbank.org/indicator/SL.UEM.1524.ZS 
2.	Go to Fraser Institute and download the annual report as a .csv. https://www.fraserinstitute.org/studies/economic-freedom-of-the-world-2018-annual-report 
3.	Open the Youth unemployment file and delete columns 1970-2015. Note:Pandas will incur an error if this step is missed.
4.	Move both files into folder "Mystuff." If previous files are there, override or delete them.
5.	Find ETL_Grp_Prj.ipynb in folder "Mystuff" and run in jupyter lab.
6.	Run each cell. Note: You will see an error when loading the data into the database (database engine). This is due to the change in decimal places. You can ignore these warnings.
7.	Open MySql workbench and check the database World Economics to verify the data was correctly loaded.
8.	Now run basic joins such as: SELECT Economic_freedom.Countries, Unemployment.Youth_Unemployment FROM Economic_freedom JOIN Unemployment ON Economic_freedom.Countries = Unemployment.Countries;

Note: The MySQl file in the folder should only be reviewed to see how the database and tables were initial created. Please ignore this file or use as a read-only/informational tool.
