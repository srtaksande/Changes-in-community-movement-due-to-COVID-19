# Question 1: No. of Country Regions


```sql
SELECT count(distinct country_region) FROM `bigquery-public-data.covid19_google_mobility.mobility_report`
```
Answer = 135

#Minimum and maximum retail and recreation percentage change from baseline
```sql
SELECT min(retail_and_recreation_percent_change_from_baseline), max(retail_and_recreation_percent_change_from_baseline) FROM `bigquery-public-data.covid19_google_mobility.mobility_report`
```

Answer: -100 , 616

# Question 2: Minimum and Maximum workplace percentage change from baseline in United Aram Emirates

```sql
SELECT min(workplaces_percent_change_from_baseline), max(workplaces_percent_change_from_baseline) FROM `bigquery-public-data.covid19_google_mobility.mobility_report`
where country_region = "United Arab Emirates"
```

Answer: -79 , 14

# Question 3: Min Max and Avg grocery and pharmacy percent change by country_region

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

# Question 5: Min Max and Avg grocery and pharmacy percent change by country_region in Descending Order

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


# Question 6: Fetch all the data for sountry region United States, sub region1 California and sub region2 San Francisco Country between dates 2020-03-10 and 2020-03-24

```sql
SELECT
  *
FROM
  `bigquery-public-data.covid19_google_mobility.mobility_report` 
WHERE
  country_region = "United States"
  AND sub_region_1 = "California"
  AND sub_region_2 = "San Francisco County"
  AND date BETWEEN "2020-03-10" AND "2020-03-24"
ORDER BY
  date 
  ```
  Answer:
  
  country_region_code	country_region	sub_region_1	sub_region_2	metro_area	iso_3166_2_code	census_fips_code	place_id	date	retail_and_recreation_percent_change_from_baseline	grocery_and_pharmacy_percent_change_from_baseline	parks_percent_change_from_baseline	transit_stations_percent_change_from_baseline	workplaces_percent_change_from_baseline	residential_percent_change_from_baseline
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/10/2020	-6	10	9	-24	-21	9
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/11/2020	-13	8	3	-30	-26	11
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/12/2020	-17	16	-4	-35	-32	14
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/13/2020	-26	17	-16	-40	-35	15
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/14/2020	-41	1	-54	-48	-13	11
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/15/2020	-42	-1	-35	-41	-15	10
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/16/2020	-32	32	-20	-52	-54	20
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/17/2020	-64	-11	-27	-70	-72	32
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/18/2020	-67	-18	-35	-72	-73	33
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/19/2020	-66	-16	-25	-71	-73	33
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/20/2020	-69	-16	-36	-70	-72	34
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/21/2020	-73	-22	-38	-65	-49	20
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/22/2020	-72	-30	-34	-62	-48	19
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/23/2020	-68	-28	-50	-74	-76	34
US	United States	California	San Francisco County			6075	ChIJIQBpAG2ahYARUksNqd0_1h8	3/24/2020	-70	-28	-54	-75	-76	36


#Question 7: using Abu Dhabi as inner join


```sql
with abu_dhabi as
(select sub_region_1 from `bigquery-public-data.covid19_google_mobility.mobility_report` where sub_region_1 = 'Abu Dhabi')
SELECT * FROM `bigquery-public-data.covid19_google_mobility.mobility_report` a inner join abu_dhabi b on a.sub_region_1 = b.sub_region_1
```

Answer:
country_region_code	country_region	sub_region_1	sub_region_2	metro_area	iso_3166_2_code	census_fips_code	place_id	date	retail_and_recreation_percent_change_from_baseline	grocery_and_pharmacy_percent_change_from_baseline	parks_percent_change_from_baseline	transit_stations_percent_change_from_baseline	workplaces_percent_change_from_baseline	residential_percent_change_from_baseline	sub_region_1_1
AE	United Arab Emirates	Abu Dhabi			AE-AZ		ChIJGczaTT5mXj4RBNmakTvGr4s	2/17/2020	-3	2	4	-3	2	1	Abu Dhabi
AE	United Arab Emirates	Abu Dhabi			AE-AZ		ChIJGczaTT5mXj4RBNmakTvGr4s	2/17/2020	-3	2	4	-3	2	1	Abu Dhabi
AE	United Arab Emirates	Abu Dhabi			AE-AZ		ChIJGczaTT5mXj4RBNmakTvGr4s	2/17/2020	-3	2	4	-3	2	1	Abu Dhabi
AE	United Arab Emirates	Abu Dhabi			AE-AZ		ChIJGczaTT5mXj4RBNmakTvGr4s	2/17/2020	-3	2	4	-3	2	1	Abu Dhabi
AE	United Arab Emirates	Abu Dhabi			AE-AZ		ChIJGczaTT5mXj4RBNmakTvGr4s	2/17/2020	-3	2	4	-3	2	1	Abu Dhabi


# Question 8: Using Barbados as Inner Join

```sql
with Barbados as
(select country_region from `bigquery-public-data.covid19_google_mobility.mobility_report` where country_region = 'Barbados')

SELECT * FROM `bigquery-public-data.covid19_google_mobility.mobility_report` a inner join Barbados b on a.country_region = b.country_region
limit 5
```

Answer:

country_region_code	country_region	sub_region_1	sub_region_2	metro_area	iso_3166_2_code	census_fips_code	place_id	date	retail_and_recreation_percent_change_from_baseline	grocery_and_pharmacy_percent_change_from_baseline	parks_percent_change_from_baseline	transit_stations_percent_change_from_baseline	workplaces_percent_change_from_baseline	residential_percent_change_from_baseline	country_region_1
BB	Barbados						ChIJoxoyrvvxQ4wRKzb0jLNR7A4	10/17/2020	-18	-12	25	-35	-18	7	Barbados
BB	Barbados						ChIJoxoyrvvxQ4wRKzb0jLNR7A4	10/17/2020	-18	-12	25	-35	-18	7	Barbados
BB	Barbados						ChIJoxoyrvvxQ4wRKzb0jLNR7A4	10/17/2020	-18	-12	25	-35	-18	7	Barbados
BB	Barbados						ChIJoxoyrvvxQ4wRKzb0jLNR7A4	10/17/2020	-18	-12	25	-35	-18	7	Barbados
BB	Barbados						ChIJoxoyrvvxQ4wRKzb0jLNR7A4	10/17/2020	-18	-12	25	-35	-18	7	Barbados

