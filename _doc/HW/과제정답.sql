-- ��ũ��_v2.0

-- [Basic SELECT]

-- 1. �� ������б��� �а� �̸��� �迭�� ǥ���Ͻÿ�. ��, ��� ����� "�а� ��", "�迭"���� ǥ���ϵ��� ����.
SELECT DEPARTMENT_NAME AS "�а� ��",
CATEGORY AS �迭
FROM TB_DEPARTMENT;

-- 2. �а��� �а� ������ ������ ���� ���·� ȭ�鿡 �������.
SELECT DEPARTMENT_NAME || '�� ������ ' || CAPACITY || '�� �Դϴ�.' AS "�а��� ����"
FROM TB_DEPARTMENT;

-- 3. "������а�" �� �ٴϴ� ���л� �� ���� �������� ���л��� ã�ƴ޶�� ��û��
-- ���Դ�. �����ΰ�? (�����а��� '�а��ڵ�'�� �а� ���̺�(TB_DEPARTMENT)�� 
-- ��ȸ�ؼ� ã�� ������ ����)
SELECT STUDENT_NAME 
FROM TB_STUDENT
WHERE DEPARTMENT_NO = '001' 
AND STUDENT_SSN LIKE '_______2______'
AND ABSENCE_YN = 'Y';

-- 4. ���������� ���� ���� ��� ��ü�� ���� ã�� �̸��� �Խ��ϰ��� ����. 
-- �� ����ڵ��� �й��� ������ ���� �� ����ڵ��� ã�� ������ SQL ������ �ۼ��Ͻÿ�.
SELECT STUDENT_NAME
FROM TB_STUDENT
WHERE STUDENT_NO IN ('A513079', 'A513090', 'A513091', 'A513110', 'A513119')
ORDER BY STUDENT_NAME DESC;

-- 5. ���������� 20 �� �̻� 30 �� ������ �а����� �а� �̸��� �迭�� ����Ͻÿ�.
SELECT DEPARTMENT_NAME,
CATEGORY
FROM TB_DEPARTMENT
WHERE CAPACITY BETWEEN 20 AND 30;

-- 6. �� ������б��� ������ �����ϰ� ��� �������� �Ҽ� �а��� ������ �ִ�. 
-- �׷� �� ������б� ������ �̸��� �˾Ƴ� �� �ִ� SQL ������ �ۼ��Ͻÿ�.
SELECT PROFESSOR_NAME
FROM TB_PROFESSOR
WHERE DEPARTMENT_NO IS NULL;

-- 7. Ȥ�� ������� ������ �а��� �����Ǿ� ���� ���� �л��� �ִ��� Ȯ���ϰ��� ����.
-- ��� SQL ������ ����ϸ� �� ������ �ۼ��Ͻÿ�
SELECT *
FROM TB_STUDENT
WHERE DEPARTMENT_NO IS NULL;

-- 8. ������û�� �Ϸ��� ����. �������� ���θ� Ȯ���ؾ� �ϴµ�, ���������� �����ϴ�
-- ������� � �������� �����ȣ�� ��ȸ�غ��ÿ�.
SELECT CLASS_NO
FROM TB_CLASS
WHERE PREATTENDING_CLASS_NO IS NOT NULL;

-- 9. �� ���п��� � �迭(CATEGORY)���� �ִ��� ��ȸ�غ��ÿ�
SELECT DISTINCT CATEGORY
FROM TB_DEPARTMENT
ORDER BY CATEGORY ASC;

-- 10. 02 �й� ���� �����ڵ��� ������ ������� ����. ������ ������� ������ ��������
-- �л����� �й�, �̸�, �ֹι�ȣ�� ����ϴ� ������ �ۼ��Ͻÿ�.

SELECT STUDENT_NO,
STUDENT_NAME,
STUDENT_SSN
FROM TB_STUDENT
WHERE ENTRANCE_DATE BETWEEN '2002-01-01' AND '2002-12-31'
AND STUDENT_ADDRESS LIKE '����%'
AND ABSENCE_YN = 'N';


