select * from dba_users;
-- resouce���� : ���̺� ����, ����, ���� �� �� �ִ� ������ ��� �ִ°�
grant resource to kh;
--�ڷ����� �˾ƺ���
--number�ڷ��� : ���ڸ� ǥ���ϴ� ��
--��� : number[(p:��ü�ڸ���,s:��ü �ڸ��� �� �������� ��)]
create table numberTest(
    a number(7,3),
    b number(7),
    c number,
    d number(7,1),
    e number(5,-2)
);
--������ ���̺� ��ȸ
select * from numbertest;
--�ۼ��� ���̺� ���� �־��!
insert into numbertest
values(1234.567,1234.567,1234.567,1234.567,1234.567);

--���ڿ�Ÿ���� �����غ���
--char : �������� �ִ� 2000byte
--nchar : �����ڵ� �������� �ִ� ���ڼ� 1000������

--varchar2 : �������� �ִ� 4000byte
--navarchar2 :�����ڵ� �������� �ִ� ���ڼ� 2000������
--���� : �ڷ���(����)
--char(10) -> 10byte��ŭ �����̵Ǵ� ����, ������ 10byte �� ���
--varchar2(10) -> 10byte��ŭ ������ �Ǵ°���, ���ԵǴ� ���� ũ�⿡ ���� ���
--               ������ ������
--����Ŭ express �ѱ� 3byte�� ó����.
--nchar/nvarchar2(10) -> ���ڼ� ���� 10���ڸ�ŭ ����Ǵ� ���� Ȯ��

create table chartest(
    a char(6),
    b varchar2(6),
    c nchar(6),
    d nvarchar2(6)
);
select * from chartest;
insert into chartest values('abc','abc','abcdef','abcdef');
insert into chartest values('abcefg','abcefg','abcdef','abcdef');
insert into chartest values('abcefg123','abcefg123','abcdef','abcdef');
insert into chartest values('����','����','������','������');
insert into chartest values('����','����','������õ��','������õ��');
--�޸� �������� �����ϰ� �ִ� ���� Ʈ�����ǰ���!
--commit�� �ϸ� �������� ����ҿ� ������ ������
commit;
show user;
--����� �������� ũ��� ���ڼ��� Ȯ��
--����Ŭ���� �����ϴ� �Լ� length
select a,length(a),lengthb(a),
       b,length(b),lengthb(b),
       c,length(c),lengthb(c),
       d,length(d),lengthb(d)
from chartest;

--��¥�ڷ���
--���糯¥�� ǥ�����ִ� system �÷�
--sysdate : ���糯¥�� ������ִ� �÷�
select sysdate from dual;
--dual : ����Ŭ���� �⺻������ �����ϴ� template���̺�
--       �׽�Ʈ�� ���̺�
select length('ū���') from dual;
--��¥�� ������� (��¥�� ����)
select sysdate-1 from dual;
select sysdate-10 from dual;
select sysdate-30 from dual;
select sysdate+4 from dual;
--date������ �������(��¥�� ��¥)
select to_date('20000224','yyyymmdd')-sysdate from dual;

--��,��,��
select sysdate from dual;

--�ð����� ���
--systimestamp
select systimestamp from dual;
--��¥�� ����ȯ
select to_date('20000224') from dual;
create table datetest(
    today date,
    birthday date,
    temp timestamp
    );
select * from datetest;
--date�Է½� date�������� ���缭 ���ڸ� �Է��ϸ� �ڵ�����
--date������ ��ȯ�Ǿ� ���Եǰ�, 
--���������� to_date�� �̿��Ͽ� ����ȯ�Ͽ� �����Ҽ��� ����
--����ȯ�� �̿��ϴ°��� ��������.(�Ѵ� ����ص� ū ������ ����)
insert into datetest values('19/06/13','00/02/24','19/06/13 11:15:00');
insert into datetest values(to_date('20190613'),to_date('20000224')
,to_timestamp('20190613111500'));

--���̺� �÷��� �ڷ����� Ȯ���ϰ� ������???
--desc ��ɾ �̿��Ͽ� ó��
-- desc ���̺��
desc chartest;

--@�ǽ����� 
--todayȸ���� ȸ�����̺��� �����. ���������� �����ϴ� �÷�������Ÿ���� �ۼ�����.
--id : 6�ڸ����� 15�ڸ�(�������ɼ� ����)
--password : 8�ڸ��̻� 15�ڸ�
--name : �ѱ��Է�
--phone : - ���� 11�ڸ�
--ssn �ֹε�Ϲ�ȣ : -���� 13�ڸ�
--mileage ȸ�����ϸ��� : 
--reg_date ������ : 
create table member(
    id char(15),
    password varchar2(15),
    name varchar2(15),
    phone number(11),
    ssn number(13),
    mileage number,
    red_date date
);
--���̺� �ִ� �����͸� ��ȸ�ϱ�
--��ɾ� select 
--��ɱ��� :  select �÷�,�÷�1.... from ���̺�� where �˻�����
--kh.employee���̺��� �����͸� ��ȸ
select emp_name, emp_id, email 
from employee;
--employee���̺��� emp_no, salary, dept_code�� ��ȸ
select emp_no, salary, dept_code
from employee;
--department���̺� dept_id, dept_title���
select dept_id, dept_title
from department;

desc employee;
select * from tab;

select * from employee;
--select������ ������굵 ������
--������� ��ġ�� �÷����� ���°��� ������ ���ָ�
--�� ������� �÷����� �ǰ� ���Ȱ��� �� row�� ����.
select emp_name, salary, salary*12 from employee;
select emp_name, salary, bonus*12 from employee; 
select emp_name, salary, bonus+12 from employee; 
select emp_name, salary, bonus-12 from employee; 
select emp_name, salary, bonus/12 from employee; 
--%������ �⺻ ��������ڷ� ��ϵǾ��������� mod�Լ��� �̿��ؾ���.
select emp_name, salary, bonus%12 from employee; 

--nvl�Լ��� �÷��� �����Ͱ� null�϶� null��ü���� ���� ����
--nvl(�÷���,��ü�Ұ�)
select emp_name, salary*12 as ����,
        (salary+(salary*nvl(bonus,0)))*12 as "�Ѽ��ɾ�(��)",
        (salary+(salary*nvl(bonus,0)))*12-(salary*0.03*12) "�� ���ɾ�"
        from employee;
select emp_name, sysdate-hire_date from employee;

--���̺� ���ͷ��� �ֱ�
select emp_name, salary,'��' as ��ȭ from employee;
select emp_name, salary,101 as �׽�Ʈ from employee;
--distict �ߺ��� ���� ������ �ѹ��� ����ض�~!
select emp_name, dept_code 
from employee;
select distinct dept_code 
from employee;
--distinct�� �ϳ��� select���ȿ� �ΰ��� ����� �� ����
select distinct dept_code, distinct job_code
from employee;
--distinct���� �����÷��� �� �� ����
select distinct dept_code, job_code 
from employee;
--where����ϱ�
--where���� resultSet���� �ʿ��� row��(Ʃ��)�� ���͸��Ҷ� ����Ѵ�.
--select �÷���, �÷���2... from ���̺�� where �÷��� �񱳿����� ��
select * from employee;
select * from employee where job_code='j5';
select * from tab where tname='EMPLOYEE';
--ũ���
select emp_name, salary from employee where salary>5000000;

select emp_name,salary from employee 
where (salary+(salary*bonus))*12-(salary*0.03*12)>50000000;

--���������ϱ�
--and/or
select * from employee 
where dept_code!='D6' and salary > 3000000;
--job_code�� j3�̰ų� sal_level s3�� ������
select * from employee
where job_code='J3' OR sal_level='S5';
--�񱳿����ڸ� ������ ����
select * from employee 
where salary>3000000 and job_code='J3' and dept_code='D5';
--�����ڵ尡 J1�� �ƴ� ������� ���޵��(sal_level)�� �ߺ����� ����ϼ���.
select distinct sal_level from employee where job_code^='J1';
--�޿��� 3500000���̻� 6000000�� ������ ��� �̸��� �޿� ��ȸ
select emp_name, salary from employee 
where salary>=3500000 and salary <=6000000;
--���Ῥ����
select emp_no, emp_name, email from employee;
select emp_no||emp_name||email from employee;
select emp_name||'�� �ȳ��ϼ��� ����� '||salary||'�� ��ŭ �޳���?'
from employee;
select emp_name, salary from employee
where salary>=3000000 and salary<=6000000;
--between�� ����Ͽ� �Ȱ��� ����� ����� �� ����
select emp_name, salary from employee
where salary between 3000000 and 6000000;
--���������̿��ؼ� ���� �ۿ� ������ ����� �� ����
select emp_name, salary from employee
where salary not between 3000000 and 6000000;
--
select * from employee 
where hire_date between '90/01/01' and '01/01/01';
--where hire_date>='90/01/01' and hire_date<='01/01/01';

--like �̿��ϱ� like�� ������ ������ Ȯ���Ͽ� �˻��ϴ¹������
--������ �κа˻��� �Ҷ� ����� �� ����
--�۾����� ���� �����ȸ
select * from employee
where emp_name like '��%';
--������ ������ �̸��� ���� �����ȸ
select * from employee
where emp_name like '%��';

--email�ּҿ� ���� 'n'���Ե� �ּҸ� ������ �ִ� ������
select email from employee
where email like '%un%';
--'_' ������ �̿��Ͽ� ��ȸ�غ���
select email from employee
where email like '__n%';
select emp_name from employee
where emp_name like '��__';
select emp_name from employee
where emp_name not like '%��%';

--�̸� ��� ���ڰ� '��'�� ��� ��ȸ(�̸��� ��� 3������)

--�̸��� '��'�� ���� ����� ��� ����ϼ���.

--1. EMPLOYEE ���̺��� �̸� ���� ������ ������ ����� �̸��� ����Ͻÿ�

--2. EMPLOYEE ���̺��� ��ȭ��ȣ ó�� 3�ڸ��� 010�� �ƴ� ����� �̸�, ��ȭ��ȣ�� ����Ͻÿ�

select email from employee;
--'_'�տ��� �������� �����͸� ���
--_�� escape������ ����� ���ְ� ó���ϸ��

select email from employee
where email like '___#_%' escape '#'; 

--�ǽ�����
create table tbl_escape_watch(
watchname   varchar2(40)
,description    varchar2(200)
);
insert into tbl_escape_watch 
values('�ݽð�', '���� 99.99% ���� ��޽ð�');
insert into tbl_escape_watch 
values('���ð�', '�� ������ 99.99���� ȹ���� ��޽ð�');

--description �÷��� 99.99% ��� ���ڰ� ����ִ� �ุ �����ϼ���.

--1. EMPLOYEE ���̺��� �̸� ���� ������ ������ ����� �̸��� ����Ͻÿ�
--2. EMPLOYEE ���̺��� ��ȭ��ȣ ó�� 3�ڸ��� 010�� 
--�ƴ� ����� �̸�, ��ȭ��ȣ�� ����Ͻÿ�
--3. EMPLOYEE ���̺��� �����ּ� '_'�� ���� 4���̸鼭, 
--DEPT_CODE�� D9 �Ǵ� D6�̰�
--������� 90/01/01 ~ 00/12/01�̸鼭, 
--������ 270������ ����� ��ü ������ ����Ͻÿ�

--isnull / is not null : null���� ã�� �� ���
--��� : �÷��� is null OR �÷��� is not null
select * from employee;
select emp_name, salary, bonus from employee
where bonus=(null);--�ȵ�~��~!!
select emp_name, salary, bonus from employee
where bonus is null;
select emp_name, salary, bonus from employee
where bonus is not null and salary>=3000000;
select emp_name, dept_code from employee
where dept_code is null;
--in : �������� OR�� �����Ͽ� ������ϴ� ��!
-- ��� : �÷��� in (�񱳰�, �񱳰�1, �񱳰�2....)
select emp_name,job_code from employee
where job_code in('J3','J2');--job_code='J3' OR job_code='J2'
select emp_name, job_code from employee
where job_code in(select job_code 
                    from employee 
                    where salary>3000000);
--in�� �̿��ؼ� �����, ������, ���¸� ã�� �̸����
--in�� �̿��ؼ� �����, ������, ���¸��� ������ ���ã��
select emp_name from employee
where emp_name not in('�����','������','���¸�');

select dept_code, hire_date from employee
where (dept_code='D9' OR dept_code='D6') 
and hire_date between '99/01/01' and '00/12/01';

select emp_name, salary, job_code
from employee
where (job_code='J7' OR job_code='J2') AND salary > 2000000;
--where salary > 2000000 AND job_code='J7' OR job_code='J2';

--order by�� �̿��� ������ ����
--order by���� �׻� ������ �Ǹ������� �ۼ��� �Ѵ�.
select * from employee;
--�̸� ������ �����ϱ� ���Ŀ� ���� �ɼ��� �������� ������
--default : ������������(ASC)
select * from employee
order by emp_name asc;
--������������(DESC)
select * from employee
order by emp_name desc;
--���Ľ� null���� Ȯ��
select emp_name, salary, bonus from employee
order by bonus;--�⺻ ������������ null�ǾƷ��� ����
select emp_name, salary, bonus from employee
order by bonus desc;--���������ϰ�� null�� ���� ����
--null�� ���� ������ �����ϰ� ������ nulls�ɼ� ���
select emp_name, salary, bonus from employee
order by bonus nulls first;
select emp_name,salary, bonus from employee
order by bonus DESC nulls last;
--�����Ҷ� �Ѱ��̻��� �÷��� ������ �� ����
--order by �÷���, �÷���...
select emp_name, dept_code, job_code from employee;
select emp_name,job_code, dept_code  from employee
order by job_code DEsc, dept_code desc;
--���Ľ� �÷����� �ƴ� �ε�����ȣ�� ������ ����
select emp_name, salary, bonus from employee
order by salary;
select emp_name, salary, bonus from employee
order by 2;
select emp_name, salary, bonus from employee
order by 3 desc nulls last;
--length�Լ� ����ϱ�
select emp_name, length(emp_name),lengthb(emp_name),
email, length(email),lengthb(email) from employee;
desc employee;
--���ͷ����� ���̸� ���� �� ����
select emp_name, length(emp_name),length('�Ͼ�ȣ�ƏO��') from employee;

--dual�������̺��� �̿��Ͽ� ���
select length('����ȣȣ���ܸ�') from dual;
--instr : �Ű������� ���� ���ڿ��� Ư�������� ��ġ�� ã�� �����
select instr('funkkkky','k') from dual;
select instr('funkakkaaakay','k',4,2) from dual;
select email, instr(email,'_') from employee;
select email,substr(email,instr(email,'@')) from employee;
--LPAD/RPAD:Ư�����ڸ� ä��� �Լ�
select LPAD('���־��',20,'��') from dual;
select RPAD('���־��',20,'��') from dual;
select RPAD(emp_name,8,'��') from employee;
--LTRIM/RTRIM : ���ڿ��� ���� �Ǵ� �������� ������ ���ڸ� ����
select '     TRIM', LTRIM('     TRIM') from dual;
select 'kkkkktrim',LTRIM('kkkkktrim','k') from dual;
select 'khkhkhkhkhtrim',LTRIM('khkhkhkhkhtrim','kh') from dual;
select 'kkkkhhhhtrim',LTRIM('kkkkhhhhtrim','kh') from dual;
select 'kkkkahhhhtrim',LTRIM('kkkkahhhhtrim','kh') from dual;
select 'kkkkahhhhtrimkkkkkhhh',RTRIM('kkkkahhhhtrimkkkkkhhh','kh') from dual;
select 'akkkahhhhtrimkkkkkhhha',RTRIM('akkkkahhhhtrimkkkkkhhha','kh') from dual;
select '1204383983339172������', LTRIM('1204383983339172������','0987654321') from dual;
select '12309548321389������10239148105138' from dual;
select RTRIM(LTRIM('12309548321389������10239148105138','0987654321'),'1234567890') from dual;
--�����¸� ��µɼ��ְ� ��������!
--trim : ������ Ư�� ���Ϲ��� ����
select '   kh   ',TRIM('   kh   ') from dual;
select 'ZZZZkhZZZZZ',TRIM('Z' FROM 'ZZZZkhZZZZZ') from dual;
--select 'ZZZZkhZZZZZ',TRIM('Za' FROM 'ZZZZkhZZZZZ') from dual;
select 'ZZZZkhZZZZZ',TRIM(LEADING 'Z' FROM 'ZZZZkhZZZZZ') from dual;
select 'ZZZZkhZZZZZ',TRIM(TRAILING 'Z' FROM 'ZZZZkhZZZZZ') from dual;
select 'ZZAZZkhZZZAZZ',TRIM('Z' FROM 'ZZAZZkhZZAZZZ') from dual;

--SUBSTR : Ư�����ڿ��� �Ϻκ� �߶�
SELECT SUBSTR('SHOWMETHEMONEY',5,2) FROM DUAL; 
SELECT SUBSTR('SHOWMETHEMONEY',5) FROM DUAL; 
SELECT SUBSTR('SHOWMETHEMONEY',-8,3) FROM DUAL;
SELECT SUBSTR('������ �������� ���� �ݿ����̿���',5,4) FROM DUAL; 
--EMPLOYEE���̺� ������� ��(����,�达 �ھ� ��)�� �ߺ����� ���������� ���
SELECT DISTINCT SUBSTR(EMP_NAME,1,1) AS EMP_NAME FROM EMPLOYEE
ORDER BY EMP_NAME;


--�����ڸ� �빮��, �ҹ���, ù���ڴ빮�ڷ� �������ִ� �Լ�
--LOWER, UPPER, INITCAP
SELECT LOWER('KOREA') FROM DUAL;
SELECT UPPER('korea') from dual;
SELECT UPPER('KorEa') from dual;
select initcap('show me the money') from dual;
--���ڿ��� �����ϴ� �Լ� concat == ||
select concat(emp_name, email) from employee;
select emp_name||email from employee;
select emp_name||hire_date from employee;
select concat(emp_name, hire_date) from employee;
--replace : Ư�����ڸ� ���ϴ¹��ڷ� ����
select replace('puppy','p','b') from dual;
select replace(email,substr(email,instr(email,'@')),'@naver.com')
from employee;
'@kh.or.kr'
select email from employee;

select * from employee;
select * from employee 
where substr(emp_no,8,1)=2;

