-- Casey Pye, Damon Simpkinson, Thomas Whitelock
-- CS499: Senior Project

DROP TABLE IF EXISTS student CASCADE;
CREATE TABLE student
( student_id            SERIAL        PRIMARY KEY
, first_name            VARCHAR(20)   NOT NULL
, middle_name           VARCHAR(20)
, last_name             VARCHAR(20)   NOT NULL
, title                 VARCHAR(5)
, address_street        VARCHAR(30)   NOT NULL
, address_city          VARCHAR(20)   NOT NULL
, address_state         VARCHAR(2)    NOT NULL
, address_zip           INTEGER       NOT NULL
, grade                 INTEGER       NOT NULL
, homeroom_teacher      VARCHAR(20)   NOT NULL);


DROP TABLE IF EXISTS staff CASCADE;
CREATE TABLE staff
( staff_id              SERIAL        PRIMARY KEY
, user_name             VARCHAR(20)   NOT NULL
, user_password         VARCHAR(30)   NOT NULL
, user_level            VARCHAR(20)   NOT NULL
, first_name            VARCHAR(20)   NOT NULL
, last_name             VARCHAR(20)   NOT NULL
, grade_taught          VARCHAR(2)    NOT NULL);


DROP TABLE IF EXISTS parents CASCADE;
CREATE TABLE parents
( parents_id            SERIAL        PRIMARY KEY
, first_name_father     VARCHAR(20)
, last_name_father      VARCHAR(20)
, first_name_mother     VARCHAR(20)
, last_name_mother      VARCHAR(20)
, address_street        VARCHAR(30)   NOT NULL
, address_city          VARCHAR(20)   NOT NULL
, address_state         VARCHAR(2)    NOT NULL
, address_zip           INTEGER       NOT NULL);


DROP TABLE IF EXISTS student_staff_relations CASCADE;
CREATE TABLE student_staff_relations
( stu_sta_relation_id   SERIAL        PRIMARY KEY
, student_id            INTEGER       REFERENCES student(student_id)
, staff_id              INTEGER       REFERENCES staff(staff_id));


DROP TABLE IF EXISTS student_parent_relations CASCADE;
CREATE TABLE student_parent_relations
( stu_par_relation_id   SERIAL        PRIMARY KEY
, student_id            INTEGER       REFERENCES student(student_id)
, parents_id            INTEGER       REFERENCES parents(parents_id));


DROP TABLE IF EXISTS incidents CASCADE;
CREATE TABLE incidents
( incident_id           SERIAL        PRIMARY KEY
, date_day              INTEGER       NOT NULL
, date_month            INTEGER       NOT NULL
, date_year             INTEGER       NOT NULL
, student_initiating    INTEGER       REFERENCES student(student_id)
, staff_reporting       INTEGER       REFERENCES staff(staff_id)
, location              VARCHAR(20)   NOT NULL
, description           VARCHAR(200)  NOT NULL);


