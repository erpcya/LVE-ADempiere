CREATE OR REPLACE VIEW C_Invoice_Candidate_v AS 
 SELECT o.ad_client_id, o.ad_org_id, o.c_bpartner_id, o.c_order_id, 
    o.documentno, o.dateordered, o.c_doctype_id, 
    round(sum((l.qtyordered - l.qtyinvoiced) * l.priceactual), 2) AS totallines, 
    round(sum((l.qtyordered - l.qtyinvoiced) * l.priceactual) + sum((l.qtyordered - l.qtyinvoiced) * l.priceactual) * (tx.rate / 100::numeric), 2) AS grandtotal, 
    o.isimmediatedelivery
   FROM c_order o
   JOIN c_orderline l ON o.c_order_id = l.c_order_id
   JOIN c_bpartner bp ON o.c_bpartner_id = bp.c_bpartner_id
   JOIN c_tax tx ON tx.c_tax_id = l.c_tax_id
   LEFT JOIN c_invoiceschedule si ON bp.c_invoiceschedule_id = si.c_invoiceschedule_id
  WHERE (o.docstatus = ANY (ARRAY['CO'::bpchar, 'CL'::bpchar, 'IP'::bpchar])) AND (o.c_doctype_id IN ( SELECT c_doctype.c_doctype_id
   FROM c_doctype
  WHERE c_doctype.docbasetype = 'SOO'::bpchar AND (c_doctype.docsubtypeso <> ALL (ARRAY['ON'::bpchar, 'OB'::bpchar, 'WR'::bpchar])))) AND l.qtyordered <> l.qtyinvoiced AND (o.invoicerule = 'I'::bpchar OR o.invoicerule = 'O'::bpchar AND NOT (EXISTS ( SELECT 1
   FROM c_orderline zz1
  WHERE zz1.c_order_id = o.c_order_id AND zz1.qtyordered <> zz1.qtydelivered)) OR o.invoicerule = 'D'::bpchar AND l.qtyinvoiced <> l.qtydelivered OR o.invoicerule = 'S'::bpchar AND bp.c_invoiceschedule_id IS NULL OR o.invoicerule = 'S'::bpchar AND bp.c_invoiceschedule_id IS NOT NULL AND (si.invoicefrequency IS NULL OR si.invoicefrequency = 'D'::bpchar OR si.invoicefrequency = 'W'::bpchar OR si.invoicefrequency = 'T'::bpchar AND (trunc(o.dateordered::timestamp with time zone) <= (firstof(getdate(), 'MM'::character varying)::timestamp with time zone + si.invoicedaycutoff - 1) AND trunc(getdate()) >= (firstof(o.dateordered::timestamp with time zone, 'MM'::character varying)::timestamp with time zone + si.invoiceday - 1) OR trunc(o.dateordered::timestamp with time zone) <= (firstof(getdate(), 'MM'::character varying)::timestamp with time zone + si.invoicedaycutoff + 14) AND trunc(getdate()) >= (firstof(o.dateordered::timestamp with time zone, 'MM'::character varying)::timestamp with time zone + si.invoiceday + 14)) OR si.invoicefrequency = 'M'::bpchar AND trunc(o.dateordered::timestamp with time zone) <= (firstof(getdate(), 'MM'::character varying)::timestamp with time zone + si.invoicedaycutoff - 1) AND trunc(getdate()) >= (firstof(o.dateordered::timestamp with time zone, 'MM'::character varying)::timestamp with time zone + si.invoiceday - 1)))
  GROUP BY o.ad_client_id, o.ad_org_id, o.c_bpartner_id, o.c_order_id, o.documentno, o.dateordered, o.c_doctype_id, tx.rate, o.isimmediatedelivery;
