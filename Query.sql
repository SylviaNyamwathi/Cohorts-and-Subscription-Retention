WITH t1 AS 
(
  SELECT user_pseudo_id,
  DATE_TRUNC(subscription_start, WEEK) AS cohort_week,
  subscription_end
  FROM `tc-da-1.turing_data_analytics.subscriptions`
)

SELECT t1.cohort_week,
  COUNT(cohort_week) AS w0,
  SUM(CASE WHEN subscription_end IS NULL OR subscription_end > DATE_ADD(cohort_week, INTERVAL 1 WEEK) THEN 1 ELSE 0 END) AS w1,
  SUM(CASE WHEN subscription_end IS NULL OR subscription_end > DATE_ADD(cohort_week, INTERVAL 2 WEEK) THEN 1 ELSE 0 END) AS w2,
  SUM(CASE WHEN subscription_end IS NULL OR subscription_end > DATE_ADD(cohort_week, INTERVAL 3 WEEK) THEN 1 ELSE 0 END) AS w3,
  SUM(CASE WHEN subscription_end IS NULL OR subscription_end > DATE_ADD(cohort_week, INTERVAL 4 WEEK) THEN 1 ELSE 0 END) AS w4,
  SUM(CASE WHEN subscription_end IS NULL OR subscription_end > DATE_ADD(cohort_week, INTERVAL 5 WEEK) THEN 1 ELSE 0 END) AS w5,
  SUM(CASE WHEN subscription_end IS NULL OR subscription_end > DATE_ADD(cohort_week, INTERVAL 6 WEEK) THEN 1 ELSE 0 END) AS w6
FROM t1
GROUP BY 1