--����ó�� �Լ� 
--abs : ���밪
select abs(10),abs(-10) from dual;
--mod : �������� ���ϴ°�
select mod(10,2), mod(10,3) from dual;
--round : �ݿø��ϴ� �Լ�(Ư����ġ����)
select round(234.678) from dual;
select round(234.478) from dual;
select round(234.678,2) from dual;
select round(bonus,1) from employee;
select hire_date-sysdate from employee;
select round(hire_date-sysdate) from employee;
--floor : �Ҽ����ڸ��� ����~
select floor(234.678) from dual;
select floor(bonus) from employee;
select floor(hire_date-sysdate) from employee;
--trunc : �Ҽ��� ���� Ư����ġ���� ����������.
select trunc(234.678,1) from dual;
--ceil : �����ǿø�! 
select ceil(234.678) from dual;
select ceil(234.178) from dual;
select ceil(234.078) from dual;

--���ϰ�θ� �����ϰ� ���ϸ� �Ʒ��� ���� ����ϼ���.
create table tbl_files
(fileno number(3)
,filepath varchar2(500)
);

insert into tbl_files values(1, 'c:\abc\deft\salesinfo.xls');
insert into tbl_files values(2, 'c:\music.mp3');
insert into tbl_files values(3, 'c:\documents\resume.hwp');

