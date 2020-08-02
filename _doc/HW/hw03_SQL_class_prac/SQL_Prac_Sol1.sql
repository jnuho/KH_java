--������ �븮�̸鼭, ASIA������ �ٹ��ϴ� ������ ��ȸ
--���, �̸�, ���޸�, �μ���, �ٹ�������, �޿�
select E.emp_id, E.emp_name, J.job_name,
    nvl(D.dept_title, '���'), L.local_name, E.salary
from employee E 
    LEFT JOIN department D ON (E.dept_code=D.dept_id)
    JOIN location L ON(D.location_id=L.local_code)
    JOIN job J ON (E.job_code = J.job_code)
where J.job_name='�븮'
    and L.local_name = 'ASIA1';

--�ֹι�ȣ�� 1970��� ���̸鼭 ������ �����̰�, ���� ������ ����
--�����, �ֹι�ȣ, �μ���, ���޸�
select E.emp_name, E.emp_id, D.dept_title, J.job_name
from employee E 
    LEFT JOIN department D ON E.dept_code = D.dept_id
    JOIN job J ON E.job_code = J.job_code
where substr(E.emp_no,1,1)=7 and substr(E.emp_no,8,1)=2
    and substr(E.emp_name,1,1) = '��';

--�̸��� '��'�ڰ� ���� ����
--���, �����, �μ���
select E.emp_id, E.emp_name, D.dept_title
from employee E
    JOIN department D ON E.dept_code = D.dept_id
where E.emp_name like '%��%';

--�ؿܿ����ο� �ٹ��ϴ� ����
--�����, ���޸�, �μ��ڵ�, �μ���
select E.emp_name, J.job_name, E.dept_code, D.dept_title
from employee E
    JOIN job J ON E.job_code = J.job_code
    JOIN department D ON E.dept_code = D.dept_id
where D.dept_title like '%�ؿܿ���%';
    
--���ʽ��� �޴� ����
--�����, ���ʽ�, �μ���, �ٹ�������
select E.emp_name, E.bonus, D.dept_title, L.local_name
from employee E
    JOIN department D ON E.dept_code = D.dept_id
    JOIN location L ON D.location_id= L.local_code
where E.bonus IS NOT NULL;

--�μ��ڵ尡 D2�� ����
--�����, ���޸�, �μ���, �ٹ�������
select E.emp_name, J.job_name, E.dept_code, D.dept_title, L.local_name
from employee E
    JOIN job J ON E.job_code = J.job_code
    JOIN department D ON E.dept_code = D.dept_id
    JOIN location L ON D.location_id = L.local_code
where E.dept_code = 'D2';

--�޿�������̺��� �ִ�޿�(MAX_SAL)���� ���� �޴� ������
--�����, ���޸�, �޿�, ����
select E.emp_name, J.job_name, 
        E.salary, E.salary*(12 + nvl(E.bonus,0)) AS ����, G.MAX_SAL
from employee E
    JOIN job J ON E.job_code = J.job_code
    JOIN sal_grade G ON E.sal_level = G.sal_level
where E.salary *(1+nvl(bonus,0)) > G.MAX_SAL;

--�ѱ�(KO)�� �Ϻ�(JP)�� �ٹ��ϴ� ����
--�����,�μ���, ������, ������
select E.emp_name, D.dept_title, L.local_name, N.national_name
from employee E
    JOIN department D ON E.dept_code = D.dept_id
    JOIN location L ON D.location_id = L.local_code
    JOIN national N ON L.national_code = N.national_code
where L.national_code in ('KO', 'JP');

--�����μ��� �ٹ��ϴ� ����(self join)
--�����, �μ���, �����̸�
select E1.emp_name �����,
    D.dept_title �μ���,
    E2.emp_name �����
from employee E1
    JOIN employee E2 USING(dept_code)
    JOIN department D ON dept_code = D.dept_id
where E1.emp_name != E2.emp_name;

--���ʽ��� ���� ���� �� ������ ����� ����� ����
--�����, ���޸�, �޿���ȸ join, in ���
select E.emp_name, J.job_name, TO_CHAR(E.salary, 'L999,999,999') AS �޿�
from employee E
    LEFT JOIN department D ON E.dept_code = D.dept_id
    JOIN job J ON E.job_code = J.job_code
where J.job_name IN ('����', '���')
    and E.bonus IS NULL;

--�������� ������ ����� ������ ��
select CASE WHEN ent_yn ='N'
            THEN '������' ELSE '���' END AS ��������,
        count(*) AS "�ο�(��)"
from employee
GROUP BY CASE WHEN ent_yn ='N'
        THEN '������' ELSE '���' END;
