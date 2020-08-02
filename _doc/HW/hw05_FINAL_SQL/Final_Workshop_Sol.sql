SELECT * FROM TB_BOOK;
SELECT * FROM TB_WRITER;
SELECT * FROM TB_PUBLISHER;
SELECT * FROM TB_BOOK_AUTHOR;
SELECT * FROM TB_BOOK_TRANSLATOR;

--1
SELECT count(*) FROM TB_BOOK;
SELECT count(*) FROM TB_WRITER;
SELECT count(*) FROM TB_PUBLISHER;
SELECT count(*) FROM TB_BOOK_AUTHOR;

--2
select C.TABLE_NAME, T.COLUMN_NAME, DATA_TYPE, DATA_DEFAULT, NULLABLE, 
    C.CONSTRAINT_NAME, C.CONSTRAINT_TYPE, C.R_CONSTRAINT_NAME
from user_constraints C
    JOIN user_cons_columns M ON C.table_name=M.table_name
    JOIN user_tab_columns T ON M.table_name=T.table_name
where C.table_name in( 
    'TB_BOOK', 'TB_WRITER', 'TB_PUBLISHER', 'TB_BOOK_AUTHOR')
order by C.table_name;

select * from user_constraints where table_name IN ('TB_BOOK', 'TB_WRITER', 'TB_PUBLISHER', 'TB_BOOK_AUTHOR');
select * from user_cons_columns where table_name IN ('TB_BOOK', 'TB_WRITER', 'TB_PUBLISHER', 'TB_BOOK_AUTHOR');
select * from user_tab_columns where table_name IN ('TB_BOOK', 'TB_WRITER', 'TB_PUBLISHER', 'TB_BOOK_AUTHOR');
select * from all_tab_columns;

--3
select book_no, book_nm from tb_book where length(book_nm) >=25;

--4
select writer_nm, office_telno, home_telno, mobile_no
from (
    select ROWNUM, writer_nm, office_telno, home_telno, mobile_no
    from tb_writer
    where mobile_no like '019%'
        and substr(writer_nm,1,1)='��'
    order by writer_nm)
where ROWNUM=1;

--5
select count(distinct writer_no) AS "�۰�(��)"
from tb_book_author
where compose_type='�ű�';


--6
select compose_type, count(*) from tb_book_author
where compose_type IS NOT NULL
GROUP BY compose_type
HAVING count(*) >= 300;

--7 ���� �ֱٿ� �߰��� �ֽ��� �̸��� ��������, ���ǻ� �̸��� ǥ���ϴ� SQL �� ���� �ۼ��Ͻÿ�.
SELECT book_nm, issue_date, publisher_nm
FROM ( 
    SELECT book_nm, issue_date, publisher_nm
        FROM tb_book
        order by issue_date DESC)
where ROWNUM =1;

--8 ���� ���� å�� �� �۰� 3 ���� �̸��� �� ���� ǥ���ϵ�, ���� �� ������� ǥ���ϴ� SQL �� ���� �ۼ��Ͻÿ�.
--  ��, ��������( ��٣���) �۰��� ���ٰ� �����Ѵ�. ( ��� ����� �� �۰� �̸���, �� �� ���� �� ǥ�� �ǵ��� �� ��)
SELECT writer_nm, count
from ( SELECT writer_nm, count(writer_nm) AS COUNT
    FROM tb_book_author
        JOIN tb_writer USING (writer_no)
    GROUP BY writer_nm
    order by count(writer_nm) DESC)
WHERE ROWNUM <=3;

--9
--�۰� ���� ���̺��� ��� ������� �׸��� �����Ǿ� �ִ� �� �߰��Ͽ���.
--  ������ ������� ���� �� �۰��� ���� ���ǵ����� �����ϰ� ������ ��¥�� �� 
--�����Ű�� SQL �� ���� �ۼ��Ͻÿ�. (COMMIT ó���� ��)
SELECT writer_no, MIN(issue_date)
FROM tb_book
    JOIN tb_book_author USING (book_no)
GROUP BY writer_no
order by TO_NUMBER(writer_no);

SELECT writer_no, regist_date
FROM tb_writer order by TO_NUMBER(writer_no);

UPDATE tb_writer
SET (writer_no, regist_date)  =
        ( SELECT writer_no, MIN(issue_date) AS ISSUE
            FROM tb_book
                JOIN tb_book_author USING (book_no)
            WHERE tb_book_author.writer_no = tb_writer.writer_no
            GROUP BY writer_no)
