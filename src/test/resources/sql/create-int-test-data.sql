CREATE TABLE USER (
  id           INT(8)      NOT NULL AUTO_INCREMENT,
  name         VARCHAR(25) NOT NULL,
  created_date DATE        NOT NULL,
  age          INT         NOT NULL,
  isAdmin      BOOLEAN     NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO user (name, created_date, age, isAdmin)
VALUES
  ('TIM', 20130325, 32, FALSE),
  ('SALLY', 20001231, 11, TRUE),
  ('JAMES', 20030101, 22, FALSE),
  ('JOHN', 20030101, 62, FALSE),
  ('ROBERT', 20130101, 26, FALSE),
  ('MICHAEL', 20111101, 32, FALSE),
  ('WILLIAM', 20150121, 22, FALSE),
  ('DAVID', 20030101, 21, TRUE),
  ('RICHARD', 20050501, 22, FALSE),
  ('CHARLES', 20030101, 38, FALSE),
  ('JOSEPH', 20030801, 22, FALSE),
  ('THOMAS', 20030101, 26, FALSE),
  ('CHRISTOPHER', 20030201, 44, FALSE),
  ('DANIEL', 20080701, 56, FALSE),
  ('PAUL', 20031101, 44, FALSE),
  ('MARK', 20130101, 26, FALSE),
  ('DONALD', 20111101, 32, FALSE),
  ('GEORGE', 20150121, 22, FALSE),
  ('KENNETH', 20030101, 21, TRUE),
  ('STEVEN', 20050501, 22, FALSE),
  ('EDWARD', 20030101, 38, FALSE),
  ('BRIAN', 20080101, 22, FALSE),
  ('RONALD', 20030101, 26, TRUE),
  ('ANTHONY', 20030201, 44, FALSE),
  ('KEVIN', 20080701, 56, FALSE),
  ('JASON', 20031101, 44, FALSE),
  ('MATTHEW', 20111111, 23, FALSE),
  ('TIM', 20130325, 32, FALSE),
  ('SALLY', 20001231, 11, TRUE),
  ('JAMES', 20030101, 22, FALSE),
  ('JOHN', 20030101, 62, FALSE),
  ('ROBERT', 20130101, 26, FALSE),
  ('MICHAEL', 20111101, 32, FALSE),
  ('WILLIAM', 20150121, 22, FALSE),
  ('DAVID', 20030101, 21, TRUE),
  ('RICHARD', 20050501, 22, FALSE),
  ('CHARLES', 20030101, 38, FALSE),
  ('JOSEPH', 20030801, 22, FALSE),
  ('THOMAS', 20030101, 26, FALSE),
  ('CHRISTOPHER', 20030201, 44, FALSE),
  ('DANIEL', 20080701, 56, FALSE),
  ('PAUL', 20031101, 44, FALSE),
  ('MARK', 20130101, 26, FALSE),
  ('DONALD', 20111101, 32, FALSE),
  ('GEORGE', 20150121, 22, FALSE),
  ('KENNETH', 20030101, 21, TRUE),
  ('STEVEN', 20050501, 22, FALSE),
  ('EDWARD', 20030101, 38, FALSE),
  ('BRIAN', 20080101, 22, FALSE),
  ('RONALD', 20030101, 26, TRUE),
  ('ANTHONY', 20030201, 44, FALSE),
  ('KEVIN', 20080701, 56, FALSE),
  ('JASON', 20031101, 44, FALSE),
  ('MATTHEW', 20111111, 23, FALSE),
  ('TIM', 20130325, 32, FALSE),
  ('SALLY', 20001231, 11, TRUE),
  ('JAMES', 20030101, 22, FALSE),
  ('JOHN', 20030101, 62, FALSE),
  ('ROBERT', 20130101, 26, FALSE),
  ('MICHAEL', 20111101, 32, FALSE),
  ('WILLIAM', 20150121, 22, FALSE),
  ('DAVID', 20030101, 21, TRUE),
  ('RICHARD', 20050501, 22, FALSE),
  ('CHARLES', 20030101, 38, FALSE),
  ('JOSEPH', 20030801, 22, FALSE),
  ('THOMAS', 20030101, 26, FALSE),
  ('CHRISTOPHER', 20030201, 44, FALSE),
  ('DANIEL', 20080701, 56, FALSE),
  ('PAUL', 20031101, 44, FALSE),
  ('MARK', 20130101, 26, FALSE),
  ('DONALD', 20111101, 32, FALSE),
  ('GEORGE', 20150121, 22, FALSE),
  ('KENNETH', 20030101, 21, TRUE),
  ('STEVEN', 20050501, 22, FALSE),
  ('EDWARD', 20030101, 38, FALSE),
  ('BRIAN', 20080101, 22, FALSE),
  ('RONALD', 20030101, 26, TRUE),
  ('ANTHONY', 20030201, 44, FALSE),
  ('KEVIN', 20080701, 56, FALSE),
  ('JASON', 20031101, 44, FALSE),
  ('MATTHEW', 20111111, 23, FALSE);