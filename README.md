# data-512-FinalProject


# World Unemployment Rate

## Introduction

People, educated and uneducated, who do not work and cannot earn enough for their own living, are called unemployed. The unemployment ratio of a country is calculated by dividing the number of unemployed people by the total number of people in the country. The motivation behind this analysis is to bring more in depth knowledge about unemployement in the world. We know that there is an effect of unemployment on any country, and this analysis gives insights of which countries need to focus more on employment oppourtunities.
We all have seen many people spend days and months searching for jobs or working in odd jobs. From this analysis, I would like to convey a story of the world unemployment rate, and if it has changed any better from 2010.

This project mainly focuses on four countries, namely United States, United Kingdom, United Arab Emirate and India. I expect the rate on umemployment in India would be increasing over the years, while the other countries have decreasing rate. 

## Why is this analysis important

High unemployment can have a negative impact on the country’s economic growth. It may also increase poverty, alcoholism, depression and suicide rate. This could be a great threat to humans. When people have less money to spend, companies also get a loss. Unemployed have a ripple affect even on the employed. In a community, more unemployment may lead to foreclosures, thus having an impact on the house prices of the neighbours as well.  
Hence, analyzing the unemployment data could give the government or the organizations a first idea on what is going on in the world, and what measures could be taken to decrease unemployment.


## Goal of the project
The goal of the project is to find 

•	Countries with highest/lowest rate of unemployment

•	Countries with increasing/decreasing rate of unemployment over the years

•	Predicting the behavior of the rate in the future.


## Data

The unemployment rate data for each country is downloaded from World Bank Data (https://data.worldbank.org/indicator/SL.UEM.TOTL.ZS), with an open license. 
https://data.worldbank.org/summary-terms-of-use

The data is from ILOSTAT(International Labour Organization) database. The data with csv format files can be downloaded and the downloaded folder contains three files: API_SL.UEM.TOTL.ZS_DS2_en_csv_v2.csv , Metadata_Country_API_SL.UEM.TOTL.ZS_DS2_en_csv_v2.csv, Metadata_Indicator_API_SL.UEM.TOTL.ZS_DS2_en_csv_v2.csv.

API_SL.UEM.TOTL.ZS_DS2_en_csv_v2.csv (renamed as UnemploymentRate.csv for the analysis) consists the data that we need, and the other two files contain the metadata.

The data contains the following columns:

• Country_Name:	Name of the country

• Country_Code:	Code id for each country

• Indicator_Name:	What kind of data this file contains (Unemployment, total (% of total labor force) )

• Indicator_Code:	Code for the indicator name

• 1960 to 2016:	Rate of unemployment


The file consists data for 265 countries from 1991 to 2016. Although there are columns for years from 1960 to 1990, there is no available data for these years. Hence, these columns will be deleted for the analysis.

## Results

•	A visualization that show the countries with highest and lowest unemployment rate. 

•	A visualization that shows the rate of change of unemployment rate for each country.

•	Prediction of the unemployment rate

The countries with more unemployment rate should need to focus more on how they can get employment oppourtunities for their citizens, like introducing Foreign Direct Investment and encouraging foreign countries to invest in their prople. 

The countries with increasing rate, need to investigate what is going on and take measures to improve employment opportuninties.
