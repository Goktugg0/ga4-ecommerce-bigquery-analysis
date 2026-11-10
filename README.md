# ga4-ecommerce-bigquery-analysis
SQL analysis of Google Analytics 4 (GA4) e-commerce data in BigQuery. I have done these to refresh my information about SQL and explore the BigQuery furthermore. I wrote six queries to answer basic questions an online shop might be wondering.

## Data
- Source: Google's public GA4 sample dataset, `bigquery-public-data.ga4_obfuscated_sample_ecommerce`
- Shop: Google Merchandise Store
- Period: 1 November 2020 to 31 January 2021
- Format: GA4 BigQuery event export


## Queries and Findings
1. `01_purchase_funnel.sql`: How many users reached which step, and in which step did Google lost most of the customer.
   - The biggest drop was viewing product to adding to the card. This means that people are more likely to buy after adding to the card.
   - The other big drop is between begin_checkout and purchased. This shows that people might be struggling some issues with the payment methods such as it asks for payment methods that people don't have or asks more information than the customers want to share.
2. `02_top_sale_products.sql`: What are the products that brought revenue to the company.
   - The biggest revenue comes from 'Google Zip Hoodie F/C' even though there are more other products more units sold.
3. `03_purchasers_by_sourse_medium.sql`: What are the most purchasers come from.
   - Most traffic came from organic google users followed by direct coming users
   - There aren't many purchasers that came from the ads (cpc)
   - There are a lot of entries with '<Other>' and '(data_deleted)' which makes the data hard to interpret
4. `04_highest_sale_days.sql`: Which day the Store sold the most?
   - Expected to be Black Friday with the highest number of sales but it was '2020-12-11' with 160 sales, followed by '2020-12-09' with 150 sales
5. `05_conversion_rate_by_device.sql`: Which type of device user ended up buying a product
   - The highest conversion rate was 'mobile', followed by 'desktop' and followed by 'tablet'.
   - Shows that the sales focus might be more on the 'mobile' users
6. `06_most_viewed_but_not_bought.sql`: What are the most viewed but not bought products?
   - Which products attracted more than 100 people but there was little sales?
   - There are some products with thousands of views but 0 buyings such as  'Google Women's Striped L/S'
   - There are some products with again thousands of views but only 1-5 purchases like 'YouTube Women's Favorite Tee White'
   - The further investigation needed for type of people that are one of the few purchases.

## How to run
- Open the BigQuery console.
- Paste any .sql file into the editor and run it.
