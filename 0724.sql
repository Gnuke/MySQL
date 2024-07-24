/*
	Date : 2024-07-24
*/
SELECT * FROM dept;

-- INSERT INTO dept
-- VALUES( 50, 'Design', 'Busan' );

-- SELECT * FROM dept;

-- INSERT INTO dept( dname, deptno, loc )
-- VALUES( 'Development', 60, 'Daejeon' );

-- SELECT * FROM dept;

-- INSERT INTO dept( deptno, dname, loc) -- 명시적 NULL
-- VALUES( 70, NULL, 'Incheon' );

-- SELECT * FROM dept;

-- INSERT INTO dept(deptno, loc)
-- VALUES(80, 'Seoul' );

-- SELECT * FROM dept;

-- INSERT INTO dept(dname, loc)
-- VALUES('Account', 'Youngin');

-- INSERT INTO emp(empno, deptno)
-- VALUES(9999,90);

-- INSERT INTO emp(empno, ename, hiredate, deptno)
-- VALUES( 9998, 'Jimin', CURDATE(), 80);
-- VALUES( 9999, 'Jimin', NOW(), 80);

-- CREATE TABLE emp_copy
-- AS
-- SELECT empno, ename, sal, hiredate
-- FROM emp
-- WHERE deptno = 10;

-- SELECT * FROM mycompany.emp_copy;

-- CREATE TABLE emp_copy1
-- AS
-- SELECT *
-- FROM emp
-- WHERE 0 = 1;

SELECT * FROM mycompany.emp_copy1;

-- INSERT INTO emp_copy1( empno, ename )
-- VALUES(1111,'한지민');

SELECT * FROM dept;

-- UPDATE dept
-- SET dname = 'FINANCE'
-- WHERE deptno = 70;

-- UPDATE dept
-- SET dname = 'HR', loc = 'Busan'
-- WHERE deptno = 70;