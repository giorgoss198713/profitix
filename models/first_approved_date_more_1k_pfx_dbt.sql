SELECT					
min(t.client_id_brand_day) AS client_id_brand_day_min,					
sum(t.usd_amount)					
from					
pfx_crm.transactions_with_brand_pfx_dbt t					
INNER JOIN pfx_crm.first_approved_date_pfx_dbt fa ON fa.client_id_brand_day = t.client_id_brand_day					
WHERE					
t.type  = 'Deposit'					
AND t.is_ftd = 'f'					
GROUP BY					
t.client_id_brand_day	
having sum(t.usd_amount)>=1000