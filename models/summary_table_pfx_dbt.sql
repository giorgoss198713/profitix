SELECT twb.language, twb.brand_name, twb.pool_final,								
concat_ws('_',twb.brand_name,twb.pool_final) as brand_pool_final,								
count(distinct crd.min_client_id_brand_day) AS FTDs,								
count(distinct fad.client_id_brand_day) AS "Depositors",								
sum(nfd.usd_amount) AS "Deposit Amount",								
sum(nfW.usd_amount_with_minus) AS "Withdrawal Amount",								
COALESCE(sum(nfd.usd_amount)+sum(nfW.usd_amount_with_minus),sum(nfd.usd_amount),sum(nfW.usd_amount_with_minus),0) AS "Net Amount",								
twb.client_id_brand_transid_isftd								
,anf.agent_name, twb.approved_date								
FROM pfx_crm.transactions_with_brand_pfx_dbt twb								
LEFT JOIN pfx_crm.conversion_rate_denominator_updated_pfx_dbt crd ON crd.client_id_brand_transid_isftd=twb.client_id_brand_transid_isftd								
AND crd.row_num=1								
LEFT JOIN pfx_crm.first_approved_date_updated_pfx_dbt fad ON fad.client_id_brand_transid_isftd=twb.client_id_brand_transid_isftd								
AND fad.row_num=1								
LEFT JOIN pfx_crm.non_ftd_deposits_pfx_dbt nfd ON nfd.client_id_brand_transid_isftd=twb.client_id_brand_transid_isftd								
LEFT JOIN pfx_crm.non_ftd_withdrawals_pfx_dbt nfw ON nfw.client_id_brand_transid_isftd=twb.client_id_brand_transid_isftd								
LEFT JOIN pfx_crm.agent_name_ftd_pfx_dbt anf ON anf.agent_id_brand_day=twb.agent_id_brand_day								
WHERE								
pool_final NOT IN ('CRM test pool','CRM Test Pool')								
GROUP BY twb.language, twb.brand_name, twb.pool_final,								
twb.client_id_brand_transid_isftd,								
anf.agent_name, twb.approved_date								
ORDER BY language, brand_name, pool_final								