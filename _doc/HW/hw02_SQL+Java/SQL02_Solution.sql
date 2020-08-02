select * from tab where tname like '%TB%';

select * from TB_STUDENT;
select * from TB_PROFESSOR;
select * from TB_GRADE;
select * from TB_DEPARTMENT;
select * from TB_CLASS_PROFESSOR;
select * from TB_CLASS;
select * from TBL_FILES;

select empno, hiredate, ename, sal,deptno from emp
order by deptno asc, hiredate desc;

--1
select student_no �й�, student_name �̸�, entrance_date ���г⵵
from tb_student where department_no = '002';

--2
select professor_name, professor_ssn from tb_professor
where length(professor_name) !=3;

--3
select professor_name �����̸�
from tb_professor
where substr(professor_ssn, 8,1)=1
order by TO_NUMBER(TO_CHAR(sysdate, 'yyyy'))
         - TO_NUMBER('19' || substr(professor_ssn,1,2))
         + CASE WHEN TO_CHAR(sysdate, 'mmdd') > substr(professor_ssn,3,4) THEN 0
                ELSE -1 END,
         professor_name;

--select professor_name, professor_ssn, 
--    TO_NUMBER(TO_CHAR(sysdate, 'yyyymmdd')) ����,
--    TO_NUMBER('19' || substr(professor_ssn,1,6)) ����,
--    TO_NUMBER(TO_CHAR(sysdate, 'yyyy'))
--        - TO_NUMBER('19' || substr(professor_ssn,1,2))
--        + CASE WHEN TO_CHAR(sysdate, 'mmdd') > substr(professor_ssn,3,4) THEN 0
--                ELSE -1 END AS ������
--from tb_professor
--order by TO_NUMBER(TO_CHAR(sysdate, 'yyyy'))
--         - TO_NUMBER('19' || substr(professor_ssn,1,2))
--         + CASE WHEN TO_CHAR(sysdate, 'mmdd') > substr(professor_ssn,3,4) THEN 0
--                ELSE -1 END,
--         professor_name;

--4
select substr(professor_name,2) AS �̸� from tb_professor;

--5
select student_no, student_name,
    student_ssn, entrance_date,
    TO_NUMBER(EXTRACT(year from entrance_date)) AS ������,
    TO_NUMBER(CASE WHEN substr(student_ssn, 8,1) in (1,2) THEN 19
                ELSE 20 END ||substr(student_ssn,1,2)) AS ����,
    TO_NUMBER(EXTRACT(year from entrance_date))
    - TO_NUMBER(CASE WHEN substr(student_ssn, 8,1) in (1,2) THEN 19
                ELSE 20 END || substr(student_ssn,1,2))+1 AS ���нċ�����
from tb_student
where 
    TO_NUMBER(EXTRACT(year from entrance_date))
    - TO_NUMBER(CASE WHEN substr(student_ssn, 8,1) in (1,2) THEN 19
                ELSE 20 END || substr(student_ssn,1,2))+1 >19;

--6 2020.12.25 ũ��������������?
select TO_CHAR(TO_DATE('20201225'), 'day') AS "2020�� ũ�������� ����" from dual;

--7
--TO_DATE('99/10/11','YY/MM/DD'), TO_DATE('49/10/11','YY/MM/DD') �� ���� �� �� ��
--�� �� ���� �ǹ�����? �� TO_DATE('99/10/11','RR/MM/DD'),
--TO_DATE('49/10/11','RR/MM/DD') �� ���� �� �� �� �� �� ���� �ǹ�����
--RR ��ȯ ����
--���翬��   �Է¿���  ��꿬��
-------------------------------
--  00~49      00~49   ���缼��
--  00~49      50~99   ������
--  50~99      00~49   ��������
--  50~99      50~99   ���缼��
select EXTRACT(year from TO_DATE('99/10/11','YY/MM/DD')), 
    EXTRACT(year from TO_DATE('49/10/11','YY/MM/DD')) from dual;

select EXTRACT(year from TO_DATE('99/10/11','RR/MM/DD')),
    EXTRACT(year from TO_DATE('49/10/11','RR/MM/DD')) from dual;

--8
select student_no, student_name from tb_student
where substr(student_no,1,1) != 'A'
order by student_no;

select student_no, student_name from tb_student
where EXTRACT(year from entrance_date) <2000
order by student_no;

--9
select ROUND(AVG(g.point),1) AS ����
from tb_student s, tb_grade g
where s.student_no = g.student_no
    and s.student_no='A517178'
group by s.student_name;

--10
select department_no AS �а���ȣ, count(*) AS "�л���(��)"
from tb_student
group by department_no
order by department_no;

--11
select count(*) from tb_student where coach_professor_no IS NULL;

--12
select substr(g.term_no, 1,4) AS �⵵,
    ROUND(AVG(g.point),1) AS "�⵵ �� ����"
from tb_student s, tb_grade g
where s.student_no = g.student_no
    and s.student_no = 'A112113'
GROUP BY substr(g.term_no, 1,4)
order by substr(g.term_no, 1,4);

--13
select department_no AS �а��ڵ��, count(*) AS ���л���
    from tb_student
where absence_YN ='Y'
group by department_no
UNION
select s.department_no �а��ڵ��, 0 ���л���
from tb_student S
group by s.department_no
HAVING count(*) = (
    WITH A AS
        (select department_no, count(*) COUNT 
            from tb_student where absence_YN='N' group by department_no)
    select A.COUNT from A where A.department_no = s.department_no);

--14
select student_name AS �����̸�, count(*) AS "������ ��"
from tb_student
GROUP BY student_name
HAVING count(*) > 1
order by student_name;

--15
select substr(g.term_no,1,4) AS �⵵,
    substr(g.term_no,5,2) AS �б�,
    ROUND(AVG(g.point),1) AS ����
from tb_student s, tb_grade g
where s.student_no = g.student_no
    and s.student_no = 'A112113'
GROUP BY ROLLUP(substr(g.term_no,1,4), substr(g.term_no,5,2))
order by substr(g.term_no,1,4), substr(g.term_no,5,2);

