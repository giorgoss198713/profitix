SELECT
DISTINCT twb.usd_amount_with_minus,
twb.client_id_brand_transid_isftd,
twb.client_id_brand
FROM
pfx_crm.transactions_with_brand_pfx_dbt twb
WHERE
twb.is_ftd = 'f'
AND twb.type IN ('Deposit','Withdrawal')