-- Function: productCostPriceAt(NUMERIC, TIMESTAMP)

-- DROP FUNCTION productCostPriceAt(NUMERIC, TIMESTAMP);

CREATE OR REPLACE FUNCTION productCostPriceAt(p_M_Product_ID NUMERIC, p_MovementDate TIMESTAMP,p_ad_org_id numeric)
  RETURNS NUMERIC AS
$BODY$
/*************************************************************************
 * The contents of this file are subject to the Compiere License.  You may
 * obtain a copy of the License at    http://www.compiere.org/license.html
 * Software is on an  "AS IS" basis,  WITHOUT WARRANTY OF ANY KIND, either
 * express or implied. See the License for details. Code: Compiere ERP+CRM
 * Copyright (C) 1999-2001 Jorg Janke, ComPiere, Inc. All Rights Reserved.
 *
 * Created By Yamel Senih, 
 * yamelsenih@gmail.com
 *************************************************************************
 * Title:	Calculate Cost at Date of Product
 * Description:
 *		
 ************************************************************************/
DECLARE
	v_CurrentCostPrice	NUMERIC;
BEGIN
    --	Get Cost At
	SELECT cd.CurrentCostPrice CurrentCostPrice
		INTO v_CurrentCostPrice
	FROM M_CostDetail cd 
	INNER JOIN C_AcctSchema cas ON (cd.C_AcctSchema_ID=cas.C_AcctSchema_ID)
	WHERE cd.M_Product_ID = p_M_Product_ID AND ((cd.AD_Org_ID=p_AD_Org_ID AND cas.CostingLevel = 'O') OR p_AD_Org_ID IS NULL)
	AND cd.Created <= p_MovementDate
	ORDER BY cd.Created DESC
	LIMIT 1;
--  DBMS_OUTPUT.PUT_LINE('== FTA_FarmerLiquidation_ID=' || p_FTA_FarmerLiquidation_ID || ', Amt=' || v_AvailableAmt);
	--	Valid if is null Value
	IF v_CurrentCostPrice IS NULL THEN
		v_CurrentCostPrice := 0;
	END IF;
	--	Default Return
	RETURN 	v_CurrentCostPrice;
END;

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
  
  
  CREATE OR REPLACE FUNCTION productcostpriceat(p_m_product_id numeric, p_movementdate timestamp without time zone)
  RETURNS numeric AS
$BODY$
/*************************************************************************
 * The contents of this file are subject to the Compiere License.  You may
 * obtain a copy of the License at    http://www.compiere.org/license.html
 * Software is on an  "AS IS" basis,  WITHOUT WARRANTY OF ANY KIND, either
 * express or implied. See the License for details. Code: Compiere ERP+CRM
 * Copyright (C) 1999-2001 Jorg Janke, ComPiere, Inc. All Rights Reserved.
 *
 * Created By Yamel Senih, 
 * yamelsenih@gmail.com
 *************************************************************************
 * Title:	Calculate Cost at Date of Product
 * Description:
 *		
 ************************************************************************/
BEGIN
	return productcostpriceat(p_m_product_id, p_movementdate ,null);
END;

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION productcostpriceat(numeric, timestamp without time zone)
  OWNER TO adempiere;
