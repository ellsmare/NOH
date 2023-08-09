SELECT * 
FROM BONUS b;

SELECT EMPNO
      , ENAME 
      , SAL  
FROM emp 
WHERE ENAME  LIKE '%L%' AND (sal >=3000 OR  sal<=1500); 

SELECT  EMPNO
      , ENAME 
      , SAL  
FROM EMP e 
WHERE sal >=3000 OR  sal<=1500 ORDER BY SAL DESC;

SELECT   EMPNO
      , ENAME 
      , SAL
      , COMM 
FROM EMP
WHERE COMM IS NOT NULL 
ORDER BY COMM ;

SELECT *
FROM EMP
WHERE EMPNO IN (7369, 7499,7900);

SELECT ENAME, UPPER(ENAME), LOWER(ENAME), INITCAP(ENAME), LENGTH (ENAME) 
FROM emp;


SELECT LENGTH ('한글'), LENGTHB('한글') 
FROM emp;


SELECT job
from emp;

SELECT job, SUBSTR(job, 1, 2), SUBSTR(job, 3,2), SUBSTR(job, 5)  
FROM emp;

SELECT ENAME, SUBSTR(ENAME, 3)  
FROM emp;



SELECT 'Oracle',
       LPAD('ORACLE', 10, '#') AS LPAD_1,
       RPAD('ORACLE', 10, '*') AS RPAD_1,
       LPAD('ORACLE', 10) AS LPAD_2,
       RPAD('ORACLE', 10) AS RPAD_2
FROM DUAL;

SELECT 
	RPAD('971225-', 14, '*') AS RPAD_JMNO,
	RPAD('010-1234-', 13, '*') AS RPAD_PHONE
FROM DUAL;

--글자수를 고정해서 영어이름이 긴경우를 고려하지 않았다 효율적이지 못하다 
SELECT ENAME, LPAD(ENAME, 10), 
       SUBSTR(LPAD(ENAME, 10), 1,8), 
       RPAD(SUBSTR(LPAD(ENAME, 10), 1,8),10,'*') 
FROM EMP;

SELECT ENAME, SUBSTR(ENAME, 1, LENGTH(ENAME)-2) AS SUB_1, 
       RPAD(SUBSTR(ENAME, 1, LENGTH(ENAME)-2), LENGTH(ENAME), '*') AS SUB_2
FROM EMP;

-- 앞에 두개 마스킹 해보기
-- 두개 자르기 하면 될거 같은데 서브스트링

SELECT COMM, NVL(COMM,0), NVL(COMM,1)
FROM EMP e ;

SELECT SUM(SAL)



SELECT COUNT(*),
       SUM(SAL),
       DEPTNO
FROM EMP e 
GROUP BY DEPTNO;



SELECT e.empno,
       e.ename,
       e.job,
       e.mgr,
       e.sal,
       e.comm,
       e.deptno,
       d.DNAME ,
       d.LOC 
FROM EMP e
INNER JOIN DEPT d ON e.DEPTNO =d.DEPTNO ;



-- 급여가 1500-3000 사이의 사원
-- 사원번호, 이름, 급여, 부서명 출력
-- 출력할 때 급여 낮은순

SELECT 
	e.EMPNO 
	, e.ENAME 
	, e.SAL 
	, d.DNAME 
FROM emp e
INNER JOIN DEPT d ON e.DEPTNO =d.DEPTNO 
WHERE e.SAL >=1500 AND e.SAL <=3000
ORDER BY e.SAL asc;


CREATE table emp_detail
(
	tel varchar2(20),
	child number(2),
	age number(3),
	empno number(4)
	-- EMPNO를 참조함 
	-- 참조하는 EMPNO에 없는 값을 넣을 수 없다
		CONSTRAINT emp_detail_EMP_EMPNO_fk
			references EMP
				ON DELETE cascade
)

INSERT INTO EMP_DETAIL(TEL, CHILD, AGE, EMPNO)
VALUES('0100000220', 0, 35, 7499);

DELETE FROM EMP_DETAIL 
WHERE TEL='0100000000';

SELECT e.EMPNO
       , e.ENAME 
       , ed.TEL 
FROM EMP e 
INNER JOIN EMP_DETAIL ed ON e.EMPNO =ed.EMPNO;


SELECT *
FROM EMP;





















