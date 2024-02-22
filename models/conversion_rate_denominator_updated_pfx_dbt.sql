SELECT DISTINCT CONCAT_WS('_',min(t.client_id_brand_day), t.is_ftd, t.type) as min_client_id_brand_day,						
t.client_id_brand, t.client_id_brand_transid_isftd,						
ROW_NUMBER() OVER (PARTITION BY client_id_brand ORDER BY client_id_brand) AS row_num						
from						
pfx_crm.transactions_with_brand_pfx_dbt t						
where						
t.type ='Deposit'						
AND t.is_ftd='t'						
GROUP BY client_id_brand, is_ftd, type, client_id_brand_day, t.client_id_brand_transid_isftd						