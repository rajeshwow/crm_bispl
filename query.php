


UPDATE crm_fortinet SET expiry_date = DATE(STR_TO_DATE(expiry_date, '%Y-%m-%d')) WHERE id>0 ----------- convert to yyyy-mm-dd


UPDATE crm_eps SET expiry_date = date_format(expiry_date, '%d-%m-%Y') WHERE id>0 ------------------------convert to mm-dd-yyyy

SELECT * FROM `crm_eps` WHERE `expiry_date` = 2024 AND QUARTER(expiry_date) = 4

select max(exp) as Value from ( SELECT YEAR(max(expiry_date)) as exp FROM crm_eps UNION SELECT YEAR(max(expiry_date)) FROM crm_fortinet) as tbl
