/*
	Author : Gnuke
    Date : Jul / 22 / 2024
    Object : Basic Select
    Environment : Microsoft Windows 11, MySQL Workbench 8.0.38, MySQL 8.0.63 
*/
-- concat
-- SELECT CONCAT(ename,'의 봉급은 ',sal,'입니다.')
-- from EMP;

-- literals
-- SELECT 'aaa'
-- FROM dept;

-- 중복행 제거
-- SELECT /*ALL*/ DISTINCT job
-- FROM emp;

-- SELECT DISTINCT job, empno
-- FROM emp;

-- WHERE
-- SELECT *
-- FROM emp
-- WHERE ename = UPPER('smith');

-- 비교연산자
-- 1983년에 입사한 직원
-- SELECT empno, ename, hiredate
-- FROM emp
-- WHERE hiredate >= '1980-01-01' AND hiredate <= '1980-12-31';

-- SELECT now(), version();

-- 1987년에 입사한 사원의 이름과 봉급과 입사날짜를 출력하시오
-- SELECT ename, sal, hiredate
-- FROM emp
-- WHERE hiredate BETWEEN '1987-01-01' AND '1987-12-31';

-- 우리 회사 직원 중에서 직무가 회사원이거나 분석가인 사원의 사원이름, 사원의 직무를 출력하시오
SELECT ename, job
FROM emp
WHERE job IN('CLERK', 'ANALYST');

-- SELECT ename, job FROM emp WHERE job = 'CLERK' OR job = 'ANALYST';

-- SELECT ename
-- FROM emp
-- WHERE ename LIKE 'S%';

-- SELECT ename
-- FROM emp
-- WHERE ename LIKE '%T';

-- SELECT ename
-- From emp
-- WHERE ename LIKE '%I%';

-- 1987년에 입사한 사람 검색 3번 째
SELECT ename, sal, hiredate
FROM emp
WHERE hiredate LIKE '1987%';

-- 우리 회사 직원 중에 보너스를 받는 사람은?
SELECT empno, ename, comm, deptno
FROM emp
WHERE comm IS NOT NULL;

-- 입사일 기준 내림차순
SELECT empno, ename, hiredate, sal
FROM emp
ORDER BY hiredate DESC, sal ASC;

-- 우리 회사 직원 중 20번 부서 또는 30번 부서의 연봉 내림차순으로 출력하시오
SELECT deptno,ename, (sal + IFNULL(comm, 0))*12 AS "연봉"
FROM emp
WHERE deptno IN(20, 30)
ORDER BY '연봉' DESC;