INSERT INTO student
( first_name
, middle_name
, last_name
, title
, address_street
, address_city
, address_state
, address_zip
, grade
, homeroom_teacher)
VALUES
( 'Johnny'
, 'NMN'
, 'Lingo'
, 'Jr.'
, '41 Island Parkway'
, 'Boise'
, 'ID'
, 83712
, 3
, 'Largo')
,
( 'Jane'
, 'NMN'
, 'Lingo'
, 'NA'
, '41 Island Parkway'
, 'Boise'
, 'ID'
, 83712
, 2
, 'Hoover')
,
( 'Bartholomew'
, 'JoJo'
, 'Simpson'
, 'NA'
, '742 Evergreen Terrace'
, 'Springfield'
, 'ID'
, 83277
, 4
, 'Krabapple')
,
( 'Lisa'
, 'Marie'
, 'Simpson'
, 'NA'
, '742 Evergreen Terrace'
, 'Springfield'
, 'ID'
, 83277
, 2
, 'Hoover')
,
( 'Rodney'
, 'NMN'
, 'Flanders'
, 'NA'
, '744 Evergreen Terrace'
, 'Springfield'
, 'ID'
, 83277
, 4
, 'Krabapple')
,
( 'Todd'
, 'NMN'
, 'Flanders'
, 'NA'
, '744 Evergreen Terrace'
, 'Springfield'
, 'ID'
, 83277
, 4
, 'Krabapple')
,
( 'Nelson'
, 'Mandela'
, 'Muntz'
, 'NA'
, '47 Huckleberry Dr'
, 'Springfield'
, 'ID'
, 83227
, 4
, 'Krabapple')
,
( 'Milhouse'
, 'Mussolini'
, 'Van Houten'
, 'NA'
, '316 Pikeland Ave'
, 'Springfield'
, 'ID'
, 83227
, 4
, 'Krabapple')
,
( 'Raphael'
, 'NMN'
, 'Wiggum'
, 'NA'
, '1337 Quotable Drive'
, 'Springfield'
, 'ID'
, 83227
, 3
, 'Largo')
,
( 'Peeta'
, 'NMN'
, 'Mellark'
, 'NA'
, '13 Bakery Court'
, 'Boise'
, 'ID'
, 83712
, 3
, 'Largo')
,
( 'Karniss'
, 'NMN'
, 'Everdeen'
, 'NA'
, '1013 Archery Way'
, 'Boise'
, 'ID'
, 83712
, 2
, 'Hoover')
,
( 'Primrose'
, 'NMN'
, 'Everdeen'
, 'NA'
, '1013 Archery Way'
, 'Boise'
, 'ID'
, 83712
, 2
, 'Hoover')
,
( 'Gale'
, 'NMN'
, 'Hawthorne'
, 'NA'
, '1776 Rebel Court'
, 'Boise'
, 'ID'
, 83712
, 3
, 'Largo')
,
( 'Finnick'
, 'NMN'
, 'Odair'
, 'NA'
, '1649 Fisher Circle'
, 'Boise'
, 'ID'
, 83712
, 4
, 'Krabapple')
,
( 'Annie'
, 'NMN'
, 'Cresta'
, 'NA'
, '1651 Fisher Circle'
, 'Boise'
, 'ID'
, 83712
, 2
, 'Hoover')
,
( 'Johanna'
, 'NMN'
, 'Mason'
, 'NA'
, '1414 Lumberjack Drive'
, 'Boise'
, 'ID'
, 83712
, 4
, 'Krabapple')
,
( 'Luke'
, 'Sky'
, 'Walker'
, 'NA'
, '421 Desert Drive'
, 'Boise'
, 'ID'
, 83712
, 3
, 'Largo')
,
( 'Leia'
, 'Sky'
, 'Walker'
, 'NA'
, '421 Desert Drive'
, 'Boise'
, 'ID'
, 83712
, 3
, 'Largo')
,
( 'Harry'
, 'James'
, 'Potter'
, 'NA'
, '999 Stair Way'
, 'Boise'
, 'ID'
, 83712
, 2
, 'Hoover')
,
( 'Ronald'
, 'NMN'
, 'Weasley'
, 'NA'
, '742 Nowhere Drive'
, 'Boise'
, 'ID'
, 83712
, 2
, 'Hoover')
,
( 'Ginny'
, 'NMN'
, 'Weasley'
, 'NA'
, '742 Nowhere Drive'
, 'Boise'
, 'ID'
, 83712
, 2
, 'Hoover')
,
( 'Fred'
, 'NMN'
, 'Weasley'
, 'NA'
, '742 Nowhere Drive'
, 'Boise'
, 'ID'
, 83712
, 4
, 'Krabapple')
,
( 'George'
, 'NMN'
, 'Weasley'
, 'NA'
, '742 Nowhere Drive'
, 'Boise'
, 'ID'
, 83712
, 4
, 'Krabapple')
,
( 'Draco'
, 'NMN'
, 'Malfoy'
, 'NA'
, '1313 Aeragin Court'
, 'Boise'
, 'ID'
, 83712
, 3
, 'Largo');


INSERT INTO staff
( user_name
, user_password
, user_level
, first_name
, last_name
, grade_taught)
VALUES
( 'sskinner'
, '12345'
, 'admin'
, 'Seymour'
, 'Skinner'
, 13)
,
( 'ehoover'
, '12345'
, 'teacher'
, 'Elizabeth'
, 'Hoover'
, 2)
,
( 'dlargo'
, '12345'
, 'teacher'
, 'Dewey'
, 'Largo'
, 3)
,
( 'diebartdie'
, '12345'
, 'teacher'
, 'Edna'
, 'Krabapple'
, 4)
,
( 'willie'
, '12345'
, 'support'
, 'William'
, 'McDougal'
, -1);

