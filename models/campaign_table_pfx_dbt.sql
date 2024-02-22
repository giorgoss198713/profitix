SELECT twb.language, twb.brand_name, twb.pool_final,								
cwb.country, cbd.campaign_name_transformed,								
cbd.live_not_live,								
concat_ws('_',twb.brand_name,twb.pool_final) as brand_pool_final,								
count(distinct crd.min_client_id_brand_day) AS FTDs,								
count(distinct fad.client_id_brand_day) AS "Depositors",								
(case when (nfd.client_id_brand_transid_isftd is not null or nfw.client_id_brand_transid_isftd is not null) then 1 else 0 end) AS "Non FTD",								
(case when fad1.client_id_brand is not null then 1 else 0 end) AS "anytime_depositor",								
sum(nfd.usd_amount) AS "Deposit Amount",								
sum(nfW.usd_amount_with_minus) AS "Withdrawal Amount",								
sum(ftd.usd_amount) AS "FTD Amount",								
COALESCE(sum(nfd.usd_amount)+sum(nfW.usd_amount_with_minus),sum(nfd.usd_amount),sum(nfW.usd_amount_with_minus),0) AS "Net Amount",								
twb.client_id_brand_transid_isftd,								
twb.client_id_brand,								
cwb.ftd_Date,								
twb.approved_date,								
fdb.ftd_bucket, fdb.ftd_bucket_2, fdb.ftd_bucket_3, fdb.ftd_bucket_4								
FROM pfx_crm.transactions_with_brand_pfx_dbt twb								
LEFT JOIN pfx_crm.conversion_rate_denominator_updated_pfx_dbt crd ON crd.client_id_brand_transid_isftd=twb.client_id_brand_transid_isftd								
AND crd.row_num=1								
LEFT JOIN pfx_crm.first_approved_date_updated_pfx_dbt fad ON fad.client_id_brand_transid_isftd=twb.client_id_brand_transid_isftd								
AND fad.row_num=1								
LEFT JOIN pfx_crm.non_ftd_deposits_pfx_dbt nfd ON nfd.client_id_brand_transid_isftd=twb.client_id_brand_transid_isftd								
LEFT JOIN pfx_crm.non_ftd_withdrawals_pfx_dbt nfw ON nfw.client_id_brand_transid_isftd=twb.client_id_brand_transid_isftd								
LEFT JOIN pfx_crm.ftd_deposits_pfx_dbt ftd ON ftd.client_id_brand_transid_isftd=twb.client_id_brand_transid_isftd								
LEFT JOIN pfx_crm.clients_with_brand_pfx_dbt cwb ON cwb.client_id_brand=twb.client_id_brand								
LEFT JOIN pfx_crm.campaign_brand_pfx_dbt cbd ON cbd.campaign_id_brand=cwb.campaign_id_brand								
LEFT JOIN pfx_crm.ftd_deposits_buckets_pfx_dbt fdb ON fdb.client_id_brand=twb.client_id_brand								
LEFT JOIN pfx_crm.first_approved_date_updated_pfx_dbt fad1 ON fad1.client_id_brand=twb.client_id_brand								
WHERE								
twb.pool_final NOT IN ('CRM test pool','CRM Test Pool')								
GROUP BY twb.language, twb.brand_name, twb.pool_final,								
twb.client_id_brand_transid_isftd, twb.client_id_brand, cwb.country, cbd.campaign_name_transformed, cwb.ftd_date, twb.approved_date,								
fdb.ftd_bucket, fdb.ftd_bucket_2, fdb.ftd_bucket_3, fdb.ftd_bucket_4, nfd.client_id_brand_transid_isftd, nfw.client_id_brand_transid_isftd,								
fad1.client_id_brand, cbd.live_not_live								
ORDER BY language, brand_name, pool_final								