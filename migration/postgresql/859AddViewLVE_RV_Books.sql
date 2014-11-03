--DROP VIEW LVE_RV_Books;
CREATE OR REPLACE VIEW LVE_RV_Books AS 
SELECT
	i.AD_Client_ID,
	i.AD_Org_ID,
	i.C_Invoice_ID,
	dt.C_DocType_ID,
	--dt.DocTypeDeclare,
	CAST(NULL AS NUMERIC) AS DocTypeDeclare,
	i.DateInvoiced,
	i.DateAcct,
	i.ControlNo,
	i.DocumentNo,
	bp.NAME,
	bp.VALUE,
	bp.TaxID,
	CASE WHEN i.DocStatus IN ('VO','RE') THEN 
		0
	ELSE 
		i.GrandTotal
	END AS GrandTotal,
	CASE WHEN i.DocStatus IN ('VO','RE') THEN 
		0
	ELSE 
		itax.Exempt  * iv.multiplier
	END AS Exempt,
	CASE WHEN i.DocStatus IN ('VO','RE') THEN 
		0
	ELSE 
		itax.TaxBaseAmt  * iv.multiplier
	END AS TaxBaseAmt,
	CASE WHEN i.DocStatus IN ('VO','RE') THEN 
		0
	ELSE 
		itax.Rate * iv.multiplier
	END AS Rate,
	CASE WHEN i.DocStatus IN ('VO','RE') THEN 
		0
	ELSE 
		itax.TaxAmt * iv.multiplier
	END AS TaxAmt,
	--iaffected.DocAffected_ID,
	--(Select DocAffected_ID From LVE_ReferencedDocuments(I.C_Invoice_ID) As (Amount Numeric ,DocumentNo Varchar(30),DocAffected_ID Numeric,DateInvoiced Timestamp)) DocAffected_ID
	CAST(NULL AS NUMERIC) AS docaffected_id,
	--wit.DocumentNo  AS RetDocumentNo,
	CAST(NULL AS CHARACTER VARYING) AS retdocumentno,
	CAST(NULL AS NUMERIC) AS linenetamt,
	--wit.LineNetAmt,
	i.DocStatus,
	i.DocAction,
	i.IsSoTrx,
	CASE WHEN i.DocStatus IN ('VO','RE') THEN 
		0
	ELSE 
		itax.TaxBaseAmt * iv.multiplier
	END AS A_Base_Amount,
	i.C_BPartner_ID
FROM C_DocType dt 
INNER JOIN C_Invoice i ON dt.C_DocType_ID = i.C_DocType_ID 
INNER JOIN C_BPartner bp ON bp.C_BPartner_ID = i.C_BPartner_ID 
LEFT JOIN (
		SELECT 
			i.multiplier,
			i.C_Invoice_ID
		FROM RV_C_Invoice i
		
	)iv ON (iv.C_Invoice_ID = i.C_Invoice_ID)
INNER JOIN (
		SELECT 			
			it.C_Invoice_ID,
			MAX(t.Rate) AS Rate,
			SUM(it.TaxAmt) AS TaxAmt,
			SUM(CASE t.Rate WHEN 0 THEN 0 ELSE it.TaxBaseAmt END )  AS TaxBaseAmt,
			SUM(CASE t.Rate WHEN 0 THEN it.TaxBaseAmt ELSE 0 END)   AS Exempt 
		FROM C_InvoiceTax it 
		INNER JOIN C_Tax t ON t.C_Tax_ID = it.C_Tax_ID 
		GROUP BY
			it.C_Invoice_ID 
		) itax ON itax.C_Invoice_ID = i.C_Invoice_ID 
