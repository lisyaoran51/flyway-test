ALTER TABLE SAVE_PRODUCT_RECORD ADD CREATE_BY VARCHAR(128);
ALTER TABLE SAVE_PRODUCT_RECORD ADD CREATED_DATE DATETIME NOT NULL DEFAULT NOW();
