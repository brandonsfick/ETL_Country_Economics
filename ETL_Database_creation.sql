# Creating database and tables for the load process of ETL
Create database World_economics;

Use World_economics;

Create table country (
id int Not null auto_increment,
country text,
Primary Key (id)
);

Create table Unemployment (
id int Not null auto_increment,
Youth_unemployment decimal(9,6),
Primary Key (id));

Create table Economic_freedom (
id int Not Null auto_increment,
year INT,
Countries text,
Economic_Freedom decimal (3,2),
Rank decimal (4,1),
Government_Consumption decimal (8,7),
Gov_Enterprises	decimal (3,1),
Top_Marg_Tax_Rate decimal (3,1),
Trade decimal (7,6),
Labor_Market_Reg decimal (7,6),
Business_Reg decimal (7,6),
Primary Key (id));
