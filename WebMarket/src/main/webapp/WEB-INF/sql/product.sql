CREATE TABLE Market_User01.product(
  p_id VARCHAR(10) NOT NULL PRIMARY KEY,
  p_name VARCHAR(20),
  p_unitPrice INTEGER,
  p_description CLOB,
  p_category VARCHAR(20),
  p_manufacturer VARCHAR(20),
  p_unitsInStock LONG,
  p_condition VARCHAR(20),
  p_fileName VARCHAR(20)
)TABLESPACE WebMarketDB;

DROP TABLE Market_User01.product;

SELECT * FROM product;

INSERT INTO product VALUES(
  'P1234', 'iphone 6s', 800000, '1334X750 ReninaHD display, 8-megapixel iSight Camera',
  'Smart Phone', 'Apple', 1000, 'New', 'P1234.jpg'
  );

INSERT INTO product VALUES(
  'P1235', 'LG PC gram', 1500000, '13.3-inch, IPS LED display, 5rd Generation Intel Core processors',
  'NoteBook', 'LG', 1000, 'Refurbished', 'P1235.jpg'
  );
  

INSERT INTO product VALUES(
  'P1236', 'Galaxy Tab S', 900000, '212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor',
  'Tablet PC', 'Samsung', 1000, 'Old', 'P1236.jpg'
  );
  
COMMIT;


