-- EXAMEN I 
-- ANDREA MICHELLE CALIX GONZALEZ 20171000581

--EJERCICIO 2

CREATE SEQUENCE SQ_TABLAS_20171000581
START WITH 20
INCREMENT BY 2;

INSERT INTO EMPLOYEES VALUES(SQ_TABLAS_20171000581.NEXTVAL,'LUIS','CALIX','@CALIX',NULL,SYSDATE,'MK_MAN',12000,null,null,90);
INSERT INTO EMPLOYEES VALUES(SQ_TABLAS_20171000581.NEXTVAL,'ANDREA','CALIX','@MCALIX',NULL,SYSDATE,'MK_MAN',12000,null,null,null);
COMMIT;
INSERT INTO DEPARTMENTS VALUES(SQ_TABLAS_20171000581.NEXTVAL,'BDA',NULL,1700);
INSERT INTO DEPARTMENTS VALUES(SQ_TABLAS_20171000581.NEXTVAL,'ANALISTA DE INFO',NULL,1700);
COMMIT;
INSERT INTO LOCATIONS VALUES(SQ_TABLAS_20171000581.NEXTVAL,'MALL 2 NIVEL','26192','Southlake','texas','US');
INSERT INTO LOCATIONS VALUES(SQ_TABLAS_20171000581.NEXTVAL,'MALL 3 NIVEL','26192','Southlake','texas','US');
COMMIT;
INSERT INTO REGIONS VALUES(SQ_TABLAS_20171000581.NEXTVAL,'ASIA');
INSERT INTO REGIONS VALUES(SQ_TABLAS_20171000581.NEXTVAL,'OCEANIA');
COMMIT;
--INSERT INTO COUNTRIES VALUES(SQ_TABLAS_20171000581.NEXTVAL,'JP','JAP',NULL);

DECLARE
  VALOR_ACTUAL_SQ NUMBER;
BEGIN
  VALOR_ACTUAL_SQ:=SQ_TABLA_20171000581.CURRVAL;
  DBMS_OUTPUT.put_line('EL VALOR ACTUAL DE LA SECUENCIA ES: '||VALOR_ACTUAL_SQ);
  COMMIT;
END;
