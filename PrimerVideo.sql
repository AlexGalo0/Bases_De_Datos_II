CREATE USER BD_BICICLETAS1 IDENTIFIED BY 123 
DEFAULT TABLESPACE users  
TEMPORARY TABLESPACE temp  
QUOTA UNLIMITED ON users ; 


CREATE ROLE ADMINISTRADORES ; 

GRANT CREATE SESSION, CREATE ANY TABLE, CREATE ANY PROCEDURE, ALTER ANY TABLE,
ALTER ANY PROCEDURE, DROP ANY TABLE, DROP ANY PROCEDURE TO ADMINISTRADORES ; 

GRANT ADMINISTRADORES TO BD_BICICLETAS1 ; 


