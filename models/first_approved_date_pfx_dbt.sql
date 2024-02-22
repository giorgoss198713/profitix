SELECT DISTINCT					
concat_ws(					
'_',					
t.client_id_brand,					
cast(					
t.approved_day as varchar(10)					
)					
) as client_id_brand_day,					
t.client_id_brand,					
t.approved_day as transaction_date,					
c.ftd_date as ftd_date,					
NULL as ftd_date_referral,					
t.agent_id_brand_final,					
concat_ws('_',t.client_id,t.agent_id_brand_final) as client_agent_id_brand,					
sum(t.usd_amount) as usd_amount					
FROM					
pfx_crm.transactions_with_brand_pfx_dbt t					
LEFT JOIN (SELECT DISTINCT ftd_date, client_id_brand					
from					
pfx_crm.clients_with_brand_pfx_dbt					
) c					
	ON c.client_id_brand=t.client_id_brand							
--LEFT JOIN  public.persisted_referral_brand r ON r.client_id_brand=t.client_id_brand					
WHERE					
t.client_id_brand_day IN (					
select					
MIN(					
t1.client_id_brand_day					
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
GROUP BY t.client_id_brand, t.approved_day, c.ftd_date, t.agent_id_brand_final, t.client_id					