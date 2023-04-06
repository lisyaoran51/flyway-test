ALTER TABLE SAVE_PRODUCT_RECORD ADD CHECK_ID VARCHAR(64);
ALTER TABLE SAVE_PRODUCT_RECORD_ROW DROP INDEX SKU;
CREATE INDEX RECORD_ID_SKU ON SAVE_PRODUCT_RECORD_ROW (RECORD_ID, SKU);