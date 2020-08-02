select * from member;
select * from board;

DROP TABLE MEMBER;
DROP TABLE BOARD;

DROP SEQUENCE seq_member_idx;
DROP SEQUENCE seq_board_idx;

COMMIT;
ROLLBACK;
--MEMBER table
--idx �������� �̿��Ͽ� 100���� 1�����ϰ� �Ͽ� �ο� primary key 
--member_id varchar2(10) not null
--member_pwd varchar2(10) not null
--member_name varchar2(20) not null
--email varchar2(30)
--address varchar2(100)
--phone varchar2(10)
--enroll_date date

--BOARD table
--idx �������� �̿� 1���� 1�����Ͽ� �ο� primary key
--div varchar2(10) '����' '�Ϲ�' '���' ������ ���� �������ְ� ����
--title varchar2(50) not null
--board_comment varchar2(3000) not null
--writer varchar2(10)
--write_date date 

CREATE SEQUENCE seq_member_idx
START WITH 100
INCREMENT BY 1
NOCYCLE
NOCACHE;

CREATE TABLE MEMBER (
    idx NUMBER CONSTRAINT pk_member_idx PRIMARY KEY,
    member_id varchar2(10) CONSTRAINT nn_member_id NOT NULL,
    member_pwd varchar2(10) CONSTRAINT nn_member_pwd NOT NULL,
    member_name varchar2(20) CONSTRAINT nn_member_name NOT NULL,
    email varchar2(30),
    address varchar2(100),
    phone varchar2(10),
    enroll_date date
);
COMMENT ON COLUMN KH.MEMBER.idx IS '�ο���ȣ';
COMMENT ON COLUMN KH.MEMBER.member_id IS '���̵�';
COMMENT ON COLUMN KH.MEMBER.member_pwd IS '��й�ȣ';
COMMENT ON COLUMN KH.MEMBER.member_name IS '�̸�';
COMMENT ON COLUMN KH.MEMBER.email IS '�̸���';
COMMENT ON COLUMN KH.MEMBER.address  IS '�ּ�';
COMMENT ON COLUMN KH.MEMBER.phone  IS '����ȣ';
COMMENT ON COLUMN KH.MEMBER.enroll_date  IS '�����';



CREATE SEQUENCE seq_board_idx
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

CREATE TABLE BOARD (
    idx NUMBER CONSTRAINT pk_board_idx PRIMARY KEY,
    div VARCHAR2(10) CONSTRAINT chk_div CHECK (div in('����','�Ϲ�','���')),
    title VARCHAR2(50) CONSTRAINT nn_board_title NOT NULL,
    board_comment VARCHAR2(3000) CONSTRAINT nn_board_comment NOT NULL,
    writer VARCHAR2(10),
    write_date DATE
);
COMMENT ON COLUMN KH.BOARD.idx IS '�Խù�ȣ';
COMMENT ON COLUMN KH.BOARD.div IS '�Խ�������';
COMMENT ON COLUMN KH.BOARD.title IS '����';
COMMENT ON COLUMN KH.BOARD.board_comment IS '����';
COMMENT ON COLUMN KH.BOARD.writer IS '�ۼ���';
COMMENT ON COLUMN KH.BOARD.write_date IS '�ۼ���';

select seq_member_idx.currval from dual;
select seq_member_idx.nextval from dual;

select seq_board_idx.currval from dual;
select seq_board_idx.nextval from dual;