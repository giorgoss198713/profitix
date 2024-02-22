SELECT						
DISTINCT						
twb.client_id_brand,						
twb.approved_date,						
twb.usd_amount						
FROM						
pfx_crm.transactions_with_brand_pfx_dbt twb						
INNER JOIN pfx_crm.conversion_rate_denominator_pfx_dbt crd on crd.client_id_brand = twb.client_id_brand						
WHERE						
twb.is_ftd = 'f'						
AND twb.type = 'Deposit'						
ORDER BY twb.client_id_brand