INSERT INTO parents
( first_name_father
, last_name_father
, first_name_mother
, last_name_mother
, address_street
, address_city
, address_state
, address_zip)
VALUES
( 'Johnny'
, 'Lingo'
, 'Mahana'
, 'Lingo'
, '41 Island Parkway'
, 'Boise'
, 'ID'
, 83712)
,
( 'Homer'
, 'Simpson'
, 'Marge'
, 'Simpson'
, '742 Evergreen Terrace'
, 'Springfield'
, 'ID'
, 83277)
,
( 'Ned'
, 'Flanders'
, 'NA'
, 'NA'
, '744 Evergreen Terrace'
, 'Springfield'
, 'ID'
, 83277)
,
( 'Eddie'
, 'Muntz'
, 'Edna'
, 'Muntz'
, '47 Huckleberry Dr'
, 'Springfield'
, 'ID'
, 83227)
,
( 'Kirk'
, 'Van Houten'
, 'Luann'
, 'Van Houten'
, '316 Pikeland Ave'
, 'Springfield'
, 'ID'
, 83227)
,
( 'Clancy'
, 'Wiggum'
, 'Sarah'
, 'Wiggum'
, '1337 Quotable Drive'
, 'Springfield'
, 'ID'
, 83227)
,
( 'John'
, 'Mellark'
, 'Jane'
, 'Mellark'
, '13 Bakery Court'
, 'Boise'
, 'ID'
, 83712)
,
( 'John'
, 'Everdeen'
, 'Jane'
, 'Everdeen'
, '1013 Archery Way'
, 'Boise'
, 'ID'
, 83712)
,
( 'Richard'
, 'Hawthorne'
, 'Julie'
, 'Hawthorne'
, '1776 Rebel Court'
, 'Boise'
, 'ID'
, 83712)
,
( 'Michael'
, 'Odair'
, 'Katie'
, 'Odair'
, '1649 Fisher Circle'
, 'Boise'
, 'ID'
, 83712)
,
( 'James'
, 'Cresta'
, 'Jill'
, 'Cresta'
, '1651 Fisher Circle'
, 'Boise'
, 'ID'
, 83712)
,
( 'Paul'
, 'Mason'
, 'Sariah'
, 'Mason'
, '1414 Lumberjack Drive'
, 'Boise'
, 'ID'
, 83712)
,
( 'Anakin'
, 'Walker'
, 'Padme'
, 'Walker'
, '421 Desert Drive'
, 'Boise'
, 'ID'
, 83712)
,
( 'James'
, 'Potter'
, 'Lilly'
, 'Potter'
, '999 Stair Way'
, 'Boise'
, 'ID'
, 83712)
,
( 'Arthur'
, 'Weasley'
, 'Molly'
, 'Weasley'
, '742 Nowhere Drive'
, 'Boise'
, 'ID'
, 83712)
,
( 'Lucius'
, 'Malfoy'
, 'Narcissa'
, 'Malfoy'
, '1313 Aeragin Court'
, 'Boise'
, 'ID'
, 83712);


INSERT INTO student_staff_relations
( student_id
, staff_id)
VALUES
( 1, 3),
( 2, 2),
( 3, 4),
( 4, 2),
( 5, 4),
( 6, 4),
( 7, 4),
( 8, 4),
( 9, 3),
(10, 3),
(11, 2),
(12, 2),
(13, 3),
(14, 4),
(15, 2),
(16, 4),
(17, 3),
(18, 3),
(19, 2),
(20, 2),
(21, 2),
(22, 4),
(23, 4),
(24, 3);


INSERT INTO student_parent_relations
( student_id
, parents_id)
VALUES
( 1, 1),
( 2, 1),
( 3, 2),
( 4, 2),
( 5, 3),
( 6, 3),
( 7, 4),
( 8, 5),
( 9, 6),
(10, 7),
(11, 8),
(12, 8),
(13, 9),
(14, 10),
(15, 11),
(16, 12),
(17, 13),
(18, 13),
(19, 14),
(20, 15),
(21, 15),
(22, 15),
(23, 15),
(24, 16);
