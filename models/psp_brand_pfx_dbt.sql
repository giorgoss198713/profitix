select name, brand_name, fundprocessor_id, is_real_psp, concat_ws('_', id, brand_name) as psp_id_brand
from pfx_crm.pfx_psp