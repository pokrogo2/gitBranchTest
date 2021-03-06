CREATE TABLE FBOARD(

	FNO NUMBER PRIMARY KEY,
	FID VARCHAR2(32),
	FCONTENT VARCHAR2(32),
	POSTDATE DATE,
	IP VARCHAR2(32),
	STATUS NUMBER
);
CREATE SEQUENCE FBOARD_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;
INSERT INTO FBOARD VALUES(FBOARD_SEQ.NEXTVAL,'test','content',SYSDATE,'127.0.0.1',1);
INSERT INTO FBOARD VALUES(FBOARD_SEQ.NEXTVAL,'qwer1234','content',SYSDATE,'127.0.0.1',1);
SELECT * FROM FBOARD;

CREATE TABLE FREPLY(
	FNO NUMBER PRIMARY KEY,
	FID VARCHAR2(32),
	FBOARD_NO NUMBER,
	FCONTENT VARCHAR2(32),
	POSTDATE DATE,
	IP VARCHAR2(32)

	
);
DROP SEQUENCE FREPLY_SEQ;
CREATE SEQUENCE FREPLY_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;
ALTER TABLE FREPLY ADD CONSTRAINT FREPLY_BOARD_FK FOREIGN KEY(FBOARD_NO) REFERENCES FBOARD(FNO);
