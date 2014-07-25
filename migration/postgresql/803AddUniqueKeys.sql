-- Product from Warehouse
CREATE UNIQUE INDEX UK_LVE_WarehouseProductLine_Product
ON LVE_WarehouseProductLine (LVE_WarehouseProduct_ID, AD_Org_ID, M_Warehouse_ID, M_Product_ID);