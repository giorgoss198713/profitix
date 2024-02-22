select distinct																								
t.id, t.client_id,																								
t.ta_login, t.currency,																						
t.amount, t.usd_amount, NULL AS frombm,																								
t.status, t.created_date, to_char(t.created_date, 'HH24:MI') as created_time,																								
t.approved_date, to_char(t.approved_date, 'HH24:MI') as approved_time,																								
CAST(t.approved_date as date) as approved_day, t.isfake, t.type, t.is_ftd,																								
t.current_pool_transformed,																								
t.pool_transformed,																								
NULL AS payment_method,																								
CASE																								
WHEN tf.pool_final IN																								
('NV-DESK','Alexrudialerreassignpool','Azer Desk','Azer desk','Brasil Desk','Brasil Desk Indication','BRASIL REFERRALS ENS','Brazil Desk','Brazil MAIN','BRAZIL REFERRALS','BRAZILIANTEAM','BRCH1','BRZ DESK 2','Brz Desk 2','Brz Desk 3','Brz desk 3','BRZ DESK 5','BRZ DESK 6','brz desk on mt','BRZ GENERAL FTDS','BRZDESK4','Mpoint RU','Ru Alex Pool','RU AZER DESK GEO ENS','RU Azerbaijan Desk','RU desk ENS','RU DESK ENS','RU Desk General','ru desk on mt','RU GENERAL FTDS','RU KIEV DENS ENS','RU KIEV desk ENS','RU KIEV DESK ENS','RU Mpoint DESK ENS','RU MPOINT DESK ENS','Russian Desk','Russian desk','Russian Desk (GEO)','RUSSIAN GEO DESK ENS','Sho Ru Pool','Temp Reassign', 'BRZ DESK 3', 'BRZ DESK 4', 'BRZ Alex', 'BRZ GENERAL FTDS 2', 'Turk3 Pool', 'Turk4 Pool')																								
THEN 'Arthur'																								
WHEN tf.pool_final IN																								
('FR Mada ENS','FR MADA ENS','French Desk','FRENCH DESK', 'AFF french cy','AFF French CY','French Recovery','FRENCH DESK 2', 'FRENCH DESK 3', 'FRENCH DESK 4', 'FRENCH GENERAL FTDS')																								
THEN 'Julian'																								
WHEN tf.pool_final IN																								
('French Desk TLV','FRENCH DESK TLV','FRENCH DESK TLV 1','French Desk TLV 2','FRENCH DESK TLV 2','FRENCH DESK TLV 3','FRENCH DESK TLV2','FRENCH DESK TLV3','Spain desk TLV M','Turkish Desk TLV M', 'FRENCH DESK TLV 4', 'Recovery FR TLV', 'FRENCH DESK TLV 5', 'AFF french cy', 'FRENCH DESK TLV 6')																								
THEN 'Maurice'																								
WHEN tf.pool_final IN																								
('AFF TL ARABIC','AFF ADAM','AFF CHM','AFF CHM 2','AFF CY German','AFF GER CY ','AFF GER CY','AFF GER CY CW','AFF GY','AFF ITZ CW','AFF ITZ FOX','AFF ITZ FOX FR','AFF ITZ FR','AFF ITZ PFX','AFF LANCH CW','AFF LANCH PFX','AFF UD','ARA EN','ara english','BULdialergeneralpool','cydialergeneralpool','DE German Desk','DE GERMAN DESK','DE Recovery','EN AFF LUCA','EN GEO DESK ENS','EN Recovery','EN Recovery English Desk','EN THAI DESK ENS','ENG Recovery','ENG RECOVERY','English - New - BUL','English Desk','English Desk - BUL','English Desk BUL','English desk - BUL','English SR','GERDESKDIALER','German Desk Recovery','grdialerreassignpool','itzdialerpool','Ju training pool','Lanchdialerpool','PH Ger','Recovery German desk','Sent to Education','Spanish BUL','Spanish Bul','Spanish CY','Spanish Recovery','Thai Desk - EN','AFF Allen ITZ',	'AFF Allen ITZ FOX',	'AFF ARA PFX',	'AFF ARAB CY',	'Aff Ger CY CW',	'Aff ger Luca CW',	'AFF IT RM',	'AFF ITZ CW POOL POOL',	'AFF ITZ DE',	'AFF Spanish CY',	'AFF TL PFX',	'dialerreassignpool', 'English Desk - LIM',	'German - New - BUL',	'AFF CHM - LIM', 'Indian Desk - EN', 'Indonesia Desk - EN', 'AFF LANCH', 'AFF ITZ REN FR', 'AFF ITZ REN EN', 'English Desk - BG - T&M', 'English desk - LIM - J&L', 'AFF TURKISH - EN', 'AFF SLAV PFX', 'AFF JON', 'Natural Pool', 'English Desk - LIM - J&L', 'English desk - Jay', 'AFF JON 2')											
THEN 'Neil'																								
WHEN tf.pool_final IN																								
('AFF CY ITA','Aff Cy Ita','AFF ITA 2','AFF TL ITAS','AFF TL ITA','AFF TL ITA ','AFF TL PT','AFF TLV PT','IL retention','Italian Desk','ITL AL Desk ENS')																								
THEN 'Ofir'																								
ELSE 'Unknown'																								
END as desk_manager,																								
CASE																								
WHEN tf.pool_final IN																								
('ENG Recovery','AFF UD 2', 'En Cebu FTD', 'Live leads ENS desk', 'Live Leads Pool', 'AFF LANCH', 'ara english', 'EN Recovery', 'EN LIVE LEADS ENS', 'English Desk - LIM', 'EN CEBU DESK ENS', 'EN LIVE LEADS ENS', 'EN PH DESK ENS', 'EN FORLANG ENS','EN GEO DESK ENS','ENG RECOVERY', 'EN FORLANG ENS','EN GEO Desk ENS','EN PH Desk ENS', 'English Desk', 'English Desk BUL', 'English Desk - BUL',  'AFF ITZ CW', 'AFF Allen ITZ','AFF LANCH CW','English desk - BUL','BACK FROM ITZ','English - New - BUL','EN FIN CY', 'BLG TRANSFER ENS','AFF ITZ FOX','AFF Allen ITZ FOX','EN Recovery English Desk','AFF ITZ PFX','AFF LANCH PFX','English SR','AFF ADAM','AFF CHM', 'AFF CHM 2','AFF UD','AFF GY', 'EN ARAB DESK BLG ENS','EN ARAB DESK ENS', 'ARA EN', 'AFF ITZ CW POOL POOL', 'EN PH DESK', 'LIVE LEADS ENS', 'Lanchdialerpool', 'grdialerreassignpool', 'dialerreassignpool', 'cydialergeneralpool', 'BULdialergeneralpool', 'EN AFF LUCA', 'EN CEBU', 'EN CEBU DESK', 'EN CEBU Retention', 'EN GEO DESK', 'EN Live Leads Pool', 'EN PH DESK', 'PH EN DESK', 'Sent to Education', 'LIVE LEADS ENS', 'EN FORLANG', 'FORLANG', 'English Desk - BG - T&M', 'English desk - LIM - J&L', 'Indian Desk - EN', 'AFF ITZ REN EN', 'Indonesia Desk - EN', 'AFF CHM - LIM', 'AFF JON', 'Natural Pool', 'English Desk - LIM - J&L', 'English desk - Jay', 'AFF JON 2')																								
THEN 'ENG'																								
WHEN tf.pool_final IN																								
('Brasil Desk', 'Brazil MAIN', 'BRAZIL REFERRALS', 'brasil desk indication' ,'BRAZILIANTEAM', 'Brz Desk 2', 'BRZ CH', 'BRZ CH1', 'BRZ CH2', 'BRZ CH3', 'AFF TL PT', 'Brazil Desk', 'AFF TLV PT', 'BRZ DESK 2', 'Brazil Desk', 'BRZ DESK 2', 'Brazil Desk',	'BRZ DESK 2',	'BRZ DESK 5', 'Brasil Desk',	'Brz desk 3',	'Brasil Desk Indication', 'BRZDESK4', 'BRZ DESK 6', 'Brazil Desk',	'BRCH',	'BRCH1',	'BRCH2',	'BRCH3',	'BRASIL REFERRALS ENS',	'BRZ GENERAL FTDS',	'Temp Reassign',	'brz desk on mt', 'BRZCH',	'BRZCH4',	'BRZCH5',	'CH1',	'CH2',	'CH3', 'BRZ DESK 3', 'BRZ DESK 4', 'BRAZIL BR2', 'brzchreassignpool', 'BRZ Alex', 'BRZ GENERAL FTDS 2', 'BRZ DESK 1')							
THEN 'BRZ'																								
WHEN tf.pool_final IN																								
('Turkish Desk TLV M', 'AFF TL PFX', 'AFF TURKISH - EN', 'Turk3 Pool', 'Turk4 Pool')																								
THEN 'TUR'																								
WHEN tf.pool_final IN																								
('RU AZER DESK GEO ENS', 'AFF UKR PFX ', 'AFF UKR PFX', 'RU AZER DESK GEO ENS',	'RU Azerbaijan Desk', 'Azer Desk',	'NV-DESK', 'Azer Desk',	'AZ GENERAL FTDS', 'Azer desk')																					
THEN 'AZR'																								
WHEN tf.pool_final IN																								
('RU DESK ENS', 'KIEV desk ENS', 'OLEG Ru Pool',	'RU KIEV DENS ENS',	'Ru Alex Pool',	'RU MPOINT DESK ENS',	'RUSSIAN GEO DESK ENS',	'RU KAZA desk ENS',	'Sho Ru Pool',	'RU GENERAL FTDS',	'Alexrudialerreassignpool',	'RU Live Leads Ens', 'Russian Desk (GEO)',	'Ru Alex Pool',	'Russian Desk',	'Mpoint RU',	'RU GENERAL FTDS', 'RU Mpoint DESK ENS',	'RU desk ENS',	'RU KIEV desk ENS',	'Ru Alex Pool',	'RU GENERAL FTDS', 'Russian desk',	'RU GENERAL FTDS',	'RU MPOINT DESK ENS',	'RU KIEV DESK ENS',	'ru desk on mt', 'Ru Live Leads Ens', 'RU Desk General', 'Sho Ru Pool',  'Russian desk', 'Sho Ru Pool', 'Mpoint RU ENS', 'RU desk', 'KIEV desk', 'AFF SLAV PFX')
THEN 'RU'																								
WHEN tf.pool_final IN																								
('FRENCH DESK', 'FR CAMEROON DESK ENS', 'FR MADA ENS', 'FR MADA DESK ENS',	'French Desk TLV', 'FRENCH DESK TLV', 'FRENCH DESK TLV 1', 'FRENCH DESK TLV 2',	'FR digi york ENS',	'FR default pool', 'French Desk TLV',	'French Desk TLV 2',	'FRENCH DESK TLV 3',	'French Desk TLV 4',	'AFF French Cy',	'French Recovery',	'FRENCH GENERAL FTDS', 'French Desk TLV',	'French Desk',	'FR Mada ENS', 'AFF ITZ FOX FR', 'French Desk TLV',	'FRENCH DESK TLV2',	'FRENCH DESK TLV3',	'FRENCH DESK TLV4', 'FRENCH DESK',	'FRENCH GENERAL FTDS',	'FRENCH DESK 2', 'French desk TLV 3', 'French desk TLV 1', 'French desk TLV 2',	'FRENCH DESK TLV 4', 'FRENCH DESK TLV 4','AFF French CY','AFF ITZ FR', 'FR Mada', 'FRENCH DESK 3', 'AFF ITZ REN FR', 'FRENCH DESK 4', 'Recovery FR TLV', 'FRENCH DESK TLV 5', 'AFF french cy', 'FRENCH DESK TLV 6')							
THEN 'FR'																								
WHEN tf.pool_final IN																								
('AFF CY ITA', 'Sales Recycle ITA Desk', 'AFF TL ITA ','AFF TL ITA ',	'AFF TL ITA',	'AFF IT RM',	'ITL AL DESK ENS',	'AFF CY ITA',	'AFF TL ITA',	'ITL AL Desk ENS',	'IL retention',	'Italian Desk',	'ITL AL Desk ENS',	'Aff Cy Ita',	'AFF TL ITA',	'AFF ITA 2',	'AFF TL ITA',	'AFF TL ITA 1',	'AFF TL ITA',	'AFF TL ITAS',	'AFF TL ITA',	'AFF ITA 2',	'AFF CY ITA',	'AFF TL ITA', 'AFF TL Fin ', 'AFF TL Fin', 'GEO ITL DESK', 'ENS RU desk')				
THEN 'ITA'																								
WHEN tf.pool_final IN																								
('AFF TL ARABIC', 'AFF ARA PFX', 'AFF ARAB CY')																								
THEN 'ARAB'																								
WHEN tf.pool_final IN																								
('THAI DESK','Thai Desk - EN', 'EN LIVE LEADS THAI ENS', 'EN THAI DESK ENS')																								
THEN 'THAI'																								
WHEN tf.pool_final IN																								
('Spanish BUL','EN spanish desk ENS', 'EN LIVE LEADS SPANISH ENS',	'Spanish CY',	'BACK FROM SP-BUL',	'Spanish BUL',	'Spanish CY',	'AFF Spanish CY',	'Spanish Bul',	'AFF CHM',	'Spain desk TLV M', 'Spanish Recovery')																
THEN 'SPA'																								
WHEN tf.pool_final IN																								
('DE German Desk', 'AFF TL GERMAN ', 'PH Ger', 'Recovery German desk', 'Special Project German', 'AFF LUCA GERMAN', 'DE Recovery', 'DE German Oscar', 'DE LIVE LEADS GERMAN DESK ENS', 'DE GERMAN BLG ENS', 'DE German IL',  'German - New - BUL', 'DE German BLG ENS', 'AFF GER CY CW', 'AFF GER CY', 'AFF CY German', 'DE GERMAN DESK', 'AFF GER CY ','Aff Ger CY CW','Aff ger Luca CW','AFF ITZ DE','DE German IL','DE German Live Leads ENS','DE German Oscar','DE KSV German desk ENS','Recovery German desk','Special Project German', 'German Desk', 'M GERMAN AFF', 'AFF ITZ PFX (GER)', 'INACTIVE Aff ger Luca CW', 'AFF LUCA GERMAN (INACTIVE)', 'DE German Mark')																								
THEN 'DE'																								
ELSE 'Unknown'																								
END as language,																								
t.brand_name,																								
concat_ws('_', t.psp_id, t.brand_name) as psp_id_brand,																								
concat_ws('_', t.client_id, t.brand_name) as client_id_brand,																								
concat_ws('_', t.ta_id, t.brand_name) as ta_id_brand,																								
concat_ws('_', t.fundprocessor_id, t.brand_name) as fundprocessor_id_brand,																								
concat_ws('_', t.brand_name, t.pool) as brand_pool,																								
concat_ws('_', t.agent_id, t.brand_name) as agent_id_brand,																								
concat_ws('_', t.client_id, t.brand_name ,CAST(t.approved_date as date)) as client_id_brand_day,																								
concat_ws('_', t.client_id, t.brand_name ,t.approved_date) as client_id_brand_day_time,																								
concat_ws('_', t.client_id, t.brand_name, t.id, t.is_ftd) as client_id_brand_transid_isftd,																								
concat_ws('_', t.client_id, t.brand_name, CAST(t.approved_date as date), t.is_ftd) as client_id_brand_day_isftd,																								
concat_ws('_', t.client_id, t.brand_name, CAST(t.approved_date as date), t.is_ftd, t.type) as client_id_brand_day_isftd_type,																								
(CASE WHEN t.is_ftd IS TRUE AND c.first_calling_agent IS NOT NULL																								
THEN concat_ws('_', c.first_calling_agent, t.brand_name)																								
WHEN t.is_ftd IS TRUE AND c.first_calling_agent IS NULL																								
THEN concat_ws('_', c.retention_agent, t.brand_name)																								
ELSE																								
concat_ws('_', t.agent_id, t.brand_name) END) as agent_id_brand_final,																								
(CASE WHEN t.is_ftd IS TRUE AND c.first_calling_agent IS NOT NULL																								
THEN concat_ws('_', c.first_calling_agent, t.brand_name, CAST(t.approved_date as date))																								
WHEN t.is_ftd IS TRUE AND c.first_calling_agent IS NULL																								
THEN concat_ws('_', c.retention_agent, t.brand_name, CAST(t.approved_date as date))																								
ELSE																								
concat_ws('_', t.agent_id, t.brand_name, CAST(t.approved_date as date)) END) as agent_id_brand_day,																								
tf.pool_final,																								
concat_ws('_', t.brand_name, tf.pool_final) as brand_pool_final,																								
CASE WHEN t.type = 'Withdrawal' THEN - t.usd_amount ELSE t.usd_amount END as usd_amount_with_minus,																								
c.answered_binary																								
,																								
concat_ws('_',u.username,u.brand_name, to_char(t.approved_date, 'FMMonth YYYY')) as username_brand_date																								
FROM pfx_crm.sales_transactions_transformed_pfx_dbt t																								
inner join pfx_crm.clients_with_brand_pfx_dbt c ON CONCAT_WS('_',c.id,c.brand_name)=CONCAT_WS('_',t.client_id,t.brand_name)																								
AND c.created_date is not null																																							
left join pfx_crm.psp_brand_pfx_dbt p on concat_ws('_', t.psp_id, t.brand_name)=p.psp_id_brand																								
left join pfx_crm.pfx_lifetime plp on CONCAT_WS('_',t.client_id,t.brand_name)=plp.client_id_brand																							
left join pfx_crm.pfx_users u on CONCAT_WS('_',u.id, u.brand_name)=(CASE WHEN t.is_ftd IS TRUE AND c.first_calling_agent IS NOT NULL																								
THEN concat_ws('_', c.first_calling_agent, t.brand_name)																								
WHEN t.is_ftd IS TRUE AND c.first_calling_agent IS NULL																								
THEN concat_ws('_', c.retention_agent, t.brand_name)																								
ELSE																								
concat_ws('_', t.agent_id, t.brand_name) END) AND u.last_login is not null AND u.type NOT IN ('8')																								
inner join pfx_crm.transactions_with_brand_final_pfx_dbt tf ON concat_ws('_', t.client_id, t.brand_name, t.id, t.is_ftd)=tf.client_id_brand_transid_isftd																								
WHERE																								
t.isfake IN (CASE																																
WHEN CONCAT_WS('_',t.psp_id,t.brand_name) IN ('63_profitix') AND t.is_ftd is TRUE																															
THEN TRUE																																
ELSE FALSE END)																							
AND t.status = 'Approved'																								
AND t.pool NOT LIKE '%Test%'																								
AND t.pool NOT LIKE '%TEST%'																								
AND t.pool NOT LIKE '%test%'																								
AND tf.pool_final NOT IN ('Holding', 'RET Referral', 'test2 testing 1234 edited', 'Test Accounts', 'testing dev pools', 'testing pools', 'itzdialerpool', 'Test Devs12', 'Default', 'Default Pool', 'AFF FR ITZ JUNK', 'Ju training pool', 'AFF ITZ FOX JUNK')																																															
AND p.is_real_psp is TRUE																							
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