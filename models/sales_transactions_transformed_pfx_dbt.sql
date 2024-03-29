select DISTINCT					
CASE WHEN t.current_pool ='French Desk TLV 2' THEN 'FRENCH DESK TLV 2'					
WHEN  t.current_pool ='FRENCH DESK TLV2' THEN 'FRENCH DESK TLV 2'					
WHEN  t.current_pool ='FRENCH DESK TLV3' THEN 'FRENCH DESK TLV 3'					
WHEN   t.current_pool ='FRENCH DESK TLV4' THEN 'FRENCH DESK TLV 4'					
WHEN   t.current_pool='French Desk TLV' THEN 'FRENCH DESK TLV 1'					
WHEN   t.current_pool='FRENCH DESK TLV' THEN 'FRENCH DESK TLV 1'					
WHEN   t.current_pool='French Desk' THEN 'FRENCH DESK'					
WHEN   t.current_pool='French Desk 4' THEN 'FRENCH DESK 4'					
WHEN   t.current_pool='Aff Ger CY CW' THEN 'AFF GER CY CW'					
WHEN   t.current_pool='Azer desk' THEN 'Azer Desk'					
WHEN   t.current_pool='brasil desk indication' THEN 'Brasil Desk Indication'					
WHEN   t.current_pool='Brz Desk 2' THEN 'BRZ DESK 2'					
WHEN   t.current_pool='Brz desk 3' THEN 'BRZ DESK 3'					
WHEN   t.current_pool='BRZDESK4' THEN 'BRZ DESK 4'					
WHEN   t.current_pool='DE German Desk' THEN 'DE GERMAN DESK'					
WHEN   t.current_pool='DE German BLG ENS' THEN 'DE GERMAN BLG ENS'					
WHEN   t.current_pool='English desk - BUL' THEN 'English Desk BUL'					
WHEN   t.current_pool='English desk - LIM - J&L' THEN 'English Desk - LIM - J&L'					
WHEN   t.current_pool='EN CEBU Retention' THEN 'EN CEBU DESK'					
WHEN   t.current_pool='EN CEBU DESK ENS' THEN 'EN CEBU DESK'					
WHEN   t.current_pool='EN CEBU' THEN 'EN CEBU DESK'					
WHEN   t.current_pool='En Cebu FTD' THEN 'EN CEBU DESK'					
WHEN   t.current_pool='EN PH DESK ENS' THEN 'EN PH DESK'					
WHEN   t.current_pool='ENG RECOVERY' THEN 'EN Recovery'					
WHEN   t.current_pool='EN Recovery English Desk' THEN 'EN Recovery'					
WHEN   t.current_pool='Recovery English Desk' THEN 'EN Recovery'					
WHEN   t.current_pool='FR MADA DESK ENS' THEN 'FR MADA ENS'					
WHEN   t.current_pool='FR Mada ENS' THEN 'FR MADA ENS'					
WHEN   t.current_pool='ITL AL Desk ENS' THEN 'ITL AL DESK ENS'					
WHEN   t.current_pool='AFF TL ITA ' THEN 'AFF TL ITA'					
WHEN   t.current_pool='AFF TL ITA 1' THEN 'AFF TL ITA'					
WHEN   t.current_pool='Live leads ENS desk' THEN 'LIVE LEADS ENS'					
WHEN   t.current_pool='Live Leads Pool' THEN 'LIVE LEADS ENS'					
WHEN   t.current_pool='RU desk ENS' THEN 'RU DESK ENS'					
WHEN   t.current_pool='RU KIEV DENS ENS' THEN 'RU KIEV DESK ENS'					
WHEN   t.current_pool='RU KIEV desk ENS' THEN 'RU KIEV DESK ENS'					
WHEN   t.current_pool='RU Mpoint DESK ENS' THEN 'RU MPOINT DESK ENS'					
WHEN   t.current_pool='Russian desk' THEN 'Russian Desk'					
WHEN   t.current_pool='Spanish Bul' THEN 'Spanish BUL'					
ELSE					
t.current_pool					
END as current_pool_transformed,					
CASE WHEN t.pool ='French Desk TLV 2' THEN 'FRENCH DESK TLV 2'					
WHEN t.pool ='FRENCH DESK TLV2' THEN 'FRENCH DESK TLV 2'					
WHEN t.pool ='FRENCH DESK TLV3' THEN 'FRENCH DESK TLV 3'					
WHEN  t.pool ='FRENCH DESK TLV4' THEN 'FRENCH DESK TLV 4'					
WHEN  t.pool='French Desk TLV' THEN 'FRENCH DESK TLV 1'					
WHEN  t.pool='FRENCH DESK TLV' THEN 'FRENCH DESK TLV 1'					
WHEN  t.pool='French Desk' THEN 'FRENCH DESK'					
WHEN  t.pool='French Desk 4' THEN 'FRENCH DESK 4'					
WHEN  t.pool='Aff Ger CY CW' THEN 'AFF GER CY CW'					
WHEN  t.pool='Azer desk' THEN 'Azer Desk'					
WHEN  t.pool='brasil desk indication' THEN 'Brasil Desk Indication'					
WHEN  t.pool='Brz Desk 2' THEN 'BRZ DESK 2'					
WHEN  t.pool='Brz desk 3' THEN 'BRZ DESK 3'					
WHEN  t.pool='BRZDESK4' THEN 'BRZ DESK 4'					
WHEN  t.pool='DE German Desk' THEN 'DE GERMAN DESK'					
WHEN  t.pool='DE German BLG ENS' THEN 'DE GERMAN BLG ENS'					
WHEN  t.pool='English desk - BUL' THEN 'English Desk BUL'					
WHEN  t.pool='English desk - LIM - J&L' THEN 'English Desk - LIM - J&L'					
WHEN  t.pool='EN CEBU Retention' THEN 'EN CEBU DESK'					
WHEN  t.pool='EN CEBU DESK ENS' THEN 'EN CEBU DESK'					
WHEN  t.pool='EN CEBU' THEN 'EN CEBU DESK'					
WHEN  t.pool='En Cebu FTD' THEN 'EN CEBU DESK'					
WHEN  t.pool='EN PH DESK ENS' THEN 'EN PH DESK'					
WHEN  t.pool='ENG RECOVERY' THEN 'EN Recovery'					
WHEN  t.pool='EN Recovery English Desk' THEN 'EN Recovery'					
WHEN  t.pool='Recovery English Desk' THEN 'EN Recovery'					
WHEN  t.pool='FR MADA DESK ENS' THEN 'FR MADA ENS'					
WHEN  t.pool='FR Mada ENS' THEN 'FR MADA ENS'					
WHEN  t.pool='ITL AL Desk ENS' THEN 'ITL AL DESK ENS'					
WHEN  t.pool='AFF TL ITA ' THEN 'AFF TL ITA'					
WHEN  t.pool='AFF TL ITA 1' THEN 'AFF TL ITA'					
WHEN  t.pool='Live leads ENS desk' THEN 'LIVE LEADS ENS'					
WHEN  t.pool='Live Leads Pool' THEN 'LIVE LEADS ENS'					
WHEN  t.pool='RU desk ENS' THEN 'RU DESK ENS'					
WHEN  t.pool='RU KIEV DENS ENS' THEN 'RU KIEV DESK ENS'					
WHEN  t.pool='RU KIEV desk ENS' THEN 'RU KIEV DESK ENS'					
WHEN  t.pool='RU Mpoint DESK ENS' THEN 'RU MPOINT DESK ENS'					
WHEN  t.pool='Russian desk' THEN 'Russian Desk'					
WHEN  t.pool='Spanish Bul' THEN 'Spanish BUL'					
ELSE					
t.pool					
END as pool_transformed,					
t.*					
from pfx_crm.pfx_transactions t					
left join pfx_crm.psp_brand_pfx_dbt p on concat_ws('_', t.psp_id, t.brand_name)=p.psp_id_brand					
where					
t.status='Approved'					
AND p.is_real_psp is true