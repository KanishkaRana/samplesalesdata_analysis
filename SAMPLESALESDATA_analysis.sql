create DATABASE salesanalysis
use salesanalysis;
select top 10  * from sales_data_sample$
select count(*) as nullcount from sales_data_sample$ where SALES is null;
Alter table sales_data_sample$
Alter column SALES int;
Alter table sales_data_sample$
drop column ADDRESSLINE2;
update sales_data_sample$ set STATE = 'unknown' where STATE is null;


--MONTHLY SALES TREND
SELECT
YEAR_ID AS YEAR,
MONTH_ID AS MONTH,
SUM(SALES)AS TOTALSALES
FROM sales_data_sample$
GROUP BY YEAR_ID,MONTH_ID
ORDER BY YEAR,MONTH;

--QUATERLY ANALYSIS 
 SELECT 
 YEAR_ID AS YEAR ,QTR_ID AS QUARTER,
 SUM(SALES) AS QUATERLYSALES
 FROM sales_data_sample$
 GROUP BY YEAR_ID,QTR_ID
 ORDER BY YEAR,QUARTER;

 --PRODUCT LINE TREND 
 SELECT
 PRODUCTLINE AS PRODUCT,YEAR_ID AS YEAR,
 SUM(SALES) AS TOTALSALES
 FROM sales_data_sample$
 GROUP BY PRODUCTLINE,YEAR_ID
 ORDER BY PRODUCTLINE,YEAR_ID;

 --COUNTRY WISE SALES 
 SELECT
 COUNTRY,
 SUM(SALES) AS TOTALSALES
 FROM sales_data_sample$
 GROUP BY COUNTRY
 ORDER BY TOTALSALES DESC;
