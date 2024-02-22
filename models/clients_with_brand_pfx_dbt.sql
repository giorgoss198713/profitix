select distinct																	
id,																	
(CASE WHEN education_site='ciadoinvestidor.com' THEN 'ciadoinvestidor'																	
WHEN education_site='mentorsabio.com' THEN 'mentorsabio'																	
WHEN education_site='poderinvestimentos.com' THEN 'poderinvestimentos'																	
ELSE education_site																	
END) AS education_site,																	
(CASE WHEN education_site IN ('ciadoinvestidor.com','poderinvestimentos.com','poderinvestimentos', 'potenciadosaber','ciadoinvestidor')  THEN 'cb10'																	
WHEN education_site IN ('mentorsabio','mentorsabio.com','ganhointeligente','cursosderenda','centraldarenda','analistasdelucro','rendainteligente','capitaldolucro') THEN 'cb9'																	
ELSE ''																	
END) AS education_cb,																	
(CASE WHEN country='Brasil' THEN 'Brazil'																	
WHEN country='BR' THEN 'Brazil'																	
WHEN country='United-Kingdom' THEN 'United Kingdom'																	
WHEN country='United Kingdom (UK)' THEN 'United Kingdom'																	
ELSE country END) as country,																
NULL																	
as initial_occupation,																	
NULL AS occupation_group,																	
age,																	
state,																	
cpa,																
depositor,																	
brm_id,																	
dialer_id,																	
NULL as email,																	
(CASE WHEN ftd_date IS NULL THEN created_date																	
WHEN ftd_date IS NULL AND created_date IS NULL THEN converted_date																	
ELSE ftd_date																	
END) AS ftd_date,																	
deposit_amount,																	
withdrawal_amount,																	
last_call_date,																	
entry_type,																	
verified,																	
status,																	
(CASE WHEN pool='French Desk TLV 2' THEN 'FRENCH DESK TLV 2'																	
WHEN pool='FRENCH DESK TLV2' THEN 'FRENCH DESK TLV 2'																	
WHEN pool='FRENCH DESK TLV3' THEN 'FRENCH DESK TLV 3'																	
WHEN pool='FRENCH DESK TLV4' THEN 'FRENCH DESK TLV 4'																	
WHEN pool='French Desk TLV' THEN 'FRENCH DESK TLV 1'																	
WHEN pool='FRENCH DESK TLV' THEN 'FRENCH DESK TLV 1'																	
WHEN pool='French Desk' THEN 'FRENCH DESK'																	
WHEN pool='French Desk 4' THEN 'FRENCH DESK 4'																	
WHEN pool='Aff Ger CY CW' THEN 'AFF GER CY CW'																	
WHEN pool='Azer desk' THEN 'Azer Desk'																	
WHEN pool='brasil desk indication' THEN 'Brasil Desk Indication'																	
WHEN pool='Brz Desk 2' THEN 'BRZ DESK 2'																	
WHEN pool='Brz desk 3' THEN 'BRZ DESK 3'																	
WHEN pool='BRZDESK4' THEN 'BRZ DESK 4'																	
WHEN pool='DE German Desk' THEN 'DE GERMAN DESK'																	
WHEN pool='DE German BLG ENS' THEN 'DE GERMAN BLG ENS'																	
WHEN pool='English desk - BUL' THEN 'English Desk BUL'																	
WHEN pool='English Desk - BUL' THEN 'English Desk BUL'																	
WHEN pool='English desk - LIM - J&L' THEN 'English Desk - LIM - J&L'																	
WHEN pool='English - New - BUL' THEN 'English Desk BUL'																	
WHEN pool='EN CEBU Retention' THEN 'EN CEBU DESK'																	
WHEN pool='EN CEBU DESK ENS' THEN 'EN CEBU DESK'																	
WHEN pool='EN CEBU' THEN 'EN CEBU DESK'																	
WHEN pool='En Cebu FTD' THEN 'EN CEBU DESK'																	
WHEN pool='EN PH DESK ENS' THEN 'EN PH DESK'																	
WHEN pool='ENG RECOVERY' THEN 'EN Recovery'																	
WHEN pool='EN Recovery English Desk' THEN 'EN Recovery'																	
WHEN pool='Recovery English Desk' THEN 'EN Recovery'																	
WHEN pool='FR MADA DESK ENS' THEN 'FR MADA ENS'																	
WHEN pool='FR Mada ENS' THEN 'FR MADA ENS'																	
WHEN pool='ITL AL Desk ENS' THEN 'ITL AL DESK ENS'																	
WHEN pool='AFF TL ITA ' THEN 'AFF TL ITA'																	
WHEN pool='AFF TL ITA 1' THEN 'AFF TL ITA'																	
WHEN pool='AFF TL ITAS' THEN 'AFF TL ITA'																	
WHEN pool='Live leads ENS desk' THEN 'LIVE LEADS ENS'																	
WHEN pool='Live Leads Pool' THEN 'LIVE LEADS ENS'																	
WHEN pool='RU desk ENS' THEN 'RU DESK ENS'																	
WHEN pool='RU KIEV DENS ENS' THEN 'RU KIEV DESK ENS'																	
WHEN pool='RU KIEV desk ENS' THEN 'RU KIEV DESK ENS'																	
WHEN pool='RU Mpoint DESK ENS' THEN 'RU MPOINT DESK ENS'																	
WHEN pool='Russian desk' THEN 'Russian Desk'																	
WHEN pool='Spanish Bul' THEN 'Spanish BUL'																	
ELSE																	
pool																	
END) AS Pool,																	
created_date,																	
campaign_id,																	
referral,																	
converted_date,																	
is_ftd,																	
brand_name,																	
CASE WHEN first_calling_pool='French Desk TLV 2' THEN 'FRENCH DESK TLV 2'																	
WHEN  first_calling_pool='FRENCH DESK TLV2' THEN 'FRENCH DESK TLV 2'																	
WHEN  first_calling_pool='FRENCH DESK TLV3' THEN 'FRENCH DESK TLV 3'																	
WHEN   first_calling_pool='FRENCH DESK TLV4' THEN 'FRENCH DESK TLV 4'																	
WHEN   first_calling_pool='French Desk TLV' THEN 'FRENCH DESK TLV 1'																	
WHEN   first_calling_pool='FRENCH DESK TLV' THEN 'FRENCH DESK TLV 1'																	
WHEN   first_calling_pool='French Desk' THEN 'FRENCH DESK'																	
WHEN   first_calling_pool='French Desk 4' THEN 'FRENCH DESK 4'																	
WHEN   first_calling_pool='Aff Ger CY CW' THEN 'AFF GER CY CW'																	
WHEN   first_calling_pool='Azer desk' THEN 'Azer Desk'																	
WHEN   first_calling_pool='brasil desk indication' THEN 'Brasil Desk Indication'																	
WHEN   first_calling_pool='Brz Desk 2' THEN 'BRZ DESK 2'																	
WHEN   first_calling_pool='Brz desk 3' THEN 'BRZ DESK 3'																	
WHEN   first_calling_pool='BRZDESK4' THEN 'BRZ DESK 4'																	
WHEN   first_calling_pool='DE German Desk' THEN 'DE GERMAN DESK'																	
WHEN   first_calling_pool='DE German BLG ENS' THEN 'DE GERMAN BLG ENS'																	
WHEN   first_calling_pool='English desk - BUL' THEN 'English Desk BUL'																	
WHEN   first_calling_pool='English desk - LIM - J&L' THEN 'English Desk - LIM - J&L'																	
WHEN   first_calling_pool='EN CEBU Retention' THEN 'EN CEBU DESK'																	
WHEN   first_calling_pool='EN CEBU DESK ENS' THEN 'EN CEBU DESK'																	
WHEN   first_calling_pool='EN CEBU' THEN 'EN CEBU DESK'																	
WHEN   first_calling_pool='En Cebu FTD' THEN 'EN CEBU DESK'																	
WHEN   first_calling_pool='EN PH DESK ENS' THEN 'EN PH DESK'																	
WHEN   first_calling_pool='ENG RECOVERY' THEN 'EN Recovery'																	
WHEN   first_calling_pool='EN Recovery English Desk' THEN 'EN Recovery'																	
WHEN   first_calling_pool='Recovery English Desk' THEN 'EN Recovery'																	
WHEN   first_calling_pool='FR MADA DESK ENS' THEN 'FR MADA ENS'																	
WHEN   first_calling_pool='FR Mada ENS' THEN 'FR MADA ENS'																	
WHEN   first_calling_pool='ITL AL Desk ENS' THEN 'ITL AL DESK ENS'																	
WHEN   first_calling_pool='AFF TL ITA ' THEN 'AFF TL ITA'																	
WHEN   first_calling_pool='AFF TL ITA 1' THEN 'AFF TL ITA'																	
WHEN   first_calling_pool='Live leads ENS desk' THEN 'LIVE LEADS ENS'																	
WHEN   first_calling_pool='Live Leads Pool' THEN 'LIVE LEADS ENS'																	
WHEN   first_calling_pool='RU desk ENS' THEN 'RU DESK ENS'																	
WHEN   first_calling_pool='RU KIEV DENS ENS' THEN 'RU KIEV DESK ENS'																	
WHEN   first_calling_pool='RU KIEV desk ENS' THEN 'RU KIEV DESK ENS'																	
WHEN   first_calling_pool='RU Mpoint DESK ENS' THEN 'RU MPOINT DESK ENS'																	
WHEN   first_calling_pool='KIEV desk ENS' THEN 'RU DESK ENS'																	
WHEN   first_calling_pool='Mpoint RU' THEN 'RU DESK ENS'																	
WHEN   first_calling_pool='Mpoint RU ENS' THEN 'RU DESK ENS'																	
WHEN   first_calling_pool='RU desk' THEN 'RU MPOINT DESK ENS'																	
WHEN   first_calling_pool='Russian desk' THEN 'Russian Desk'																	
WHEN   first_calling_pool='Spanish Bul' THEN 'Spanish BUL'
											 ELSE																	
