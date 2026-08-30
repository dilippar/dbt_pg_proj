
  
    

  create  table "dbt_tutorial"."analytics_marts"."dim_customers__dbt_tmp"
  
  
    as
  
  (
    

select
    c.customer_id,
    initcap(c.first_name) as first_name,
    initcap(c.last_name)  as last_name,
    c.email,
    c.created_at
from "dbt_tutorial"."analytics_staging"."stg_customers" c
  );
  