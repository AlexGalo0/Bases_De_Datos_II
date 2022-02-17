/*CREATE OR REPLACE TRIGGER TG_INSERTA_BRANDS 
BEFORE INSERT ON BRANDS
FOR EACH ROW

DECLARE

BEGIN
  :NEW.BRAND_NAME:=TRIM(UPPER(:new.BRAND_NAME));

END ; 

insert into brands values (15,' Alpina ') ;*/

CREATE OR REPLACE TRIGGER TG_UPDATE_BRANDS 
BEFORE update ON BRANDS
FOR EACH ROW

DECLARE

BEGIN
  :NEW.BRAND_NAME:=TRIM(UPPER(:new.BRAND_NAME));

END ; 


BEGIN
  UPDATE BRANDS SET BRAND_NAME = ' tn bike ' WHERE BRAND_ID=15 ; 
  COMMIT ;
END ; 

