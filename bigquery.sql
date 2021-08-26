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
```

#Answer

country_region	mim_grocery_pharmacy_percent_change	max_grocery_pharmacy_percent_change	avg_grocery_pharmacy_percent_change
United Arab Emirates	-63	81	1.418493151
Afghanistan	-49	170	42.65082645
Antigua and Barbuda	-96	62	-6.286389414
Angola	-71	61	3.430401366
Aruba	-96	40	-5.245746692
Bosnia and Herzegovina	-67	83	8.924187726
Barbados	-100	55	-19.46060955
Bangladesh	-56	113	11.44584838
Belgium	-89	96	-0.646459435
Burkina Faso	-33	169	47.26499388
Bahrain	-32	23	-6.651624549
Benin	-33	138	40.56270705
Bolivia	-100	171	-13.02643735
The Bahamas	-99	42	-16.58992806
Botswana	-73	138	29.12748644
Belarus	-86	43	3.384476534
Belize	-96	85	3.757233592
Switzerland	-95	85	1.520291363
CÃ´te d'Ivoire	-58	128	24.42570562
Cameroon	-84	131	12.64535769
Costa Rica	-71	32	-14.03068592
Cape Verde	-71	45	-12.70466321
Germany	-95	380	1.581806562
Dominican Republic	-83	134	-5.614893026
Estonia	-56	103	7.192878338
Egypt	-74	325	46.98527443
Fiji	-73	54	-1.696296296
Gabon	-77	41	-8.75875
Georgia	-72	56	0.876227898
Ghana	-66	89	18.80625752
Greece	-88	371	20.79491875
Guinea-Bissau	-51	8	-11.95238095
Hong Kong	-26	69	19.07039711
Honduras	-91	89	-10.53154224
Croatia	-95	301	10.49809306
Haiti	-80	37	-13.33679707
Hungary	-93	214	6.239496168
Indonesia	-93	155	3.671764035
Ireland	-96	107	4.914245115
Israel	-95	93	1.126908397
Iraq	-48	157	38.07039711
Jamaica	-100	93	-14.64028285
Jordan	-94	140	7.800678222
Japan	-61	41	1.354354693
Kenya	-56	117	2.801096237
Kyrgyzstan	-79	143	-12.14568512
Cambodia	-75	70	-15.83990801
South Korea	-28	73	11.19494585
Kuwait	-91	20	-21.18243703
Kazakhstan	-53	28	-2.66967509
Laos	-45	31	-5.407942238
Lebanon	-84	203	20.15644648
Sri Lanka	-92	62	-14.16245487
Luxembourg	-95	58	-7.054347826
Latvia	-89	113	1.882183154
Libya	-50	228	50.67713568
Morocco	-87	149	7.634927798
Moldova	-72	43	-4.272563177
North Macedonia	-95	47	1.779783394
Mali	-37	103	11.44043321
Myanmar (Burma)	-88	22	-28.20758123
Mongolia	-83	180	45.81758034
Malta	-60	37	-1.763537906
Mauritius	-100	119	-11.70030226
Mexico	-86	49	-1.456897495
Malaysia	-74	135	-5.227550037
Mozambique	-77	62	1.118089104
Namibia	-70	95	2.805622879
Niger	-94	92	4.863523573
Nicaragua	-62	106	5.361496681
Nepal	-70	81	-3.207581227
New Zealand	-96	75	-4.08497131
Oman	-96	80	-15.54502902
Panama	-96	25	-24.88176895
Papua New Guinea	-64	101	37.40642722
Philippines	-93	103	-12.42698202
Pakistan	-78	235	14.75750074
Paraguay	-92	77	-9.433337222
Qatar	-51	52	10.41155235
RÃ©union	-96	242	-14.27613941
Serbia	-98	53	1.053045187
Russia	-72	76	-1.696326184
Rwanda	-88	32	-20.18346852
Saudi Arabia	-75	203	4.527346831
Singapore	-35	25	-1.445848375
Senegal	-61	152	5.349099099
El Salvador	-77	124	-3.448532731
Togo	-40	97	21.64079422
Thailand	-27	33	4.615523466
Tajikistan	-55	34	-5.360108303
Trinidad and Tobago	-88	78	3.994584838
Taiwan	-23	27	1.510830325
Tanzania	-85	95	1.674028269
Ukraine	-56	34	1.093862816
Uganda	-100	44	-14.92719636
Uruguay	-88	150	-3.081687519
Venezuela	-62	54	-0.879061372
Yemen	-18	128	41.79963899
South Africa	-78	73	-1.308109084
Zambia	-28	81	15.62725632
Zimbabwe	-73	96	12.44384615
Liechtenstein	-42	28	-1.306122449
Peru	-100	98	-21.69383855
Chile	-96	100	-21.1921875
India	-97	757	11.92895219
Italy	-98	226	-5.258600525
Spain	-96	258	-2.764520736
Brazil	-100	239	13.14086119
Canada	-93	159	2.580719741
France	-96	371	2.36314845
Norway	-100	150	2.190171447
Poland	-100	410	5.621638616
Sweden	-92	117	-0.464872754
Turkey	-100	485	13.44651542
Austria	-100	255	-4.77418407
Czechia	-95	117	9.443522241
Denmark	-88	142	-0.680857347
Ecuador	-94	137	-3.743189756
Finland	-89	232	5.848337715
Nigeria	-97	191	2.492223352
Romania	-100	194	1.83912772
Vietnam	-97	209	-3.718545936
Bulgaria	-86	164	6.114785253
Colombia	-96	142	-7.887523873
Portugal	-96	308	3.193147311
Slovakia	-97	116	-0.929425136
Slovenia	-100	125	-13.23340012
Argentina	-97	120	-5.45867444
Australia	-96	128	2.112022934
Guatemala	-100	118	-12.22402628
Lithuania	-95	338	24.06845039
Netherlands	-96	253	1.717297171
Puerto Rico	-100	57	-14.9715949
United States	-96	332	2.413406292
United Kingdom	-97	217	-6.938091144

# Min Max and Avg grocery and pharmacy percent change by country_region in Descending Order

```sql
SELECT country_region,
min(grocery_and_pharmacy_percent_change_from_baseline) as mim_grocery_pharmacy_percent_change, 
max(grocery_and_pharmacy_percent_change_from_baseline) as max_grocery_pharmacy_percent_change, 
avg(grocery_and_pharmacy_percent_change_from_baseline) as avg_grocery_pharmacy_percent_change 
FROM `bigquery-public-data.covid19_google_mobility.mobility_report`
group by country_region
order by avg_grocery_pharmacy_percent_change desc 
```

Answer : 

country_region	mim_grocery_pharmacy_percent_change	max_grocery_pharmacy_percent_change	avg_grocery_pharmacy_percent_change
Libya	-50	228	50.67713568
Burkina Faso	-33	169	47.26499388
Egypt	-74	325	46.98527443
Mongolia	-83	180	45.81758034
Afghanistan	-49	170	42.65082645
Yemen	-18	128	41.79963899
Benin	-33	138	40.56270705
Iraq	-48	157	38.07039711
Papua New Guinea	-64	101	37.40642722
Botswana	-73	138	29.12748644
CÃ´te d'Ivoire	-58	128	24.42570562
Lithuania	-95	338	24.06845039
Togo	-40	97	21.64079422
Greece	-88	371	20.79491875
Lebanon	-84	203	20.15644648
Hong Kong	-26	69	19.07039711
Ghana	-66	89	18.80625752
Zambia	-28	81	15.62725632
Pakistan	-78	235	14.75750074
Turkey	-100	485	13.44651542
Brazil	-100	239	13.14086119
Cameroon	-84	131	12.64535769
Zimbabwe	-73	96	12.44384615
India	-97	757	11.92895219
Bangladesh	-56	113	11.44584838
Mali	-37	103	11.44043321
South Korea	-28	73	11.19494585
Croatia	-95	301	10.49809306
Qatar	-51	52	10.41155235
Czechia	-95	117	9.443522241
Bosnia and Herzegovina	-67	83	8.924187726
Jordan	-94	140	7.800678222
Morocco	-87	149	7.634927798
Estonia	-56	103	7.192878338
Hungary	-93	214	6.239496168
Bulgaria	-86	164	6.114785253
Finland	-89	232	5.848337715
Poland	-100	410	5.621638616
Nicaragua	-62	106	5.361496681
Senegal	-61	152	5.349099099
Ireland	-96	107	4.914245115
Niger	-94	92	4.863523573
Thailand	-27	33	4.615523466
Saudi Arabia	-75	203	4.527346831
Trinidad and Tobago	-88	78	3.994584838
Belize	-96	85	3.757233592
Indonesia	-93	155	3.671764035
Angola	-71	61	3.430401366
Belarus	-86	43	3.384476534
Portugal	-96	308	3.193147311
Namibia	-70	95	2.805622879
Kenya	-56	117	2.801096237
Canada	-93	159	2.580719741
Nigeria	-97	191	2.492223352
United States	-96	332	2.413406292
France	-96	371	2.36314845
Norway	-100	150	2.190171447
Australia	-96	128	2.112022934
Latvia	-89	113	1.882183154
Romania	-100	194	1.83912772
North Macedonia	-95	47	1.779783394
Netherlands	-96	253	1.717297171
Tanzania	-85	95	1.674028269
Germany	-95	380	1.581806562
Switzerland	-95	85	1.520291363
Taiwan	-23	27	1.510830325
United Arab Emirates	-63	81	1.418493151
Japan	-61	41	1.354354693
Israel	-95	93	1.126908397
Mozambique	-77	62	1.118089104
Ukraine	-56	34	1.093862816
Serbia	-98	53	1.053045187
Georgia	-72	56	0.876227898
Sweden	-92	117	-0.464872754
Belgium	-89	96	-0.646459435
Denmark	-88	142	-0.680857347
Venezuela	-62	54	-0.879061372
Slovakia	-97	116	-0.929425136
Liechtenstein	-42	28	-1.306122449
South Africa	-78	73	-1.308109084
Singapore	-35	25	-1.445848375
Mexico	-86	49	-1.456897495
Fiji	-73	54	-1.696296296
Russia	-72	76	-1.696326184
Malta	-60	37	-1.763537906
Kazakhstan	-53	28	-2.66967509
Spain	-96	258	-2.764520736
Uruguay	-88	150	-3.081687519
Nepal	-70	81	-3.207581227
El Salvador	-77	124	-3.448532731
Vietnam	-97	209	-3.718545936
Ecuador	-94	137	-3.743189756
New Zealand	-96	75	-4.08497131
Moldova	-72	43	-4.272563177
Austria	-100	255	-4.77418407
Malaysia	-74	135	-5.227550037
Aruba	-96	40	-5.245746692
Italy	-98	226	-5.258600525
Tajikistan	-55	34	-5.360108303
Laos	-45	31	-5.407942238
Argentina	-97	120	-5.45867444
Dominican Republic	-83	134	-5.614893026
Antigua and Barbuda	-96	62	-6.286389414
Bahrain	-32	23	-6.651624549
United Kingdom	-97	217	-6.938091144
Luxembourg	-95	58	-7.054347826
Colombia	-96	142	-7.887523873
Gabon	-77	41	-8.75875
Paraguay	-92	77	-9.433337222
Honduras	-91	89	-10.53154224
Mauritius	-100	119	-11.70030226
Guinea-Bissau	-51	8	-11.95238095
Kyrgyzstan	-79	143	-12.14568512
Guatemala	-100	118	-12.22402628
Philippines	-93	103	-12.42698202
Cape Verde	-71	45	-12.70466321
Bolivia	-100	171	-13.02643735
Slovenia	-100	125	-13.23340012
Haiti	-80	37	-13.33679707
Costa Rica	-71	32	-14.03068592
Sri Lanka	-92	62	-14.16245487
RÃ©union	-96	242	-14.27613941
Jamaica	-100	93	-14.64028285
Uganda	-100	44	-14.92719636
Puerto Rico	-100	57	-14.9715949
Oman	-96	80	-15.54502902
Cambodia	-75	70	-15.83990801
The Bahamas	-99	42	-16.58992806
Barbados	-100	55	-19.46060955
Rwanda	-88	32	-20.18346852
Kuwait	-91	20	-21.18243703
Chile	-96	100	-21.1921875
Peru	-100	98	-21.69383855
Panama	-96	25	-24.88176895
Myanmar (Burma)	-88	22	-28.20758123