-- [Additional SELECT - �Լ�

-- 1. ������а�(�а��ڵ� 002) �л����� �й��� �̸�, ���� �⵵�� ���� �⵵�� 
-- ���� ������ ǥ���ϴ� SQL ������ �ۼ��Ͻÿ�.
-- (��, ����� "�й�", "�̸�", "���г⵵" �� ǥ�õǵ��� ����.)
SELECT STUDENT_NO AS �й�,
STUDENT_NAME AS �̸�,
TO_CHAR(ENTRANCE_DATE, 'YYYY-MM-DD') AS ���г⵵
FROM TB_STUDENT
WHERE DEPARTMENT_NO = '002'
ORDER BY ENTRANCE_DATE ASC;

--2. �� ������б��� ���� �� �̸��� �� ���ڰ� �ƴ� ������ �� �� �ִٰ� ����. �� ������
--�̸��� �ֹι�ȣ�� ȭ�鿡 ����ϴ� SQL ������ �ۼ��� ����. (* �̶� �ùٸ��� �ۼ��� SQL
--������ ��� ���� ����� �ٸ��� ���� �� �ִ�. ������ �������� �����غ� ��)
SELECT PROFESSOR_NAME,
PROFESSOR_SSN
FROM TB_PROFESSOR
WHERE LENGTH(PROFESSOR_NAME) != '3';

--3. �� ������б��� ���� �������� �̸��� ����ϴ� SQL ������ �ۼ��Ͻÿ�. �� �̶�
--���̰� ���� ������� ���� ��� ����(���̰� ���ٸ� �̸��� ������ ����)�� ȭ�鿡
--��µǵ��� ����ÿ�. (��, ���� �� 2000 �� ���� ����ڴ� ������ ��� ����� "�����̸�"
--���� ����. ���̴� ���������� �������.)
SELECT PROFESSOR_NAME AS �����̸�
FROM TB_PROFESSOR
WHERE PROFESSOR_SSN LIKE '_______1______'
ORDER BY SUBSTR(PROFESSOR_SSN, 1, 2) DESC,
PROFESSOR_NAME ASC;

--4. �������� �̸� �� ���� ������ �̸��� ����ϴ� SQL ������ �ۼ��Ͻÿ�. ��� �����
--?�̸�? �� �������� ����. (���� 2 ���� ���� ������ ���ٰ� �����Ͻÿ�)
SELECT SUBSTR(PROFESSOR_NAME, 2) AS �̸�
FROM TB_PROFESSOR;

--5. �� ������б��� ����� ������ �й��� �̸��� ǥ���Ͻÿ�.(�̶�, 19 �쿡 �����ϸ�
--����� ���� ���� ������ �A��)
SELECT STUDENT_NO,
STUDENT_NAME,
FLOOR((ENTRANCE_DATE - TO_DATE(DECODE(SUBSTR(STUDENT_SSN, 8, 1), '1', '19', '2', '19', '20') || SUBSTR(STUDENT_SSN, 1, 6), 'YYYYMMDD'))/365 + 1) AS "���� ��� ����"
FROM TB_STUDENT
WHERE FLOOR((ENTRANCE_DATE - TO_DATE(DECODE(SUBSTR(STUDENT_SSN, 8, 1), '1', '19', '2', '19', '20') || SUBSTR(STUDENT_SSN, 1, 6), 'YYYYMMDD'))/365 + 1) > 19
ORDER BY FLOOR((ENTRANCE_DATE - TO_DATE(DECODE(SUBSTR(STUDENT_SSN, 8, 1), '1', '19', '2', '19', '20') || SUBSTR(STUDENT_SSN, 1, 6), 'YYYYMMDD'))/365 + 1)  ASC;

--6. 2020 �� ũ���������� ���� �����ΰ�?
SELECT TO_CHAR(TO_DATE('2020-12-25'), 'DAY')
FROM DUAL;

--7. TO_DATE('99/10/11','YY/MM/DD'), TO_DATE('49/10/11','YY/MM/DD') �� ���� �� �� ��
--�� �� ���� �ǹ�����? �� TO_DATE('99/10/11','RR/MM/DD'),
--TO_DATE('49/10/11','RR/MM/DD') �� ���� �� �� �� �� �� ���� �ǹ�����?
SELECT TO_CHAR(TO_DATE('99/10/11', 'YY/MM/DD'), 'YYYY'), 
TO_CHAR(TO_DATE('49/10/11', 'YY/MM/DD'),'YYYY'),
TO_CHAR(TO_DATE('99/10/11', 'RR/MM/DD'), 'YYYY'),
TO_CHAR(TO_DATE('49/10/11', 'RR/MM/DD'), 'YYYY')
FROM DUAL;

--8. �� ������б��� 2000 �⵵ ���� �����ڵ��� �й��� A �� �����ϰ� �Ǿ��ִ�. 2000 �⵵
--�̠� �й��� ���� �л����� �й��� �̸��� �й� ������ ǥ���ϴ� SQL ������ �ۼ��Ͻÿ�.
SELECT STUDENT_NO,
STUDENT_NAME
FROM TB_STUDENT
WHERE TO_NUMBER(TO_CHAR(ENTRANCE_DATE, 'YYYY')) < 2000
ORDER BY STUDENT_NO ASC;

--9. �й��� A517178 �� ���Ƹ� �л��� ���� �� ������ ���ϴ� SQL ���� �ۼ��Ͻÿ�. ��,
--�̶� ��� ȭ���� ����� "����" �̶�� ������ �ϰ�, ������ �ݿø��Ͽ� �Ҽ��� ���� ��
--�ڸ������� ǥ������.
SELECT ROUND(AVG(POINT),1) AS ����
FROM TB_GRADE
WHERE STUDENT_NO = 'A517178';


--10. �а��� �л����� ���Ͽ� "�а���ȣ", "�л���(��)" �� ���·� ����� ����� �������
--��µǵ��� �Ͻÿ�.
SELECT DEPARTMENT_NO, COUNT(*)
FROM TB_STUDENT
GROUP BY DEPARTMENT_NO
ORDER BY DEPARTMENT_NO;

--11. ���� ������ �������� ���� �л��� ���� �� �� ���� �Ǵ� �˾Ƴ��� SQL ����
--�ۼ��Ͻÿ�.
SELECT COUNT(*)
FROM TB_STUDENT
WHERE COACH_PROFESSOR_NO IS NULL;

--12. �й��� A112113 �� ���� �л��� �⵵ �� ������ ���ϴ� SQL ���� �ۼ��Ͻÿ�. ��,
--�̶� ��� ȭ���� ����� "�⵵", "�⵵ �� ����" �̶�� ������ �ϰ�, ������ �ݿø��Ͽ�
--�Ҽ��� ���� �� �ڸ������� ǥ������.
SELECT SUBSTR(TERM_NO, 1, 4) AS �⵵,
ROUND(AVG(POINT), 1) AS "�⵵ �� ����"
FROM TB_GRADE
WHERE STUDENT_NO = 'A112113'
GROUP BY SUBSTR(TERM_NO, 1, 4)
ORDER BY SUBSTR(TERM_NO, 1, 4) ASC;

--13. �а� �� ���л� ���� �ľ��ϰ��� ����. �а� ��ȣ�� ���л� ���� ǥ���ϴ� SQL ������
--�ۼ��Ͻÿ�.
SELECT DEPARTMENT_NO AS �а��ڵ��,
COUNT(DECODE(ABSENCE_YN, 'Y', '1')) AS "���л� ��"
FROM TB_STUDENT
GROUP BY DEPARTMENT_NO
ORDER BY DEPARTMENT_NO ASC;

--14. �� ���б��� �ٴϴ� ��������(��٣���) �л����� �̸��� ã���� ����. � SQL
--������ ����ϸ� �����ϰڴ°�?
SELECT STUDENT_NAME AS �����̸�,
COUNT(*) AS "������ ��"
FROM TB_STUDENT
GROUP BY STUDENT_NAME
HAVING COUNT(*)>1
ORDER BY STUDENT_NAME;


--15. �й��� A112113 �� ���� �л��� �⵵, �б� �� ������ �⵵ �� ���� ���� , ��
--������ �⵵ ������ ǥ���ϴ� SQL ���� �ۼ��Ͻÿ�. (��, ������ �Ҽ��� 1 �ڸ�������
--�ݿø��Ͽ� ǥ������.)
SELECT SUBSTR(TERM_NO, 1, 4) AS �⵵,
SUBSTR(TERM_NO, 5, 2) AS �б�,
ROUND(AVG(POINT), 1) AS ����
FROM TB_GRADE
WHERE STUDENT_NO = 'A112113'
GROUP BY ROLLUP(SUBSTR(TERM_NO, 1, 4), SUBSTR(TERM_NO, 5, 2))
ORDER BY SUBSTR(TERM_NO, 1, 4) ASC, SUBSTR(TERM_NO, 5, 2);

-- [Additional SELECT - Option]

--1. �л��̸��� �ּ����� ǥ���Ͻÿ�. ��, ��� ����� "�л� �̸�", "�ּ���"�� �ϰ�,
--������ �̸����� �������� ǥ���ϵ��� ����.
SELECT STUDENT_NAME AS "�л� �̸�",
STUDENT_ADDRESS AS �ּ���
FROM TB_STUDENT
ORDER BY STUDENT_NAME ASC;

--2. �������� �л����� �̸��� �ֹι�ȣ�� ���̰� ���� ������ ȭ�鿡 ����Ͻÿ�.
SELECT STUDENT_NAME,
STUDENT_SSN
FROM TB_STUDENT
WHERE ABSENCE_YN = 'Y'
ORDER BY SUBSTR(STUDENT_SSN, 1, 6) DESC;

--3. �ּ����� �������� ��⵵�� �л��� �� 1900 ��� �й��� ���� �л����� �̸��� �й�,
--�ּҸ� �̸��� ������������ ȭ�鿡 ����Ͻÿ�. ��, ���������� "�л��̸�","�й�",
--"������ �ּ�" �� ��µǵ��� ����.
SELECT STUDENT_NAME AS �л��̸�,
STUDENT_NO AS �й�,
STUDENT_ADDRESS AS "������ �ּ�"
FROM TB_STUDENT
WHERE SUBSTR(STUDENT_ADDRESS, 1, 3) IN ('������', '��⵵')
AND SUBSTR(ENTRANCE_DATE, 1, 1) NOT IN ('0', '1')
ORDER BY STUDENT_NAME ASC;

--4. ���� ���а� ���� �� ���� ���̰� ���� ������� �̸��� Ȯ���� �� �ִ� SQL ������
--�ۼ��Ͻÿ�. (���а��� '�а��ڵ�'�� �а� ���̺�(TB_DEPARTMENT)�� ��ȸ�ؼ� ã��
--������ ����)
SELECT PROFESSOR_NAME,
PROFESSOR_SSN
FROM TB_PROFESSOR
WHERE DEPARTMENT_NO = '005'
ORDER BY SUBSTR(PROFESSOR_SSN, 1, 6) ASC;

--5. 2004 �� 2 �б⿡ 'C3118100' ������ ������ �л����� ������ ��ȸ�Ϸ��� ����. ������
--���� �л����� ǥ���ϰ�, ������ ������ �й��� ���� �л����� ǥ���ϴ� ������
--�ۼ��غ��ÿ�.
SELECT STUDENT_NO,
TO_CHAR(POINT, 'FM9.00')
FROM TB_GRADE
WHERE TERM_NO = '200402' AND CLASS_NO = 'C3118100'
ORDER BY POINT DESC, STUDENT_NO;


--6. �л� ��ȣ, �л� �̸�, �а� �̸��� �л� �̸����� �������� �����Ͽ� ����ϴ� SQL
--���� �ۼ��Ͻÿ�.
SELECT TB_STUDENT.STUDENT_NO,
TB_STUDENT.STUDENT_NAME,
TB_DEPARTMENT.DEPARTMENT_NAME
FROM TB_STUDENT, TB_DEPARTMENT
WHERE TB_STUDENT.DEPARTMENT_NO = TB_DEPARTMENT.DEPARTMENT_NO
ORDER BY TB_STUDENT.STUDENT_NAME ASC;

SELECT TB_STUDENT.STUDENT_NO,
TB_STUDENT.STUDENT_NAME,
TB_DEPARTMENT.DEPARTMENT_NAME
FROM TB_STUDENT
JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
ORDER BY TB_STUDENT.STUDENT_NAME ASC;

--7. �� ������б��� ���� �̸��� ������ �а� �̸��� ����ϴ� SQL ������ �ۼ��Ͻÿ�.
SELECT TB_CLASS.CLASS_NAME,
TB_DEPARTMENT.DEPARTMENT_NAME
FROM TB_CLASS, TB_DEPARTMENT
WHERE TB_CLASS.DEPARTMENT_NO = TB_DEPARTMENT.DEPARTMENT_NO;

SELECT TB_CLASS.CLASS_NAME,
TB_DEPARTMENT.DEPARTMENT_NAME
FROM TB_CLASS
JOIN TB_DEPARTMENT USING(DEPARTMENT_NO);

--8. ���� ���� �̸��� ã������ ����. ���� �̸��� ���� �̸��� ����ϴ� SQL ����
--�ۼ��Ͻÿ�.
SELECT TB_CLASS.CLASS_NAME,
TB_PROFESSOR.PROFESSOR_NAME
FROM TB_CLASS, TB_CLASS_PROFESSOR, TB_PROFESSOR
WHERE TB_CLASS.CLASS_NO = TB_CLASS_PROFESSOR.CLASS_NO
AND TB_CLASS_PROFESSOR.PROFESSOR_NO = TB_PROFESSOR.PROFESSOR_NO
ORDER BY TB_PROFESSOR.PROFESSOR_NAME ASC, CLASS_NAME ASC;

SELECT TB_CLASS.CLASS_NAME,
TB_PROFESSOR.PROFESSOR_NAME
FROM TB_CLASS
JOIN TB_CLASS_PROFESSOR USING(CLASS_NO)
JOIN TB_PROFESSOR USING(PROFESSOR_NO)
ORDER BY TB_PROFESSOR.PROFESSOR_NAME ASC, CLASS_NAME ASC;

--9. 8 ���� ��� �� ���ι���ȸ�� �迭�� ���� ������ ���� �̸��� ã������ ����. �̿�
--�ش��ϴ� ���� �̸��� ���� �̸��� ����ϴ� SQL ���� �ۼ��Ͻÿ�.
SELECT TB_CLASS.CLASS_NAME,
TB_PROFESSOR.PROFESSOR_NAME
FROM TB_CLASS, TB_CLASS_PROFESSOR, TB_PROFESSOR, TB_DEPARTMENT
WHERE TB_CLASS.CLASS_NO = TB_CLASS_PROFESSOR.CLASS_NO
AND TB_CLASS_PROFESSOR.PROFESSOR_NO = TB_PROFESSOR.PROFESSOR_NO
AND TB_DEPARTMENT.DEPARTMENT_NO = TB_PROFESSOR.DEPARTMENT_NO
AND TB_DEPARTMENT.CATEGORY = '�ι���ȸ'
ORDER BY TB_PROFESSOR.PROFESSOR_NAME ASC, CLASS_NAME ASC;

SELECT TB_CLASS.CLASS_NAME,
TB_PROFESSOR.PROFESSOR_NAME
FROM TB_CLASS
JOIN TB_CLASS_PROFESSOR USING(CLASS_NO)
JOIN TB_PROFESSOR USING(PROFESSOR_NO)
JOIN TB_DEPARTMENT ON (TB_PROFESSOR.DEPARTMENT_NO = TB_DEPARTMENT.DEPARTMENT_NO)
WHERE TB_DEPARTMENT.CATEGORY = '�ι���ȸ'
ORDER BY TB_PROFESSOR.PROFESSOR_NAME ASC, CLASS_NAME ASC;

--10. �������а��� �л����� ������ ���Ϸ��� ����. �����а� �л����� "�й�", "�л� �̸�",
--"��ü ����"�� ����ϴ� SQL ������ �ۼ��Ͻÿ�. (��, ������ �Ҽ��� 1 �ڸ�������
--�ݿø��Ͽ� ǥ������.)
SELECT TB_STUDENT.STUDENT_NO AS �й�,
TB_STUDENT.STUDENT_NAME AS "�л� �̸�",
ROUND(AVG(TB_GRADE.POINT), 1) AS "��ü ����"
FROM TB_DEPARTMENT, TB_STUDENT, TB_GRADE
WHERE TB_DEPARTMENT.DEPARTMENT_NAME = '�����а�'
AND TB_DEPARTMENT.DEPARTMENT_NO = TB_STUDENT.DEPARTMENT_NO
AND TB_GRADE.STUDENT_NO = TB_STUDENT.STUDENT_NO
GROUP BY TB_STUDENT.STUDENT_NO, TB_STUDENT.STUDENT_NAME
ORDER BY TB_STUDENT.STUDENT_NO ASC;

SELECT STUDENT_NO AS �й�,
TB_STUDENT.STUDENT_NAME AS "�л� �̸�",
ROUND(AVG(TB_GRADE.POINT), 1) AS "��ü ����"
FROM TB_DEPARTMENT
JOIN TB_STUDENT USING(DEPARTMENT_NO)
JOIN TB_GRADE USING(STUDENT_NO)
WHERE TB_DEPARTMENT.DEPARTMENT_NAME = '�����а�'
GROUP BY STUDENT_NO, TB_STUDENT.STUDENT_NAME
ORDER BY STUDENT_NO ASC;

--11. �й��� A313047 �� �л��� �б��� ������ ���� �ʴ�. ���� �������� ������ �����ϱ�
--���� �а� �̸�, �л� �̸��� ���� ���� �̸��� �ʿ��ϴ�. �̶� ����� SQL ����
--�ۼ��Ͻÿ�. ��, �������� ?�а��̸�?, ?�л��̸�?, ?���������̸�?����
--��µǵ��� ����.
SELECT TB_DEPARTMENT.DEPARTMENT_NAME AS �а��̸�,
TB_STUDENT.STUDENT_NAME AS �л��̸�,
TB_PROFESSOR.PROFESSOR_NAME AS ���������̸�
FROM TB_DEPARTMENT, TB_STUDENT, TB_PROFESSOR
WHERE TB_STUDENT.STUDENT_NO = 'A313047'
AND TB_STUDENT.COACH_PROFESSOR_NO = TB_PROFESSOR.PROFESSOR_NO
AND TB_DEPARTMENT.DEPARTMENT_NO = TB_STUDENT.DEPARTMENT_NO;

SELECT TB_DEPARTMENT.DEPARTMENT_NAME AS �а��̸�,
TB_STUDENT.STUDENT_NAME AS �л��̸�,
TB_PROFESSOR.PROFESSOR_NAME AS ���������̸�
FROM TB_STUDENT
JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
JOIN TB_PROFESSOR ON (COACH_PROFESSOR_NO = PROFESSOR_NO)
WHERE TB_STUDENT.STUDENT_NO = 'A313047';

--12. 2007 �⵵�� '�΁A�����' ������ ������ �л��� ã�� �л��̸��� �����б⸧ ǥ���ϴ�
--SQL ������ �ۼ��Ͻÿ�.
SELECT TB_STUDENT.STUDENT_NAME,
TB_GRADE.TERM_NO
FROM TB_STUDENT, TB_CLASS, TB_GRADE
WHERE TB_CLASS.CLASS_NAME = '�ΰ������'
AND SUBSTR(TB_GRADE.TERM_NO,1,4) = '2007'
AND TB_CLASS.CLASS_NO = TB_GRADE.CLASS_NO
AND TB_STUDENT.STUDENT_NO = TB_GRADE.STUDENT_NO
ORDER BY TB_STUDENT.STUDENT_NAME ASC;

SELECT TB_STUDENT.STUDENT_NAME,
TB_GRADE.TERM_NO
FROM TB_GRADE
JOIN TB_STUDENT USING(STUDENT_NO)
JOIN TB_CLASS USING(CLASS_NO)
WHERE TB_CLASS.CLASS_NAME = '�ΰ������'
AND SUBSTR(TB_GRADE.TERM_NO,1,4) = '2007'
ORDER BY TB_STUDENT.STUDENT_NAME ASC;

--13. ��ü�� �迭 ���� �� ���� ��米���� �� �� �������� ���� ������ ã�� �� ����
--�̸��� �а� �̸��� ����ϴ� SQL ������ �ۼ��Ͻÿ�.
SELECT TB_CLASS.CLASS_NAME,
TB_DEPARTMENT.DEPARTMENT_NAME
FROM TB_DEPARTMENT, TB_CLASS
WHERE TB_DEPARTMENT.CATEGORY = '��ü��'
AND TB_DEPARTMENT.DEPARTMENT_NO = TB_CLASS.DEPARTMENT_NO
AND TB_CLASS.CLASS_NO NOT IN (SELECT CLASS_NO FROM TB_CLASS_PROFESSOR)
ORDER BY TB_DEPARTMENT.DEPARTMENT_NAME ASC, TB_CLASS.CLASS_NAME ASC;

SELECT TB_CLASS.CLASS_NAME,
TB_DEPARTMENT.DEPARTMENT_NAME
FROM TB_DEPARTMENT
JOIN TB_CLASS USING(DEPARTMENT_NO)
WHERE TB_DEPARTMENT.CATEGORY = '��ü��'
AND TB_CLASS.CLASS_NO NOT IN (SELECT CLASS_NO FROM TB_CLASS_PROFESSOR)
ORDER BY TB_DEPARTMENT.DEPARTMENT_NAME ASC, TB_CLASS.CLASS_NAME ASC;

--14. �� ������б� ���ݾƾ��а� �л����� ���������� �Խ��ϰ��� ����. �л��̸���
--�������� �̸��� ã�� ���� ���� ������ ���� �л��� ��� "�������� ������?����
--ǥ���ϵ��� �ϴ� SQL ���� �ۼ��Ͻÿ�. ��, �������� ?�л��̸�?, ?��������?��
--ǥ���ϸ� ���й� �л��� ���� ǥ�õǵ��� ����.
SELECT TB_STUDENT.STUDENT_NAME AS �л��̸�,
NVL(TB_PROFESSOR.PROFESSOR_NAME, '�������� ������') AS ��������
FROM TB_STUDENT, TB_PROFESSOR
WHERE TB_STUDENT.DEPARTMENT_NO = '020'
AND TB_STUDENT.COACH_PROFESSOR_NO = TB_PROFESSOR.PROFESSOR_NO(+)
ORDER BY TB_STUDENT.ENTRANCE_DATE ASC;

SELECT TB_STUDENT.STUDENT_NAME AS �л��̸�,
NVL(TB_PROFESSOR.PROFESSOR_NAME, '�������� ������') AS ��������
FROM TB_STUDENT
LEFT OUTER JOIN TB_PROFESSOR ON (COACH_PROFESSOR_NO = PROFESSOR_NO)
WHERE TB_STUDENT.DEPARTMENT_NO = '020'
ORDER BY TB_STUDENT.ENTRANCE_DATE ASC;

--15. ���л��� �ƴ� �л� �� ������ 4.0 �̻��� �л��� ã�� ���л��� �й�, �̸�, �а�
--�̸�, ������ ����ϴ� SQL ���� �ۼ��Ͻÿ�.
SELECT TB_STUDENT.STUDENT_NO AS �й�,
TB_STUDENT.STUDENT_NAME AS �̸�,
TB_DEPARTMENT.DEPARTMENT_NAME AS "�а� �̸�",
TRUNC(AVG(TB_GRADE.POINT), 8) AS ����
FROM TB_STUDENT, TB_GRADE, TB_DEPARTMENT
WHERE ABSENCE_YN = 'N'
AND TB_STUDENT.STUDENT_NO = TB_GRADE.STUDENT_NO
AND TB_STUDENT.DEPARTMENT_NO = TB_DEPARTMENT.DEPARTMENT_NO
GROUP BY TB_STUDENT.STUDENT_NO, TB_STUDENT.STUDENT_NAME, TB_DEPARTMENT.DEPARTMENT_NAME
HAVING AVG(TB_GRADE.POINT)>=4
ORDER BY TB_STUDENT.STUDENT_NO ASC;

SELECT STUDENT_NO AS �й�,
TB_STUDENT.STUDENT_NAME AS �̸�,
TB_DEPARTMENT.DEPARTMENT_NAME AS "�а� �̸�",
TRUNC(AVG(TB_GRADE.POINT), 8) AS ����
FROM TB_STUDENT
JOIN TB_GRADE USING(STUDENT_NO)
JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
WHERE ABSENCE_YN = 'N'
GROUP BY STUDENT_NO, TB_STUDENT.STUDENT_NAME, TB_DEPARTMENT.DEPARTMENT_NAME
HAVING AVG(TB_GRADE.POINT)>=4
ORDER BY STUDENT_NO ASC;

--16. �Q�������а� ����������� ���� �� ������ �ľ��� �� �ִ� SQL ���� �ۼ��Ͻÿ�.
SELECT TB_CLASS.CLASS_NO,
TB_CLASS.CLASS_NAME,
TRUNC(TO_NUMBER(TO_CHAR(AVG(TB_GRADE.POINT), 'FM9.999999999')), 8) AS "AVG(POINT)"
FROM TB_CLASS, TB_GRADE
WHERE TB_CLASS.CLASS_NO = TB_GRADE.CLASS_NO
AND TB_CLASS.DEPARTMENT_NO = (SELECT DEPARTMENT_NO FROM TB_DEPARTMENT WHERE DEPARTMENT_NAME = 'ȯ�������а�')
AND TB_CLASS.CLASS_TYPE = '��������'
GROUP BY TB_CLASS.CLASS_NO, TB_CLASS.CLASS_NAME
ORDER BY TB_CLASS.CLASS_NO ASC;

SELECT CLASS_NO,
TB_CLASS.CLASS_NAME,
TRUNC(TO_NUMBER(TO_CHAR(AVG(TB_GRADE.POINT), 'FM9.999999999')), 8) AS "AVG(POINT)"
FROM TB_CLASS
JOIN TB_GRADE USING(CLASS_NO)
WHERE TB_CLASS.DEPARTMENT_NO = (SELECT DEPARTMENT_NO FROM TB_DEPARTMENT WHERE DEPARTMENT_NAME = 'ȯ�������а�')
AND TB_CLASS.CLASS_TYPE = '��������'
GROUP BY CLASS_NO, TB_CLASS.CLASS_NAME
ORDER BY CLASS_NO ASC;

--17. �� ������б��� �ٴϰ� �ִ� �ְ��� �л��� ���� �� �л����� �̸��� �ּҸ� ����ϴ�
--SQL ���� �ۼ��Ͻÿ�.
SELECT STUDENT_NAME,
STUDENT_ADDRESS
FROM TB_STUDENT
WHERE DEPARTMENT_NO = (SELECT DEPARTMENT_NO FROM TB_STUDENT WHERE STUDENT_NAME = '�ְ���');

--18. ������а����� �� ������ ���� ���� �л��� �̸��� �й��� ǥ���ϴ� SQL ����
--�ۼ��Ͻÿ�.
SELECT STUDENT_NO, STUDENT_NAME
FROM TB_STUDENT
JOIN TB_GRADE USING(STUDENT_NO)
JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
WHERE DEPARTMENT_NAME = '������а�'
GROUP BY STUDENT_NO, STUDENT_NAME
HAVING AVG(POINT) = (SELECT MAX(AVG(POINT)) FROM TB_GRADE 
JOIN TB_STUDENT USING(STUDENT_NO)
JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
WHERE DEPARTMENT_NAME = '������а�'
GROUP BY STUDENT_NO);

--19. �� ������б��� "�Q�������а�"�� ���� ���� �迭 �а����� �а� �� �������� ������
--�ľ��ϱ� ���� ������ SQL ���� ã�Ƴ��ÿ�. ��, �������� "�迭 �а���",
--"��������"���� ǥ�õǵ��� �ϰ�, ������ �Ҽ��� �� �ڸ������� �ݿø��Ͽ� ǥ�õǵ���
--����.
-- �� ������ ����� �ݿø��� �̻��ϰ� �Ǿ� �ִ�.
SELECT DEPARTMENT_NAME, ROUND(AVG(POINT),1)
FROM TB_DEPARTMENT
JOIN TB_STUDENT USING(DEPARTMENT_NO)
JOIN TB_GRADE USING(STUDENT_NO)
WHERE DEPARTMENT_NAME IN (SELECT DEPARTMENT_NAME
FROM TB_DEPARTMENT
WHERE CATEGORY = (SELECT CATEGORY
FROM TB_DEPARTMENT
WHERE DEPARTMENT_NAME = 'ȯ�������а�'))
GROUP BY DEPARTMENT_NAME
ORDER BY DEPARTMENT_NAME;

---- [DDL]
--1. �迭 ������ ������ ī�װ� ���̺��� ������� ����. ������ ���� ���̺���
--�ۼ��Ͻÿ�.
CREATE TABLE TB_CATEGORY(
NAME VARCHAR2(10),
USE_YN CHAR(1) DEFAULT 'Y');

--2. ���� ������ ������ ���̺��� ������� ����. ������ ���� ���̺��� �ۼ��Ͻÿ�.
CREATE TABLE TB_CLASS_TYPE(
NO VARCHAR2(5) PRIMARY KEY,
NAME VARCHAR2(10));

--3. TB_CATAGORY ���̺��� NAME �÷��� PRIMARY KEY �� �����Ͻÿ�.
--(KEY �̸��� �������� �ʾƵ� ������. ���� KEY �̸� �����ϰ��� ���ٸ� �̸��� ������
--�˾Ƽ� ������ �̸��� �������.)
ALTER TABLE TB_CATEGORY
ADD PRIMARY KEY(NAME);

--4. TB_CLASS_TYPE ���̺��� NAME �÷��� NULL ���� ���� �ʵ��� �Ӽ��� �����Ͻÿ�.
ALTER TABLE TB_CLASS_TYPE
MODIFY(NAME NOT NULL);

--5. �� ���̺��� �÷� ���� NO �� ���� ���� Ÿ���� �����ϸ鼭 ũ��� 10 ����, �÷�����
--NAME �� ���� ���C������ ���� Ÿ���� �����ϸ鼭 ũ�� 20 ���� �����Ͻÿ�.
ALTER TABLE TB_CATEGORY
MODIFY (NAME VARCHAR2(20));

ALTER TABLE TB_CLASS_TYPE
MODIFY (NO  VARCHAR2(10))
MODIFY (NAME VARCHAR2(20));

--6. �� ���̺��� NO �÷��� NAME �÷��� �̸��� �� �� TB_ �� ������ ���̺� �̸��� �տ�
--���� ���·� ��������.
--(ex. CATEGORY_NAME)
ALTER TABLE TB_CATEGORY
RENAME COLUMN NAME TO CATEGORY_NAME;

ALTER TABLE TB_CATEGORY
RENAME COLUMN USE_YN TO CATEGORY_USE_YN;

ALTER TABLE TB_CLASS_TYPE
RENAME COLUMN NO TO CLASS_TYPE_NO;

ALTER TABLE TB_CLASS_TYPE
RENAME COLUMN NAME TO CLASS_TYPE_NAME;

--7. TB_CATAGORY ���̺�� TB_CLASS_TYPE ���̺��� PRIMARY KEY �̸��� ������ ����
--�����Ͻÿ�.
--Primary Key �� �̸��� ?PK_ + �÷��̸�?���� �����Ͻÿ�. (ex. PK_CATEGORY_NAME )
ALTER TABLE TB_CATEGORY
DROP CONSTRAINT SYS_C007071;

ALTER TABLE TB_CATEGORY
ADD CONSTRAINT PK_CATEGORY_NAME PRIMARY KEY(CATEGORY_NAME);

ALTER TABLE TB_CLASS_TYPE
DROP CONSTRAINT SYS_C007070;

ALTER TABLE TB_CLASS_TYPE
ADD CONSTRAINT PK_CLASS_TYPE_NO PRIMARY KEY(CLASS_TYPE_NO);

--8. ������ ���� INSERT ���� ��������.
INSERT INTO TB_CATEGORY VALUES ('����','Y');
INSERT INTO TB_CATEGORY VALUES ('�ڿ�����','Y');
INSERT INTO TB_CATEGORY VALUES ('����','Y');
INSERT INTO TB_CATEGORY VALUES ('��ü��','Y');
INSERT INTO TB_CATEGORY VALUES ('�ι���ȸ','Y');
COMMIT;

--9.TB_DEPARTMENT �� CATEGORY �÷��� TB_CATEGORY ���̺��� CATEGORY_NAME �÷��� �θ�
--������ �����ϵ��� FOREIGN KEY �� �����Ͻÿ�. �� �� KEY �̸���
--FK_���̺��̸�_�÷��̸����� ��������. (ex. FK_DEPARTMENT_CATEGORY )
ALTER TABLE TB_DEPARTMENT
ADD CONSTRAINT FK_DEPARTMENT_CATEGORY FOREIGN KEY(CATEGORY) REFERENCES TB_CATEGORY(CATEGORY_NAME);

--10. �� ������б� �л����� �������� ���ԵǾ� �ִ� �л��Ϲ����� VIEW �� ������� ����.
--�Ʒ� ������ �����Ͽ� ������ SQL ���� �ۼ��Ͻÿ�.

-- �� ������ ���� - GRANT CREATE VIEW to homework;
CREATE VIEW VW_�л��Ϲ�����
AS SELECT STUDENT_NO AS �й�,
          STUDENT_NAME AS �л��̸�,
          STUDENT_ADDRESS AS �ּ�
    FROM TB_STUDENT
    ORDER BY 1;

--11. �� ������б��� 1 �⿡ �� ���� �а����� �л��� ���������� ���� ����� ��������.
--�̸� ���� ����� �л��̸�, �а��̸�, ��米���̸� ���� �����Ǿ� �ִ� VIEW �� ����ÿ�.
--�̶� ���� ������ ���� �л��� ���� �� ������ ����Ͻÿ� (��, �� VIEW �� �ܼ� SELECT
--���� �� ��� �а����� ���ĵǾ� ȭ�鿡 �������� ����ÿ�.)
CREATE VIEW VM_�������
AS SELECT STUDENT_NAME AS �л��̸�,
          DEPARTMENT_NAME AS �а��̸�,
          PROFESSOR_NAME AS ���������̸�
    FROM TB_STUDENT
    JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
    LEFT OUTER JOIN TB_PROFESSOR ON(COACH_PROFESSOR_NO = PROFESSOR_NO)
    ORDER BY 1;

--12. ��� �а��� �а��� �л� ���� Ȯ���� �� �ֵ��� ������ VIEW �� �ۼ��� ����.
CREATE VIEW VM_�а����л���
AS SELECT DEPARTMENT_NAME,
          COUNT(*) AS STUDENT_COUNT
    FROM TB_STUDENT
    JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
    GROUP BY DEPARTMENT_NAME
    ORDER BY 1;

--13. ������ ������ �л��Ϲ����� View �� ���ؼ� �й��� A213046 �� �л��� �̸��� ����
--�̸����� �����ϴ� SQL ���� �ۼ��Ͻÿ�.
SELECT * FROM VW_�л��Ϲ����� WHERE �й� = 'A213046';

UPDATE VW_�л��Ϲ�����
SET �л��̸� = '��浿'
WHERE �й� = 'A213046';

--14. 13 �������� ���� VIEW �� ���ؼ� �����Ͱ� ����� �� �ִ� ��Ȳ�� �������� VIEW ��
--��� �����ؾ� �ϴ��� �ۼ��Ͻÿ�
CREATE VIEW VW_�л��Ϲ�����
AS SELECT STUDENT_NO AS �й�,
          STUDENT_NAME AS �л��̸�,
          STUDENT_ADDRESS AS �ּ�
    FROM TB_STUDENT
    ORDER BY 1
    WITH READ ONLY;

--15. �� ������б��� �ų� ������û ��A�� �Ǹ� Ư�� �α� ����鿡 ���� ��û�� ����
--������ �ǰ� �ִ�. �ֱ� 3 ���� �������� �����ο��� ���� ���Ҵ� 3 ������ ã�� ������
--�ۼ��غ��ÿ�.
-- �� ������ ����� 2007�� 3�� �����̹Ƿ� ���Ƿ� 200403�� �����ߴ�.
SELECT �����ȣ, �����̸�, "������������(��)"
FROM (SELECT CLASS_NO AS �����ȣ,
        CLASS_NAME AS �����̸�,
        COUNT(*) AS "������������(��)",
        RANK() OVER (ORDER BY COUNT(*) DESC) AS ����
        FROM TB_STUDENT
        JOIN TB_GRADE USING(STUDENT_NO)
JOIN TB_CLASS USING(CLASS_NO)
WHERE TERM_NO > 200403
GROUP BY CLASS_NO, CLASS_NAME)
WHERE ���� <4
ORDER BY 3 DESC;

-- [DML]

--1. �������� ���̺�(TB_CLASS_TYPE)�� �Ʒ��� ���� �����͸� �Է��Ͻÿ�

INSERT INTO TB_CLASS_TYPE VALUES (01, '�����ʼ�');
INSERT INTO TB_CLASS_TYPE VALUES (02, '��������');
INSERT INTO TB_CLASS_TYPE VALUES (03, '�����ʼ�');
INSERT INTO TB_CLASS_TYPE VALUES (04, '���缱��');
INSERT INTO TB_CLASS_TYPE VALUES (05, '������');

/*
INSERT ALL
INTO TB_CLASS_TYPE VALUES (01, '�����ʼ�')
INTO TB_CLASS_TYPE VALUES (02, '��������')
INTO TB_CLASS_TYPE VALUES (03, '�����ʼ�')
INTO TB_CLASS_TYPE VALUES (04, '���缱��')
INTO TB_CLASS_TYPE VALUES (05, '������')
SELECT *
FROM DUAL;
*/

--2. �� ������б� �л����� ������ ���ԵǾ� �ִ� �л��Ϲ����� ���̺��� ������� ����.
--�Ʒ� ������ �����Ͽ� ������ SQL ���� �ۼ��Ͻÿ�. (���������� �̿��Ͻÿ�)
CREATE TABLE TB_�л��Ϲ�����
AS SELECT STUDENT_NO AS �й�,
          STUDENT_NAME AS �л��̸�,
          STUDENT_ADDRESS AS �ּ�
    FROM TB_STUDENT;

--3. ������а� �л����� �������� ���ԵǾ� �ִ� �а����� ���̺��� ������� ����.
--�Ʒ� ������ �����Ͽ� ������ SQL ���� �ۼ��Ͻÿ�. (��Ʈ : ����� �پ���, �ҽŲ�
--�ۼ��Ͻÿ�)
-- �� VIEW�� ������ ������ �־��� �� ������ VIEW�� ���� ����� �����Ƿ�
-- �� ���̺��� �����϶�� ������ �����ϰ� Ǯ����.
CREATE TABLE TB_������а�
AS SELECT STUDENT_NO AS �й�,
           STUDENT_NAME AS �л��̸�,
           TO_CHAR(TO_DATE(SUBSTR(STUDENT_SSN, 1, 2), 'RR'), 'YYYY') AS ����⵵,
           PROFESSOR_NAME AS �����̸�
    FROM TB_STUDENT
    JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
    LEFT OUTER JOIN TB_PROFESSOR ON (COACH_PROFESSOR_NO = PROFESSOR_NO)
    WHERE DEPARTMENT_NAME = '������а�';

--4. �� �а����� ������ 10% ������Ű�� �Ǿ���. �̿� ����� SQL ���� �ۼ��Ͻÿ�. (��,
--�ݿø��� ����Ͽ� �Ҽ��� �ڸ����� ������ �ʵ��� ����)
UPDATE TB_DEPARTMENT
SET CAPACITY = ROUND(CAPACITY * 1.1);

--5. �й� A413042 �� �ڰǿ� �л��� �ּҰ� "����� ���α� ���ε� 181-21 "�� ����Ǿ��ٰ�
--����. �ּ����� �����ϱ� ���� ����� SQL ���� �ۼ��Ͻÿ�.
-- �� ���� �����ʹ� ����. (A413042��� �й�, �ڰǿ��� �̸��� ����.)
UPDATE TB_STUDENT
SET STUDENT_ADDRESS = '����� ���α� ���ε� 181-21'
WHERE STUDENT_NO = 'A413042';

--6. �ֹε�Ϲ�ȣ ��ȣ���� ���� �л����� ���̺��� �ֹι�ȣ ���ڸ��� �������� �ʱ��
--�����Ͽ���. �� ������ �ݿ��� ������ SQL ������ �ۼ��Ͻÿ�.
--(��. 830530-2124663 ==> 830530 )
UPDATE TB_STUDENT
SET STUDENT_SSN = SUBSTR(STUDENT_SSN, 1, 6);

--7. ���а� ����� �л��� 2005 �� 1 �б⿡ �ڽ��� ������ '�Ǻλ�����' ������
--�߸��Ǿ��ٴ� ���� �߰��ϰ�� ������ ��û�Ͽ���. ��� ������ Ȯ�� ���� ��� �ش�
--������ ������ 3.5 �� ����Ű�� �����Ǿ���. ������ SQL ���� �ۼ��Ͻÿ�.
-- �� TB_STUDENT ���̺��� �� �л��� ���� �����Ͱ� �ִ�.
-- �� ������ TB_GRADE ���̺��� �ش� �����Ͱ� ����.
UPDATE TB_GRADE
SET POINT = 3.5
WHERE STUDENT_NO = (SELECT STUDENT_NO 
                    FROM TB_STUDENT 
                    WHERE STUDENT_NAME = '�����'
                    AND DEPARTMENT_NO = (SELECT DEPARTMENT_NO
                                          FROM TB_DEPARTMENT
                                          WHERE DEPARTMENT_NAME = '���а�'))
AND TERM_NO = '200501';

--8. ���� ���̺�(TB_GRADE) ���� ���л����� �����׸��� �����Ͻÿ�.
SELECT COUNT(*)
FROM TB_GRADE;

DELETE FROM TB_GRADE
WHERE STUDENT_NO IN (SELECT STUDENT_NO
                      FROM TB_STUDENT
                      WHERE ABSENCE_YN = 'Y');






