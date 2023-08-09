
-- 사원 상세정보가 존재하는!! -> 양쪽 다 존재 :: inner join

-- 기준 테이블을 잘 잡아야 한다 => from 
-- 상세 정보가 아니다 --> 부서정보가 없는 사람이 존재할 수도 있다 --> left조인 ::성능 영향
-- 설계를 확인해야함 :: 1명 사원이 부서정보가 무조건 매칭된 경우 --> inner 조인
-- inner join의 순서 :: 테이블의 관계도에 따라 순서를 신경써야 한다 a와 b , a와 c, b와 c의 관계
SELECT e.EMPNO 
       , e.ENAME 
       , e.JOB 
       , ed.TEL 
       , ed.CHILD 
       , ed.AGE 
       , d.DNAME 
FROM EMP e 
INNER JOIN EMP_DETAIL ed ON e.EMPNO =ed.EMPNO
INNER JOIN DEPT d ON e.DEPTNO  =d.DEPTNO ; 


-- 모든 사원 = 상세정보가 없어도 출력 가능해야 한다
SELECT e.EMPNO 
       , e.ENAME 
       , e.JOB 
       , ed.TEL 
       , ed.CHILD 
       , ed.AGE 
       , d.DNAME 
FROM EMP e
INNER JOIN DEPT d ON e.DEPTNO =d.DEPTNO 
left JOIN EMP_DETAIL ed ON e.EMPNO =ed.EMPNO; 


SELECT e.EMPNO 
      , e.ENAME 
      , e.JOB 
      , e.MGR 
      , e.HIREDATE 
      , e.SAL 
      , e.COMM 
      , e.DEPTNO 
      , d.DNAME 
      , d.LOC 
      , ed.TEL 
      , ed.CHILD 
      , ed.AGE      
FROM EMP e 
INNER JOIN EMP_DETAIL ed ON e.EMPNO =ed.EMPNO
INNER JOIN DEPT d  ON e.DEPTNO =d.DEPTNO  
WHERE ed.CHILD =0;

SELECT *  
FROM EMP e 
INNER JOIN EMP_DETAIL ed ON e.EMPNO =ed.EMPNO
-- 이러한 방법도 있다. 하지만 잘 사용하지 않는다 :: 성능문제
-- 조인할때 필터링한다=> 인덱스 하는 장점이 없다/ 전체를 다 검색
INNER JOIN DEPT d  ON e.DEPTNO =d.DEPTNO AND ed.CHILD =0;




-- 상세 정보가 없는 사원이 몇명? 모르면 더 자세히 질문하기 -> 키값이 없거나 나머지 모두 없는 경우 
-- row의 개수  count(*)
SELECT count(*)
FROM EMP e
LEFT JOIN EMP_DETAIL ed ON e.EMPNO =ed.EMPNO
WHERE ed.EMPNO IS NULL;

-- fk가 null이면 매칭이 안된 상황
-- 상세정보의 모든 정보가 null인 경우랑 같다. 효율적이지는 않다 컬럼이 많으면 많을수록~
SELECT count(*)
FROM EMP e
LEFT JOIN EMP_DETAIL ed ON e.EMPNO =ed.EMPNO
WHERE ed.TEL IS NULL AND ed.CHILD IS NULL AND ed.AGE IS null;


-- 상세 정보가 있는 사원의 평균 급여 에버리지
-- db마다 null값을 0으로 안바꿔주고 에러나올 수 있다 :: 항상 null 습관
SELECT AVG(nvl(e.SAL, 0)) 
FROM EMP e
inner JOIN EMP_DETAIL ed ON e.EMPNO =ed.EMPNO;

-- 'dallas'에서 근무하고 있는 사원들의 총 자녀 수 sum
-- SUM이라는걸 알고는 있었는데 테이블에 1밖에 없어서 무심코 COUNT를 사용해버림;;; 
-- DEPT 와 EMP_DETAIL 테이블이 필요함 :: 두 테이블의 접점이 없다
-- 두 테이블의 중심 EMP 테이블을 사용
SELECT SUM(NVL(ED.CHILD,0)) 
FROM EMP e 
INNER JOIN EMP_DETAIL ed ON e.EMPNO =ed.EMPNO 
INNER JOIN DEPT d  ON d.DEPTNO =e.DEPTNO 
WHERE d.LOC = 'DALLAS';   


SELECT e.EMPNO
	, e.ENAME 
	, e.SAL
	, (SELECT AVG(SAL) FROM EMP) AS avg
FROM EMP e 
WHERE E.SAL >(SELECT AVG(SAL) FROM EMP);

-- 데이터형 맞춤 조심해야함
-- VALUES에 값을 안 넣으면 NULL로 들어감
INSERT INTO EMP_DETAIL(CHILD, AGE, EMPNO)
VALUES(2,25,7566);

SELECT *
FROM EMP_DETAIL ed  ;


UPDATE EMP_DETAIL SET TEL='01000000020' WHERE EMPNO =7900;
















