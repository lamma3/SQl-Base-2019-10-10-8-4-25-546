CREATE TABLE student (
  id VARCHAR2(3) NOT NULL,
  name VARCHAR2(32) NULL,
  age NUMBER NULL,
  sex VARCHAR2(6) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE subject (
  id VARCHAR2(4) NOT NULL,
  subject VARCHAR2(32) NULL,
  teacher VARCHAR2(32) NULL,
  description VARCHAR2(64) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE score (
  id NUMBER NOT NULL,
  student_id VARCHAR2(3) NULL,
  subject_id VARCHAR2(32) NULL,
  score NUMBER NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (student_id) REFERENCES student(id),
  FOREIGN KEY (subject_id) REFERENCES subject(id)
);
