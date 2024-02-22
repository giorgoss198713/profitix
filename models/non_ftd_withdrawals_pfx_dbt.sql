SELECT DISTINCT twb.usd_amount_with_minus,
twb.client_id_brand_transid_isftd		
FROM
pfx_crm.transactions_with_brand_pfx_dbt twb		
WHERE		
twb.is_ftd is false
AND twb.type ='Withdrawal'