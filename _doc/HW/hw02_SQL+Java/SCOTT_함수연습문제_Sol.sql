select * from bonus;
select * from dept;
select *from emp;
select * from salgrade;

-- SCOTT �Լ� �������� 

-- COMM �� ���� NULL�� �ƴ� ���� ��ȸ
select * from emp where comm IS NOT NULL;

-- Ŀ�̼��� ���� ���ϴ� ���� ��ȸ
select * from emp where comm IS NULL;

-- �����ڰ� ���� ���� ���� ��ȸ
select * from emp where MGR IS NULL;

-- �޿��� ���� �޴� ���� ������ ��ȸ
select * from emp order by sal DESC;

-- �޿��� ���� ��� Ŀ�̼��� �������� ���� ��ȸ
select * from emp order by sal, comm desc;

-- EMP ���̺��� �����ȣ, �����,����, �Ի��� ��ȸ
-- �� �Ի����� �������� ���� ó����.
select empno, ename, job, hiredate from emp
order by hiredate;

-- EMP ���̺�� ���� �����ȣ, ����� ��ȸ
-- �����ȣ ���� �������� ����
select empno, ename from emp order by empno desc;

-- ���, �Ի���, �����, �޿� ��ȸ
-- �μ���ȣ�� ���� ������, ���� �μ���ȣ�� ���� �ֱ� �Ի��ϼ����� ó��
select empno, hiredate, ename, sal from emp
order by deptno, hiredate desc;

/***** �Լ� *****/

-- �ý������� ���� ���� ��¥�� ���� ������ ����� �� ��
select sysdate from dual;

-- EMP ���̺�� ���� ���, �����, �޿� ��ȸ
-- ��, �޿��� 100���� ������ ���� ��� ó����.
-- �޿� ���� �������� ������.
select empno, ename, TRUNC(sal, -2) from emp order by sal desc;

-- EMP ���̺�� ���� �����ȣ�� Ȧ���� ������� ��ȸ
select * from emp where mod(empno, 2) =1;

/* ���� ó�� �Լ�*/  

-- EMP ���̺�� ���� �����, �Ի��� ��ȸ
-- ��, �Ի����� �⵵�� ���� �и� �����ؼ� ���
select ename, EXTRACT(year from hiredate)||'�� ' || 
        EXTRACT(month from hiredate)||'��' AS �Ի��� from emp;

-- EMP ���̺�� ���� 9���� �Ի��� ������ ���� ��ȸ
select ename, hiredate from emp 
where EXTRACT(month from hiredate) ='09';


-- EMP ���̺�� ���� '81'�⵵�� �Ի��� ���� ��ȸ
select ename, hiredate from emp where EXTRACT(year from hiredate) = 1981;

-- EMP ���̺�� ���� �̸��� 'E'�� ������ ���� ��ȸ
select * from emp where ename like '%E';


-- emp ���̺�� ���� �̸��� ����° ���ڰ� 'R'�� ������ ���� ��ȸ
-- LIKE �����ڸ� ���
select * from emp where ename like '__R%';


-- SUBSTR() �Լ� ���





/************ ��¥ ó�� �Լ� **************/

-- �Ի��Ϸ� ���� 40�� �Ǵ� ��¥ ��ȸ
select ename, hiredate, TO_CHAR(hiredate + 40*365, 'yyyy-mm-dd') from emp;
     

-- �Ի��Ϸ� ���� 33�� �̻� �ٹ��� ������ ���� ��ȸ
select ename, hiredate from emp where sysdate - hiredate >= 33*365;


-- ���� ��¥���� �⵵�� ����
select extract(year from sysdate) AS ���� from dual;





   



