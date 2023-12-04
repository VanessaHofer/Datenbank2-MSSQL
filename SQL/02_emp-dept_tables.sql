/*================================================*/
/* Datenbanken I                                  */
/* Einführungsbeispiel                            */
/* Tabellen erzeugen                              */
/*================================================*/

/*================================================*/
/* Tabelle: DEPT                                  */
/*================================================*/
USE scott;

CREATE TABLE dept (
    deptno INT NOT NULL,
    dname NVARCHAR(14) NOT NULL,
    loc NVARCHAR(13) NOT NULL,
    CONSTRAINT pk_dept PRIMARY KEY (deptno)
);

/*================================================*/
/* Tabelle: EMP                                   */
/*================================================*/
CREATE TABLE emp (
    empno INT NOT NULL,
    ename NVARCHAR(10) NOT NULL,
    job NVARCHAR(9) NOT NULL,
    mgr INT,
    hiredate DATE NOT NULL,
    sal DECIMAL(7,2) NOT NULL,
    comm DECIMAL(7,2),
    deptno INT NOT NULL,
    CONSTRAINT pk_emp PRIMARY KEY (empno),
    CONSTRAINT fk_emp_relation__dept FOREIGN KEY (deptno)
        REFERENCES dept (deptno),
    CONSTRAINT fk_emp_relation__emp FOREIGN KEY (mgr)
        REFERENCES emp (empno)
);

/*================================================*/
/* Index: RELATION_3_FK                           */
/*================================================*/
CREATE INDEX relation_3_fk ON emp (deptno ASC);

/*================================================*/
/* Index: RELATION_16_FK                          */
/*================================================*/
CREATE INDEX relation_16_fk ON emp (mgr ASC);
