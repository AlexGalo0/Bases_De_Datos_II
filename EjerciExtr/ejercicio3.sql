-- EXAMEN I 
-- ANDREA MICHELLE CALIX GONZALEZ 20171000581

--EJERCICIO 3

DECLARE
   TYPE FILA IS RECORD(
    JOB_ID JOBS.JOB_ID%TYPE,
    JOB_TITULO JOBS.JOB_TITLE%TYPE,
    MAX_SALARIO JOBS.MAX_SALARY%TYPE,
    MIN_SALARIO JOBS.MIN_SALARY%TYPE,
    ID_DEPTO DEPARTMENTS.DEPARTMENT_ID%TYPE,
    NOMBRE_DEPTO DEPARTMENTS.DEPARTMENT_NAME%TYPE,
    FECHA_INICIO JOB_HISTORY.START_DATE%TYPE,
    FECHA_FIN JOB_HISTORY.END_DATE%TYPE,
    NOMBRE_EMPLEADO EMPLOYEES.FIRST_NAME%TYPE,
    APELLIDO_EMPLEADO EMPLOYEES.LAST_NAME%TYPE
   );
   
   CURSOR CDATOS_20171000581 IS SELECT JOBS.JOB_ID,JOBS.JOB_TITLE,JOBS.MAX_SALARY,JOBS.MIN_SALARY,DEPARTMENTS.DEPARTMENT_ID,
   DEPARTMENTS.DEPARTMENT_NAME,JOB_HISTORY.START_DATE,JOB_HISTORY.END_DATE,EMPLOYEES.FIRST_NAME,EMPLOYEES.LAST_NAME FROM EMPLOYEES INNER JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
   INNER JOIN JOBS ON EMPLOYEES.JOB_ID = JOBS.JOB_ID INNER JOIN JOB_HISTORY ON JOB_HISTORY.EMPLOYEE_ID = EMPLOYEES.EMPLOYEE_ID ;
   
   DATOS_CURSOR FILA;
BEGIN
   OPEN CDATOS_20171000581;
   LOOP

   FETCH CDATOS_20171000581 INTO DATOS_CURSOR;
   
   EXIT WHEN CDATOS_20171000581%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('ID JOBS: '||DATOS_CURSOR.JOB_ID);
      DBMS_OUTPUT.PUT_LINE('TITULO: '||DATOS_CURSOR.JOB_TITULO);
      DBMS_OUTPUT.PUT_LINE('SALARIO MAXIMO: '||DATOS_CURSOR.MAX_SALARIO);
      DBMS_OUTPUT.PUT_LINE('SALARIO MINIMO: '||DATOS_CURSOR.MIN_SALARIO);
      DBMS_OUTPUT.PUT_LINE('ID DEPARTAMENTO: '||DATOS_CURSOR.NOMBRE_DEPTO);
      DBMS_OUTPUT.PUT_LINE('NOMBRE DEPARTAMENTO: '||DATOS_CURSOR.NOMBRE_DEPTO);
      DBMS_OUTPUT.PUT_LINE('FECHA_INICIO: '||DATOS_CURSOR.FECHA_INICIO);
      DBMS_OUTPUT.PUT_LINE('FECHA FINAL: '||DATOS_CURSOR.FECHA_FIN);
      DBMS_OUTPUT.PUT_LINE('NOMBRE DEL EMPLEADO: '||DATOS_CURSOR.NOMBRE_EMPLEADO);
      DBMS_OUTPUT.PUT_LINE('APELLIDO DEL EMPLEADO: '||DATOS_CURSOR.APELLIDO_EMPLEADO);
      DBMS_OUTPUT.PUT_LINE(CHR(13));
     
   END LOOP;
   CLOSE CDATOS_20171000581;
   
END;