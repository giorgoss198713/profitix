SELECT DISTINCT					
concat_ws(					
'_',					
t.client_id_brand,					
cast(					
t.approved_day as varchar(10)					
)					
) as client_id_brand_day,					
client_id_brand_transid_isftd,					
client_id_brand_day_time,					
t.client_id_brand,					
t.approved_day as transaction_date,					
c.approved_day as ftd_date,					
ROW_NUMBER() OVER (PARTITION BY client_id_brand_day ORDER BY t.id) AS row_num,					
t.agent_id_brand_final					
FROM					
pfx_crm.transactions_with_brand_pfx_dbt t					
LEFT JOIN (SELECT DISTINCT CONCAT_WS('_',min(client_id_brand_day), is_ftd, type) as min_client_id_brand_day,					
client_id_brand, approved_day					
from					
pfx_crm.transactions_with_brand_pfx_dbt				
where					
type ='Deposit'					
AND is_ftd='t'					
GROUP BY client_id_brand, is_ftd, type, approved_day) c					
	ON c.client_id_brand=t.client_id_brand				
--LEFT JOIN  public.persisted_referral_brand r ON r.client_id_brand=t.client_id_brand					
WHERE					
t.client_id_brand_day_time IN (					
select					
MIN(					
client_id_brand_day_time					
)					
from					
pfx_crm.transactions_with_brand_pfx_dbt t1					
WHERE					
t1.is_ftd is false					
AND t1.status = 'Approved'					
AND t1.type = 'Deposit'					
GROUP BY					
t1.client_id_brand					
)					