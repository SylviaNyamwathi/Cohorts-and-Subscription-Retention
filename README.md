# Solution for Cohorts and Subscription Retention Task

This analysis provides key insights into subscription retention and offers a solution for generating weekly retention cohorts. You can find the detailed file with the results [here](https://1drv.ms/x/c/8a2481f5177c1dbe/ESnvxKgGtItJrzxKIiLOZqcBexErJjYOjzM6vAGfxUr-sw?e=YZBNdi).

🚀 **Tools Used:** SQL (BigQuery), Excel

## Task Description
Your Product Manager requested statistics on subscription churn from a weekly retention standpoint. They believe that viewing retention on a monthly basis takes too long and could result in missed insights from the data.

Cohort analysis is an ideal approach for addressing this request. The task involves generating weekly subscription data that shows how many subscribers started their subscription in a particular week and how many of them remained active in the following 6 weeks.

The final result provides weekly retention cohorts for each week available in the dataset and displays retention from week 0 to week 6. The analysis is based on the assumption that the current analysis date is **2021-02-07**.

You should use the `turing_data_analytics.subscriptions` table to perform the analysis. The SQL query extracts the required data from BigQuery, and the results are visualized using Google Spreadsheets, or any other suitable data visualization tool. A brief commentary on the findings accompanies the visualizations.
