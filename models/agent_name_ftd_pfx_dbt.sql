SELECT DISTINCT							
u.username AS agent_name,							
twb.agent_id_brand_final,							
twb.agent_id_brand_day,							
u.id,							
u.brand_name							
FROM pfx_crm.transactions_with_brand_pfx_dbt twb							
	INNER JOIN (SELECT id, username, brand_name,						
	ROW_NUMBER() OVER (PARTITION BY id, brand_name ORDER BY id) as row_num						
	FROM pfx_crm.pfx_users WHERE username NOT IN (						
'fis', 'olradmin', 'ruradmin', 'admrecovery', 'frnew',							
'rotation', 'encynew', 'enjlreassign', 'getwd', 'indnew', 'recovery', 'thaigetwd',							
'thainew', 'itzreassign', 'itzreassign', 'ftdnewfr', 'ravrecovery', 'rotation',							
'ftdnew', 'brznew2', 'brznew5', 'ftdnew', 'arreassign', 'turknew', 'deposit0to500',							
'frenchdesknewftd', 'negativebalance', 'nobalance', 'pclients', 'pendingrefund',							
'refund', 'udreassign0', 'itznewfr', 'brsnewftd', 'brzalexnew', 'brznewftd3',							
'brzreassign', 'azernew', 'chmnew', 'brznew4', 'brznew6', 'deposit0to250',							
'dontpaycredit', 'nobalance', 'refund','udnew', 'indojlnew')) u ON CONCAT_WS('_', u.id, u.brand_name) = twb.agent_id_brand_final							
	AND row_num=1						
WHERE							
twb.is_ftd IS true							
							