select * from tab where tname like 'TB#_%' ESCAPE '#';

select * from TB_CLASS;
select * from TB_CLASS_PROFESSOR;
select * from TB_DEPARTMENT;
select * from TB_GRADE;
select * from TB_PROFESSOR;
select * from TB_STUDENT;

--DDL
--1
CREATE TABLE tb_category(
    name VARCHAR2(10),
    user_yn CHAR(1) default 'Y'
);

--2
CREATE TABLE tb_class_type(
    no VARCHAR2(5) PRIMARY KEY,
    name VARCHAR2(10)
);

--3
ALTER TABLE tb_category
ADD CONSTRAINT pk_category PRIMARY KEY(name);

--4
ALTER TABLE tb_class_type
MODIFY name VARCHAR2(10) CONSTRAINT nn_name_cons NOT NULL;

--5
ALTER TABLE tb_class_type
MODIFY (no VARCHAR2(10), name VARCHAR2(20));

ALTER TABLE tb_category
MODIFY name VARCHAR2(20);

--6
ALTER TABLE tb_class_type RENAME COLUMN no TO class_type_no;
ALTER TABLE tb_class_type RENAME COLUMN name TO class_type_name;

ALTER TABLE tb_category RENAME COLUMN name TO category_name;
ALTER TABLE tb_category RENAME COLUMN user_yn TO category_user_yn;

select * from tb_class_type;
select * from tb_category;


--7
ALTER TABLE tb_category RENAME CONSTRAINT pk_category TO pk_category_name;
ALTER TABLE tb_class_type RENAME CONSTRAINT sys_c0013231 TO pk_no;

select * from user_constraints
where table_name in ('TB_CLASS_TYPE', 'TB_CATEGORY');

--8
INSERT INTO TB_CATEGORY VALUES ('����','Y');
INSERT INTO TB_CATEGORY VALUES ('�ڿ�����','Y');
INSERT INTO TB_CATEGORY VALUES ('����','Y');
INSERT INTO TB_CATEGORY VALUES ('��ü��','Y');
INSERT INTO TB_CATEGORY VALUES ('�ι���ȸ','Y');
COMMIT;

--9
ALTER TABLE TB_DEPARTMENT
    ADD CONSTRAINT fk_department_category FOREIGN KEY(category)
            REFERENCES TB_CATEGORY(category_name);

select * from user_constraints
where table_name in ('TB_DEPARTMENT', 'TB_CLASS_TYPE', 'TB_CATEGORY');

--10
CREATE OR REPLACE VIEW vw_�л��Ϲ����� AS (
    select student_no AS �й�, student_name �л��̸�, student_address AS �ּ�
    from tb_student);

select * from vw_�л��Ϲ�����;

--11
CREATE OR REPLACE VIEW vw_������� AS (
    select student_name �л��̸�, department_name �а��̸�, professor_name AS ���������̸�
    from tb_student
        JOIN tb_department USING(department_no)
        LEFT JOIN tb_professor ON (professor_no = coach_professor_no));

select * from vw_�������;
drop view vw_�������;

--12
CREATE OR REPLACE VIEW vw_�а����л��� AS (
    select department_name, count(*) AS student_count
    from tb_student JOIN tb_department USING(department_no)
    GROUP BY department_name);

select * from vw_�а����л���;

--13
UPDATE vw_�л��Ϲ����� SET �л��̸�='�ٹٹ�' where �й�='A213046';
UPDATE vw_�л��Ϲ����� SET �л��̸�='������' where �й�='A213046';
--������->�ٹٹ�
select * from vw_�л��Ϲ����� where �й�='A213046';
select * from tb_student where student_no = 'A213046';

--14
CREATE OR REPLACE VIEW vw_�л��Ϲ����� AS (
    select student_no AS �й�, student_name �л��̸�, student_address AS �ּ�
    from tb_student) WITH READ ONLY;

--15 ??
select class_no AS �����ȣ, class_name AS �����̸�, "������������(��)"
from (
    select DENSE_RANK() OVER(order by count(*) desc, class_no) AS RANK, class_no, class_name, count(*) AS "������������(��)"
        from tb_class
            JOIN tb_grade USING (class_no)
        where term_no >= '2006'
        GROUP BY class_no, class_name
        order by count(*) desc, class_no)
where RANK <=3;

select class_no AS �����ȣ, class_name AS �����̸�, "������������(��)"
from (
    select class_no, class_name, count(*) AS "������������(��)"
        from tb_class
            JOIN tb_grade USING (class_no)
        where term_no >= '2006'
        GROUP BY class_no, class_name
        order by count(*) desc, class_no)
where ROWNUM <=3;


--DML
--1
INSERT INTO tb_class_type VALUES('01', '�����ʼ�');
INSERT INTO tb_class_type VALUES('02', '��������');
INSERT INTO tb_class_type VALUES('03', '�����ʼ�');
INSERT INTO tb_class_type VALUES('04', '���缱��');
INSERT INTO tb_class_type VALUES('05', '������');

--2
CREATE TABLE tb_�л��Ϲ����� AS (
    select student_no AS �й�,
           student_name AS �л��̸�,
           student_address AS �ּ�
    from tb_student);

--3
CREATE TABLE tb_������а� AS (
    select S.student_no AS �й�,
           S.student_name AS �л��̸�,
           TO_NUMBER(DECODE(substr(student_ssn,8,1), 1,'19',2,'19','20') ||
               substr(student_ssn,1,2)) AS ����⵵,
           P.professor_name AS �����̸�
    from tb_student S
        JOIN tb_professor P ON professor_no = coach_professor_no
        JOIN tb_department D ON S.department_no = D.department_no
    where D.department_name='������а�');
DROP TABLE tb_������а�;
select * from tb_������а�;
