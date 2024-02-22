SELECT						
min(t.client_id_brand_day_time) as client_id_brand_day_time,						
sum(t.usd_amount),						
ROW_NUMBER() OVER (PARTITION BY t.client_id_brand_day ORDER BY t.client_id_brand_day) AS row_num						
from						
pfx_crm.transactions_with_brand_pfx_dbt t						
INNER JOIN pfx_crm.first_approved_date_updated_pfx_dbt fa ON fa.client_id_brand_day = t.client_id_brand_day						
WHERE						
t.type  = 'Deposit'						
AND t.is_ftd = 'f'						
	GROUP BY t.client_id_brand_day					
having sum(t.usd_amount)<1000						