Create database World_economics;
Use World_economics;

Create table Unemployment (
id int Not null auto_increment,
Countries text,
Youth_Unemployment decimal(9,6),
Primary Key (id));

Create table Economic_freedom (
id int Not Null auto_increment,
year INT,
Countries text,
Economic_Freedom decimal (3,2),
Rank decimal (4,1),
Government_Consumption decimal (10,8),
Gov_Enterprises	decimal (3,1),
Top_Marg_Tax_Rate decimal (3,1),
Trade decimal (7,6),
Labor_Market_Reg decimal (7,6),
Business_Reg decimal (7,6),
Primary Key (id));

SELECT * FROM Economic_freedom;
SELECT * FROM Unemployment;


-- Example query
SELECT Economic_freedom.Countries, Unemployment.Youth_Unemployment
FROM Economic_freedom
JOIN Unemployment
ON Economic_freedom.Countries = Unemployment.Countries;
