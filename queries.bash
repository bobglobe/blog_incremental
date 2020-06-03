BQ_PROJECT_ID=tinyclues-sandbox

bq load --project_id=$BQ_PROJECT_ID --skip_leading_rows=1 -schema purchases_v2.json blog.purchases gs://maidane-playground/blog/purchases_v2.csv
bq update --project_id=$BQ_PROJECT_ID blog.purchases purchases_v1.json