select * from tbl_files;
select substr(filepath,instr(filepath,'\',-1)+1) from tbl_files;
--��¥ó�� �Լ�
--MONTHS_BETWEEN : �Է¹��� �ΰ��� ��¥������ �������� ���
SELECT FLOOR(MONTHS_BETWEEN(SYSDATE,TO_DATE('20000224','YYYYMMDD')))||'����' 
FROM DUAL;
SELECT MONTHS_BETWEEN(SYSDATE,HIRE_DATE) FROM EMPLOYEE;
-- ADD_MONTHS : ������ �߰����ִ°� �����ִ°�
SELECT TO_DATE('20000224','YYYY/MM/DD') FROM DUAL;
SELECT TO_DATE('20000224','YYYY/MM/DD'),
ADD_MONTHS(TO_DATE('20000224','YYYY/MM/DD'),5) FROM DUAL;
--���úη� �������� ���뿡 �� ���� ��.
--�������Ⱓ�� 1��6�����̶�� ����
--1. �������ڸ� ���ϰ�
--2. ���� «���(�޽�)�� ���ϼ���
-- �Ϸ翡 3���� �Դ´ٰ� ����
SELECT SYSDATE AS "�����Դ�" ,ADD_MONTHS(SYSDATE,18)AS ������,
        (ADD_MONTHS(SYSDATE,18)-SYSDATE) AS ����Ȱ�ϼ�,
        (ADD_MONTHS(SYSDATE,18)-SYSDATE)*3 AS «��
FROM DUAL;


--NEXT_DAY : �����ѳ�¥�� ������ ������ ��¥�� ������
-- �Ͽ��� : 1, �� : 2, ȭ : 3,  �� : 4, �� : 5, �� : 6, �� : 7
SELECT NEXT_DAY(SYSDATE,'��') FROM DUAL;
SELECT NEXT_DAY(SYSDATE,'������') FROM DUAL;
SELECT NEXT_DAY(SYSDATE,2) FROM DUAL;

--�����Ͽ� ���� �����ϴ°��� �޸� �ؾ���
SELECT * FROM V$NLS_PARAMETERS;

ALTER SESSION SET NLS_LANGUAGE=KOREAN;

--LAST_DAY : ������ ��¥�� ���� ���� ������ ���� ǥ��
SELECT LAST_DAY('00/02/24') FROM DUAL;
--3�� �� ���������� ���غ��ô�~
SELECT LAST_DAY(ADD_MONTHS(SYSDATE,3)) FROM DUAL;

--��¥�� ��,��,���� ���� �����Ͽ� �����غ���
--EXTRACT
SELECT EXTRACT(YEAR FROM SYSDATE)AS ��,
        EXTRACT(MONTH FROM SYSDATE) AS ��,
        EXTRACT(DAY FROM SYSDATE) AS ��,
        EXTRACT(HOUR FROM CAST(SYSDATE AS TIMESTAMP)) AS �ð�,
        EXTRACT(MINUTE FROM CAST(SYSDATE AS TIMESTAMP)) AS ��,
        EXTRACT(SECOND FROM CAST(SYSDATE AS TIMESTAMP)) AS �ð�
FROM DUAL;
--�ڷ��� ��ȯ
--to_char : ���ڿ��� ������ ���ִ� �Լ�
--����� ���ڱ�ȣ
--yyyy : �⵵(4�ڸ�) / yy : �⵵ 2�ڸ�
--month : ���� locale������ �°� ���
--mm : ���� ���ڷ� ǥ��
--mon : ���� ���ĺ����� ǥ��
--dd : ��¥�� ǥ��
--d : ���� -> ���� : 2
--dy : ������ ����ǥ�� : ��
--day : ���� �� : ������
--HH : �ð� HH24(24�ð�) HH12(12�ð�)
--mi : ��
--ss : ��

select sysdate from dual;
select to_char(sysdate,'yyyy-mm-dd day hh24:mi:ss') 
from dual;
--������¥�� ���ڿ��� ���
select to_char(sysdate-1,'yyyy-mm-dd day hh24:mi:ss')
from dual;
select to_char(sysdate+1,'yyyy-mm-dd dy')
from dual;
--�÷��� �̿��� ���ڿ��� ����
select emp_name, hire_date
,to_char(hire_date,'yyyy/mm/dd hh24:mi:ss')
from employee;
--������̺��� �����(0000-00-00(����))
select emp_name, hire_date
,to_char(hire_date,'yyyy-mm-dd(dy)')
from employee;
--���ڸ� ���ڿ��� ����
--to_char
--���ڿ��� ����� ��������
--,(comma) �޸��������κ�ȯ(3°�ڸ��� ,���̴°�) : 900,000
--.(period) �Ҽ��� �������� ��ȯ : 90.9
--9 �ش��ڸ��� �����ǹ� -> ���� ���� ��� �Ҽ����̻��� ����, �Ҽ������ϴ� 0����ǥ��
--0 �ش��ڸ��� �����ǹ� -> ���� ���� ��� 0���� ������ ǥ��, ���ڸ� ���������� ǥ���� ���
--$ ��ȭǥ��(��) -> $�޷�ǥ��
--L local��ȭ�� ǥ�� -> \
select to_char(123456,'999,999,999') from dual;
select to_char(123456,'000,000,000') from dual;
select to_char(123567,'99,999') from dual;
--��ȭǥ��
select to_char(3456,'$9,999') from dual;
select to_char(3456,'L9,999') from dual;
--�Ҽ���
select to_char(1234.56,'99999.9999') from dual;
select to_char(1234.56,'00000.0000') from dual;
--employee���̺��� salary�÷��� ��ȭǥ�÷� ,�� �����Ͽ� ����غ���
--����������Ͽ� ������ ������� ����غ���~! 
select emp_name, to_char(salary,'L999,999,999'),
    to_char(salary*12,'L999,999,999,999')
from employee;
-- to_date : ��¥�������� ��ȯ
--�ۼ��� :  to_date(charater,format) : ���ڸ� ��¥�� ����~
--         to_date(number,format) : ���ڸ� ��¥�� ����!
select to_char(to_date('19960626','yyyymmdd'),'yy.mm.dd dy') as "���� ���� ����"
from dual;
--�ð����� ��¥�� �����ϱ�
select to_char(to_date('19960626 02:30:20','yyyymmdd hh24:mi:ss')
                ,'yy/mm/dd hh24:mi:ss')
from dual;
select hire_date from employee;
select hire_date from employee
where hire_date >to_date('20000101','yyyymmdd');

--����-��¥�� ��ȯ �����Ұ�~! �տ� 0�� ���� �⵵�� ������ �ȵ�~! 
select to_date(19960626,'yyyymmdd') from dual;
select to_date('010224','yymmdd') from dual;

--���ǿ� ���� ����ϱ� decode
--���� : decode(ǥ����, ����1,����1(true:ǥ������ ����� ������)���,
--             ����2,����2���.... default)
select emp_no from employee;
select emp_name, emp_no, 
decode(substr(emp_no,8,1),'1','��','2','��','3','��','4','��') as ����
from employee;
select * from department;
--deparmentcode : 
--D1 : �λ����, D2:ȸ�����, D3 : ������, D4 : ��������, D5 : �ؿܿ���1
--D6 : �ؿܿ���2, D8 : �������, D9 : �ѹ�
-- �����, DEPTCODE, ����(���Ǻ��� ���)
SELECT EMP_NAME, DEPT_CODE,NVL( 
DECODE(DEPT_CODE,'D1','�λ����','D2','ȸ�����','D3','ȸ�����',
        'D3','������','D4','��������','D5','�ؿܿ���1','D6','�ؿܿ���2',
        'D8','�������','D9','�ѹ�'),'�μ�����') AS ����
FROM EMPLOYEE;
--CASE��:���ǿ� ���� �÷����� ���
--��� : CASE WHEN ���� THEN ���ǰ���� WHEN ����2 THEN ����2 ....
--       ELSE ��� END AS ��Ī�ο�
SELECT EMP_NAME, EMP_NO
    ,CASE 
        WHEN SUBSTR(EMP_NO,8,1)=1 THEN '��'
        WHEN SUBSTR(EMP_NO,8,1)=2 THEN '��'
        --ELSE '��'
     END
    AS ����
FROM EMPLOYEE;

--CASE������ �Ʊ� ���� DEPT_CODE���湮�� �ٽ� �غ���~~! 
-- ������̺��� ������ ���� ����ϼ���.
-- ���糪��= ����⵵ - �¾�⵵ +1
/*
-------------------------------------------------------------------------
�����ȣ    �����       �ֹι�ȣ        ����   ���糪��
-------------------------------------------------------------------------
200	       ������	  621235-1*******	   ��	    57
201	       ������	  631156-1*******	   ��	    56
202	       ���ö	  861015-1*******	   ��	    33
                        .
                        .
                        .
-------------------------------------------------------------------------
*/
select emp_id as �����ȣ,
        emp_name as �����,
        concat(substr(emp_no,1,8),'******'),
        case
            when substr(emp_no,8,1)=1 then '��'
            else '��'
        end as ����,
        (extract(year from sysdate)-
        --extract(year from to_date(substr(emp_no,1,2),'yy')) as ���糪��
        extract(year from to_date(substr(emp_no,1,2),'rr')))+1 as ���糪��,
        to_number(extract(year from sysdate))-
        (to_number(substr(emp_no,1,2))+ 
            case 
                when substr(emp_no,8,1) in (1,2) then 1900 
                else 2000
            end)+1
            as ���糪��
from employee;

insert into employee values(
    '250','��ι�','470808-2123341','go@kh.or.kr',null,'D2','J2','S5'
    ,4480000,null,null,to_date('94/01/20','rr/mm/dd'),null,'N'
);

--�׷��Լ� �Լ��������� �Ѱ��� row�� ��µǴ� �Լ�
--sum(�÷���) : �÷��� ���� �հ�~
--��� ���޿� ���� ���հ�
select sum(salary) from employee;
select sum(salary) 
from employee
where emp_name like '��%';
--resultset �Ѱ� row�� �Ǿ��ֱ� ������ �÷��� ������ �� ����.
select emp_name, sum(salary) 
from employee;
--������ �հ�
select sum(salary*12), sum((salary+salary*nvl(bonus,0))*12)
from employee;
select sum(bonus) from employee;
select bonus from employee where bonus is not null;
--avg : �÷��� ����� ���ϴ� �Լ�
select bonus from employee;
select avg(bonus) from employee;
select round(avg(bonus),2), avg(nvl(bonus,0)) 
from employee 
where bonus is not null;

--���̺� ���� ��ü row�� ��ȸ : count
--count(�÷� OR *)
select count(*) from employee;
select * from employee;
select count(*) 
from employee
where dept_code='D9';

select count(*) 
from employee 
where salary>3000000;

select count(emp_name)
from employee;
select count(dept_code)
from employee;

select count(*)
from employee
where dept_code is not null;

select count(distinct dept_code)
from employee;
select DISTINCT dept_code 
from employee;

--max, min���ϱ�~!
select max(salary),min(salary) from employee;
select max(hire_date),min(hire_date) from employee;

--�μ��� ������ ��ձ�����, ȭ���������� ��ȯ
select dept_code,floor(avg(salary))
from employee
group by dept_code;--�ߺ����� �����ؾ��� ��� �ǹ̰� ����.

select emp_name, floor(avg(salary))
from employee
group by emp_name;

--group by�� �����ϸ� �� �׷����� ���Ǵ� �׷��Լ��� ��밡��
select dept_code, count(dept_code), sum(salary), floor(avg(salary)),
        max(salary), min(salary)
from employee
group by dept_code;

--�����÷��� �������� ���ڿ��ڿ� ���� ��տ���, �հ�, �ο���
select case 
         when substr(emp_no,8,1)=1 then '��'
         else '��'
        end as gender,
        count(*) as �ο���,
        to_char(sum(salary),'L999,999,999') as �����հ�,
        to_char(floor(avg(salary)),'L999,999,999') as �������
from employee
group by case 
         when substr(emp_no,8,1)=1 then '��'
         else '��'
        end;

--job_code�� �������� salary �հ�, ��� ���ϱ�
select job_code, sum(salary), floor(avg(salary))
from employee
where dept_code is not null
group by job_code
having sum(salary)>9000000;
--�μ� �ο����� 4�̻��� �μ��� ����ϼ���
select dept_code,count(*) 
from employee
group by dept_code
having count(*)>=4;

--�׷������Լ� rollup / CUBE
--�׷쿡 ���� ���հ踦 �����ִ� �Լ�
SELECT DEPT_CODE,
        SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_CODE;
--ROOLUP�� ���� �հ踦 ���ϱ�
SELECT DEPT_CODE,
        SUM(SALARY)
FROM EMPLOYEE
GROUP BY ROLLUP(DEPT_CODE);
--�÷��� �ΰ��� ���
SELECT DEPT_CODE, JOB_CODE,
    SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_CODE,JOB_CODE
ORDER BY 1;
--�ΰ��÷��� ���� �Ұ�,�Ѱ踦 ���
SELECT DEPT_CODE, JOB_CODE,
    SUM(SALARY)
FROM EMPLOYEE
GROUP BY ROLLUP(DEPT_CODE, JOB_CODE)
ORDER BY 1;


SELECT JOB_CODE, DEPT_CODE, 
    SUM(SALARY)
FROM EMPLOYEE
GROUP BY ROLLUP(JOB_CODE,DEPT_CODE)
ORDER BY 1;
--�μ��� �ο��� ������ ����ϴµ� �� �ο����� ����ϼ���
SELECT DEPT_CODE, COUNT(*) 
FROM EMPLOYEE
GROUP BY CUBE(DEPT_CODE)
ORDER BY 1;
--�μ���, ���޺� �ο����� ����ϰ� �μ��� �Ұ� ��ü �Ѱ踦 ����ϼ���
SELECT DEPT_CODE, JOB_CODE,
    COUNT(*)
FROM EMPLOYEE
GROUP BY ROLLUP(DEPT_CODE,JOB_CODE)
ORDER BY 1;

--CUBE : �Ѱ� �׷츸 �����Ͽ� ó���Ҷ��� ROLLUP�� ����
-- �ΰ��̻� �׷��� ������ ��� ��°��� �޶���~!
SELECT DEPT_CODE, JOB_CODE,
    SUM(SALARY)
FROM EMPLOYEE
GROUP BY CUBE(DEPT_CODE, JOB_CODE)
ORDER BY 1;

SELECT DEPT_CODE,
    SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_CODE;
SELECT JOB_CODE,
    SUM(SALARY)
FROM EMPLOYEE
GROUP BY JOB_CODE;

SELECT DEPT_CODE,JOB_CODE,
    SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_CODE, JOB_CODE
ORDER BY 1;

SELECT SUM(SALARY)
FROM EMPLOYEE;
--�μ���, ��å�� �ο��Ѱ�
SELECT DEPT_CODE, JOB_CODE, COUNT(*)
FROM EMPLOYEE
GROUP BY CUBE(DEPT_CODE, JOB_CODE)
ORDER BY 1,2;

SELECT EMP_NAME, DEPT_CODE
FROM EMPLOYEE
WHERE DEPT_CODE IS NULL;

DELETE FROM EMPLOYEE WHERE DEPT_CODE IS NULL;

ROLLBACK;

--GROUPING : ������������ �Ǵ��ϴ� �Լ�
SELECT DEPT_CODE, JOB_CODE, SUM(SALARY), COUNT(*),
    CASE 
        WHEN GROUPING(DEPT_CODE)=0 AND GROUPING(JOB_CODE)=1
            THEN '�μ����հ�'
        WHEN GROUPING(DEPT_CODE)=1 AND GROUPING(JOB_CODE)=0
            THEN '���޺��հ�'
        WHEN GROUPING(DEPT_CODE)=1 AND GROUPING(JOB_CODE)=1
            THEN '���հ�'
        ELSE '�׷캰 �հ�'
    END AS ����
FROM EMPLOYEE
GROUP BY CUBE(DEPT_CODE, JOB_CODE)
ORDER BY 1;





--���տ�����(SET OPERATION)
--2�� �̻��� RESULT SET�� �Ѱ��� RESULT SET���� ��ġ�� ��!
--SELECT�� ���տ����� SELECT�� ���տ����� SELECT��.....
--���� : �� RESULT SET�� �÷��� ������ ���ƾ���, 
--      �÷��� ���������� Ÿ�Ե� ���ƾ���

--UNION : �ߺ������� �ΰ��� RESULT SET�� �����͸� ��ġ�� ��
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE='D5'
UNION
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE SALARY>3000000
ORDER BY DEPT_CODE;
--�÷��� �����ʹ� �� �÷����� �䱸�ϴ� 
--�ڷᰡ ���� �ʾƵ���
SELECT EMP_NAME, LENGTHB(EMP_NO)
FROM EMPLOYEE
WHERE SALARY>3000000
UNION
SELECT DEPT_ID, LENGTHB(DEPT_TITLE)
FROM DEPARTMENT;
--UNION ALL : �ΰ��� RESULT SET�� �ִ� �ߺ����� ��� ���
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE='D5'
UNION ALL
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE SALARY>3000000
union
select emp_id, emp_name, dept_code, salary
from employee
where job_code in ('J3','J4');


--intersect : �� result set�� �ߺ����� ���
select emp_id, emp_name, dept_code, salary
from employee
where dept_code='D5'
intersect
select emp_id, emp_name, dept_code, salary
from employee
where salary>3000000;

--minus : �ΰ��̻��� resultset���� �� select������ �ߺ��Ǵ°��� ���°�
select  dept_code
from employee
where dept_code='D8'
minus
select dept_id
from department;

select * from employee;
--group by grouping sets
--group by�� �����Ǿ��ִ� result set���� �������ִ� ���
select dept_code, job_code, manager_id, floor(avg(salary))
from employee
group by GROUPING SETS(
    (DEPT_CODE,JOB_CODE, MANAGER_ID),
    (DEPT_CODE,MANAGER_ID),
    (JOB_CODE,MANAGER_ID)
    )
ORDER BY 1 NULLS LAST,2 NULLS LAST,3 NULLS LAST;
    
select dept_code, job_code, manager_id, floor(avg(salary))
from employee
GROUP BY (DEPT_CODE,JOB_CODE, MANAGER_ID);
select dept_code, manager_id, floor(avg(salary))
from employee
GROUP BY (DEPT_CODE,MANAGER_ID);
select job_code, manager_id, floor(avg(salary))
from employee
GROUP BY (JOB_CODE, MANAGER_ID);

--join����ϱ�
--join�� �ΰ��� ���̺��� �����Ͽ� �Ѱ��� ���̺�� ����ϴ� ��
--�ΰ��� ���̺��� row������ ������ �ؾ��ϱ� ������ ���� ���εǴ� ���� 
--�ʿ���(�� ���̺��� ���� ������ �ִ� �����Ѱ�)
select emp_name, employee.job_code,job_name
from employee, job
where employee.job_code=job.job_code;

select * from employee;
select * from job;

--�����, �μ����� ����ϱ�
select *from employee;
select * from department;
select emp_name, dept_title
from employee e, department d
where e.dept_code=d.dept_id and;
--ansiǥ�� sql���� ��ȯ�غ���
--select �÷���, �÷���2,...
--from ���̺� join ���̺� on ���÷�=���÷�
--[where ����....]
--�����, ��å��������غ���
select emp_name, job_name
from employee e join job j on e.job_code=j.job_code;
--department�� ansi�� �����غ�����
select emp_name, dept_title
from employee join department on dept_code=dept_id;
--�� ���̺��� �ѹ��ο��� ����غ���
select emp_name, dept_title
from employee inner join department on dept_code=dept_id
where dept_title='�ѹ���';

--inner ���� : ������ �Ǵ� ���̶� ��ġ�ϴ� ���� ������ �� row�� �����������
select * from employee;
select count(*) 
from employee e join department d on e.dept_code=d.dept_id;
--outerjoin : ���ذ��̶� ��ġ�ϴ� ���� ������ ����(LEFT,RIGHT)�������� 
--��������� ����ϰ� �ϴ°�
-- select �÷���, �÷���,�÷���....
-- from ���̺� left/right join ���̺� on �񱳰�=�񱳰�
--left join
select emp_name, e.dept_code, dept_title
from employee e left join department d on e.dept_code=d.dept_id;

select emp_name, e.dept_code, dept_title
from department d left join employee e on e.dept_code=d.dept_id;

select emp_name, e.dept_code, dept_title
from department d right join employee e on e.dept_code=d.dept_id;

--����Ŭ outter���� ����
select emp_name, dept_code, dept_title, dept_id
from employee, department
where dept_code(+)=dept_id;

--fulljoin : ��ġ�Ǵ� ���� ��� ���� ���̺��� ������ ��� ���
select emp_name, dept_code, dept_title, dept_id
from employee full join department on dept_code=dept_id;

select emp_name, dept_code, dept_title, dept_id
from employee, department;

select emp_name, dept_code, dept_title, dept_id
from employee cross join department
order by 1,3;

select emp_name,dept_code from employee;
select dept_title,dept_id from department;


--non-equ join : ����񱳰� �ƴ϶� �� ũ�� �񱳷� ����
select * from sal_grade;

select emp_name, salary, s.sal_Level,s.min_sal,s.max_sal
from employee join sal_grade s 
on (salary between min_sal and max_sal);

-- self join : �������̺��� ���������Ͽ� �����ϴ� ��
-- �ڱ����̺��� �÷���(���еǴ�)�� �����ִ� �÷��� �����ؾ���.
-- employee : emp_id = manager_id
select emp_id, manager_id from employee;

select e.emp_id, e.emp_name, e.manager_id, m.emp_name, m.salary
from employee e
left join employee m on e.manager_id=m.emp_id;


--������̺�
select emp_id, emp_name, manager_id from employee;
--�Ŵ������̺�
select emp_id, emp_name from employee;
--�������� ���̺��� �ΰ��̻� �����ϴ°��� �ǹ��Ѵ�.
--from ���� join������ ��� ����ϸ��
--join�� �Ҷ� ����Ǵ� �÷��� �ݵ�� ������ ���յ� ���̺� ����
select *
from employee e
join job j on(j.job_code=e.job_code)
left join department on dept_code=dept_id
join location l on location_id=local_code
;
select * from location;

--������ �븮�̸鼭, ASIA������ �ٹ��ϴ� ������ ��ȸ
--���, �̸�, ���޸�, �μ���, �ٹ�������, �޿�
--�ֹι�ȣ�� 1970��� ���̸鼭 ������ �����̰�, ���� ������ ����
--�����, �ֹι�ȣ, �μ���, ���޸�
--�̸��� '��'�ڰ� ���� ����
--���, �����, �μ���
--�ؿܿ����ο� �ٹ��ϴ� ����
--�����, ���޸�, �μ��ڵ�, �μ���
--���ʽ��� �޴� ����
--�����, ���ʽ�, �μ���, �ٹ�������
--�μ��ڵ尡 D2�� ����
--�����, ���޸�, �μ���, �ٹ�������
--�޿�������̺��� �ִ�޿�(MAX_SAL)���� ���� �޴� ������
--�����, ���޸�, �޿�, ����
--�ѱ�(KO)�� �Ϻ�(JP)�� �ٹ��ϴ� ����
--�����,�μ���, ������, ������
--�����μ��� �ٹ��ϴ� ����(self join)
--�����, �μ���, �����̸�
--���ʽ��� ���� ���� �� ������ ����� ����� ����
--�����, ���޸�, �޿���ȸ join, in ���
--�������� ������ ����� ������ ��


SELECT E.EMP_NAME �����
      , DEPT_TITLE �μ���
      , E2.EMP_NAME ��������
FROM EMPLOYEE E
 JOIN EMPLOYEE E2 ON(E.DEPT_CODE = E2.DEPT_CODE)
 LEFT JOIN DEPARTMENT D ON E.DEPT_CODE = DEPT_ID
WHERE E.EMP_NAME != E2.EMP_NAME
ORDER BY 1;








--�ؿܿ���1�� ����� ����Ͻÿ�
select * 
from employee
where dept_code=(select dept_id from department 
            where dept_title='�ؿܿ���1��');
select * from department;

--������ �������� : ���������� ����� 1���϶�(1row)

select * 
from employee
where salary>(select avg(salary) from employee);

select *
from employee
where dept_code=(select dept_id
                    from department where dept_title='�ѹ���')
    AND salary>(select avg(salary) from employee);
    
--�����༭������ : resultset�� �� ���������� �Ǵ� ���

select emp_name, dept_code
from employee
where dept_code='D9' or dept_code='D5';
select dept_code from employee 
where emp_name='������' OR emp_name='�ڳ���';

select emp_name, dept_code 
from employee
where dept_code not in (select dept_code from employee 
                    where emp_name in('������','�ڳ���'));
--���߿� �������� select������ �÷��� �ټ� �����ϴ� ���
--�񱳴�� 1:1 ��Ī�� �Ǿ���Ѵ�.
--����� �������� ���� ����, ���� �μ��� ��� 
select *
from employee
where (job_code, dept_code) 
            in (select job_code, dept_code 
                from employee 
                where substr(emp_no,8,1)=2 and ent_yn='Y');
                
--��������߿��������� : ���������� resultset ����� row 2���̻� 
--column�� 2���̻��� ����� ������ select�� ��������� 
--���޺� �ּұ޿��� �޴� ������ ���, �̸�, ����, �޿� ��ȸ
select job_code, min(salary) 
from employee
group by job_code;

select emp_id, emp_name, job_code, salary
from employee
where (job_code,salary)in(select job_code, min(salary) 
                            from employee
                            group by job_code);
                            
--�����༭�������� ��Һ��Ҷ� ANY, ALL
--ANY : ���������� ����� �ϳ��� ���̸� ���̴�
--x > ANY(��������) : ������� ũ�⸸�ϸ� �� -> �ּҰ����� ũ�� ��
SELECT EMP_NAME, SALARY
FROM EMPLOYEE 
WHERE SALARY >= ANY(SELECT MIN(SALARY) 
                    FROM EMPLOYEE GROUP BY JOB_CODE);

--�ִ밪���� ������ ��     
SELECT EMP_NAME, SALARY
FROM EMPLOYEE 
WHERE SALARY < ANY(SELECT MIN(SALARY) 
                    FROM EMPLOYEE GROUP BY JOB_CODE);                            
-- ALL : ���������� ����� ��� ���̸� ��
--X > ALL : ���������� ��簪 ���� ũ�� �� -> �ִ밪���� ũ�� ��
--X < ALL : ���������� ��簪 ���� ������ �� -> �ּҰ����� ������ ��
SELECT EMP_NAME, SALARY
FROM EMPLOYEE 
WHERE SALARY < ALL(SELECT MIN(SALARY) 
                    FROM EMPLOYEE GROUP BY JOB_CODE
                    HAVING MIN(SALARY)>2000000);                  

SELECT EMP_NAME, SALARY
FROM EMPLOYEE 
WHERE SALARY > ALL(SELECT MIN(SALARY) 
                    FROM EMPLOYEE GROUP BY JOB_CODE
                    HAVING MIN(SALARY)<6000000);       
                    
--����������� : MAIN SELECT���� SUBSELECT���� ���� ����� ������ �ִ°�
SELECT EMP_ID, EMP_NAME, MANAGER_ID
FROM EMPLOYEE E
WHERE EXISTS(SELECT * FROM EMPLOYEE M WHERE E.MANAGER_ID=M.EMP_ID);
 
--�ɺ��� ����� ���� �μ��� ����� �μ��̸�, ����ձ޿��� ��ȸ
--���帹�� �޿��� �޴� ����� EXISTS ������������� �̿��Ͽ� ���Ͽ���
-- NOT EXISTS�̿�
--�����ؿ� �޿��� ���� ������� �˻��ؼ� ���, ����̸�, �޿����
--EMPLOYEE���̺��� �⺻�޿��� ���� ���� ����� �������� ����� ������ 
-- ���,�����,�������
--D1,D2�μ��� �ٹ��ϴ� ����� �߿��� �⺻�޿��� D5�μ� �������� ��տ��޺��� 
-- ���� ����鸸 �μ���ȣ, ���,�����, �������
--������ ������ ����� �޿���ް� ���� ����� ���޸�, ����� ���
--������ ��ǥ, �λ����� �ƴ� ��� ����� �μ����� ���
--ASIA1������ �ٹ��ϴ� ���������� �μ��ڵ�, �����(���������̿�)
--2000��1��1�� ���� ���ڻ��߿� 2000��1��1������ �Ի��ں��� �޿��� (�������
-- �޴»������) ���� �޴� ����� ������ ���޿��� ���
--'J4'������ ������� ���� �޿��� �޴� ������ J5,J6,J7�� ��� ���
--D1�μ��� ���(��ü)���� �Ի簡 �n�� ������� ������ �˻��ϰ�, �����, �μ���ȣ
-- �Ի����� ���
--�λ�������� �����ü���� �Ի簡 ���� ������������� �˻�, �����, �μ���, �Ի���
--����������̸鼭 �޿��� 2000000�� ����� �����, �μ��ڵ�, �޿����
--�μ��� �ִ�޿��� �޴� ����� �����, �μ���, �޿��� ���
--������ J1, J2, J3�� �ƴ� ����߿��� �ڽ��� �μ��� ��ձ޿����� ���� �޿��� �޴� ������.
-- �μ��ڵ�, �����, �޿�, �μ��� �޿����

select  dept_code, round(avg(salary)) avg_sal
from employee
group by dept_code;

select e.dept_code, emp_name, salary
from employee e
join(select  dept_code, round(avg(salary)) as avg_sal
        from employee
        group by dept_code)a on e.dept_code = a.dept_code   
where job_code not in ('J1','J2','J3') 
    AND salary > avg_sal;
    

--��Į�󼭺����� : ��������ε� resultSet ������ �Ѱ���~�ִ°�~!   
select dept_code,emp_name, salary ,
        (select round(avg(salary)) 
         from employee where dept_code=e.dept_code)as avg_sal
from employee e
where job_code not in('J1','J2','J3')
    AND salary > (select round(avg(salary)) 
         from employee where dept_code=e.dept_code);

select avg(salary) from employee;


select dept_title, emp_name
from employee e left join department on dept_code = dept_id
where exists (select 1 
             from employee 
             where dept_code = e.dept_code and emp_name = '�ɺ���');

select dept_title, trunc(avg(salary)) ��ձ޿�
from employee e left join department on dept_code = dept_id
where exists (select 1 
             from employee 
             where dept_code = e.dept_code and emp_name = '�ɺ���')
group by dept_title;


--��Į�󼭺����� : ��������������� �� ���(resultset) �������� ��츦 ����
--��Į�� : sql���� ���ϰ��� ���� �����͸� ��Į���� ��
--��� : 1. select���� �÷� ��ġ���� ��밡��
--      2. where�������� ����� ����
--      3. order by �������� ����� ����

--select���� ��Į�󼭺����� ����ϱ�
-- ������� ���, �̸� �����ڻ��, �����ڸ��� ��ȸ
-- self join
select e.emp_id,e.emp_name, e.manager_id, m.emp_name
from employee e join employee m 
on e.manager_id=m.emp_id;
--��Į��
select emp_id, emp_name, manager_id, 
    nvl((select emp_name from employee m where e.manager_id=m.emp_id),'����') as �����ڸ�
from employee e;
select emp_name from employee where dept_code='D1';

--�����, �μ��ڵ�,�μ���,�μ��� ����ӱ��� ���������� �̿��ؼ� ����غ���
select emp_name, dept_code, dept_title, 
    (select round(avg(salary)) from employee 
        where dept_code=e.dept_code) as avg_sal
from employee e join department on dept_code=dept_id;

select round(avg(salary)) from employee 
where dept_code='D1'
group by dept_code ;
select dept_code from employee
;
--������ J1�� �ƴ� ����� �ڽ��� �μ��� ��� �޿����� ���� �޿��� �޴� ���
-- �μ��ڵ�, �����, �޿�, �μ��� �޿����
select dept_code, emp_name, salary, 
        (select round(avg(salary)) 
        from employee where dept_code=e.dept_code)
from employee e
where job_code<>'J1' and salary <(select round(avg(salary)) 
        from employee where dept_code=e.dept_code);

--��Į�� where���� ����ϱ�~~!
--�ڽ��� ���� ������ ��ձ޿����� ���� �޴� ������
--�̸�, ����, �޿�, ��ձ޿�, ��å���� ��ȸ

select emp_name, job_code, salary
from employee a
where salary>(select round(avg(salary))
                from employee 
                where job_code=a.job_code);
                
select job_code, round(avg(salary))
from employee
group by job_code;
-- ��Į�󼭺����� order by��
--��� ������ ���, �̸�, �ҼӺμ��� ��ȸ �� �μ������� �������������ϼ���
select emp_id, emp_name, dept_code
from employee
order by (select dept_title
            from department
            where dept_code=dept_id) desc nulls last;
            
-- FROM���� �������� ����ϱ�
SELECT EMP_ID, EMP_NAME, DEPT_CODE,
        DECODE(SUBSTR(EMP_NO,8,1),'1','��','2','��') ����
FROM EMPLOYEE
WHERE SUBSTR(EMP_NO,8,1)=1;

SELECT * 
FROM (SELECT EMP_ID AS ���, EMP_NAME AS �����, DEPT_CODE AS �μ��ڵ�,
        DECODE(SUBSTR(EMP_NO,8,1),'1','��','2','��') ����
        FROM EMPLOYEE
        WHERE ��� LIKE '20%');

--EMPLOYEE ���̺��� 1990�⵵�� �Ի��� ����� ���, �����, �Ի�⵵�� 
--�ζ��η��� �ۼ�
select *
from(select emp_id ���
         , emp_name �����
         , extract(year from hire_date) �Ի�⵵
    from employee)
where �Ի�⵵ - 1990 between 0 and 9; 
--2. employee���̺��� ����� 30��, 40���� 
--���ڻ���� ���, �μ���, ����, ���̸� ����϶�.
select ���, �����, �μ���, ����, ����
from (
        select emp_id ���
             , emp_name �����
             , (select dept_title from department where dept_id
                = e.dept_code) �μ���
             , extract(year from sysdate)
             -(decode(substr(emp_no,8,1),'1',1900,'2',1900,2000)
             +to_number(substr(emp_no,1,2)))+1 ����
             , decode(substr(emp_no,8,1),'1','��','3','��','��') ����
        from employee e
      )
where ���� = '��' and (trunc(����/10) in(3,4));

--WITH : ���������� ��Ī�� �ο��ؼ� �� ��Ī���� ���������� ����ϴ°�
WITH TT AS(SELECT EMP_ID, EMP_NAME, SALARY FROM EMPLOYEE 
            ORDER BY SALARY DESC)
SELECT * FROM TT;

--������ ��ȸ�ϴ� ��ȸ���� �˾ƺ���
--���޸��� TOP3�� ��ȸ
--����Ŭ�� ���̺��̸� �����ϴ� �÷�
--ROWNUM : �÷��� ���� �ڵ����� 1~�������� ��ȣ�ο�
--ROWID : ROW�� ã�ư����ְ� ���ִ� �ּҰ�!
CREATE TABLE TEST(
    BOARDNO NUMBER,
    TITLE VARCHAR2(10),
    CONTENT VARCHAR2(200),
    WRITER VARCHAR2(10)
);
SELECT * FROM TEST;
SELECT ROWID, ROWNUM, BOARDNO, TITLE, CONTENT, WRITER
FROM TEST;

SELECT ROWID, ROWNUM, EMP_ID, EMP_NAME, SALARY
FROM EMPLOYEE;

SELECT ROWNUM,EMP_ID, EMP_NAME,SALARY
FROM EMPLOYEE
ORDER BY SALARY DESC;

SELECT ROWNUM, A.*
FROM (SELECT EMP_ID, EMP_NAME, SALARY
        FROM EMPLOYEE ORDER BY SALARY DESC)A
WHERE ROWNUM <=3;

SELECT ROWNUM, EMPLOYEE.*
FROM EMPLOYEE;
--D5�μ����� ���� ���� 3���� �������
--����, ���, �����, ����
SELECT ROWNUM, A.* 
FROM (SELECT EMP_ID, EMP_NAME, SALARY*12 AS ����
        FROM EMPLOYEE 
        WHERE DEPT_CODE='D5'
        ORDER BY ���� DESC) A
WHERE ROWNUM <=3;

--������ 5~10����� �����, ���� ����غ��� *����¡ó���� �ʿ�!!
SELECT * FROM(
    SELECT ROWNUM RNUM, A.* 
    FROM (SELECT EMP_ID, EMP_NAME, SALARY*12 AS ����
            FROM EMPLOYEE 
            ORDER BY ���� DESC) A
)       
WHERE RNUM BETWEEN 5 AND 10;

--����������
--������ ����, �޴�, �亯���Խ���(���)
-- FROM ������ �ɼǰ��� ����ؼ� ó����
--START WITH : �θ���(��Ʈ���) ����
--CONNECT BY : �θ�-�ڽİ��輳��
--PRIOR : START WITH������ ������ �θ����Ǳ����÷��� ����
--LEVEL : ���������� ��Ÿ���� ������ �÷�

SELECT LEVEL, EMP_ID, EMP_NAME, MANAGER_ID
FROM EMPLOYEE
START WITH EMP_ID=200
CONNECT BY PRIOR EMP_ID=MANAGER_ID
ORDER BY LEVEL;
SELECT LPAD(' ',(LEVEL-1)*5,' ')||EMP_NAME
            ||NVL2(MANAGER_ID,'('||MANAGER_ID||')','')AS ������
FROM EMPLOYEE
START WITH MANAGER_ID IS NULL
CONNECT BY PRIOR EMP_ID=MANAGER_ID;

--RANK()�������Լ� : ����Ŭ�� �����ϴ� ������ȸ�Լ�
SELECT ����, EMP_NAME, SALARY
FROM(SELECT EMP_NAME, SALARY, 
            RANK() OVER(ORDER BY SALARY DESC) AS ����
            FROM EMPLOYEE ORDER BY SALARY DESC)
            WHERE ���� BETWEEN 4 AND 10;


SELECT ����, EMP_NAME, SALARY
FROM(SELECT EMP_NAME, SALARY, 
            DENSE_RANK() OVER(ORDER BY SALARY DESC) AS ����
            FROM EMPLOYEE ORDER BY EMP_NAME);

--DDL:���̺� �����͸� �����ϴ� ���
--INSERT : ���̺� ROW(��)�� �����ϴ� ��ɾ�
--UPDATE : ���̺��� Ư�� ROW(��) Ư�� �÷��� ���� �����ϴ� ��ɾ�
--DELETE : ���̺��� Ư�� ROW(��)�� ���� �ϴ� ��ɾ�

--INSERT ���� 
--INSERT INTO ���̺��[(�÷���, �÷���, �÷���,....)]
--VALUES(��1, ��2, ��3, ��4,....);
--���̺�ڿ� ��ȣ�÷��� Ư�� �÷��鸸 ���� �����Ͽ� ROW�� �߰��Ҷ�
--�Ϲ������� ��ü �÷��� ���ؼ� ���� ������ �Ҷ��� INTO ���̺� VALUES()
--�� ���� ����
--VALUES���԰��� ������ ���̺��� ���س��� ������� �ۼ��ϸ��
-- *���̺��� ���鶧 �ۼ��� �÷�����

--��ü���� ���� �����ϴ� ���
INSERT INTO EMPLOYEE
VALUES(900,'��ä��','901123-1080503','JANG_CH@KH.OR.KR','0105556952',
'D1','J8','S3',4300000,0.2,'200',SYSDATE,DEFAULT,DEFAULT);
SELECT * FROM EMPLOYEE;
INSERT INTO EMPLOYEE
VALUES(901, '������','731020-2123453','hamham@kh.or.kr','01012341234',
'D1','J4','S3',4500000,NULL,'218',SYSDATE,DEFAULT,DEFAULT);
SELECT * FROM EMPLOYEE;
commit;
--���� ���ϴ� �÷��� ��� ���߰�
INSERT INTO EMPLOYEE(EMP_ID, EMP_NAME, EMP_NO, EMAIL, PHONE, 
DEPT_CODE,JOB_CODE, SAL_LEVEL, BONUS, MANAGER_ID)
VALUES(903, '������', '000224-3123412','prince0324@naver.com',
'01036446259','D2','J1','S1',0.3,'200');
SELECT * FROM EMPLOYEE;
--�����͸� �Է��Ҷ��� ���������� ���Ѿߵ�.
INSERT INTO EMPLOYEE(EMP_ID,EMP_NAME, EMP_NO,SAL_LEVEL, JOB_CODE)
VALUES(904,'������','910804-2123412','S1','J3');
SELECT * FROM EMPLOYEE WHERE EMP_ID='904';

--INSERT���� SUBQUERY�̿��ϱ�
CREATE TABLE EMP01(
    EMP_ID NUMBER,
    EMP_NAME VARCHAR2(30),
    EMP_TITLE VARCHAR2(20)
);
INSERT INTO EMP01
VALUES(999,'������','��ǥ�̻�');
SELECT * FROM EMP01;

INSERT INTO EMP01(
    SELECT EMP_ID, EMP_NAME, DEPT_TITLE
    FROM EMPLOYEE
    JOIN DEPARTMENT ON(DEPT_ID=DEPT_CODE)
);
--���������� �̿��ؼ� ���� �������� VALUES���� ����!
CREATE TABLE EMP_HIRE_DATE(
    EMP_ID NUMBER,
    EMP_NAME VARCHAR2(30),
    HIRE_DATE DATE
);
CREATE TABLE EMP_MANAGER(
    EMP_ID NUMBER,
    EMP_NAME VARCHAR2(30),
    MANAGER_ID NUMBER
);
SELECT * FROM EMP_HIRE_DATE;
SELECT * FROM EMP_MANAGER;
INSERT INTO EMP_HIRE_DATE(
    SELECT EMP_ID, EMP_NAME, HIRE_DATE
    FROM EMPLOYEE
);
INSERT INTO EMP_MANAGER(
    SELECT EMP_ID, EMP_NAME, MANAGER_ID
    FROM EMPLOYEE
);
ROLLBACK;--�ǵ�����
SELECT * FROM EMPLOYEE;
--INSERT ALL�� Ȱ���ؼ� �ΰ��� ���̺� �ѹ��� �����͸� ����~
INSERT ALL 
INTO EMP_HIRE_DATE VALUES(EMP_ID,EMP_NAME,HIRE_DATE)
INTO EMP_MANAGER VALUES(EMP_ID, EMP_NAME, MANAGER_ID)
SELECT EMP_ID, EMP_NAME, HIRE_DATE, MANAGER_ID
FROM EMPLOYEE;

SELECT * FROM EMP_HIRE_DATE;
SELECT * FROM EMP_MANAGER;
--INSERT ALL���� ���̺� �ѹ��� ���� �����ϴ°�
--���� ������ ���ǿ� ���� ���� ������ ����
--CASE�� �� ����� WHEN����ؼ� ó����
CREATE TABLE EMP_OLD(
    EMP_ID NUMBER,
    EMP_NAME VARCHAR2(30),
    HIRE_DATE DATE,
    SALARY NUMBER
);
CREATE TABLE EMP_NEW(
    EMP_ID NUMBER,
    EMP_NAME VARCHAR2(30),
    HIRE_DATE DATE,
    SALARY NUMBER
);
SELECT * FROM EMP_OLD;
SELECT * FROM EMP_NEW;
--OLD EMPLOYEE���� 00.01.01 ������ �Ի��� ���
--NEW EMPLOYEE���� 00.01.01 ���Ŀ� �Ի��� ���
INSERT INTO EMP_OLD(
     SELECT EMP_ID,EMP_NAME, HIRE_DATE, SALARY
     FROM EMPLOYEE WHERE HIRE_DATE<'00/01/01'
);
SELECT * FROM EMP_OLD;
DELETE FROM EMP_OLD;
INSERT ALL
WHEN HIRE_DATE<'00/01/01' THEN
INTO EMP_OLD VALUES(EMP_ID, EMP_NAME, HIRE_DATE, SALARY)
WHEN HIRE_DATE>='00/01/01' THEN
INTO EMP_NEW VALUES(EMP_ID, EMP_NAME, HIRE_DATE, SALARY)
SELECT EMP_ID, EMP_NAME, HIRE_DATE, SALARY 
FROM EMPLOYEE;
SELECT * FROM EMP_OLD;
SELECT * FROM EMP_NEW;

--UPDATE : ���̺��� ������ �����ϴ°�
--���
--UPDATE ���̺��
--SET ������÷�=����ɰ�
--WHERE ����
CREATE TABLE COPY_DEPT
AS SELECT * FROM DEPARTMENT;
SELECT * FROM COPY_DEPT;
UPDATE COPY_DEPT
SET DEPT_TITLE='������ȹ��', LOCATION_ID='L1'
WHERE DEPT_ID='D2';

ROLLBACK;
--UPDATE���� ���������� �̿��� �� ����
CREATE TABLE EMP_SALARY
AS SELECT EMP_ID, EMP_NAME, SALARY, BONUS 
    FROM EMPLOYEE;
    
SELECT * FROM EMP_SALARY;
UPDATE EMP_SALARY
SET BONUS=(SELECT BONUS 
            FROM EMP_SALARY 
            WHERE EMP_NAME='������')
WHERE EMP_ID=(SELECT EMP_ID 
                FROM EMP_SALARY 
                WHERE EMP_NAME='������');
            
select * from department;


CREATE TABLE EMP_SALARY1
AS SELECT EMP_ID, EMP_NAME,dept_code, SALARY, BONUS 
    FROM EMPLOYEE;
--�μ��� ȸ��������� ������� ���ʽ��� 0.4�� �����ϼ���.
update emp_salary1
set bonus=0.4
where dept_code=(select  dept_id from department
                    where dept_title='ȸ�������');
                    
select * from emp_salary1 where dept_code='D2';

--�μ��� �ѹ��λ���� ������ 100000���� ������
--�ݿ��غ�����~! 
select * from emp_salary1 where dept_code='D9';
update emp_salary1
set salary=salary+100000
where dept_code=(select dept_id from department where dept_title='�ѹ���');

select * from emp_salary1 where emp_name in ('�����','����');

update emp_salary1
set (salary, bonus) = (select salary, bonus from employee
                        where emp_name='�����')
where emp_name='����';                    

select * from employee
left join department on dept_code=dept_id
join location on location_id=local_code;

-- �ٹ������� ������ �༮���� ���ʽ��� 0.5
create table emp_local
as select * from employee;

update emp_local
set bonus=0.5
where dept_code=(select dept_id from department
                    join location on location_id=local_code
                    where local_name='EU'
                    );
select * from emp_local where dept_code='D8';                    

--merge : ���� �ΰ��� ���̺��� ��ġ�� �۾�
--merge ���
--MERGE INTO ���̺�� USING ���������̺�� ON ������ ���ذ�
--WHEN MATCHED THEN
--UPDATE SET
--������Ʈ ����
--WHEN NOT MATCHED THEN
--�μ�Ʈ ����
CREATE TABLE MERGE_TEST
AS SELECT * FROM EMPLOYEE;
CREATE TABLE MERGE_TEST2
AS SELECT * FROM EMPLOYEE
    WHERE DEPT_CODE='D8';
SELECT * FROM MERGE_TEST;    
SELECT * FROM MERGE_TEST2;    

INSERT INTO MERGE_TEST2
VALUES(998,'������','921101-1234567','nice435555@gmail.com',
    '01094982991','D2','J2','S2',100,0.1,NULL,SYSDATE,DEFAULT,DEFAULT);

UPDATE MERGE_TEST2
SET SALARY =10,BONUS=0
WHERE DEPT_CODE='D8';
COMMIT;

SELECT * FROM MERGE_TEST2;

MERGE INTO MERGE_TEST USING MERGE_TEST2 
    ON(MERGE_TEST.EMP_ID=MERGE_TEST2.EMP_ID)
WHEN MATCHED THEN
UPDATE SET
MERGE_TEST.SALARY=MERGE_TEST2.SALARY,
MERGE_TEST.BONUS=MERGE_TEST2.BONUS
WHEN NOT MATCHED THEN
INSERT VALUES(MERGE_TEST2.EMP_ID,MERGE_TEST2.EMP_NAME,MERGE_TEST2.EMP_NO,
MERGE_TEST2.EMAIL, MERGE_TEST2.PHONE,MERGE_TEST2.DEPT_CODE,MERGE_TEST2.JOB_CODE,
MERGE_TEST2.SAL_LEVEL,MERGE_TEST2.SALARY,MERGE_TEST2.BONUS,MERGE_TEST2.MANAGER_ID,
MERGE_TEST2.HIRE_DATE,MERGE_TEST2.ENT_DATE,MERGE_TEST2.ENT_YN);

SELECT * FROM MERGE_TEST;


SELECT * FROM MERGE_TEST;
DELETE FROM MERGE_TEST
WHERE EMP_NAME='������';
DELETE FROM MERGE_TEST;
COMMIT;
SELECT * FROM DEPARTMENT;
DELETE FROM DEPARTMENT 
WHERE DEPT_ID='D1';
ROLLBACK;

ALTER TABLE EMPLOYEE ADD 
FOREIGN KEY(DEPT_CODE) REFERENCES DEPARTMENT(DEPT_ID);
SELECT * FROM DEPARTMENT;

INSERT INTO EMPLOYEE(EMP_ID, EMP_NAME,EMP_NO,SAL_LEVEL, DEPT_CODE, JOB_CODE)
VALUES(997,'�����','940207-1234561','S2','D1','J2');

DELETE FROM DEPARTMENT WHERE DEPT_ID='D1';
SELECT * FROM EMPLOYEE WHERE DEPT_CODE='D4';
DELETE FROM DEPARTMENT WHERE DEPT_ID='D4';

DELETE FROM MERGE_TEST2;
ROLLBACK;
SELECT * FROM MERGE_TEST2;
TRUNCATE TABLE MERGE_TEST2;
ROLLBACK;


--DDL : ������Ʈ���� ����� ���
-- CREATE, ALTER, DROP 
--CREATE : ������Ʈ�� ����
--ALTER : ������Ʈ�� ����
--DROP : ������Ʈ�� ����
--������Ʈ : ���̺�, VIEW, INDEX, ������, USER... ��
--CREATE : CREATE ������Ʈ���� ������Ʈ�Ǹ�Ī
--���̺� ����
CREATE TABLE MEMBER1(
    MEM_NAME VARCHAR2(20),
    MEM_PASSWARD VARCHAR2(30),
    MEM_ID VARCHAR2(20)
);

SELECT * FROM MEMBER1;
--���̺� �ּ��ޱ�(����)
COMMENT ON TABLE MEMBER1 IS '�׽�Ʈ�� ȸ������';
SELECT * FROM ALL_TAB_COMMENTS WHERE TABLE_NAME='MEMBER1';
COMMENT ON COLUMN MEMBER1.MEM_NAME IS 'ȸ���̸�';
COMMENT ON COLUMN MEMBER1.MEM_ID IS 'ȸ�����̵�';
COMMENT ON COLUMN MEMBER1.MEM_PASSWARD IS 'ȸ����й�ȣ';

SELECT * FROM USER_COL_COMMENTS WHERE TABLE_NAME='MEMBER1';

--���̺��� �������� Ȯ���ϱ�
DESC USER_CONSTRAINTS;
DESC USER_CONS_COLUMNS;

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE
FROM USER_CONSTRAINTS
WHERE TABLE_NAME='EMPLOYEE';
--TYPE : C -> CHECK �Ǵ� NOT NULL / R-> FOREIGN KEY
--       P -> PRIMARY KEY / U -> UNIQUE

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE
FROM USER_CONSTRAINTS
WHERE TABLE_NAME='MEMBER1';

CREATE TABLE MEMBER2 (
    MEM_NAME VARCHAR2(20) NOT NULL,
    MEM_ID VARCHAR2(10) UNIQUE,
    MEM_PASSWORD VARCHAR2(20)
);
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE
FROM USER_CONSTRAINTS
WHERE TABLE_NAME='MEMBER2';
-- NOT NULL��������
-- Ư���÷��� ������ �����͸� �־���Ҷ� �����ϴ� ��������
-- NULL�� ���� ������ �������� ������ NULL������ ���.

CREATE TABLE USER_NCONS(
    USERNO NUMBER,
    USER_ID VARCHAR2(20),
    USER_PW VARCHAR2(30),
    USER_NAME VARCHAR2(20),
    GENDER VARCHAR2(30),
    PHONE VARCHAR2(30),
    EMAIL VARCHAR2(50)
);
INSERT INTO USER_NCONS VALUES(NULL,NULL,NULL,NULL,NULL,NULL,NULL);
SELECT * FROM USER_NCONS;
--ID, PW, NO���� ���� �ݵ�� �ʿ��ϱ� ������
--NULL���� �� ������ �����غ���
CREATE TABLE USER_CONS(
    USERNO NUMBER NOT NULL,
    USER_ID VARCHAR2(20) NOT NULL,
    USER_PW VARCHAR2(30) NOT NULL,
    USER_NAME VARCHAR2(20),
    GENDER VARCHAR2(30),
    PHONE VARCHAR2(30),
    EMAIL VARCHAR2(50)
);
INSERT INTO USER_CONS VALUES(1,'ADMIN','1234',NULL,NULL,NULL,NULL);
INSERT INTO USER_CONS(USER_ID,USER_PW) 
VALUES ('USER01','USER01');
INSERT INTO USER_CONS(USER_ID,USER_PW,USERNO)
VALUES('USER01','USER01',002);
--UNIQUE : ������ �÷��� �ߺ��� �����Ͱ� ���� �ʰ� ����
CREATE TABLE USER_NUNI(
    USERNO NUMBER NOT NULL,
    USER_ID VARCHAR2(20) NOT NULL,
    USER_PW VARCHAR2(30) NOT NULL,
    USER_NAME VARCHAR2(20),
    GENDER VARCHAR2(30),
    PHONE VARCHAR2(30),
    EMAIL VARCHAR2(50)
);
INSERT INTO USER_NUNI VALUES(1,'ADMIN','1234',
'������','��','01036446259','PRINCE0324@NAVER.COM');
INSERT INTO USER_NUNI VALUES(2,'ADMIN','1234',
'������2','��','01036446259','PRINCE0324@NAVER.COM');
SELECT * FROM USER_NUNI;

CREATE TABLE USER_UNI3(
    USERNO NUMBER NOT NULL,
    USER_ID VARCHAR2(20) NOT NULL,
    USER_PW VARCHAR2(30) NOT NULL,
    USER_NAME VARCHAR2(20),
    GENDER VARCHAR2(30),
    PHONE VARCHAR2(30),
    EMAIL VARCHAR2(50),
    UNIQUE(USER_ID),PRIMARY KEY(USERNO)
);
INSERT INTO USER_UNI2 VALUES(1,'ADMIN','1234',
'������','��','01036446259','PRINCE0324@NAVER.COM');
INSERT INTO USER_UNI2 VALUES(2,'USER01','1234',
'������2','��','01036446259','PRINCE0324@NAVER.COM');
INSERT INTO USER_UNI2 VALUES(3,'USER01','1234',
'������2','��','01036446259','PRINCE0324@NAVER.COM');

SELECT * FROM USER_UNI;

CREATE TABLE CONS_UNI_GROUP(
    USER_NO NUMBER,
    USER_ID VARCHAR2(20),
    USER_PW VARCHAR2(20),
    USER_NAME VARCHAR2(30),
    UNIQUE(USER_NO,USER_ID)
);
INSERT INTO CONS_UNI_GROUP 
VALUES(1,'ADMIN','1234','������');
INSERT INTO CONS_UNI_GROUP 
VALUES(2,'ADMIN','1234','������');
INSERT INTO CONS_UNI_GROUP 
VALUES(1,'USER01','1234','������');
INSERT INTO CONS_UNI_GROUP 
VALUES(2,'ADMIN','1234','������');

SELECT * FROM CONS_UNI_GROUP;

--PRIMARY KEY : ���̺��� ������(��)������ �� �ִ� �ĺ���
-- NOT NULL��������, UNOIQUE���������� ������
-- ���̺� �Ѱ���(�Ѱ��÷�)�� ������ �� ����
-- �⺻������ ���̺�� �����ϴ� ���� ����
-- PRIMARY KEY�� �����ϸ� �ڵ����� �� �÷��� �⺻ �ε����� ������
-- �÷�����, ���̺������� ���� ����
CREATE TABLE USER_PRIMARY(
    USERNO NUMBER PRIMARY KEY,
    USER_ID VARCHAR2(20),
    USER_PW VARCHAR2(30),
    USER_NAME VARCHAR2(20),
    GENDER VARCHAR2(30),
    PHONE VARCHAR2(30),
    EMAIL VARCHAR2(50)
);
INSERT INTO USER_PRIMARY 
VALUES(1,'ADMIN','1234','������','��','0103644','PRIN');
INSERT INTO USER_PRIMARY 
VALUES(2,'USER01','5555','�����','��','0103644','PRIN');
INSERT INTO USER_PRIMARY 
VALUES(NULL,'USER01','5555','�����','��','0103644','PRIN');
INSERT INTO USER_PRIMARY 
VALUES(1,'USER01','5555','�����','��','0103644','PRIN');

CREATE TABLE USER_PRIMARY_TB(
    USERNO NUMBER,
    USER_ID VARCHAR2(20),
    USER_PW VARCHAR2(30),
    USER_NAME VARCHAR2(20),
    GENDER VARCHAR2(30),
    PHONE VARCHAR2(30),
    EMAIL VARCHAR2(50),
    PRIMARY KEY(USERNO)
);
INSERT INTO USER_PRIMARY_TB
VALUES(1,'USER02','������','111','��','0101','P');
INSERT INTO USER_PRIMARY_TB
VALUES(1,'USER03','������','111','��','0101','P');

--����Ű�� �����÷��� ��� PRIMARY KEY�� ��� ����
--����Ű�� �����ÿ��� ���̺������� ����
CREATE TABLE TBL_COMPOSITE_KEY(
    PROC_NO VARCHAR2(20),
    USER_ID VARCHAR2(20),
    ORDER_DATE DATE,
    ORDER_NUM NUMBER,
    PRIMARY KEY(PROC_NO,USER_ID,ORDER_DATE)
);
INSERT INTO TBL_COMPOSITE_KEY
VALUES('P111','USER01',SYSDATE,10);
INSERT INTO TBL_COMPOSITE_KEY
VALUES('P112','USER01','19/06/25',11);
SELECT * FROM TBL_COMPOSITE_KEY;

--FOREIGN KEY : �ܺ��� ���̺��� ���� �������°�!
CREATE TABLE USER_GRADE(
    GRADE_NO NUMBER PRIMARY KEY,
    GRADE_NAME VARCHAR2(10)
);
INSERT INTO USER_GRADE VALUES(10,'�Ϲ�');
INSERT INTO USER_GRADE VALUES(20,'�ǹ�');
INSERT INTO USER_GRADE VALUES(30,'���');
SELECT * FROM USER_GRADE;

CREATE TABLE MEMBER_FOREIGN(
    USER_NO NUMBER PRIMARY KEY,
    USER_ID VARCHAR2(20) NOT NULL UNIQUE,
    USER_PW VARCHAR2(20) NOT NULL,
    USER_NAME VARCHAR2(20),
    GRADE_NO NUMBER,
    FOREIGN KEY(GRADE_NO) REFERENCES USER_GRADE(GRADE_NO)
);
--�μ�Ʈ�� ���߿�
SELECT * FROM USER_GRADE;
INSERT INTO MEMBER_FOREIGN
VALUES(1,'USER01','USER01','�����',10);
SELECT * FROM MEMBER_FOREIGN;

CREATE TABLE MEMBER_FOREIGN1(
    USER_NO NUMBER PRIMARY KEY,
    USER_ID VARCHAR2(20) NOT NULL UNIQUE,
    USER_PW VARCHAR2(20) NOT NULL,
    USER_NAME VARCHAR2(20) REFERENCES USER_GRADE(),
    GRADE_NO NUMBER,
    FOREIGN KEY(GRADE_NO) REFERENCES USER_GRADE
);
INSERT INTO MEMBER_FOREIGN1
VALUES(1,'USER01','USER01','�����',30);

CREATE TABLE USER_TBL(
    USER_ID VARCHAR2(20) PRIMARY KEY,
    USER_PW VARCHAR2(20) NOT NULL,
    USER_NAME VARCHAR2(20) NOT NULL,
    EMAIL VARCHAR2(30) NOT NULL
);
INSERT INTO USER_TBL 
VALUES('USER01','USER01','������','AAA@KH.COM');
INSERT INTO USER_TBL 
VALUES('USER02','USER02','����ö','BBB@KH.COM');
INSERT INTO USER_TBL 
VALUES('USER03','USER03','������','CCC@KH.COM');
SELECT * FROM USER_TBL;

CREATE TABLE PRODUCT_TBL(
    PRO_ID VARCHAR2(20) PRIMARY KEY,
    PRO_NAME VARCHAR2(20),
    PRICE NUMBER
);
INSERT INTO PRODUCT_TBL VALUES('F01','ħ��',1000000);
INSERT INTO PRODUCT_TBL VALUES('E01','��ǻ��',1200000);
INSERT INTO PRODUCT_TBL VALUES('E02','������',2000000);
SELECT * FROM PRODUCT_TBL;

create table shop(
    user_id varchar2(20),
    pro_id varchar2(20),
    purchaseDay date
);

select * from shop;
select * 
from shop s left join user_tbl u on s.user_id=u.user_id;
select * from user_tbl;

create table shop2(
    user_id varchar2(20) NOT NULL references user_tbl(user_id),
    pro_id varchar2(20) NOT NULL references product_tbl(pro_id),
    purchaseDay date
);

insert into shop1 values('user03','e01',sysdate);
insert into shop1 values('USER03','E01',sysdate);
insert into shop1 values(NULL,NULL,sysdate);

SELECT * FROM SHOP1 S
JOIN USER_TBL U ON S.USER_ID=U.USER_ID;

SELECT * FROM SHOP1;
DELETE FROM USER_TBL WHERE USER_ID='USER01';

--����Ű�� ������ ���� �ɼ��� ������ �� ����
-- ON DELETE �ɼ� : SET NULL : �ʴ� NULL�� �ٲ��~
--                  CASCADE : �θ��������� �ʵ� �����!

SELECT * FROM USER_TBL;

DROP TABLE SHOP3;
create table shop3(
    user_id varchar2(20) references user_tbl(user_id) ON DELETE CASCADE,
    pro_id varchar2(20) references product_tbl(pro_id) ON DELETE CASCADE,
    purchaseDay date
);
INSERT INTO USER_TBL VALUES('USER01','123','�����ؿ�','JIJON@D');
INSERT INTO SHOP3 VALUES('USER01','E02',SYSDATE);
SELECT * FROM SHOP3;
DELETE FROM USER_TBL WHERE USER_ID='USER01';
SELECT * FROM USER_TBL;

--CHECK�������� : �����ͷ� �����°��� Ư�������� �����ϴ°�

CREATE TABLE CHECK_TBL(
 USERNAME VARCHAR2(20),
 GENDER VARCHAR2(10) CHECK(GENDER IN ('��','��','��'))
 );
INSERT INTO CHECK_TBL VALUES('������','����');
INSERT INTO CHECK_TBL VALUES('������','��');

--subquery�� �̿��� create table 

create table employee_tbl
as select * from employee
join department on dept_id=dept_code
join job using(job_code)
join location on local_code=location_id;
select emp_name,dept_title,job_name from employee_tbl;

--�÷��� �����ؼ� ���̺� ����
create table temp
as select emp_name, salary, bonus
   from employee where 1=0;
   
select * from temp;
--alter table : ���̺� ������ �÷� �߰�,���� ���������� �߰�/����
--���̺� �÷��߰��ϱ�
select * from user_tbl;
--add�ɼǻ��
alter table user_tbl add(age number);
--user_tbl �ּ� �߰�
alter table user_tbl add(address varchar2(30));

--�÷��� ���� �⺻���� ����
create table defaulttest(
    age number default 10
);
insert into defaulttest values(19);
insert into defaulttest values(default);
select * from defaulttest;
--�÷��� �߰��ϸ鼭 �������� ����
alter table user_tbl 
add(national varchar2(20)default '�ѱ�');
alter table user_tbl 
add(user_no varchar2(20)unique);
--�����߰�
alter table user_tbl
add(gender varchar2(10) default '��' check(gender in('��','��')));
select * from user_tbl;

--�������� �߰�
create table add_cons(
    emp_no number,
    emp_id varchar2(20),
    emp_pw varchar2(20)
);
alter table add_cons
add constraint pk_add_cons primary key(emp_no);
--emp_id unique�������� ����!
alter table add_cons
add constraint uni_add_cons_id unique(emp_id);
--emp_pw not null �������� ����
alter table add_cons
add constraint not_pw not null;
--null <-- null able ���������� null �̹� ������ �Ǿ� ����
--�߰��ϴ� ���� �ƴ϶� ���� �̹� ������ null->not null�� ����!
alter table add_cons
modify emp_pw constraint not_null_pw not null;
--�÷��� ������ ����(�ڷ���, ����)
alter table add_cons
modify emp_no varchar2(20);
desc add_cons;
--emp_id ���̸� 100���� ����
alter table add_cons
modify emp_id varchar2(100);

--�÷������ϱ�
--drop column �÷���
alter table add_cons
drop column emp_pw;
select * from add_cons;
--�������� ����
--drop constraint �������Ǹ�
select * from employee;
alter table employee
drop constraint SYS_C007037;
--�÷���Ī�� ����
--alter table ���̺�� rename column ��� to ���氪
alter table add_cons rename column emp_no to no;
select * from add_cons;

--���̺� �̸� �ٲٱ�
alter table add_cons rename to ah_training;
select * from add_cons;
select * from ah_training;
rename ah_training to add_cons;

--���̺� ����~
drop table add_cons;

--DCL(Data Control Language)
--�����Ϳ� ����, ����, ���� �� �����͸� �����ϴ� ����� ����
--grant(���Ѻο�), revoke(����ȸ��) commit(������Ȯ��), rollback(�ǵ�����)
--grant
--grant ���Ѹ�,(select, update, delete...��)||role TO ��� [option]
-- * with admin option 
select * from DBA_sys_PRIVS
where GRANTEE='KH';
select * from DBA_role_PRIVS
where GRANTEE='KH';

grant select, update on scott.emp to kh;

select * from scott.emp;
update scott.emp set comm=30 where empno=7934;

select * from USER_sys_PRIVS;

--������ ȸ��
revoke update on scott.emp from kh;--system��������
update scott.emp set comm=30;


--role �ο��� ���Ѻ���
select * from  dba_sys_privs
where grantee in('CONNECT','RESOURCE');

--����Ű
DROP TABLE USER1;
CREATE TABLE USER1(
    USER_ID VARCHAR2(20) PRIMARY KEY,
    USER_PW VARCHAR2(20) NOT NULL
);
INSERT INTO USER1 VALUES('ADMIN','1234');
INSERT INTO USER1 VALUES('USER01','1234');
INSERT INTO USER1 VALUES('USER02','1234');
CREATE TABLE BOARD1(
    TITLE VARCHAR2(100),
    COMMENTS VARCHAR2(500),
    WRITER VARCHAR2(20) REFERENCES USER1(USER_ID) ON DELETE CASCADE
);
INSERT INTO BOARD1 VALUES('����','��������','USER01');
INSERT INTO BOARD1 VALUES('����','���ÿ���','USER02');
INSERT INTO BOARD1 VALUES('��ö','��ö��ö','USER03');
SELECT * FROM BOARD1;
DELETE FROM USER1 WHERE USER_ID='USER01';



----------------------
-- VIEW
----------------------
/*
    view : select�� ������ ����� ȭ�鿡 ��� ��ü
        select ���� ��ü�� �����Ͽ�
        ȣ���Ҷ����� �ش����� �����Ͽ� ����� �����ش�.
        
        ���������� �����͸� ��� ���� �ʴ�.
        �����ϰ� ���� ���� ���� ��ȸ�� ����.
        
        �˻��� ȿ���� : ���� ã���� �ϴ� ������ ��ȸ�Ҽ� �ִ�.
        ���ȼ� : ���� ���̺��� ������ ����� �ִ�.
*/


-- View ����
-- CREATE OR REPLACE VIEW ���̸�[�÷� ��Ī, �ķ� ��Ī2, ....]
-- AS 
--  SELECT EMP_ID, EMP_NAME, DEPTE_COD
--  FROM EMPOYEE;

-- SELECT * FROM ���̸�;

-- �� ������ �ο�(SYSTEM ��������)
GRANT CREATE VIEW TO KH;

--view Ȯ�� ( view data dictionary ) 
SELECT * FROM USER_VIEWS;

--VIEW ����(EMP_NO, EMP_NAME, EMAIL, PHONE )
CREATE OR REPLACE VIEW VIEW_EMP
AS
    SELECT EMP_ID, EMP_NO, EMP_NAME,EMAIL, PHONE, JOB_CODE, SAL_LEVEL
    FROM EMPLOYEE;

--VIEW ������ Ȯ��
SELECT * FROM VIEW_EMP;
SELECT * FROM USER_VIEWS WHERE VIEW_NAME = 'VIEW_EMP';

--�ǽ� 1.
-- ���, �̸�, ���޸�, �μ���, �ٹ������� ��ȸ�ϰ�
-- �� ����� V_RESULTSET_EMP ��� �並 �����
-- �� �並 ���� ����� Ȯ���غ��ô�.

--1. ������ ���� �ۼ�
SELECT EMP_ID, EMP_NAME, JOB_NAME, DEPT_TITLE, LOCAL_NAME
FROM EMPLOYEE
LEFT JOIN JOB USING(JOB_CODE)
LEFT JOIN DEPARTMENT ON ( DEPT_CODE = DEPT_ID )
LEFT JOIN LOCATION ON ( LOCATION_ID = LOCAL_CODE );

--2. �信 ����
CREATE OR REPLACE VIEW 
        V_RESULTSET_EMP(���, �̸�, ���޸�, �μ���, �ٹ���)
AS
    SELECT EMP_ID, EMP_NAME, JOB_NAME, DEPT_TITLE, LOCAL_NAME
    FROM EMPLOYEE
    LEFT JOIN JOB USING(JOB_CODE)
    LEFT JOIN DEPARTMENT ON ( DEPT_CODE = DEPT_ID )
    LEFT JOIN LOCATION ON ( LOCATION_ID = LOCAL_CODE );
--3. �並 ����
SELECT * FROM V_RESULTSET_EMP;

-- �ǽ�2. ������� VIEW�� Ȱ���ؼ�
--      ����� '205'���� ���� ���� ��ȸ�� �غ���
SELECT * FROM V_RESULTSET_EMP WHERE ��� = '205';

-- TABLE ����
UPDATE EMPLOYEE SET EMP_NAME= '���߾�' 
WHERE EMP_ID='205';

SELECT * FROM V_RESULTSET_EMP
WHERE ���='205';

--View Ư¡
--1. �÷��� �ƴ϶� ������� ó���� view ������ �����ϴ�.
CREATE OR REPLACE VIEW VIEW_EMP_SALARY
AS
    SELECT EMP_NAME �����, 
        ( SALARY + ( SALARY*NVL(BONUS,0)))*12 AS ����
    FROM EMPLOYEE;

--VIEW Ȯ��
SELECT * FROM VIEW_EMP_SALARY;

-- 2. JOIN�� Ȱ���� VIEW�� ���� ����
--����
-- EMPLOYEE ���̺��� ���, ����̸�, ����, �μ��� 
-- �÷�(����: NULL -> ���� )�� ���� VIEW_EMP_READ�� �����
-- Ȯ���غ���.
CREATE OR REPLACE VIEW VIEW_EMP_READ
AS 
    SELECT EMP_ID ���, EMP_NAME �����, NVL(JOB_NAME,'����') ����,
        DEPT_TITLE �μ���
    FROM EMPLOYEE
    LEFT JOIN JOB USING(JOB_CODE) --EMPLOYEE�� JOB���� JOIN 
    LEFT JOIN DEPARTMENT 
        ON EMPLOYEE.DEPT_CODE = DEPARTMENT.DEPT_ID;
    
SELECT * FROM VIEW_EMP_READ;

-- VIEW�� DML ��� 
-- ������ �並 ������ DML ���� ����� �����ϴ�.
-- DML ������ ������ �� ���̺� ������ �����ҽ� ���� ���̺� ����

-- VIEW_EMP -> EMP_ID, EMP_NAME, EMAIL, PHONE, JOB_CODE, SAL_LEVEL


SELECT * FROM VIEW_EMP;

INSERT INTO VIEW_EMP VALUES('500', '790626-1034555', '������', 
    'kang@naver.com','01012345678','D5','S3');

--������ ����/����
UPDATE VIEW_EMP SET EMP_NO='881123-2000123' WHERE EMP_ID=500;
DELETE FROM VIEW_EMP WHERE EMP_ID='500';


--�信���� ������ �߰�, ����, ������ �����ϴ�.
--���� 6���� ��Ȳ������ �Ұ����ϴ�.
--1. �信 ���ǵ��� ���� �÷��� ������ ���
--2. �信�� ������ �ʴ� �÷���
--     NOT NULL ���������� ���� �÷��� ���� ���
--3. ��������� ����� �÷��� ���� ���
--4. JOIN�� ���� ���� ���̺��� ������ ���
--      -��ȸ�� ���̺��� �����߿� �⺻Ű�� ��Ұ� ���Ѱ�
--       �� ��쿡�� ������ �����ϴ�.
--5. DISTINCT�� ����Ͽ� ������������ ������ 
--   ��Ȯ���� ���� ���
--6. �׷��Լ��� GROUP BY ������ ����ؼ� ��ȸ�� ������ ��� 

-- 1.�信 ���ǵǾ� ���� ���� �÷��� ������ ���
CREATE OR REPLACE VIEW V_JOB
AS
    SELECT JOB_CODE FROM JOB;

SELECT * FROM V_JOB;

--00913. 00000 -  "too many values"
INSERT INTO V_JOB VALUES('J8','����');

--00904. 00000 -  "%s: invalid identifier"
UPDATE V_JOB SET JOB_NAME = '����'
    WHERE JOB_CODE='J7';

-- 3. ���ǥ���� ���
CREATE OR REPLACE VIEW V_EMP_SAL
AS
    SELECT EMP_ID, EMP_NAME, SALARY,
            (SALARY + SALARY*NVL(BONUS,0))*12 ����
    FROM EMPLOYEE;
    
SELECT * FROM V_EMP_SAL;

01733. 00000 -  "virtual column not allowed here"
INSERT INTO V_EMP_SAL 
    VALUES(901, '���︸', 3000000, 40000000);


--4. JOIN�� ���ؼ� VIEW�� ������ �����ϴ� ���
CREATE OR REPLACE VIEW V_JOIN_EMP
AS
    SELECT EMP_ID, EMP_NAME, DEPT_TITLE
    FROM EMPLOYEE
    LEFT JOIN DEPARTMENT ON ( DEPT_CODE = DEPT_ID );

SELECT * FROM V_JOIN_EMP;

--ORA-01776: cannot modify more than one base table through a join view
INSERT INTO V_JOIN_EMP VALUES(911,'������','���������');

--ORA-01779: cannot modify a column which maps to a non key-preserved table
UPDATE V_JOIN_EMP SET DEPT_TITLE = '���������'
        WHERE EMP_ID=218;

--4-1. JOIN ���ؼ� ���� ���̺��� ������ ��� / ������ ����
DELETE FROM V_JOIN_EMP
    WHERE DEPT_TITLE='���������';

SELECT * FROM V_JOIN_EMP;
SELECT * FROM DEPARTMENT;
SELECT * FROM EMPLOYEE;

ROLLBACK;

--5. DISTINCT�� ��� �ϴ� ���
CREATE OR REPLACE VIEW V_DEPT_EMP
AS 
    SELECT DISTINCT DEPT_CODE
    FROM EMPLOYEE;
    
SELECT * FROM V_DEPT_EMP;

--ORA-01732: data manipulation operation not legal on this view
INSERT INTO V_DEPT_EMP VALUES('D0');

--ORA-01732: data manipulation operation not legal on this view
DELETE FROM V_DEPT_EMP WHERE DEPT_CODE='D9';



--6. �׷��Լ�, GROUP BY
CREATE OR REPLACE VIEW V_GROUP_DEPT
AS
    SELECT DEPT_CODE, SUM(SALARY) �հ�, TRUNC(AVG(SALARY),-4) ���
    FROM EMPLOYEE
    GROUP BY DEPT_CODE;

SELECT * FROM V_GROUP_DEPT;

--ORA-01733: virtual column not allowed here
INSERT INTO V_GROUP_DEPT VALUES('D10',50000,50000);

--ORA-01732: data manipulation operation not legal on this view
UPDATE V_GROUP_DEPT SET DEPT_CODE='D10'
WHERE DEPT_CODE='D5';

--ORA-01732: data manipulation operation not legal on this view
DELETE FROM V_GROUP_DEPT WHERE DEPT_CODE='D6';

--VIEW ���� �� ������ �� �ִ� �ɼ�
-- OR REPLACE : ������ �ִ� ������ �̸��� �䰡 ���� ��쿡
--              �ش�並 ������ , ���ٸ� ���� ����ڴ�.
-- FORCE / NO FORCE : ���������� ���� ���̺��� �������� �ʾƵ�
--                  �並 ������ ������ ������ ����
-- WITH CHECK / READ ONLY :
--      CHECK : ������ �÷��� ���� �ٲ��� ���ϰ� ���� ����
--      READ ONLY : �信 ��� �÷��� �並 ���ؼ� ��������
--        �������� ���ϰ� ���� ����

-- FORCE : �������� �ʴ� ���̺� �並 ������ ����
CREATE OR REPLACE FORCE VIEW V_EMP
AS
    SELECT T_CODE, T_NAME, T_CONTENT
    FROM TEST_TABLE;

SELECT * FROM V_EMP;

SELECT * FROM USER_VIEWS;

DROP VIEW V_EMP;

--NO FORECE : ���� �����Ϸ��� ���� ���̺��� �������� ������
--              �並 �������� �ʰڴ�.
CREATE OR REPLACE /*NOFORCE*/ VIEW V_EMP
AS
    SELECT T_CODE, T_NAME, T_CONTENT
    FROM TEST_TABLE;

-- �⺻�� NOFORCE

-- WITH CHECK : �信 �����ϴ� �÷��� �߰��ϰų� �������� 
--              ���ϰ� ���� �ɼ�
CREATE OR REPLACE VIEW V_EMP
AS
    SELECT * FROM EMPLOYEE
    WITH CHECK OPTION;

SELECT * FROM V_EMP;

--ORA-32575: Explicit column default is not supported for modifying views
INSERT INTO V_EMP 
    VALUES( 810, '������', '101010-1234567', 'ryu@kh.or.kr', 
        '01012344321','D1', 'J7','S1', 8000000, 0.1, 
            200, SYSDATE, NULL, DEFAULT );

--DELETE ����
DELETE FROM V_EMP
    WHERE EMP_ID = '200';

ROLLBACK;

-- WITH READ ONLY : ������ �Է�, ����, ���� ��� ���� �ɼ�
CREATE OR REPLACE VIEW V_EMP
AS
    SELECT * FROM EMPLOYEE
    WITH READ ONLY;

SELECT * FROM V_EMP;

--ORA-32575: Explicit column default is not supported for modifying views
INSERT INTO V_EMP 
    VALUES( 810, '������', '101010-1234567', 'ryu@kh.or.kr', 
        '01012344321','D1', 'J7','S1', 8000000, 0.1, 
            200, SYSDATE, NULL, DEFAULT );

--ORA-42399: cannot perform a DML operation on a read-only view
DELETE FROM V_EMP WHERE EMP_ID='200';




-----------------------
--SEQUENCE
-----------------------
-- 1,2,3,4,5 ..... �̷��� ��������
-- ���� �����͸� �ڵ����� ī��Ʈ�ϴ� ��ü

/*
    CREATE SEQUENCE ��������
    [INCREMENT BY ����] : �������� ������ġ,������ 1������
        --INCREMENT BY 5 -> 5�� ����
        --INCREMENT BY -5 -> 5�� ����
    [START WITH ����] : ���۰�, �����ϸ� 1����
    [MAXVALUE ���� | NOMAXVALUE ] : �߻���ų ���� �ִ밪 ����(10^27-1)
    [MINVALUE ���� | NOMINVALUE ] : �߻���ų ���� �ּҰ� ����(-10^26)
    [CYCLE | NOCYCLE ] : ���� ��ȯ����
    [CACHE ����Ʈũ�� | NOCACHE ] : ���� �̸� ���س��� 
                                �������� �ݿ��� �� Ȱ���ϴ� ����
                                --�⺻�� 20Byte | �ּҰ� 2Byte
*/
CREATE SEQUENCE SEQ_EMPID
START WITH 300
INCREMENT BY 5
MAXVALUE 310
NOCYCLE
NOCACHE;
        
SELECT SEQ_EMPID.NEXTVAL FROM DUAL;

--���� �� Ȯ��
SELECT SEQ_EMPID.CURRVAL FROM DUAL;


--������ ���� �����ϱ�
ALTER SEQUENCE SEQ_EMPID
--ORA-02283: cannot alter starting sequence number
--START WITH 315
INCREMENT BY 10
MAXVALUE 400
NOCYCLE
NOCACHE;

SELECT SEQ_EMPID.NEXTVAL FROM DUAL;


--SELECT * FROM USER_VIEWS;
SELECT * FROM USER_SEQUENCES;

-- SELECT �������� ���� ��ȸ�ÿ� ��� ����
-- INSERT, UPDATE ������ ��� �����ϴ�.

--������ �����ϱ�
DROP SEQUENCE SEQ_EMPID;

--------------------------
CREATE SEQUENCE SEQ_EID
START WITH 300
INCREMENT BY 1
MAXVALUE 10000
NOCYCLE
NOCACHE;

--������ �߰�
INSERT INTO EMPLOYEE 
VALUES(
    SEQ_EID.NEXTVAL, '���ֹ�', '121203-1234567',
    'song@kh.or.kr', '01012334556', 'D2', 'J7',
    'S1',5000000,0.1,200,SYSDATE, NULL, DEFAULT
);

SELECT * FROM EMPLOYEE WHERE EMP_NAME='���ֹ�';


SELECT * FROM USER_SEQUENCES;

-- D9�μ��� J7 ������ ��� 4���� 
-- �������� Ȱ���Ͽ� �߰��Ͻÿ�.
INSERT INTO EMPLOYEE
VALUES (SEQ_EID.NEXTVAL, '����ö', '110101-1234567', 'gong123@kh.or.kr',
        '01012344321','D9','J7','S1',5000000,0.1, 200, SYSDATE,
        NULL, DEFAULT);
INSERT INTO EMPLOYEE
VALUES (SEQ_EID.NEXTVAL, '���ȣ', '500101-1234567', 'gogil@kh.or.kr',
        '01012344321','D9','J7','S1',5000000,0.1, 200, SYSDATE,
        NULL, DEFAULT);
INSERT INTO EMPLOYEE
VALUES (SEQ_EID.NEXTVAL, '������', '530101-1234567', 'ahn0123@kh.or.kr',
        '01012344321','D9','J7','S1',5000000,0.1, 200, SYSDATE,
        NULL, DEFAULT);
INSERT INTO EMPLOYEE
VALUES (SEQ_EID.NEXTVAL, '���ؿ�', '670101-1234567', 'park007@kh.or.kr',
        '01012344321','D9','J7','S1',5000000,0.1, 200, SYSDATE,
        NULL, DEFAULT);

SELECT * FROM EMPLOYEE;

-- ������ �ɼ� CYCLE/ CACHE
-- CYCLE : �������� ���� �ּҰ�OR�ִ밪 ����������
--          �ٽ� �ݴ��� ������ �����ϴ� �ɼ�.

CREATE SEQUENCE SEQ_CYCLE
START WITH 200
INCREMENT BY 10
MAXVALUE 230
MINVALUE 15
CYCLE
NOCACHE;

SELECT SEQ_CYCLE.NEXTVAL FROM DUAL;
--SELECT SEQ_CYCLE.CURRVAL FROM DUAL;
SELECT SEQ_CYCLE.NEXTVAL FROM DUAL;
SELECT SEQ_CYCLE.NEXTVAL FROM DUAL;
SELECT SEQ_CYCLE.NEXTVAL FROM DUAL;
SELECT SEQ_CYCLE.NEXTVAL FROM DUAL;
SELECT SEQ_CYCLE.NEXTVAL FROM DUAL;


-- CACHE / NOCACHE
-- CACHE : ��ǻ�Ͱ� ������������ ����� 
--          �׶��׶� �������� �ʰ�
--          �̸� ����� ���� ��
-- NOCACHE : ��ǻ�Ͱ� �����Ұ��� �׶��׶� ó�� �ϴ� ��.

CREATE SEQUENCE SEQ_CACHE
START WITH 100
INCREMENT BY 1
CACHE 20
NOCYCLE;

SELECT SEQ_CACHE.NEXTVAL FROM DUAL;

SELECT * FROM USER_SEQUENCES;


---------------------
--INDEX
---------------------
-- SQL ��ɾ� ��ȸó���ӵ��� ����Ű�� ���� ��ü��.
-- ���̺��� �ĺ���(�⺻Ű, ����Ű)�� �Ǵ� �÷���������
-- �� �÷������� ���������� ����Ͽ� ��ȸ�ӵ��� ����Ų��.
--

--����
-- �˻��ӵ��� �⼧�ȴ�.

--����
-- �ε����� �����ϴ� ���̺��� ������
-- ���ֺ���Ǵ� ���̺��̶��
-- �ε����� �Ź� �ٽ� ���
-- => ������ ���ϵɼ� �ִ�.

-- �ε����� �����ϱ� ���� ������ ������ �Ҵ��ؾ� �Ѵ�.

-- �б⼺���� ��������� ���, ���� ������ ����� ����

-- �ε��� �������
-- CREATE [UNIQUE] INDEX �ε�����
-- ON ���̺��( �÷��� )

--�ε��� Ȯ��
SELECT * FROM USER_IND_COLUMNS;


--�ε����� ����
SELECT ROWID, EMP_ID, EMP_NAME FROM EMPLOYEE;
--ROWID
-- 

-- �ε����� ����
-- 1. �����ε���( UNIQUE INDEX )
-- 2. ������ε���( NOUNIQUE INDEX )
-- 3. �����ε���( SINGLE INDEX )
-- 4. �����ε��� ( COMPOSITE INDEX )
-- 5. �Լ�����ε��� ( FUNCTION BASED INDEX )

--1. ���� �ε���
-- UNIQUE INDEX
-- �ε��� ������ �������� �������� �����ϴ� �ε���
-- ����Ŭ���� PRIMARY KEY ���������� ����ϸ� �ڵ����� ���� �Ѵ�.


CREATE UNIQUE INDEX IDX_EMP_NO
ON EMPLOYEE(EMP_NO);

SELECT * FROM USER_IND_COLUMNS WHERE TABLE_NAME='EMPLOYEE';


--���̺� �ߺ��� ������ ��� ����Ű ���� �Ұ�
CREATE UNIQUE INDEX IDX_DEPT_CODE
ON EMPLOYEE(DEPT_CODE);

SELECT * FROM EMPLOYEE;

-- 2. ����� �ε���
-- �ߺ��� ���� ���� �÷��� ��� ����
--
CREATE INDEX IDX_DEPT_CODE
ON EMPLOYEE(DEPT_CODE);

-- ���ݱ����� �÷� �ϳ� -> ���� �ε���

-- 3. ���� �ε��� 
-- �ΰ� �̻��� �÷����� �ε����� �����ϴ� ��
CREATE INDEX IDX_DEPT
ON DEPARTMENT( DEPT_ID, DEPT_TITLE );

SELECT DEPT_ID, DEPT_TITLE FROM DEPARTMENT
WHERE DEPT_ID !='D1'
    AND DEPT_TITLE != '���������';

DROP INDEX IDX_DEPT;

--�ε��� Ȯ��
SELECT * FROM USER_IND_COLUMNS;
-- �����̸� �ε��� 2�� Ȯ�� ���� 
-- => �÷��������� Ȯ�� �غ��� 1,2 �������� �ִ°� Ȯ�� ����

--4. �Լ� ��� �ε���
-- ��ȸ�� ���� ����ϴ� �Լ����� �ִٸ�
-- �ش� �Լ����� �ε����� �ݿ��ؼ� �˻������� �����Ѵ�.

-- SAL*12 �Ҷ� SAL�� �ε����� �ִ��� �������� �ϰԵǸ�
-- SAL�� ����� INDEX�� ����Ҽ� ����.
-- �̷��� �������� �˻��ϴ� ��찡 ���ٰ� �Ѵٸ�, 
-- �ƿ� ������ �Լ��� ����� ���Լ��� �ε��� �ݿ�

CREATE INDEX IDX_EMP_SAL_CAL
ON EMPLOYEE( (SALARY*NVL(BONUS,0)+SALARY)*12 );

SELECT EMP_ID, EMP_NAME, SALARY
FROM EMPLOYEE
WHERE (SALARY*NVL(BONUS,0)+SALARY)*12 >1000000;


-- PL/SQL --
-- (PROCEDURAL LANGUAGE EXTENSION TO SQL)
-- SQL���� Ȯ��� ������ ���
-- ����Ŭ ��ü���� ����� ������ ���
-- ���� SQL�� ���� �غ� �ϱ� ���ؼ� ����Ѵ�.
-- ������ ����, ���� ó��, �ݺ�ó��, ���ܸ� ó������ �����ϴ�.

-- PL/SQL�� ����
/*
    �����, �����, ����ó���� ������
    ����� : DECLARE, ����, ��� �����ϴ� �κ�
    ����� : BEGIN ~ END, ���, �ݺ���, �Լ����� ���� �۾��� �ϴ� �κ� 
    ����ó���� : EXCEPTION, ���� �߻��� ó���� ������ �ۼ��ϴ� �κ�
*/

/*
    PL/SQL �ۼ� ���
    1. PL/SQL ��� �������� �ѹ����� �����Ҷ� ���� �����ݷ��� ���
    2. END �ڿ� ;�� ����Ͽ� �ϳ��� ����� �����ٴ°��� ���
    3. DELCARE �� BEGIN Ű����� PL/SQL����� �����̶�°��� �˼��ִ�.
    4. ������ �����ϱ� ���ؼ��� /�� �ݵ�� �Է� �Ǿ�� �Ѵ�.
        PL/SQL ����� �࿡ / ������ ����Ȱ����� �����Ѵ�.
*/

-- �� : SELECT���� �����ؼ� �ʿ䶧���� ���, ������ ���̺�
-- ���ν��� : PL/SQL ���� �����ؼ� ���, �Լ�

-- ����� ����ؼ� ������ ������ ���
BEGIN
    DBMS_OUTPUT.PUT_LINE('HELLO WORLD');
    -- DBMS_OUTPUT ��Ű���� PUT_LINE()���ν����� ȣ��
END;
/

-- ȭ�鿡 �ۼ�����¹��� ���̵��� ����
-- �ý��� ���� �����̴�.
-- �⺻�� OFF -> ON���� ����
SET SERVEROUTPUT ON;

-- ���� ����
--[1] �Ϲݺ���
DECLARE 
    V_ID NUMBER; 
BEGIN
    SELECT EMP_ID
    INTO V_ID
    FROM EMPLOYEE
    WHERE EMP_NAME = '������';
END;
/


-- ������ �� ����
-- ������ := ��;
DECLARE 
    V_EMPNO NUMBER(4);
    v_empname varchar2(10);
    test_num number(5) := 10*20;
BEGIN
    V_EMPNO := 1001;
    V_EMPNAME := '������';
    DBMS_OUTPUT.PUT_LINE('���       �̸�');
    DBMS_OUTPUT.PUT_LINE('--------------');
    DBMS_OUTPUT.PUT_LINE(V_EMPNO ||'   '||V_EMPNAME);
    DBMS_OUTPUT.PUT_LINE('TEST_NUM = '||TEST_NUM);
END;
/
------------------------------------
--[2] ���۷��� ����
-- %TYPE : �� �÷��� �ڷ����� �޾� �ö� ����ϴ� �ڷ��� Ÿ��
DECLARE 
    EMP_ID EMPLOYEE.EMP_ID%TYPE;
    EMP_NAME EMPLOYEE.EMP_NAME%TYPE;
    DEPT_CODE EMPLOYEE.DEPT_CODE%TYPE;
    JOB_CODE EMPLOYEE.DEPT_CODE%TYPE;
    SALARY EMPLOYEE.SALARY%TYPE;
BEGIN
    SELECT EMP_ID, EMP_NAME, NVL(DEP
    T_CODE,'-'), JOB_CODE, SALARY
    INTO EMP_ID, EMP_NAME, DEPT_CODE, JOB_CODE, SALARY
    FROM EMPLOYEE
    WHERE EMP_NAME='&EMP_NAME';
    
    DBMS_OUTPUT.PUT_LINE('EMP_ID : '|| EMP_ID);
    DBMS_OUTPUT.PUT_LINE('EMP_NAME : '|| EMP_NAME);
    DBMS_OUTPUT.PUT_LINE('DEPT_CODE : '|| DEPT_CODE);
   
END;
/
-- %ROWTYPE : ���̺��� ��� �÷��� �ڷ����� ����
-- Ư�����̺��� �÷� ���� ������ ������ ���� �����Ҽ� �ִ�.
-- SELECT �������� ���� �˻� �Ҷ� �����ϴ�.
DECLARE 
    MYROW EMPLOYEE%ROWTYPE;
BEGIN
    SELECT EMP_ID, EMP_NAME
    INTO MYROW.EMP_ID, MYROW.EMP_NAME 
    FROM EMPLOYEE
    WHERE EMP_NAME='��';
    
    DBMS_OUTPUT.PUT_LINE(MYROW.EMP_ID||' '||MYROW.EMP_NAME);
    
    EXCEPTION 
        WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('NO DATA');
END;
/

--���, �ݺ��� 
--IF�� --
--1. IF ~ THEN : if(���ǽ�){�����}
--               IF ~ THEN 
/*
    IF ���� THEN 
        ���Ǹ����� ó������;
*/
BEGIN
    IF '&�̸�' = '������' THEN
        DBMS_OUTPUT.PUT_LINE('���� �������̳�!!!');
    END IF;
END;
/

-- @
-- �����ȣ�� �Է¹޾Ƽ� ����� ���,�̸��޿�,���ʽ����� �������!
-- �߰��� ��ǥ���� ���, '��ǥ��~~~�϶�' 
DECLARE 
    EMP_ID EMPLOYEE.EMP_ID%TYPE;
    EMP_NAME EMPLOYEE.EMP_NAME%TYPE;
    SALARY EMPLOYEE.SALARY%TYPE;
    BONUS EMPLOYEE.BONUS%TYPE;
    JOB_CODE EMPLOYEE.JOB_CODE%TYPE;
BEGIN
    SELECT EMP_ID, EMP_NAME, SALARY, NVL(BONUS,0), JOB_CODE
    INTO EMP_ID, EMP_NAME, SALARY, BONUS, JOB_CODE
    FROM EMPLOYEE
    WHERE EMP_ID=&EMP_ID;
    
    DBMS_OUTPUT.PUT_LINE(EMP_ID);
    DBMS_OUTPUT.PUT_LINE(EMP_NAME);
    DBMS_OUTPUT.PUT_LINE(SALARY);
    DBMS_OUTPUT.PUT_LINE(BONUS*100||'%');
    
    IF (JOB_CODE ='J1')
    THEN DBMS_OUTPUT.PUT_LINE('��ǥ�� �϶�~~');
    END IF; 
END;
/

-- 2. IF ~ THEN ~ ELSE ~ END IF
DECLARE 
    EMP_ID EMPLOYEE.EMP_ID%TYPE;
    EMP_NAME EMPLOYEE.EMP_NAME%TYPE;
    SALARY EMPLOYEE.SALARY%TYPE;
    BONUS EMPLOYEE.BONUS%TYPE;
    JOB_CODE EMPLOYEE.JOB_CODE%TYPE;
    EMP_TEAM VARCHAR2(20);
BEGIN
    SELECT EMP_ID, EMP_NAME, SALARY, NVL(BONUS,0), JOB_CODE
    INTO EMP_ID, EMP_NAME, SALARY, BONUS, JOB_CODE
    FROM EMPLOYEE
    WHERE EMP_ID=&EMP_ID;
    
    DBMS_OUTPUT.PUT_LINE(EMP_ID);
    DBMS_OUTPUT.PUT_LINE(EMP_NAME);
    DBMS_OUTPUT.PUT_LINE(SALARY);
    DBMS_OUTPUT.PUT_LINE(BONUS*100||'%');
    
    IF JOB_CODE='J1' THEN EMP_TEAM :='��ǥ';
    ELSE EMP_TEAM :='����';
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('�Ҽ� :' || EMP_TEAM); 
END;
/

-- 3. IF ~ THEN ~ ELSIF ~ ELSE ~ END IF;
-- ELSE IF �� �ƴ϶� ELSIF
/*
    IF ���� 1 THEN
        ����1�� ������ ��� ó������;
    ELSIF ����2 THEN
        ����2�� ������ ��� ó������;
    ELSE 
        ������ �������� ���� ��� ó��
*/

--������ �Է¹޾Ƽ� SCORE ������ �����ϰ�
--90�� �̻��� 'A'
--75�� �̻��� 'B'
--60�� �̻��� 'C'
-- �� ���ϴ� 'F'�� ä÷�Ͽ�
-- ��� ->'����� ������ 00�̰�, O�����Դϴ�.'
DECLARE
    SCORE INT;
    GRADE VARCHAR2(2);
BEGIN
    SCORE := '&����';
    
    -- IF�� --
    IF SCORE >=90 THEN GRADE := 'A';
    ELSIF SCORE >=75 THEN GRADE :='B';
    ELSIF SCORE >= 60 THEN GRADE :='C';
    ELSE GRADE := 'F';
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('����� ������ '||SCORE 
            ||'���̰�, ������ '||GRADE||'�����Դϴ�.');
    
END;
/

--4. CASE ��
--�ڹٿ��� SWITCH��
-- CASE ~ END CASE;
/*
    CASE 
        WHEN ǥ����1 THEN 
            ���๮1;
        WHEN ǥ����2 THEN
            ���๮2;
        ELSE �⺻���๮3;
*/

-- 
DECLARE 
    INPUTVALUE NUMBER;
BEGIN
    INPUTVALUE := '&INPUTVALUE';
    
    CASE INPUTVALUE
        WHEN 1 THEN 
            DBMS_OUTPUT.PUT_LINE(INPUTVALUE||'�Է���');    
        WHEN 2 THEN
            DBMS_OUTPUT.PUT_LINE(INPUTVALUE||'�Է���');
        WHEN 3 THEN 
            DBMS_OUTPUT.PUT_LINE(INPUTVALUE||'�Է���');
        ELSE 
            DBMS_OUTPUT.PUT_LINE('1,2,3 ��� �ƴϾ�~!');
    END CASE;
END;
/

--�����ȣ�� �Է¹޾Ƽ� �����ڵ�� 
--��ǥ(J1),�ӿ���(J2), �Ϲ�����(������) ������ ������
--CASE������ ����
DECLARE 
    JOB_CODE EMPLOYEE.JOB_CODE%TYPE;
    EMP_TEAM VARCHAR2(20);
BEGIN
    SELECT JOB_CODE
    INTO JOB_CODE
    FROM EMPLOYEE
    WHERE EMP_ID = '&EMP_ID';
    
    CASE JOB_CODE
        WHEN 'J1' THEN EMP_TEAM := '��ǥ';
        WHEN 'J2' THEN EMP_TEAM := '�ӿ�';
        ELSE EMP_TEAM := '�Ϲ�����';
    END CASE;
    
    DBMS_OUTPUT.PUT_LINE('�Ҽ� : '||EMP_TEAM);
END;
/

-- �ݺ���
DECLARE 
    E EMPLOYEE%ROWTYPE;
BEGIN
    SELECT *
    INTO E
    FROM EMPLOYEE;
    
    DBMS_OUTPUT.PUT_LINE(E.EMP_ID);
END;
/

-- LOOP, FOR, WHILE

--�Ϲ� LOOP ��
/*
    LOOP
        �ݺ���ų ����
        IF �ݺ� ���� ���� 
            EXIT;
        END IF;
    END LOOP;
*/

-- 1 ~5 ������ �ݺ����� �����ϴ� LOOP �ݺ��� ����
DECLARE 
    N INT:=1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(N);
        N := N+1;
        EXIT WHEN N = 6;
    END LOOP;
END;
/
-- 5 ~ 1 ����ϴ� LOOP���� �ۼ��غ���
DECLARE 
    N INT := 5;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(N);
        N := N-1;
        EXIT WHEN N = 0;
    END LOOP;
END;
/
----------------------------------------
/*
    [VIEW]
    -���������̺�
    CREATE OR REPLACE VIEW ���̸�(�÷�, �÷�, ....)
    AS
        SELECT EMP_ID, EMP_NAME, ... 
        FROM EMPLOYEE;
        
    SELECT * FROM ���̸�;
    ���ȼ�, �˻��� ȿ����
    
    [SEQUENCE]
    1,2,3,4 .... ���� ���� ������Ű�� 
    ������ ���̽� ��ü
    
    CREATE SEQUENCE ��������
    STRAT WITH ���۰�
    INCREMENT BY ���� ��
    MAXVALUE/NOMAXVALUE �ִ밪
    MINVALUE/NOMINVALUE �ּҰ�
    CYCLE/NOCYLE ��ȯ����
    CACHE/NOCACHE ���� �̸���� ���� ����
    
    
    [INDEX]
    ���̺��� Ư�������͸� �˻��Ҷ�,
    ȿ�������� �˻��ϱ� ���� ��ü
    
    CREATE INDEX �ε�����
    ON ���̺��( �÷�, �÷�.. )
    
    
    PL/SQL
    
    DECLARE
    BEGIN
        EXCEPTION
    END;
    /
*/

SET SERVEROUTPUT ON;

--����
-- 1~ 10������ ������ 5�� ����غ���!!
-- DBMS_RANDOM.VALUE(LOW,HIGH)
-- �����߻���Ű�� �Լ�. LOW���� ũ�ų� ����, HIGH���� ���� ����
DECLARE 
    RND_NO NUMBER;
    N NUMBER := 0;
BEGIN
    LOOP
        N :=N+1;
        DBMS_OUTPUT.PUT_LINE(TRUNC(DBMS_RANDOM.VALUE(1,11)));
        EXIT WHEN N>5;
    END LOOP;
END;
/
--FOR �ݺ��� --
/*
    FOR ī���ͺ��� IN [REVERSE] ���۰�..���ᰪ LOOP
        �ݺ��� ����
    END LOOP;
*/
-- FOR LOOP ī���ͺ��� -> �ڵ� ����
-- ī��Ʈ ���� �ڵ����� 1�� ����
BEGIN
    FOR N IN 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE(N);
    END LOOP;
END;
/

--FOR���� �ݴ�� ������ ����
BEGIN
    FOR N IN REVERSE 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE(N);
    END LOOP;
END;
/

BEGIN
    FOR I IN 1..9 LOOP
        FOR J IN 2..9 LOOP
            DBMS_OUTPUT.PUT_LINE(J || '*' ||I|| '=' || J*I);
            DBMS_OUTPUT.PUT_LINE('  ');
        END LOOP;
    END LOOP;
END;
/

--����
-- ������, ¦���� ���
-- FOR, IF, MOD()
DECLARE 
    RES NUMBER;
BEGIN
    FOR DAN IN 2..9 LOOP
        IF MOD(DAN, 2) = 0
            THEN FOR SU IN 1..9 LOOP
                RES := DAN * SU;
                DBMS_OUTPUT.PUT_LINE(
                DAN||' * '||SU||' = '||RES);
            END LOOP;
        END IF;
    END LOOP;
END;
/

--FOR���� ���� INSERT

CREATE TABLE TB_TEST_FOR(
    NO NUMBER,
    TEST_DATE DATE
);

BEGIN
    FOR X IN 1..10 LOOP
        INSERT INTO TB_TEST_FOR VALUES(X,SYSDATE+X);
    END LOOP;
END;
/

SELECT * FROM TB_TEST_FOR;


--����
-- PL/SQL�� FOR �ݺ����� �̿��Ͽ� EMPLOYEE���̺���
--200�� ���� 210���� ����� ���̵�,�̸�,���� ��� �غ���
DECLARE
    E EMPLOYEE%ROWTYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('ID    NAME    EMAIL');
    DBMS_OUTPUT.PUT_LINE('---------------------------------');

    FOR I IN 0..10 LOOP
        SELECT *
        INTO E
        FROM EMPLOYEE
        WHERE EMP_ID = 200+I;
        
        DBMS_OUTPUT.PUT_LINE(E.EMP_ID||'    '||E.EMP_NAME||
                        '    '||E.EMAIL);
    END LOOP;
END;
/

-- WHILE��
-- ���������� TRUE ���ȸ� �ݺ�
--
/*
    [�������]
    WHILE �ݺ��� ���ǽ� LOOP
        �ݺ��� ��ũ��Ʈ ����;
    END LOOP;
*/
DECLARE 
    N INT := 5;
BEGIN
    WHILE N > 0  LOOP
        DBMS_OUTPUT.PUT_LINE(N);
        N := N-1;
    END LOOP;
END;
/

--2~9������ ���� �Է� �ް�, ������ ����غ���.
DECLARE 
    DAN NUMBER;
    N NUMBER := 2;
BEGIN
    DAN := &��; 
    IF DAN BETWEEN 2 AND 9 THEN
        WHILE N<=9 LOOP
            DBMS_OUTPUT.PUT_LINE(DAN||'*'||N||'='||DAN*N);
            N:= N+1;
        END LOOP;
    END IF;    
END;
/

-- �����Ҷ� '= ' ':= &' �ΰ����� ����ߴ�.

-- ������ ������ �����Ҷ�
-- ������ SQL���� ����� ������ SQL�� ����

--���� SQL(����)
SELECT * FROM EMPLOYEE
WHERE EMP_NAME='�����';

-- ���� SQL
DECLARE
    E EMPLOYEE%ROWTYPE;
BEGIN
    SELECT *
    INTO E
    FROM EMPLOYEE
    WHERE EMP_NAME='&�����';
    
    DBMS_OUTPUT.PUT_LINE('�����ȣ : '|| E.EMP_ID);
    DBMS_OUTPUT.PUT_LINE('�����: '||E.EMP_NAME);
    DBMS_OUTPUT.PUT_LINE('����޿�: '||E.SALARY);
END;
/


--RECORD �ڷ��� ���� ����
-- %ROWTYPE �� ������ ���̺� �÷�������Ÿ���� �ڵ����� �����´�.
-- RECORD Ư�� ���̺��� �÷��� ���� �̾� ������
-- ���� ¥�� �ڷ��� ������ �ϴ°�

/*
    ����
    TYPE ���ڵ�Ÿ�Ը� IS RECORD( ������ ����Ÿ��,....  );
    
    ���ڵ尴ü ���ڵ�Ÿ�Ը�;
    
    STUDENT STD; 
    STD = NEW STUDENT();
    STD.METHOD();
*/
DECLARE 
    TYPE MY_RECORD_TYPE IS RECORD(
        MYID EMPLOYEE.EMP_ID%TYPE,
        MYNAME EMPLOYEE.EMP_NAME%TYPE
    );
    
    MYRECORD MY_RECORD_TYPE;

BEGIN
    SELECT EMP_ID, EMP_NAME
    INTO MYRECORD
    FROM EMPLOYEE
    WHERE EMP_NAME = '������';
    
    DBMS_OUTPUT.PUT_LINE('�����ȣ : '||MYRECORD.MYID);
    DBMS_OUTPUT.PUT_LINE('����� : ' || MYRECORD.MYNAME);
END;
/

-- ���, �����, ���޸��� ������ �ִ� ���������� ���ؼ�
-- ���������� ���, �����, ���޸��� ����ϼ���.
DECLARE 
    --���ڵ弱��
    type my_r_type is record (
        EID EMPLOYEE.EMP_ID%TYPE,
        ENAME EMPLOYEE.EMP_NAME%TYPE,
        EJOBNAME JOB.JOB_NAME%TYPE
    );

    --������ �ڷ������� ���ڵ带 ����
    V_EMP MY_R_TYPE;
BEGIN
    --SELECT
    SELECT EMP_ID, EMP_NAME, JOB_NAME
    INTO V_EMP
    FROM EMPLOYEE E
    LEFT JOIN JOB J USING(JOB_CODE)
    WHERE E.EMP_NAME = '������';  
    --���
    DBMS_OUTPUT.PUT_LINE('��� :'||V_EMP.EID);
    DBMS_OUTPUT.PUT_LINE('����� :'||V_EMP.ENAME);
    DBMS_OUTPUT.PUT_LINE('���޸� :'||V_EMP.EJOBNAME);
END;
/

-- ����ó��
/*
    �������
    EXCEPTION 
        WHEN ���ܸ� THEN ó������1
        WHEN ���ܸ� THEN ó������2
        WHEN ����1 OR ����2 THEN ó������3
        WHEN OTHERS THEN ó������4
*/
BEGIN
    UPDATE EMPLOYEE
    SET EMP_ID='201'
    WHERE EMP_ID='200';
END;
/

/*
    ����Ŭ���� �����ϴ� ���� ��Ī��...�����..
    NO_DATA_FOUND : SELECT �� ����� �ϳ��� ���� ���
    CASE_NOT_FOUND : CASE �����߿� ��ġ�ϴ� ����� �ϳ��� ����
                   ELSE�� �� �̿ܿ� ���뿡���� ó���� ���� �������
    LOGIN_DENIED : �߸��� ���̵� ��й�ȣ�� �Է��Ͽ��� ���
    DUP_VAL_ON_INDEX : UNIQUE ���� ������ �������� ���
    INVALID_NUMBER : ���ڵ����͸� ���ڷ� �����Ҷ� �����Ҽ� ����
                    ������ ���.
*/

BEGIN
    UPDATE EMPLOYEE
    SET EMP_ID='201'
    WHERE EMP_ID='200';

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE('�̹� �����ϴ� ����Դϴ�!!!');   
END;
/

-- ��������� ����ó��
-- ���α׷��Ӱ� ����
-- RAISE_APPLICATION_ERROR() ����Ͽ�
-- �����ڵ� -20000 ~ -20999�� ���� ������  ����ų�
-- RAISE(�ڹٿ��� THROW) ����ؼ� ���ܸ� �߻���ų���� �ִ�.

/*
    �����
    RAISE_APPLICATION_ERROR(�����ڵ�, �޼���);
    RAISE ����;
*/
CREATE TABLE TEST_MEMBER(
    MID VARCHAR2(20) PRIMARY KEY,
    PWD VARCHAR2(30),
    NAME VARCHAR2(15)
);
SELECT * FROM TEST_MEMBER;

INSERT INTO TEST_MEMBER 
VALUES('PLSQLuser02', '111', 'ȫ�浿�ƴϴ�');

DECLARE 
    V_PWD VARCHAR2(30);
    TOOLONG_NAME EXCEPTION;
    TOOSHORT_PWD EXCEPTION;
    PRAGMA EXCEPTION_INIT(TOOLONG_NAME, -12899);
    PRAGMA EXCEPTION_INIT(TOOSHORT_PWD, -20001);
    --PRAGMA EXCEPTION_INIT(���ܸ�, ���ܹ�ȣ);
    --���ܹ�ȣ�� ����ؼ� �����Ϸ��� �� ���ܸ� 
    --����Ѵٴ� ���� �˸��� ����
BEGIN
    V_PWD := '&��й�ȣ';
    IF LENGTH(V_PWD) <8 THEN
        RAISE TOOSHORT_PWD;
    END IF;
    
    INSERT INTO TEST_MEMBER
    VALUES ('USER02',V_PWD,'��浿');


    WHEN TOOSHOEXCEPTIONRT_PWD THEN 
        DBMS_OUTPUT.PUT_LINE('���ª��!!!!');
END;
/

SELECT * FROM TEST_MEMBER;

--- PL/SQL ��ü�� ---
--���ν��� : PL/SQL�� �̸� �����س��Ҵٰ�
--      ���ν��������� ȣ���Ͽ� �Լ�ó�� ���۽�Ű�� ��ü

/*[�������]
    CREATE [OR REPLACE] PROCEDURE ���ν�����( 
        �Ű����� 1 [IN/OUT/IN OUT] �ڷ���,
        �Ű����� 2
        ...
    )
        IN : ���ν������� ����� �������� �ܺο��� �ְڴ�.
        OUT : ���ν����� ������ ����� �ܺη� �����Ҷ�(RETURN)
        INOUT: IN�� OUT �ΰ��� ��� �Ѵ� ����
            (��, IN�� OUT �Ѱ����� �ϳ��� ��� ���� - ����X)
    
    IS
        DECLARE(�����)
        BEGIN
            ������ �κ�
        END;
        /
*/

--[ȣ����]
--EXECUTE ���ν�����(���ް�1, ���ް�2, ...)
--EXEC         "           "

--[����]
--DROP PROCEDURE ���ν�����;

--[���ν����� ��ȸ]
-- �����ͻ���: USER_SOURCE;

--����.���������� ��� �����ϴ� ���ν��� �����ϱ�
--���̺� ���� �� EMPLOYEE ����
CREATE TABLE EMP_TMP
AS SELECT * FROM EMPLOYEE;

--Ȯ��
SELECT * FROM EMP_TMP;
SELECT COUNT(*) FROM EMP_TMP;

--���ν��� ����
CREATE OR REPLACE PROCEDURE DEL_ALL_EMP
IS
    BEGIN
        DELETE FROM EMP_TMP;
        COMMIT;
    END;
    /

-- ���ν����� �ٷ� ����X
-- �����Ŀ� ������ ������� �ؾ��Ѵ�.
SELECT COUNT(*) FROM EMP_TMP;

EXEC DEL_ALL_EMP;
DROP TABLE EMP_TMP;

--------------------
-- �Ű������� ���� ���ν���

-- [IN]
CREATE TABLE EMP_TMP_01
AS SELECT * FROM EMPLOYEE;

--(Ư�� �̸��� ���� ��� ����)
SELECT * FROM EMP_TMP_01 
    WHERE EMP_NAME LIKE '��%';
    
-- ���ν��� ����(�Ű�����)
CREATE OR REPLACE PROCEDURE DEL_EMP_NAME
(V_NAME IN EMP_TMP_01.EMP_NAME%TYPE)
IS
BEGIN
    DELETE FROM EMP_TMP_01
    WHERE EMP_NAME LIKE V_NAME;
    
    DBMS_OUTPUT.PUT_LINE(V_NAME||'�������� ����!!');
    COMMIT;
END;
/

EXEC DEL_EMP_NAME('�̿���');

SELECT * FROM EMP_TMP_01
WHERE EMP_NAME LIKE '��%';


EXEC DEL_EMP_NAME('��%');

--[OUT]--
-- ������ �����ܺη� �����ϴ� ���
-- ���� ���� �� �ְ� ���� ����

-- ��������
-- VARIABLE ������ �ڷ���(����Ʈ);

--����
--EXEC ���ν�����(���ް�, :���޹���������);

/*
METHOD1(30);
INT NO = METHOD2();
INT NO = METHOD3(30);
*/
--���������� ��ȸ�Ͽ� ������ ���� ���� �߰��� 
--������ OUT �غ���

EXEC EMP_INFO(201,:VAR_ENAME, :VAR_PHONE, :VAR_EMAIL);
CREATE OR REPLACE PROCEDURE
EMP_INFO( VEMP_ID IN EMPLOYEE.EMP_ID%TYPE,
          VEMP_NAME OUT EMPLOYEE.EMP_NAME%TYPE,
          VPHONE OUT EMPLOYEE.PHONE%TYPE,
          VEMAIL OUT EMPLOYEE.EMAIL%TYPE )
IS
BEGIN
    SELECT EMP_NAME, PHONE, EMAIL
    INTO VEMP_NAME, VPHONE, VEMAIL
    FROM EMPLOYEE
    WHERE EMP_ID = VEMP_ID;
END;
/

--���� ���� -> ���ν����� ���� OUT�Ǵ� �����͸� ��´�.
VARIABLE VAR_ENAME VARCHAR2(20);
VARIABLE VAR_PHONE VARCHAR2(20);
VARIABLE VAR_EMAIL VARCHAR2(20);

--���� Ȯ��(���)
PRINT VAR_ENAME;

EXEC EMP_INFO(201,:VAR_ENAME, :VAR_PHONE, :VAR_EMAIL);

PRINT VAR_PHONE;
PRINT VAR_EMAIL;

-- �����ϰ� ���ν����� ���� �Է¹��� �������� �ڵ����� ������ش�.
SET AUTOPRINT ON;

SELECT * FROM USER_SOURCE;

--����
-- �μ��ڵ带 �Է¹޾� �ش� �μ��� ������ ������ ��
-- ������ �μ��� �̸��� ����ϴ� ���ν����� ����ÿ�.
-- ��, ���� ��ȸ�� �μ��� ���� ���
-- NO_DATA_FOUND�� Ȱ���Ͽ�
-- '�ش� �μ��� �������� �ʽ��ϴ�.'��� ������ ����Ͻÿ�.

CREATE TABLE DEPT_01
AS SELECT * FROM DEPARTMENT;

CREATE OR REPLACE PROCEDURE 
    DEL_DEPT( V_DEPT_ID IN DEPT_01.DEPT_ID%TYPE,
              V_DEPT_TITLE OUT DEPT_01.DEPT_TITLE%TYPE)
IS
BEGIN
    SELECT DEPT_TITLE
    INTO V_DEPT_TITLE
    FROM DEPT_01
    WHERE DEPT_ID = V_DEPT_ID;
    
    DELETE FROM DEPT_01
    WHERE DEPT_ID = V_DEPT_ID;
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE(V_DEPT_TITLE||'�μ��� ���� �Ǿ����ϴ�.');
    
EXCEPTION
    WHEN NO_DATA_FOUND
    THEN DBMS_OUTPUT.PUT_LINE('�ش� �μ��� �������� �ʴ´�!');
END;
/
VARIABLE DEPT_TITLE VARCHAR2(35);

EXEC DEL_DEPT('&�μ��ڵ�', :DEPT_TITLE);
EXEC DEL_DEPT('D0', :DEPT_TITLE);

----�Լ�
--���ν����� ����� ����� ������, �������� return���� ������ ����.
create or replace function
bonus_cal(v_empid employee.emp_id%type)
return number
is
    v_sal employee.salary%type;
    v_bonus employee.bonus%type;
    v_cal_sal number;
begin
    select salary, bonus
    into v_sal, v_bonus
    from employee
    where emp_id=v_empid;
    
    v_cal_sal := (v_sal+(v_sal*v_bonus))*12;
    return v_cal_sal;
end;
/

select bonus_cal('&emp_id') from dual;
variable var_re number;
exec :var_re := bonus_cal('&emp_id');
print var_re;

--�����ȣ�� �Է¹޾� ������ �����ϴ� �Լ��� ������
-- f_gender()
--select f_gender('&emp_id') from dual;
--�����ؿ�Ǯ��~
create or replace function
f_gender(v_empid employee.emp_id%type)
return varchar2
is
    v_gender varchar2(10);
    v_temp employee.emp_no%type;
begin
    select emp_no
    into v_temp
    from employee
    where emp_id=v_empid;
    if substr(v_temp,8,1)=1 then 
        v_gender := '��';
    else
        v_gender := '��';
    end if;
    return v_gender;
end;
/
select emp_name, emp_no,f_gender('&emp_id') from employee;
--������! Ǯ��
--create or replace function
--f_gender(v_empid employee.emp_id%type)
--return varchar2
--is
--    v_gender varchar2(10);
--    v_temp employee.emp_no%type;
--begin
--    select substr(emp_no,8,1)
--    into v_temp
--    from emplyee where emp_id=v_empid;
--    
--    v_gender := case

--Ǯ���
create or replace function
f_gender(v_empid employee.emp_id%type)
return varchar2
is 
    v_gender varchar2(10);
begin
    select decode(substr(emp_no,8,1),'1','��','2','��')
    into v_gender
    from employee
    where emp_id=v_empid;
    
    return v_gender;
end;
/
select f_gender('&emp_id') from dual;

--������ ���ణ �����߻������Ƴ��� ���̺�
select * from all_errors;
--cursor: select ���(resultSet)�� �������϶� �Ѱ��྿ �����Ͽ� 
--        �����͸� ó���ϴ� ���
--        cursor�� resultSet�� �����ϰ� fetch�� ���������� �����ϴ°�
--cursor����
--cursor�� ������ �����ϰ�  ������ ���� cursor�� open���� ����.
--�ݺ��� �ȿ��� fetch�� ���� ���྿������
--���ᰡ �Ǹ� close����� cursor�� �ݾ���
--cursor�� ������ ���翩�θ� Ȯ���ϴ� ���
-- %NOTFOUND : OPEN �� FETCH���� NULL, 
--             FETCH�� ���� �����ϸ� FALSE, �ƴϸ� TRUE
-- %FOUND : FETCH�� ���� �����ϸ� TRUE, �ƴϸ� FALSE
-- %ISOPEN : �ֱ� ����� CURSOR�� OPEN�� �����̸� TRUE
-- %ROWCOUNT : CURSOR�� ROW�� ��

CREATE OR REPLACE PROCEDURE CURSORTEST
IS
    V_DEPT DEPARTMENT%ROWTYPE;
    CURSOR C1
    IS
    SELECT * FROM DEPARTMENT;
BEGIN
 OPEN C1;
 LOOP
    FETCH C1 INTO V_DEPT.DEPT_ID,
                  V_DEPT.DEPT_TITLE,
                  V_DEPT.LOCATION_ID;
    EXIT WHEN C1%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('�μ��ڵ� : '||V_DEPT.DEPT_ID
                        ||' �μ��� : '||V_DEPT.DEPT_TITLE
                        ||' �����ڵ� : '||V_DEPT.LOCATION_ID);
 end loop;
 close c1;
end;
/
set serveroutput on;
exec CURSORTEST;
select * from department;

declare
    v_user employee%rowtype;
    cursor c1
    is
    select * from employee;
begin
    open c1;
    loop
        fetch c1 into v_user;
        exit when c1%notfound;
        dbms_output.put_line('�̸� : '||v_user.emp_name);
    end loop;
    close c1;
end;
/
--for in�� �̿��Ͽ� ó���ϴ� ���
-- Ŀ���� open/close�� ���ص� �˴ϴ�.
declare
    v_dept department%rowtype;
    cursor c2
    is select * from department;
begin
    for v_dept in c2 loop
    DBMS_output.put_line('�μ��ڵ� : '||v_dept.dept_id);
    end loop;
end;
/
--Ʈ���� : DML(insert, update, delete)����Ǳ� ��, �Ŀ� �߻���Ų ������
-- ������ ������ ���� �����Ű�°�.
-- create ��ɾ�� ������ ��
--aftfer/before : ���� ����
--������ ��ɾ ����
--������� �������� ����
-- create trigger Ʈ���Ÿ�
-- after/before �����ɾ� on ���̺�
-- for each row
-- pl/sql��������(begin~end)
-- ��ɾ�
--     new.�÷� : ���� ����,���Ե� �ڷ�(insert, update)
--     old.�÷� : ����, ���� ������ �ִ� ��(update, delete)

--Ʈ���Ÿ� ������ ����
create or replace trigger tg_empnew
after insert on employee
for each row
begin
    DBMS_output.put_line('���Ի�����');
end;
/
select * from user_triggers;
insert into employee values(996,'�ڼ���','961124-2123456',
'red@sm.co.kr','01032456975','D1','J2','S2',1500000,0.3,200,
sysdate,default,default);
commit;
insert into employee values(995,'�ڼ���1','961124-2123454',
'red@sm.co.kr','01032456975','D1','J2','S2',1500000,0.3,200,
sysdate,default,default);
insert into employee values(994,'�ڼ���2','961124-2123453',
'red@sm.co.kr','01032456975','D1','J2','S2',1500000,0.3,200,
sysdate,default,default);
insert into employee values(993,'�ڼ���3','961124-2123452',
'red@sm.co.kr','01032456975','D1','J2','S2',1500000,0.3,200,
sysdate,default,default);
insert into employee values(992,'�ڼ���4','961124-2123451',
'red@sm.co.kr','01032456975','D1','J2','S2',1500000,0.3,200,
sysdate,default,default);

commit;

create or replace trigger tg_sal
after update on employee
for each row
begin
    DBMS_output.put_line('������ : '||:old.salary);
    DBMS_output.put_line('������ : '||:new.salary);
end;
/
select * from user_triggers;
update employee set salary=salary*3
where emp_name='������';
select  emp_name, salary from employee where emp_name='������';
commit;

--Ʈ���� �����ϱ�
--��ǰ���̺�
create table product(
    pcode number primary key,
    pname varchar2(30),
    brand varchar2(30),
    price number,
    stock number default 0
);
--�԰���� ���� ���̺�
create table product_IO(
    icode number primary key,
    pcode number,
    pdate date,
    amount number,
    status varchar2(10) check(status in('�԰�','���')),
    constraint fk_proc_io foreign key(pcode) 
    references product(pcode)
);
select * from product;
select * from product_io;

create sequence seq_proc;
create sequence seq_proc_io;

insert into product 
values(seq_proc.nextval,'�����е�','������',1500000,default);
insert into product 
values(seq_proc.nextval,'������','����',1000000,default);
insert into product 
values(seq_proc.nextval,'������S10','�n��',180000,default);
select seq_proc.currval from dual;
select * from user_sequences;
select * from product;
--trigger���� :  io���̺� ���� �ԷµǸ� �ԷµǴ°��� ��������
--product �� ������ �����Ǵ� Ʈ����
drop trigger tg_product;
create trigger tg_product
after insert on product_io
for each row
begin
    if :new.status='�԰�'
    then
        update product
        set stock=stock + :new.amount
        where pcode = :new.pcode;
    elsif :new.status='���'
    then
        update product
        set stock=stock - :new.amount
        where pcode = :new.pcode;
    end if;
end;
/
select * from product;
insert into product_io 
values(seq_proc_io.nextval,1,sysdate,10,'�԰�');
insert into product_io 
values(seq_proc_io.nextval,2,sysdate,50,'�԰�');
insert into product_io 
values(seq_proc_io.nextval,3,sysdate,100,'�԰�');

--employee���̺��� ����� �����ϸ� �������̺�(del_emp)�� �̵�
create table del_emp
as select * from employee where 1=0;
select * from del_emp;
drop trigger tg_delemp;
create trigger tg_delemp
after delete on employee
for each row
when (old.emp_name <> '������')
begin
    insert into del_emp
    values(:old.emp_id, :old.emp_name,:old.emp_no,:old.email,
    :old.phone,:old.dept_code,:old.job_code,:old.sal_level,
    :old.salary,:old.bonus,:old.manager_id,:old.hire_date,
    :old.ent_date,:old.ent_yn);
end;
/
select * from employee;
delete from employee where emp_name='�ڼ���3';
delete from employee where emp_name='�ڼ���2';

































