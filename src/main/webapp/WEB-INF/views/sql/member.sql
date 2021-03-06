DROP TABLE MEMBER;
CREATE TABLE MEMBER(
	MEMBERNO NUMBER PRIMARY KEY,
	MEMBERID VARCHAR2(32) UNIQUE,
	MEMBERPW VARCHAR2(32),
	MEMBERNAME VARCHAR2(32),
	MEMBERTEL VARCHAR2(32),
	MEMBEREMAIL VARCHAR2(32) UNIQUE,
	MEMBERADDRESS VARCHAR2(64),
	REGDATE DATE,
	STATUS NUMBER



);
DROP SEQUENCE MEMBER_SEQ;

CREATE SEQUENCE MEMBER_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;

INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL, 'admin', '1111', 'admin', '010-1111-1111','admin@gmain.com','서울',SYSDATE,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL, 'test1234', '1111', 'test1234', '010-1111-1111','test1234@gmain.com','서울',SYSDATE,1);
UPDATE MEMBER SET STATUS =1 WHERE MEMBERNO=3;
delete from member where memberno=3;
COMMIT;
SELECT * FROM MEMBER;