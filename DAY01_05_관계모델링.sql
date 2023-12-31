-- 부서 테이블
CREATE TABLE DEPARTMENT_T(
    DEPT_NO        VARCHAR2(15)     NOT NULL PRIMARY KEY,
    DEPT_NAME      VARCHAR2(30)     NULL,
    DEPT_LOCATION  VARCHAR2(50)     NULL
    );
    
-- 사원 테이블
CREATE TABLE EMPLOYEE_T (
    EMP_NO         NUMBER           NOT NULL PRIMARY KEY,
    DEPT_NO        VARCHAR2(15)     REFERENCES DEPARTMENT_T(DEPT_NO) ON DELETE SET NULL,
    POSITION       CHAR(10)         ,
    NAME           VARCHAR(15)      ,
    HIRE_DATE      DATE             ,
    SALARY         NUMBER
    );
    
-- 프로젝트 테이블 
CREATE TABLE PROJECT_T (
    PJT_NO         NUMBER           NOT NULL PRIMARY KEY,
    PJT_NAME       VARCHAR2(30)     ,
    BEGIN_DATE     DATE             ,
    END_DATE       DATE             
    );
    
-- 회사 테이블
CREATE TABLE PROCEEDING_T (
    PCD_NO         NUMBER           NOT NULL PRIMARY KEY,
    EMP_NO         NUMBER           REFERENCES EMPLOYEE_T(EMP_NO) ON DELETE CASCADE,
    PJT_NO         NUMBER           REFERENCES PROJECT_T(PJT_NO) ON DELETE SET NULL,
    PJT_STATE      NUMBER           NOT NULL
    );
    
DROP TABLE PROCEEDING_T;
DROP TABLE PROJECT_T;
DROP TABLE EMPLOYEE_T;
DROP TABLE DEPARTMENT_T;