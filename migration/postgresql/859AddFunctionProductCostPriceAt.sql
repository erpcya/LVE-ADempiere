-- Function: productCostPriceAt(NUMERIC, TIMESTAMP)

-- DROP FUNCTION productCostPriceAt(NUMERIC, TIMESTAMP);

CREATE OR REPLACE FUNCTION productCostPriceAt(p_M_Product_ID NUMERIC, p_MovementDate TIMESTAMP)
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
	v_CurrentCostPrice	NUMERIC(10);
BEGIN
    --	Get Cost At
	SELECT cd.CurrentCostPrice 
		INTO v_CurrentCostPrice
	FROM M_CostDetail cd 
	WHERE cd.M_Product_ID = p_M_Product_ID 
	AND cd.Created <= p_MovementDate
	ORDER BY cd.Created DESC
	LIMIT 1;
--  DBMS_OUTPUT.PUT_LINE('== FTA_FarmerLiquidation_ID=' || p_FTA_FarmerLiquidation_ID || ', Amt=' || v_AvailableAmt);
	--	Valid if is null Value
	IF v_CurrentCostPrice IS NULL THEN
		v_CurrentCostPrice := 0;
	END IF;
	--	Default Return
	RETURN v_CurrentCostPrice;
END;

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;