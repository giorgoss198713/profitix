SELECT DISTINCT
u.username  as agent_name,
twb.agent_id_brand_final,
u.last_login
FROM
pfx_crm.transactions_with_brand_pfx_dbt twb
INNER JOIN pfx_crm.pfx_users u on CONCAT_WS(
'_',
u.id,
u.brand_name
) = twb.agent_id_brand_final