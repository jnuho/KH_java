--SCOTT DB ����
--SCOTT_DB�� ������ �ִ� �������� ����
--1. ������ ������ �ִ� ���̺��� ��� �˻��ϴ� ������ �ۼ��Ͻÿ�.
select * from tab;

--2. EMP���̺��� �÷��� ����ϴ� ������ �ۼ��Ͻÿ�.
desc emp;

--3. EMP���̺��� ENAME, SAL, ����, �� ���ɾ�(���ʽ� SALARY��
--5%), �� �Ǽ��ɾ�(���� 3%, ���ʽ��� ���ݿ��� ����)�� ����ϴ� ����
--�� �ۼ��Ͻÿ�.
select ename, sal, 12*sal AS ����,
    FLOOR(1.05*sal) AS �����ɾ�,
    FLOOR(sal*(1-.03 +.05)) AS "�� �Ǽ��ɾ�"
from emp;

--4. EMP���̺��� ENAME, SAL, COMM ���ݾ�(SAL*12+COMM)�� ���
--�ϴ� ������ �ۼ��Ͻÿ�.
select ename, sal, comm, sal*12 +nvl(comm,0) AS ���ݾ�
from emp;

--5. EMP���̺��� ENAME, JOB�� �̿��Ͽ� �Ʒ��� ���� ����ϴ� ������ ��
--���Ͻÿ�.
select ename||'�� ��å�� ' || job||'�Դϴ�.' AS ��¹� from emp;

--6. EMP���̺��� JOB��½� �ߺ����� �����ϰ� ����ϴ� ������ �ۼ��Ͻÿ�.
select distinct job from emp;

--7. SQL*PLUS��ɾ�
--SELECT ENAME, JOB, SAL, COMM FROM EMP �Է� ��
--1) ���ۿ� �ִ� ������ �����ϴ� ��ɾ �̿��Ͽ� ����� �ϼ���
    /
--2) ������ �����ϴ� ��ɾ�� �޸��� ������ÿ�
    edit
--3) �۹��� �ִ� ������ ���Ϸ� �����ϴ� ��ɾ �̿��Ͽ� �����Ͻÿ�.
    save filename
--4) ���Ͽ� �ִ� ���� �����ϴ� ��ɾ ����Ͻÿ�
    @filename
--5) ���Ͽ� �ִ� ���� �۹��� �о���ÿ�.
    L

--8. EMP���̺��� SAL�� 3000�̻��� ����� ��ü �÷��� ����Ͻÿ�.
select * from emp where sal >= 3000;

--9. EMP���̺��� DEPTNO�� 10�̰ų� JOB�� MANAGER�� ����� ����Ͻÿ�.
select * from emp where deptno=10 or job='MANAGER';

--10. EMP���̺��� DEPTNO�� 20�� �ƴϰ� JOB�� MANAGER�� ����� ����Ͻÿ�.
select * from emp where deptno!=20 and job='MANAGER';

--11. EMP ���̺��� JOB�� MANAGER�̰ų� PRESIDENT�̰ų� ANALYST
--�� ����� ����Ͻÿ�.
select * from emp where job in ('MANAGER', 'PRESIDENT', 'ANALYST');

--12. EMP���̺��� SAL�� 2000�����̰ų� SAL�� 3000�̻��̰� �������
--81/01/01 ~ 82/12/31�� ��� ����Ͻÿ�.
select * from emp where sal <= 2000 or sal>= 3000
and hiredate between TO_DATE('81/01/01') and TO_DATE('82/12/31');

--13. EMP���̺��� SAL�� 2000�̸��̰ų� SAL�� 3000�ʰ��� �����
--BETWEEN�� ����Ͽ� ����ϼ���.
select * from emp where sal not between 2000 and 3000;

--14. EMP���̺��� �̸��� ��K���� ���Ե��� �ʰų� ��A�����Ե��� �ʰų� 'M'
--���Ե��� �ʴ� ����� �̸�, ��å, ������� ����ϼ���.
select ename, job, hiredate from emp
where ename not like '%K%' or ename not like '%A%' or ename not like '%M%';

--15. EMP���̺��� DEPTNO�� 20,30,10�� ����� ENAME, DEPTNO�� ��
--���ϼ���.
select ename, deptno from emp where deptno in (20,30,10);

--16. EMP���̺��� MGR�� 2,3��°�� 6,9�� ����� ENAME, MGR�� ����ϼ���.
select ename, mgr from emp where substr(mgr,2,2) = 69;

--17. EMP���̺��� COMM�� NULL�̰� HIREDATE�� 81�⵵�� �����
--ENAME, HIREDATE, SAL, COMM�� ����ϼ���.
select ename, hiredate, sal, comm from emp
where comm is null and EXTRACT(year from hiredate) = 1981;

--18. EMP���̺��� SAL�� 2500�̻��̰�, HIREDATE�� 81���� �����
--EMPNO, ENAME, HIREDATE, SAL�� EMPNO�� �������������ϰ�
--ENAME�� �������� �����Ͽ� ����ϼ���.
select empno, ename, hiredate, sal from emp
where sal>=2500 and EXTRACT(year from hiredate) =1981
order by empno asc, ename desc;

--19. EMP���̺��� SAL�� 12�� ������ �Ҽ����� ������ �ϰ� SAL��������
--�������������Ͽ� ����ϼ���.
select floor(sal/12) from emp order by sal desc;

--20. DUAL���̺��� �����Լ��� �̿��Ͽ� ���� ����غ���.
--1) 233�� 2�� ���� �������� ���
select mod(233,2) from dual;

--2) 233.15123���� �Ҽ� ù��° �ڸ����� ���(����)
select TRUNC(233.15123, 1) from dual;

--3) 233.15123���� �� ��° �ڸ����� �ݿø�
select ROUND(233.15123, -2) from dual;

--21. EMP���̺��� ENAME�� A�� ���Եǰ� ENAME���̰� 5�� �����
--ENAME, ENAME�� ù���ڸ� �빮��, HIREDATE�� �⵵, ��A'�ִ� ��ġ
--��, ENAME�տ� @�� ���� ��, A��*�� ������ ���� ����Ͻÿ�.
select ename, INITCAP(ename),
    EXTRACT(year from hiredate) As �⵵,
    INSTR(ename, 'A',1) AS A��ġ��,
    '@'||ename, REPLACE(ename, 'A', '*')
from emp
where length(ename)=5 and ename like '%A%';
    

--22. EMP���̺��� HIREDATE���� �����ϱ��� �������� 420�̻��̰�,
--HIREDATE�κ� 5������ ���� ���� 82/01/01 ~ 82/12/31�����̰�,
--HIREDATE�� ���� 9���� �ʰ��� ����� ENAME, ������, HIREDATE,
--�����޼�, 5������, ������� ����ϼ���
select ename, sysdate AS ������, hiredate AS �����,
    FLOOR(months_between(sysdate, hiredate)) ||' ����' AS �����޼�,
    add_months(hiredate, 5) AS �����5������
from emp
where months_between(sysdate, hiredate) >=420  
    and add_months(hiredate, 5) between '82/01/01' and '82/12/31'
    and add_months(hiredate, 9) <sysdate;
