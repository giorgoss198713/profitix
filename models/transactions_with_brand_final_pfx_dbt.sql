select distinct																																
t.id, t.client_id,																																
t.amount, t.usd_amount,																																
t.status,																																
NULL AS frombm,																																
t.approved_date,																																
CAST(t.approved_date as date) as approved_day, t.isfake, t.type, t.is_ftd,																																
t.brand_name, concat_ws('_', t.client_id, t.brand_name) as client_id_brand,																																
concat_ws('_', t.client_id, t.brand_name, t.id, t.is_ftd) as client_id_brand_transid_isftd,																																
(CASE WHEN t.is_ftd IS TRUE AND c.first_calling_agent IS NOT NULL																																
THEN concat_ws('_', c.first_calling_agent, t.brand_name)																																
WHEN t.is_ftd IS TRUE AND c.first_calling_agent IS NULL																																
THEN concat_ws('_', c.retention_agent, t.brand_name)																																
ELSE																																
concat_ws('_', t.agent_id, t.brand_name) END) as agent_id_brand_final,																																
(CASE																																
WHEN t.is_ftd IS TRUE AND c.first_calling_pool_transformed IS NULL																																
AND t.pool_transformed NOT IN ('XX Sales WD', 'XX SALES WD')																																
THEN true else false																																
END) as true_false_1,																																
(CASE																																
WHEN t.is_ftd IS TRUE AND c.first_calling_pool_transformed IS NOT NULL AND t.type='Deposit'																																
AND CONCAT_WS('_',t.brand_name, c.first_calling_pool_transformed)																														
NOT IN ('profitix_English Desk')
THEN c.first_calling_pool_transformed																																
WHEN t.is_ftd IS TRUE AND plp.pool IS NOT NULL																																
AND t.type='Deposit'																																
AND CONCAT_WS('_', t.brand_name, c.first_calling_pool_transformed)																																
IN ('profitix_English Desk')				
THEN plp.pool																																
WHEN t.is_ftd IS TRUE																																
AND t.type='Deposit'																														
AND CONCAT_WS('_', t.brand_name, c.first_calling_pool_transformed)																																
IN ('profitix_English Desk')			
AND plp.pool IS NULL																																
AND c.first_calling_pool_transformed IS NOT NULL																																
THEN c.first_calling_pool_transformed																																																																																																
WHEN t.is_ftd IS TRUE AND c.first_calling_pool_transformed IS NULL																																
THEN t.pool_transformed																																																																
ELSE																																
t.pool_transformed END) as pool_final																																
FROM pfx_crm.sales_transactions_transformed_pfx_dbt t																																
inner join pfx_crm.clients_with_brand_pfx_dbt c ON CONCAT_WS('_',c.id,c.brand_name)=CONCAT_WS('_',t.client_id,t.brand_name)																																
AND c.created_date is not null																																																						
left join pfx_crm.pfx_lifetime plp on CONCAT_WS('_',t.client_id,t.brand_name)=plp.client_id_brand																																																															
WHERE																																
t.isfake IN (CASE																																
WHEN CONCAT_WS('_',t.psp_id,t.brand_name) IN ('63_profitix') AND t.is_ftd is TRUE																															
THEN TRUE																																
ELSE FALSE END)																															
AND t.pool NOT LIKE '%Test%'																																
AND t.pool NOT LIKE '%TEST%'																																
AND t.pool NOT LIKE '%test%'																															
AND date(t.approved_date)<date(now())																																
AND t.usd_amount>																																
(CASE WHEN																																
t.convertion_rate_to_usd =0 AND t.currency !='USD'																																
AND t.usd_amount=1																																
AND t.brand_name NOT IN ('investigram')																																
THEN 0																																
WHEN t.is_ftd is true																																
THEN 2																																
ELSE 0.01																																
END)																															