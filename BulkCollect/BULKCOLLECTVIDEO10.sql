
DECLARE
 TYPE FILA IS RECORD(
  NOMBRE_PRODUCTO PRODUCTS.PRODUCT_NAME%TYPE , 
  NOMBRE_CATEGORIA CATEGORIES.CATEGORY_NAME%TYPE ,
  ANIO_MODELO NUMBER,
  COD_CATEGORIA NUMBER 
  
 ) ; 
CURSOR CDATOS_PRODUCTO IS SELECT PRODUCTS.PRODUCT_NAME NOMBRE,CATEGORIES.CATEGORY_NAME,PRODUCTS.MODEL_YEAR,
CATEGORIES.CATEGORY_ID FROM PRODUCTS INNER JOIN CATEGORIES ON PRODUCTS.CATEGORY_ID=CATEGORIES.CATEGORY_ID ; 

DATOS_CURSOR FILA ; /*Voy a usar la EDD FILA para guardar mi info en Datos_Cursor*/

BEGIN

  OPEN CDATOS_PRODUCTO ; 
  
  
  LOOP
    FETCH CDATOS_PRODUCTO INTO  DATOS_CURSOR; 
    DBMS_OUTPUT.PUT_LINE('El nombre del producto es : ' || DATOS_CURSOR.NOMBRE_PRODUCTO)  ;
     DBMS_OUTPUT.PUT_LINE('El Modelo del Producto es : ' || DATOS_CURSOR.ANIO_MODELO) ; 
     DBMS_OUTPUT.PUT_LINE('La Categoria del producto es : ' || DATOS_CURSOR.COD_CATEGORIA)  ;
     DBMS_OUTPUT.PUT_LINE('eL id de la categoria del producto es : ' ||DATOS_CURSOR.COD_CATEGORIA) ; 
     DBMS_OUTPUT.PUT_LINE(CHR(13));
   
    
    EXIT WHEN CDATOS_PRODUCTO%NOTFOUND;
    
  END LOOP ; 
  
  CLOSE CDATOS_PRODUCTO ;
END   ;