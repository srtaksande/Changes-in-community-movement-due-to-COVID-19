#No. of Country Regions


```sql
SELECT count(distinct country_region) FROM `bigquery-public-data.covid19_google_mobility.mobility_report`
```
Answer = 135

#Minimum and maximum retail and recreation percentage change from baseline
```sql
SELECT min(retail_and_recreation_percent_change_from_baseline), max(retail_and_recreation_percent_change_from_baseline) FROM `bigquery-public-data.covid19_google_mobility.mobility_report`
```

Answer: -100 , 616

#Minimum and Maximum workplace percentage change from baseline in United Aram Emirates

```sql
SELECT min(workplaces_percent_change_from_baseline), max(workplaces_percent_change_from_baseline) FROM `bigquery-public-data.covid19_google_mobility.mobility_report`
where country_region = "United Arab Emirates"
```

Answer: -79 , 14

#Min Max and Avg grocery and pharmacy percent change by country_region

```sql
SELECT country_region,
min(grocery_and_pharmacy_percent_change_from_baseline) as mim_graocey_pharmacy_percent_change, 
max(grocery_and_pharmacy_percent_change_from_baseline) as max_graocey_pharmacy_percent_change, 
avg(grocery_and_pharmacy_percent_change_from_baseline) as avg_graocey_pharmacy_percent_change 
FROM `bigquery-public-data.covid19_google_mobility.mobility_report`
group by country_region
limit = 5
```

#Answer

country_region	mim_grocery_pharmacy_percent_change	max_grocery_pharmacy_percent_change	avg_grocery_pharmacy_percent_change
United Arab Emirates	-63	81	1.418493151
Afghanistan	-49	170	42.65082645
Antigua and Barbuda	-96	62	-6.286389414
Angola	-71	61	3.430401366
Aruba	-96	40	-5.245746692

# Min Max and Avg grocery and pharmacy percent change by country_region in Descending Order

```sql
SELECT country_region,
min(grocery_and_pharmacy_percent_change_from_baseline) as mim_grocery_pharmacy_percent_change, 
max(grocery_and_pharmacy_percent_change_from_baseline) as max_grocery_pharmacy_percent_change, 
avg(grocery_and_pharmacy_percent_change_from_baseline) as avg_grocery_pharmacy_percent_change 
FROM `bigquery-public-data.covid19_google_mobility.mobility_report`
group by country_region
order by avg_grocery_pharmacy_percent_change desc 
limit = 5
```

Answer : 

country_region	mim_grocery_pharmacy_percent_change	max_grocery_pharmacy_percent_change	avg_grocery_pharmacy_percent_change
Libya	-50	228	50.67713568
Burkina Faso	-33	169	47.26499388
Egypt	-74	325	46.98527443
Mongolia	-83	180	45.81758034
Afghanistan	-49	170	42.65082645
