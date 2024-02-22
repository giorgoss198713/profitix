SELECT		
DISTINCT		
twb.client_id_brand_transid_isftd,		
twb.client_id_brand,		
twb.approved_date,		
twb.currency,		
twb.amount,		
twb.usd_amount		
FROM		
pfx_crm.transactions_with_brand_pfx_dbt twb	
WHERE		
twb.is_ftd is true		
AND twb.type ='Deposit'