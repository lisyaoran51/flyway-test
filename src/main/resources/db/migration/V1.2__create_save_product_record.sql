CREATE TABLE SAVE_PRODUCT_RECORD
(
    ID             bigint NOT NULL AUTO_INCREMENT,
    MERCHANT_ID    int,
    UPLOAD_TYPE    int,
    FILE_NAME      varchar(255),
    STATUS         int,
    UPLOAD_USER_ID int,
    UPLOAD_TIME    Datetime,
    CHECK_TIME     Datetime,
    PM_TRACT_ID    bigint,
    PRIMARY KEY (ID)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE SAVE_PRODUCT_RECORD_ROW
(
    ID            bigint       NOT NULL AUTO_INCREMENT,
    RECORD_ID     bigint       NOT NULL UNIQUE KEY,
    SKU           varchar(244) NOT NULL UNIQUE KEY,
    UUID          varchar(40) UNIQUE KEY,
    STATUS        int,
    CONTENT       varchar(8192),
    ERROR_MESSAGE varchar(256),
    PRIMARY KEY (ID)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;