first_calling_pool																	
END																	
as first_calling_pool_transformed,																	
first_calling_agent,																	
retention_agent,																	
(CASE WHEN language='97' THEN 'French'																	
WHEN language='arabic' THEN 'Arabic'																	
WHEN language='azerbaijan' THEN 'Azerbaijani'																	
WHEN language='Azerbaijan' THEN 'Azerbaijani'																	
WHEN language='azerbaijan' THEN 'Azerbaijani'																	
WHEN language='chinese' THEN 'Chinese'																	
WHEN language='english' THEN 'English'																	
WHEN language='french' THEN 'French'																	
WHEN language='german' THEN 'German'																	
WHEN language='italian' THEN 'Italian'																	
WHEN language='portuguese' THEN 'Portuguese'																	
WHEN language='russian' THEN 'Russian'																	
WHEN language='spanish' THEN 'Spanish'																	
WHEN language='Spanish; Castilian' THEN 'Spanish'																	
WHEN language= 'thai' THEN 'Thai'																	
WHEN language='ukrainian' THEN 'Ukrainian'																	
WHEN language IS NULL THEN 'Unknown'																	
ELSE																	
language END) AS language																	
,																	
concat_ws('_', referral, brand_name) as referral_brand,																	
fname,																	
lname,																	
gender,																	
concat_ws(' ', fname, lname) as full_name,																	
concat_ws('_', retention_agent, brand_name) as agent_id_brand,																	
concat_ws('_', id, brand_name) as client_id_brand,																	
(CASE WHEN campaign_id IS NULL THEN concat_ws('_', 1, 'tradershome')																	
ELSE concat_ws('_', campaign_id, brand_name)  END) as campaign_id_brand,																	
(CASE WHEN age>0 and age<31 THEN '19-30'																	
WHEN age>30 and age<41 THEN '31-40'																	
WHEN age >40 and age<51 THEN '41-50'																	
WHEN age>50 and age<61 THEN '51-60'																	
WHEN age>60 and age<71 THEN '61-70'																	
WHEN age>70 and age <81 THEN '71-80'																	
WHEN age>80 and age<121 THEN '81+'																	
ELSE 'Not in CRM'																	
END) as age_group,																	
lead_atomix_id,																	
client_in_atomix,																	
(CASE																	
WHEN lead_atomix_id IS NULL AND client_in_atomix IS TRUE THEN 'Atomix from Retention'																	
WHEN lead_atomix_id IS NOT NULL THEN 'Atomix from FTD'																	
ELSE 'No Atomix'																	
END) has_atomix,																	
client_conversations,																	
CASE WHEN attempted_calls ~ E'^\\d+$' THEN attempted_calls::int ELSE NULL END AS attempted_calls,																	
CASE WHEN answered_calls ~ E'^\\d+$' THEN answered_calls::int ELSE NULL END AS answered_calls,																	
(CASE WHEN (CASE WHEN answered_calls ~ E'^\\d+$' THEN answered_calls::int ELSE NULL END)>0 THEN 1																	
ELSE 0 END) answered_binary,																	
(CASE WHEN (CASE WHEN answered_calls ~ E'^\\d+$' THEN answered_calls::int ELSE NULL END)>0 THEN 'Answered'																	
ELSE 'Not Answered' END) answered_call																	
from																	
pfx_crm.pfx_clients																																
where entry_type = 'Client'																
AND created_date is not null																	
AND concat_ws(' ', fname, lname) NOT LIKE '% Test %'																	
AND concat_ws(' ', fname, lname) NOT LIKE '% test %'																	
AND concat_ws(' ', fname, lname) NOT LIKE '% TEST %'																	
AND concat_ws(' ', fname, lname) NOT LIKE '%TEST %'																	
AND concat_ws(' ', fname, lname) NOT LIKE '%test %'																	
AND concat_ws(' ', fname, lname) NOT LIKE '%Test %'																	
AND (concat_ws(' ', fname, lname) NOT LIKE '% Test%' OR lname LIKE '%Testut%')															
AND concat_ws(' ', fname, lname) NOT LIKE '% TEST%'																	
AND concat_ws(' ', fname, lname) NOT LIKE '% test%'																	
AND status NOT IN (CASE WHEN last_call_date is null then ('Test') ELSE '0' END)																	