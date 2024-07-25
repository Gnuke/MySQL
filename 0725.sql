-- 1987년에 입사한 사원 정보를 출력하시오
-- SELECT empno, ename, hiredate
-- FROM empemp
-- WHERE hiredate >= '1987-01-01' AND hiredate <= '1987-12-31';
-- WHERE hiredate BETWEEN '1987-01-01' AND '1987-12-31';
-- WHERE hiredate LIKE '1987%';
-- WHERE YEAR(hiredate) = 1987;

-- TCL
-- START transaction;

-- SELECT * FROM emp 
-- WHERE empno = 7782;
-- SAVEPOINT a;

-- INSERT INTO emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
-- VALUES (7999, 'TOM', 'SALESMAN', 7782, CURDATE(), 2000, 2000, 10);

-- ROLLBACK TO a;


-- -------------------------------------------------
-- DDL

-- CREATE TABLE emp20
-- AS
-- SELECT empno, ename, sal
-- FROM emp
-- WHERE deptno = 20;

-- SELECT * FROM emp20;

-- ALTER TABLE emp20
-- ADD age TINYINT AFTER ename;

-- ALTER TABLE emp20
-- DROP COLUMN sal;

-- ALTER TABLE emp20
-- MODIFY ename VARCHAR(20);

-- DROP TABLE emp20;

-- -- ---------------------------------------------------
-- -- 제약조건
-- CREATE TABLE Jusorok
-- (
-- bunho SMALLINT,
-- gender CHAR(6) DEFAULT 'male'
-- );

-- INSERT INTO Jusorok VALUES(1, 'FEMALE');
-- INSERT INTO Jusorok VALUES(2, DEFAULT );

CREATE TABLE Student(
	hakbun	CHAR(4),
    name	VARCHAR(20)	NOT NULL,
    kor		TINYINT		NOT NULL CHECK(kor BETWEEN 0 AND 100),
    eng		TINYINT		NOT NULL,
    mat		TINYINT		NOT NULL DEFAULT 0,
    edp		TINYINT		NOT NULL,
    tot		SMALLINT,
    avg		FLOAT(5,2),
    grade	CHAR(1),
    deptno 	TINYINT,
    CONSTRAINT student_hakbun_pk PRIMARY KEY(hakbun),
    CONSTRAINT student_name_uk UNIQUE(name),
    CONSTRAINT student_grade_ck CHECK(grade IN('A','B','C','D','F')),
    CONSTRAINT student_deptno_fk FOREIGN KEY(deptno)
    REFERENCES dept(deptno)
)DEFAULT CHARACTER SET utf8;

-- ALTER TABLE Student
-- MODIFY edp TINYINT NOT NULL;

-- table level 제약조건 추가, ADD CONSTRAINT 로 함
ALTER TABLE Student
ADD CONSTRAINT student_tot_ck CHECK(tot BETWEEN 0 AND 400);

-- Column level 제약조건 변경
ALTER TABLE Student
MODIFY eng TINYINT;

-- Column level 제약조건 삭제
ALTER TABLE Student
DROP CONSTRAINT student_name_uk;