WHERE EXISTS (SELECT writer_no, MIN(issue_date) AS ISSUE
        FROM tb_book
            JOIN tb_book_author USING (book_no)
        WHERE tb_book_author.writer_no = tb_writer.writer_no
        GROUP BY writer_no);

--10
-- ���� �������� ���� ���̺��� ������ �������� ���� ���� ���� �ϰ� �ִ�. �����δ� �������� ���� �����Ϸ�
--�� �Ѵ�. ���õ� ���뿡 �°� ��TB_BOOK_ TRANSLATOR�� ���̺��� �����ϴ� SQL ������ �ۼ��Ͻÿ�.
--(Primary Key ���� ���� �̸��� ��PK_BOOK_TRANSLATOR�� �� �ϰ�, Reference ���� ���� �̸���
--��FK_BOOK_TRANSLATOR_01��, ��FK_BOOK_TRANSLATOR_02�� �� �� ��)
CREATE TABLE tb_book_translator(
    book_no VARCHAR2(10),
    writer_no VARCHAR2(10),
    trans_lang VARCHAR2(60),
    CONSTRAINT pk_book_translator PRIMARY KEY(book_no, writer_no),
    CONSTRAINT fk_book_translator_01 FOREIGN KEY(book_no)
                    REFERENCES tb_book(book_no),
    CONSTRAINT fk_book_translator_02 FOREIGN KEY(writer_no)
                    REFERENCES tb_writer(writer_no)
);

--11
-- ���� ���� ����(compose_type) �� ' �ű�', ' ����', ' ��', ' ����' �� �ش��ϴ�
-- �����ʹ� ���� ���� ���� ���̺��� ���� ���� ���� ���̺�(TB_BOOK_TRANSLATOR)��
--�ű� �� SQL ������ �ۼ��Ͻÿ�. ��, ��TRANS_LANG�� �÷��� NULL ���·� �ε��� 
--�Ѵ�. ( �̵��� �����ʹ� ���̻� TB_BOOK_AUTHOR ���̺� ���� ���� �ʵ��� ������ ��)
CREATE TRIGGER tg_del_book_author
AFTER DELETE ON TB_BOOK_AUTHOR
FOR EACH ROW
BEGIN
    INSERT INTO tb_book_translator VALUES(
        :OLD.book_no, :OLD.writer_no, null);
END;
/

--169 rows deleted
DELETE FROM tb_book_author
where compose_type in ('�ű�','����','��','����');

SELECT count(*) from tb_book_author
where compose_type in ('�ű�','����','��','����');

--169 rows inserted
select * from tb_book_translator;

ROLLBACK;
COMMIT;


--12
-- 2007 �⵵�� ���ǵ� ������ �̸� �� ������( ����) �� ǥ���ϴ� SQL �� �� �ۼ�
SELECT book_nm, writer_nm, issue_date
FROM tb_book_translator
    JOIN tb_book USING (book_no)
    JOIN tb_writer USING (writer_no)
WHERE EXTRACT(year from issue_date)=2007;

--13
-- 12 �� ����� Ȱ���Ͽ� ��� ���������� �������� ������ �� ������ �ϴ�
-- �� �� �����ϴ� SQL �� ���� �ۼ��Ͻÿ�. ( �� �̸��� ��VW_BOOK_TRANSLATOR���� 
--�ϰ� ������, �� ����, �������� ǥ�õǵ��� �� ��)
CREATE OR REPLACE VIEW vw_book_translator AS (
    SELECT book_nm, writer_nm, issue_date
    FROM tb_book_translator
        JOIN tb_book USING (book_no)
        JOIN tb_writer USING (writer_no)
    WHERE EXTRACT(year from issue_date)=2007
) WITH CHECK OPTION;

SELECT * from vw_book_translator;

UPDATE vw_book_translator
SET issue_date = TO_DATE('99/01/31')
WHERE writer_nm='Ȳ����';

--14 ���ο� ���ǻ�( �� ���ǻ�) �� �ŷ� ����� �ΰ� �Ǿ���. 
--���õ� ���� ������ �Է��ϴ� SQL ������ �ۼ��Ͻÿ�.(COMMIT ó���� ��)
INSERT INTO tb_publisher VALUES('�� ���ǻ�', '02-6710-3737', DEFAULT);

