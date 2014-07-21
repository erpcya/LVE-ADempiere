--﻿DROP VIEW LVE_RV_OpenItem;
CREATE OR REPLACE VIEW LVE_RV_OpenItem AS 
         SELECT i.ad_org_id, i.ad_client_id, i.documentno, i.c_invoice_id, 
            i.c_order_id, i.c_bpartner_id, i.issotrx, i.dateinvoiced, 
            i.dateacct, p.netdays, 
            paymenttermduedate(i.c_paymentterm_id, i.dateinvoiced::timestamp with time zone) AS duedate, 
            paymenttermduedays(i.c_paymentterm_id, i.dateinvoiced::timestamp with time zone, getdate()) AS daysdue, 
            adddays(i.dateinvoiced::timestamp with time zone, p.discountdays) AS discountdate, 
            round(i.grandtotal * p.discount / 100::numeric, 2) AS discountamt, 
            i.grandtotal, 
            invoicepaid(i.c_invoice_id, i.c_currency_id, 1::numeric) AS paidamt, 
            invoiceopen(i.c_invoice_id, 0::numeric) AS openamt, i.c_currency_id, 
            i.c_conversiontype_id, i.c_paymentterm_id, i.ispayschedulevalid, 
            NULL::numeric AS c_invoicepayschedule_id, i.invoicecollectiontype, 
            i.c_campaign_id, i.c_project_id, i.c_activity_id, i.C_DocType_ID
           FROM rv_c_invoice i
      JOIN c_paymentterm p ON i.c_paymentterm_id = p.c_paymentterm_id
     WHERE invoiceopen(i.c_invoice_id, 0::numeric) <> 0::numeric AND i.ispayschedulevalid <> 'Y'::bpchar AND (i.docstatus = ANY (ARRAY['CO'::bpchar, 'CL'::bpchar]))
UNION 
         SELECT i.ad_org_id, i.ad_client_id, i.documentno, i.c_invoice_id, 
            i.c_order_id, i.c_bpartner_id, i.issotrx, i.dateinvoiced, 
            i.dateacct, 
            daysbetween(ips.duedate::timestamp with time zone, i.dateinvoiced::timestamp with time zone) AS netdays, 
            ips.duedate, 
            daysbetween(getdate(), ips.duedate::timestamp with time zone) AS daysdue, 
            ips.discountdate, ips.discountamt, ips.dueamt AS grandtotal, 
            invoicepaid(i.c_invoice_id, i.c_currency_id, 1::numeric) AS paidamt, 
            invoiceopen(i.c_invoice_id, ips.c_invoicepayschedule_id) AS openamt, 
            i.c_currency_id, i.c_conversiontype_id, i.c_paymentterm_id, 
            i.ispayschedulevalid, ips.c_invoicepayschedule_id, 
            i.invoicecollectiontype, i.c_campaign_id, i.c_project_id, 
            i.c_activity_id, i.C_DocType_ID
           FROM rv_c_invoice i
      JOIN c_invoicepayschedule ips ON i.c_invoice_id = ips.c_invoice_id
     WHERE invoiceopen(i.c_invoice_id, ips.c_invoicepayschedule_id) <> 0::numeric AND i.ispayschedulevalid = 'Y'::bpchar AND (i.docstatus = ANY (ARRAY['CO'::bpchar, 'CL'::bpchar])) AND ips.isvalid = 'Y'::bpchar;
