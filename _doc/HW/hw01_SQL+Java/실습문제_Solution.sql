-----�ǽ�����-----
--1
select emp_name AS �̸�, email AS �̸���, length(email) AS �̸��ϱ��� from employee;

--2
select emp_name AS �̸�, substr(email, 1, instr(email, '@')-1) AS �̸��Ͼ��̵� from employee;

--3
select emp_name AS ������,
    TO_NUMBER(substr(emp_no,1,2))+1900 AS ���,
    nvl(bonus, 0) AS ���ʽ�
from employee
where substr(emp_no,1,1) =6;

--4
select count(*) ||'��' AS �ο�
from employee
where substr(phone,1,3) !='010';

--5
select emp_name as ������,
    EXTRACT(year from hire_date) || '�� ' 
        || EXTRACT(month from hire_date) || '��' as �Ի���
from employee;

--6
select emp_name AS ������,
    RPAD(substr(emp_no,1,8), 13, '*') AS �ֹι�ȣ
from employee;

--7
select emp_name ������, dept_code �����ڵ�, 
    TO_CHAR(salary, 'L999,999,999') AS ����
from employee;

--8
select emp_id ���,
    emp_name �����,
    dept_code �μ��ڵ�,
    hire_date �Ի���
from employee
where dept_code in('D5', 'D9')
    and EXTRACT(year from hire_date) = 2004;

--9
select emp_name ������,
    hire_date �Ի���,
    TO_CHAR(FLOOR(sysdate-hire_date), '999,999') ||'��' �ٹ��ϼ�
from employee;

--10. ������, �μ��ڵ�, �������, ����(��) ��ȸ
--   ��, ��������� �ֹι�ȣ���� �����ؼ�, 
--   ���������� ������ �����Ϸ� ��µǰ� ��.
--   ���̴� �ֹι�ȣ���� �����ؼ� ��¥�����ͷ� ��ȯ�� ����, �����
--	* �ֹι�ȣ�� �̻��� ������� ���ܽ�Ű�� ���� �ϵ���(200,201,214 �� ����)
--	* HINT : NOT IN ���
select emp_name AS ������,
    dept_code AS �μ���,
    TO_DATE(substr(emp_no, 1,6)) AS �������,
    TO_NUMBER(EXTRACT(year from sysdate))
        - TO_NUMBER(substr(emp_no,1,2)
            + CASE WHEN substr(emp_no, 8,1) in (1,2) THEN 1900
                    ELSE 2000 END) 
        + TO_NUMBER( CASE WHEN REPLACE(substr(sysdate,4), '/', '')
                        - substr(emp_no, 3,4) > 0 THEN 0 ELSE -1 END)
            AS "����(��)"
from employee
where emp_id not in (200, 201,214);

--11
select emp_name �����, dept_code �μ��ڵ�,
    CASE WHEN dept_code='D5' THEN '�ѹ���'
        WHEN dept_code='D6' THEN '��ȹ��'
        WHEN dept_code='D9' THEN '������' END
    AS �μ���
from employee
where dept_code in ('D5', 'D6','D9')
order by dept_code;

--12
select job_code ����, count(*) �ο���, 
TO_CHAR(FLOOR(avg(salary)), 'L999,999,999') ��ձ޿�
from employee
where job_code != 'J1'
group by job_code
order by job_code;

--13
select EXTRACT(year from hire_date) �Ի�⵵, count(*) �ο���
from employee
where job_code != 'J1'
GROUP BY EXTRACT(year from hire_date)
order by EXTRACT(year from hire_date);

--14
select
    CASE WHEN substr(emp_no, 8,1) in (1,3) THEN '��'
        WHEN substr(emp_no, 8,1) in (2,4) THEN '��' END
            AS ����,
    TO_CHAR(FLOOR(avg(salary)), 'L999,999,999') �޿����,
    TO_CHAR(sum(salary), 'L999,999,999') �޿��հ�,
    count(*) �ο���
from employee
GROUP BY
    CASE WHEN substr(emp_no, 8,1) in (1,3) THEN '��'
        WHEN substr(emp_no, 8,1) in (2,4) THEN '��' END
order by count(*);

--15
select dept_code �μ��ڵ�, job_code �����ڵ�, count(*) �ο���
from employee
GROUP BY dept_code, job_code
HAVING count(*) >= 3
order by dept_code, job_code;