/*LEFT JOIN (
		SELECT DISTINCT 
				ilw.DocAffected_ID,
				iw.DocumentNo,
				ilw.LineNetAmt,
				wt.Value 
		FROM C_Invoice iw 
		INNER JOIN C_InvoiceLine ilw ON (iw.C_Invoice_ID = ilw.C_Invoice_ID) 
		INNER JOIN LVE_Withholding w ON w.WithholdingDocType_ID = iw.C_DocType_ID 
		INNER JOIN LVE_WH_Type wt ON (wt.LVE_WH_Type_ID = w.LVE_WH_Type_ID) 
		WHERE 
			(iw.DocStatus = ANY (ARRAY ['CL'::BPCHAR,'CO'::BPCHAR])) 
			AND wt.VALUE = 'RIVA' 
	)wit ON (wit.DocAffected_ID = i.C_Invoice_ID) */
WHERE 
	i.AffectsBook = 'Y'
	AND i.docstatus IN ('CO','CL','RE','VO') 
	--AND DateInvoiced BETWEEN '2013-11-01' AND '2013-11-30'
	--AND i.C_Invoice_ID=1069032
	
UNION ALL 
SELECT
	cbj.ad_client_id,
	cbj.ad_org_id,
	cbj.c_invoice_id,
	cbj.c_doctypetarget_id AS c_doctype_id,
	tdoc.doctypedeclare,
	cbj.datedoc AS dateinvoiced,
	cbj.dateacct,
	cbj.controlno,
	cbj.referenceno AS documentno,
	bp.NAME,
	bp.VALUE,
	bp.taxid,
	CASE	 
		WHEN cbj.docstatus = 'RE'::bpchar 
		THEN 0 
		ELSE 1 
	END::NUMERIC * SUM(cbj.amount * (-1)::NUMERIC) AS grandtotal,
	Round(cbj.amount - (cbj.a_base_amount + 
	CASE	 
		WHEN cbj.c_tax_id IS NULL 
		THEN 0::NUMERIC 
		ELSE (	SELECT
				cbj.a_base_amount * (c_tax.rate / 100::NUMERIC) 
			FROM
				c_tax 
			WHERE
				c_tax.c_tax_id = cbj.c_tax_id
		)
	END), 2)                AS exempt,
	cbj.taxbaseamt,
	cbj.rate,
	round( 
	CASE	 
		WHEN cbj.c_tax_id IS NULL 
		THEN 0::NUMERIC 
		ELSE (	SELECT
				cbj.a_base_amount * (c_tax.rate / 100::NUMERIC) 
			FROM
				c_tax 
			WHERE
				c_tax.c_tax_id = cbj.c_tax_id
		)
	END, 2)AS taxamt,
	CAST(NULL AS NUMERIC) AS docaffected_id,
	CAST(NULL AS CHARACTER VARYING) AS retdocumentno,
	CAST(NULL AS NUMERIC) AS linenetamt,
	cbj.docstatus,
	cbj.docaction,
	'N'::bpchar AS issotrx,
	cbj.a_base_amount,
	cbj.C_BPartner_ID
FROM LVE_RV_CashBookJournal cbj 
JOIN c_bpartner bp ON bp.c_bpartner_id = cbj.c_bpartner_id 
JOIN c_doctype tdoc ON tdoc.c_doctype_id = cbj.c_doctypetarget_id 
WHERE
	cbj.affectsbook = 'Y'::bpchar AND
	cbj.cashtype = 'C'::bpchar AND
	cbj.docstatus IN ('CO','CL') 
GROUP BY
	cbj.ad_client_id,
	cbj.ad_org_id,
	cbj.c_invoice_id,
	cbj.c_doctypetarget_id,
	cbj.datedoc,
	cbj.dateacct,
	cbj.controlno,
	cbj.referenceno,
	bp.NAME,
	bp.VALUE,
	bp.taxid,
	cbj.docstatus,
	cbj.amount,
	cbj.a_base_amount,
	cbj.c_tax_id,
	cbj.docaction,
	cbj.taxbaseamt,
	cbj.rate,
	tdoc.doctypedeclare,
	cbj.C_BPartner_ID

	;