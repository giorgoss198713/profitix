SELECT DISTINCT twb.usd_amount,	
twb.client_id_brand_transid_isftd,		
twb.client_id_brand,		
twb.approved_date		
FROM		
pfx_crm.transactions_with_brand_pfx_dbt twb		
WHERE		
twb.is_ftd is false		
AND twb.type ='Deposit'