/*================================================*/
/* Datenbanken I                                  */
/* Einführungsbeispiel                            */
/* Daten in Demotabellen einfügen                 */
/*================================================*/
USE scott;

SET DATEFORMAT dmy; -- Alternativ: SET DATEFORMAT ymd;

-- -----------
-- Abteilungen
-- -----------

-- Einfügen von Daten in die Tabelle 'scott.dept'
INSERT INTO dept 
    (deptno, dname, loc) 
VALUES (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO dept 
    (deptno, dname, loc) 
VALUES (20, 'RESEARCH', 'DALLAS');

INSERT INTO dept 
    (deptno, dname, loc) 
VALUES (30, 'SALES', 'CHICAGO');

INSERT INTO dept 
    (deptno, dname, loc) 
VALUES (40, 'OPERATIONS', 'BOSTON');


-- -----------
-- Angestellte
-- -----------

-- Einfügen von Daten in die Tabelle 'emp'
INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7369, 'SMITH', 'CLERK', '1980-12-17', 800, NULL, 20);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7499, 'ALLEN', 'SALESMAN', '1981-02-20', 1600, 300, 30);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7521, 'WARD', 'SALESMAN', '1981-02-22', 1250, 500, 30);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7566, 'JONES', 'MANAGER', '1981-04-02', 2975, NULL, 20);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7654, 'MARTIN', 'SALESMAN', '1981-09-28', 1250, 1400, 30);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7698, 'BLAKE', 'MANAGER', '1981-05-01', 2850, NULL, 30);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7782, 'CLARK', 'MANAGER', '1981-06-09', 2450, NULL, 10);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7788, 'SCOTT', 'ANALYST', '1982-12-09', 3000, NULL, 20);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7839, 'KING', 'PRESIDENT', '1981-11-17', 5000, NULL, 10);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7844, 'TURNER', 'SALESMAN', '1981-09-08', 1500, 0, 30);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7876, 'ADAMS', 'CLERK', '1983-01-12', 1100, NULL, 20);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7900, 'JAMES', 'CLERK', '1981-12-03', 950, NULL, 30);

INSERT INTO emp 
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7902, 'FORD', 'ANALYST', '1981-12-03', 3000, NULL, 20);

INSERT INTO emp
    (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7934, 'MILLER', 'CLERK', '1982-01-23', 1300, NULL, 10);

UPDATE emp 
    SET mgr = 7902 
WHERE empno = 7369;

UPDATE emp 
    SET mgr = 7698 
WHERE empno = 7499;

UPDATE emp 
    SET mgr = 7698 
WHERE empno = 7521;

UPDATE emp 
    SET mgr = 7839 
WHERE empno = 7566;

UPDATE emp 
    SET mgr = 7698 
WHERE empno = 7654;

UPDATE emp 
    SET mgr = 7839 
WHERE empno = 7698;

UPDATE emp 
    SET mgr = 7839 
WHERE empno = 7782;

UPDATE emp 
SET mgr = 7566 
WHERE empno = 7788;

UPDATE emp 
SET mgr = 7698 
WHERE empno = 7844;

UPDATE emp 
SET mgr = 7788 
WHERE empno = 7876;

UPDATE emp 
SET mgr = 7698 
WHERE empno = 7900;

UPDATE emp 
SET mgr = 7566 
WHERE empno = 7902;

UPDATE emp 
SET mgr = 7782 
WHERE empno = 7934;


-- Transaktion abschliessen

COMMIT;