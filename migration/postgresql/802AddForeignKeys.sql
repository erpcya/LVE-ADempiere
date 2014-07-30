-- Table Reference
ALTER TABLE LVE_WarehouseProduct ADD CONSTRAINT FK_LVE_WarehouseProduct_AD_Table FOREIGN KEY (AD_Table_ID)
	REFERENCES AD_Table(AD_Table_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;

-- Product Column Reference	
ALTER TABLE LVE_WarehouseProduct ADD CONSTRAINT FK_LVE_WarehouseProduct_Product_Column_ID FOREIGN KEY (Product_Column_ID)
	REFERENCES AD_Column(AD_Column_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;

-- Attribute Column Reference	
ALTER TABLE LVE_WarehouseProduct ADD CONSTRAINT FK_LVE_WarehouseProduct_Attribute_Column_ID FOREIGN KEY (Attribute_Column_ID)
	REFERENCES AD_Column(AD_Column_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;

-- Warehouse Column Reference	
ALTER TABLE LVE_WarehouseProduct ADD CONSTRAINT FK_LVE_WarehouseProduct_Warehouse_Column_ID FOREIGN KEY (Warehouse_Column_ID)
	REFERENCES AD_Column(AD_Column_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;

-- Quantity Column Reference	
ALTER TABLE LVE_WarehouseProduct ADD CONSTRAINT FK_LVE_WarehouseProduct_Qty_Column_ID FOREIGN KEY (Qty_Column_ID)
	REFERENCES AD_Column(AD_Column_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;

	
ALTER TABLE LVE_WarehouseProductLine ADD CONSTRAINT FK_LVE_WarehouseProductLine_LVE_WarehouseProduct_ID FOREIGN KEY (LVE_WarehouseProduct_ID)
	REFERENCES LVE_WarehouseProduct(LVE_WarehouseProduct_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;

ALTER TABLE LVE_WarehouseProductLine ADD CONSTRAINT FK_LVE_WarehouseProductLine_M_Warehouse_ID FOREIGN KEY (M_Warehouse_ID)
	REFERENCES M_Warehouse(M_Warehouse_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
	
ALTER TABLE LVE_WarehouseProductLine ADD CONSTRAINT FK_LVE_WarehouseProductLine_M_Product_ID FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
	
ALTER TABLE M_Requisition ADD CONSTRAINT FK_M_Requisition_C_UOM FOREIGN KEY (C_Uom_ID)
	REFERENCES C_UOM(C_Uom_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
