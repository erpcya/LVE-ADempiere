CREATE OR REPLACE VIEW rv_transaction AS 
 SELECT t.m_transaction_id,
    t.ad_client_id,
    l.ad_org_id,
    t.movementtype,
    t.movementdate,
    t.movementqty,
    t.m_attributesetinstance_id,
    asi.m_attributeset_id,
    asi.serno,
    asi.lot,
    asi.m_lot_id,
    asi.guaranteedate,
    t.m_product_id,
    p.value,
    p.name,
    p.description,
    p.upc,
    p.sku,
    p.c_uom_id,
    p.m_product_category_id,
    p.classification,
    p.weight,
    p.volume,
    p.versionno,
    t.m_locator_id,
    l.m_warehouse_id,
    l.x,
    l.y,
    l.z,
    t.m_inventoryline_id,
    il.m_inventory_id,
    t.m_movementline_id,
    ml.m_movement_id,
    t.m_inoutline_id,
    iol.m_inout_id,
    t.m_productionline_id,
    prdl.m_productionplan_id,
    prdp.m_production_id,
    t.c_projectissue_id,
    pjl.c_project_id,
    COALESCE(il.line, ml.line, iol.line, prdl.line, pjl.line) AS line,
    i.description AS descrip
   FROM m_transaction t
   JOIN m_locator l ON t.m_locator_id = l.m_locator_id
   JOIN m_product p ON t.m_product_id = p.m_product_id
   LEFT JOIN m_attributesetinstance asi ON t.m_attributesetinstance_id = asi.m_attributesetinstance_id
   LEFT JOIN m_inventoryline il ON t.m_inventoryline_id = il.m_inventoryline_id
   LEFT JOIN m_inventory i ON i.m_inventory_id = il.m_inventory_id
   LEFT JOIN m_movementline ml ON t.m_movementline_id = ml.m_movementline_id
   LEFT JOIN m_inoutline iol ON t.m_inoutline_id = iol.m_inoutline_id
   LEFT JOIN m_productionline prdl ON t.m_productionline_id = prdl.m_productionline_id
   LEFT JOIN m_productionplan prdp ON prdl.m_productionplan_id = prdp.m_productionplan_id
   LEFT JOIN c_projectissue pjl ON t.c_projectissue_id = pjl.c_projectissue_id