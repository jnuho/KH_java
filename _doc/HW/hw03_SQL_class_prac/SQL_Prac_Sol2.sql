-------------------------
--- PRACTICE HOMEWORK 03 ---

--�ɺ��� ����� ���� �μ��� ����� 
--�μ�title, �����, ����ձ޿���ȸ
select dept_title, dept_code, trunc(avg(salary)) ����ձ޿�
from employee JOIN department ON dept_code = dept_id
where dept_code = (select dept_code from employee where emp_name='�ɺ���')
group by dept_title, dept_code;

select dept_title, dept_code, trunc(avg(salary)) ����ձ޿�
from employee E1 LEFT JOIN department ON dept_code = dept_id
where EXISTS (select dept_code from employee E2 where E2.emp_name='�ɺ���'
    and E1.dept_code = E2.dept_code)
group by dept_title, dept_code;

select dept_title, emp_name, dept_code
from employee E1
LEFT JOIN department ON dept_code = dept_id
where exists 
    (select 1 from employee E2 
        where E2.emp_name='�ɺ���'
    and E1.dept_code = E2.dept_code);

select dept_title, trunc(avg(salary)) ��ձ޿�
from employee e left join department ON dept_code = dept_id
where exists (select 1 from employee where dept_code =e.dept_code and 
emp_name = '�ɺ���')
group by dept_title;

--���帹�� �޿��� �޴� ����� exists ������������� �̿��Ͽ� ���Ͽ���
select emp_name, dept_code, salary, hire_date
from employee E1
where EXISTS (select max(E2.salary) from employee E2 
                HAVING E1.salary = max(E2.salary));

--NONEXISTS �̿�
--�������� �޿��� ���� ������� �˻��ؼ�, ���, ����̸�, �޿����
select emp_id, emp_name, salary
from employee E1
where exists (select * from employee E2
            where E1.salary = E2.salary 
                and E2.emp_name = '������'
                and E1.emp_name!= E2.emp_name);

--EMPLOYEE���̺��� �⺻�޿� ���� ���� ����� �������� ����� ������ 
--���,�����,�������
select emp_id, emp_name, salary
from employee E1
where salary = (select max(salary) from employee)
    or salary = (select min(salary) from employee);

--D1,D2�μ��� �ٹ��ϴ� ����� �߿��� �⺻�޿��� D5�μ� �������� ��տ��޺��� 
--���� ����鸸 �μ���ȣ, ���,�����, �������
select dept_code, emp_id, emp_name, salary
from employee 
where dept_code in('D1','D2')
    and salary > (select AVG(salary) from employee where dept_code='D5');

--������ ������ ����� �޿���ް� ���� ����� ���޸�, ����� ���
select job_name, emp_name, sal_level
from employee E1 JOIN job J ON E1.job_code = J.job_code
where E1.sal_level in 
    (select sal_level from employee E2
        where E2.emp_name in ('���¿�','������')
            and E1.emp_name != E2.emp_name);

--������ ��ǥ, �λ����� �ƴ� ��� ����� �μ����� ���
select nvl(D.dept_title, '����') dept_title, emp_name, J.job_name
from employee E
    JOIN job J USING(job_code)
    LEFT JOIN department D ON E.dept_code = D.dept_id
where J.job_name Not in ('��ǥ', '�λ���')
order by E.dept_code, J.job_name;

--ASIA1������ �ٹ��ϴ� ���������� �μ��ڵ�, �����(���������̿�)
select dept_code, emp_name, location_id
from employee
    JOIN department ON dept_code= dept_id
    JOIN location L ON location_id = L.local_code
where L.local_name = 'ASIA1';

--2000��1��1�� ���� ���ڻ��߿� 2000��1��1������ �Ի��ں��� �޿��� (�������
--�޴»������) ���� �޴� ����� ������ ���޿��� ���
select emp_name, salary, hire_date from employee E1
where hire_date <TO_DATE('2000/01/01')
    and salary < (select max(salary) from employee
            where hire_date > TO_DATE('2000/01/01'));

--'J4'������ ������� ���� �޿��� �޴� ������ J5,J6,J7�� ��� ���
select emp_name, job_code, salary from employee
where job_code in ('J5','J6', 'J7')
and salary > ALL(select salary from employee where job_code='J4');

--D1�μ��� ���(��ü)���� �Ի簡 �n�� ������� ������ �˻��ϰ�, 
--�����, �μ���ȣ �Ի����� ���
select emp_name, dept_code, hire_date from employee
where hire_date > ALL(select hire_date from employee where dept_code='D1');

--�λ�������� �����ü���� �Ի簡 ���� ������������� �˻�, 
--�����, �μ���, �Ի���
select emp_name, D.dept_title, hire_date
from employee E 
    LEFT JOIN department D ON E.dept_code = D.dept_id
where hire_date > ALL(select hire_date from employee E2
                JOIN department D2 ON E2.dept_code = D2.dept_id
                where D2.dept_title='�λ������');

--����������̸鼭 �޿��� 2000000�� ����� 
--�����, �μ��ڵ�, �޿����
select emp_name, dept_code, salary from employee
    JOIN department ON dept_code = dept_id
where salary = 2000000 
    and dept_title = '���������';

--�μ��� �ִ�޿��� �޴� ����� 
--�����, �μ���, �޿��� ���
select emp_name, dept_title, salary
from employee
    JOIN department ON dept_code = dept_id
where (dept_code, salary) in (select dept_code, max(salary)
    from employee group by dept_code)
order by dept_title;

--������ J1, J2, J3�� �ƴ� ����߿��� 
--�ڽ��� �μ��� ��ձ޿����� ���� �޿��� �޴� ������.
-- �μ��ڵ�, �����, �޿�, �μ��� �޿����
select E.dept_code, E.emp_name, E.salary, E2.AVG_SAL
from employee E
    JOIN ( select dept_code, ROUND(avg(salary)) AVG_SAL
            from employee
            group by dept_code) E2 ON (E.dept_code = E2.dept_code)
where EXISTS(select E3.dept_code, avg(E3.salary) from employee E3
        where E.dept_code = E3.dept_code
        group by E3.dept_code
        HAVING E.salary > avg(E3.salary))
    and E.job_code not in ('J1','J2','J3')
order by dept_code;


select E1.dept_code, emp_name, salary, E2.AVG_SAL
from employee E1
    JOIN ( select dept_code, 
                  round(avg(salary)) AS AVG_SAL
            from employee
        GROUP BY dept_code) E2 ON E1.dept_code = E2.dept_code
where job_code NOT IN ('J1', 'J2', 'J3')
    AND salary > E2.AVG_SAL
order by dept_code;

