PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE suppliers (
  snum   SID        PRIMARY KEY,
  sname  VARCHAR(5) NOT NULL,
  status INTEGER    NOT NULL,
  city   VARCHAR(6) NOT NULL
);
INSERT INTO "suppliers" VALUES('S1','Smith',20,'London');
INSERT INTO "suppliers" VALUES('S2','Jones',10,'Paris');
INSERT INTO "suppliers" VALUES('S3','Blake',30,'Paris');
INSERT INTO "suppliers" VALUES('S4','Clark',20,'London');
INSERT INTO "suppliers" VALUES('S5','Adams',30,'Athens');
CREATE TABLE parts (
  pnum   PID          PRIMARY KEY,
  pname  VARCHAR(5)   NOT NULL,
  color  VARCHAR(5)   NOT NULL,
  weight DECIMAL(3,1) NOT NULL,
  city   VARCHAR(6)   NOT NULL
);
INSERT INTO "parts" VALUES('P1','Nut','Red',12,'London');
INSERT INTO "parts" VALUES('P2','Bolt','Green',17,'Paris');
INSERT INTO "parts" VALUES('P3','Screw','Blue',17,'Oslo');
INSERT INTO "parts" VALUES('P4','Screw','Red',14,'London');
INSERT INTO "parts" VALUES('P5','Cam','Blue',12,'Paris');
INSERT INTO "parts" VALUES('P6','Cog','Red',19,'London');
CREATE TABLE shipments (
  snum SID     NOT NULL,
  pnum PID     NOT NULL,
  qty  INTEGER NOT NULL,
  CONSTRAINT sp_pkey      PRIMARY KEY (snum,pnum),
  CONSTRAINT sp_supp_fkey FOREIGN KEY (snum) REFERENCES suppliers,
  CONSTRAINT sp_part_fkey FOREIGN KEY (pnum) REFERENCES parts
);
INSERT INTO "shipments" VALUES('S1','P1',300);
INSERT INTO "shipments" VALUES('S1','P2',200);
INSERT INTO "shipments" VALUES('S1','P3',400);
INSERT INTO "shipments" VALUES('S1','P4',200);
INSERT INTO "shipments" VALUES('S1','P5',100);
INSERT INTO "shipments" VALUES('S1','P6',100);
INSERT INTO "shipments" VALUES('S2','P1',300);
INSERT INTO "shipments" VALUES('S2','P2',400);
INSERT INTO "shipments" VALUES('S3','P2',200);
INSERT INTO "shipments" VALUES('S4','P2',200);
INSERT INTO "shipments" VALUES('S4','P4',300);
INSERT INTO "shipments" VALUES('S4','P5',400);
COMMIT;
