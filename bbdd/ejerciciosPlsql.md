---
title: "Ejercicios PLSQL"
---

# Ejercicios boletín.
```sql
CREATE OR REPLACE FUNCTION Obtenermasantiguo(p_deptno dept.deptno%type)
RETURN emp.ename%type
IS
    v_ename emp.ename%type;
BEGIN
    SELECT ename INTO v_ename
    FROM emp
    WHERE hiredate = (SELECT MIN(hiredate)
                     FROM emp
                     WHERE deptno = p_deptno);
    RETURN v_ename;
END;

CREATE OR REPLACE PROCEDURE Mostrarmasantiguo
IS
    CURSOR c_dept IS
    SELECT dname, deptno
    FROM dept;
    v_nomemp emp.ename%type;
BEGIN
    FOR v_dept IN c_dept LOOP
        v_nomemp:=Obtenermasantiguo(v_dept.deptno);
        DBMS_OUTPUT.PUT_LINE(v_dept.dname || '  ' || v_nomemp);
    END LOOP;
END;
/
```