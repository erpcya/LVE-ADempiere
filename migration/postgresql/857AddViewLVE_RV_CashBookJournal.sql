CREATE VIEW LVE_RV_CashBookJournal AS
SELECT 
        c.AD_Client_ID,
        c.AD_org_ID, 
        c.Created, 
        c.Createdby, 
        c.Updated, 
        c.Updatedby, 
        c.C_Activity_ID, 
        c.Beginningbalance,  
        c.C_Cashbook_ID, 
        c.C_cash_ID, 
        c.C_doctypetarget_ID, 
        c.Dateacct,         
        c.DocAction, 
        c.DocStatus, 
        c.DocumentNo, 
        c.EndingBalance, 
        c.Name, 
        c.StatementDate, 
        c.StatementDifference, 
        lc.Cashtype, 
        lc.C_bankaccount_ID, 
        lc.C_bank_ID, 
        lc.C_bpartner_ID, 
        lc.C_cashline_ID, 
        lc.C_charge_ID, 
        lc.C_currency_ID, 
        lc.C_invoice_ID, 
        lc.C_payment_ID, 
        lc.accountno,
        COALESCE(c.Description, lc.Description) AS Description, 
        lc.DiscountAmt, 
        lc.IsActive, 
        lc.IsGenerated, 
        lc.IsOverUnderPayment, 
        lc.Line / 10 AS Line, 
        lc.CheckNo, 
        lc.ControlNo, 
        lc.ReferenceNo, 
        lc.Processed, 
        lc.WriteOffAmt, 
        lc.AffectsBook, 
        lc.DateDoc, 
        lc.A_Base_Amount, 
        lc.C_Tax_ID, 
        t.Rate, 
        ((t.Rate / 100 ) * lc.A_Base_Amount) AS TaxBaseAmt, 
        (lc.Amount - (((t.rate * lc.a_base_amount) / 100) + lc.A_Base_Amount)) AS Exempt, 
        lc.amount, 
        CASE 
                WHEN (lc.C_Tax_ID IS NULL) 
                        THEN 0 
                ELSE (SELECT (lc.A_Base_Amount * (t.Rate / 100)) FROM C_Tax WHERE (C_Tax.C_Tax_ID = lc.C_Tax_ID)) 
        END AS TaxAmt 
FROM C_Cash c 
JOIN c_cashline lc ON lc.C_cash_id = c.C_cash_id
LEFT JOIN c_charge ch ON ch.C_charge_id = lc.C_charge_id
LEFT JOIN c_tax t ON t.C_tax_id = lc.C_tax_id;