--15 ��������( ��٣���) �۰��� �̸��� ã������ �Ѵ�. �̸��� �������� ���ڸ� 
--ǥ���ϴ� SQL �� ���� �ۼ��Ͻÿ�.
SELECT writer_nm, count(writer_nm)
FROM tb_writer
GROUP BY writer_nm
HAVING count(writer_nm) =2;

--16 ������ ���� ���� �� ���� ����(compose_type) �� ������ �����͵��� �� �� �ʰ� 
--�����Ѵ�. �ش� �÷���NULL �� ��� ' ����' ���� �����ϴ� SQL �� ���� 
--�ۼ��Ͻÿ�.(COMMIT ó���� ��)
--389 ROWS UPDATED
UPDATE tb_book_author
SET compose_type='����'
WHERE compose_type IS NULL;

COMMIT;

--17 �������� �۰� ������ �����Ϸ��� �Ѵ�. �繫���� �����̰�, �繫�� ��ȭ ��ȣ 
--������ 3 �ڸ��� �۰��� �̸��� �繫�� ��ȭ ��ȣ�� ǥ���ϴ� SQL �� ���� �ۼ��Ͻÿ�
SELECT writer_nm, office_telno
FROM tb_writer
WHERE instr(office_telno, '-',1,2) -
      instr(office_telno,'-',1,1) = 4
    AND substr(office_telno,1,2)='02';

--18 2006 �� 1 �� �������� ��ϵ� �� 31 �� �̻� �� �۰� �̸��� �̸������� ǥ���ϴ� SQL �� ���� �ۼ��Ͻÿ�.
SELECT writer_nm
from tb_writer
WHERE regist_date <='750101' -- '75/01/01'
order by writer_nm;

--19. ���� ��� �ٽñ� �α⸦ ��� �ִ� ' Ȳ�ݰ���' ���ǻ縦 ���� ��ȹ���� ������ �Ѵ�. ' Ȳ�ݰ���'
--���ǻ翡�� ������ ���� �� ��� �� ���� 10 �� �̸��� ������� ����, �����¸� ǥ���ϴ� SQL �� ����
--�ۼ��Ͻÿ�. ��� �� ���� 5 �� �̸��� ������ �� �߰��ֹ��ʿ䡯 ��, �������� �� �ҷ������� �� ǥ�� �ϰ�,
--������ �� ���� ��, ������ ������ ǥ�� �� ���� �Ѵ�.
SELECT book_nm, price, 
    CASE WHEN stock_qty < 5 THEN '�߰��ֹ��ʿ�' 
    ELSE '�ҷ�����' END AS stock_quantity
from tb_book
where publisher_nm='Ȳ�ݰ���'
    AND stock_qty <10
ORDER BY stock_qty DESC, book_nm;

--20 ' ��ŸƮ��' ���� �۰��� ���ڸ� ǥ���ϴ� SQL �� ���� �ۼ��Ͻÿ�. ( ��� �����
--�� ������,�� ���ڡ�,�� ���ڡ� �� ǥ���� ��)
SELECT book_nm AS BOOK_TITLE,
       W.writer_nm AS AUTHOR,
       W2.writer_nm AS TRANSLATOR
FROM tb_book B
    JOIN tb_book_author A ON B.book_no = A.book_no
    JOIN tb_book_translator T ON B.book_no = T.book_no
    JOIN tb_writer W ON W.writer_no = A.writer_no
    JOIN tb_writer W2 ON W2.writer_no = T.writer_no
WHERE book_nm='��ŸƮ��';


--21. ���� �������� ���� �����Ϸκ��� �� 30 ���� ����ǰ�, ��� �� ���� 90 �� �̻��� ������ ���� ������, ���
--����, ���� ����, 20% ���� ������ ǥ�� �ϴ� SQL �� ���� �ۼ��Ͻÿ�. ( ��� ����� �� ������, �� ���
--������, �� ����(Org)��, �� ����(New)�� �� ǥ���� ��. ��� ������ ���� ��, ���� ������ ���� ��, ������
--������ ǥ�õǵ��� �� ��)
SELECT book_nm AS "book title",
       stock_qty AS "stock qty",
       TO_CHAR(price, '999,999') AS "PRICE(Org)",
       TO_CHAR(price*(1-.2), '999,999') AS "PRICE(New)"
FROM tb_book
WHERE stock_qty >=90
    AND (sysdate - issue_date)/365 >=30
ORDER BY stock_qty DESC, price DESC, book_nm;
