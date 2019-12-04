-- users
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('child_name1','child_surname1',TO_TIMESTAMP('2001-10-01 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie1','note1',1,true);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('child_name2','child_surname2',TO_TIMESTAMP('2002-10-02 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie2','note2',1,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('child_name3','child_surname3',TO_TIMESTAMP('2003-10-03 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie3','note3',1,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('child_name4','child_surname4',TO_TIMESTAMP('2004-10-04 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie4','note4',1,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('child_name5','child_surname5',TO_TIMESTAMP('2005-10-05 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie5','note5',1,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('child_name6','child_surname6',TO_TIMESTAMP('2006-10-06 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie6','note6',1,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('child_name7','child_surname7',TO_TIMESTAMP('2007-10-07 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie7','note7',1,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('child_name8','child_surname8',TO_TIMESTAMP('2008-10-08 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie8','note8',1,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('child_name9','child_surname9',TO_TIMESTAMP('2009-10-09 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie9','note9',1,true);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('prof_name1','prof_surname7',TO_TIMESTAMP('1981-10-09 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie9','professional',2,true);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('prof_name2','prof_surname6',TO_TIMESTAMP('1982-10-09 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie9','professional',2,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('prof_name3','prof_surname5',TO_TIMESTAMP('1983-10-09 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie9','professional',2,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('prof_name4','prof_surname4',TO_TIMESTAMP('1984-10-09 00:00:00','YYYY-MM-DD HH24:MI:SS'),'jppdemavie9','professional',2,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('prof_name5','prof_surname5',NULL,NULL,NULL,2,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('responsable_name1','responsable_surname1',NULL,NULL,NULL,3,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('guardian_name1','guardian_surname1',NULL,NULL,NULL,0,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('guardian_name2','guardian_surname1',NULL,NULL,NULL,0,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('guardian_name3','guardian_surname1',NULL,NULL,NULL,0,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('guardian_name4','guardian_surname1',NULL,NULL,NULL,0,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('guardian_name5','guardian_surname1',NULL,NULL,NULL,0,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('guardian_name6','guardian_surname1',NULL,NULL,NULL,0,false);
INSERT INTO esope.users(name,surname,birthday,image,note,user_level,archived) VALUES ('guardian_name7','guardian_surname1',NULL,NULL,NULL,0,false);
-- Categories
INSERT INTO esope.categories(name,description) VALUES ('Nutrition','description');
INSERT INTO esope.categories(name,description) VALUES ('Soins Personnels','description');
INSERT INTO esope.categories(name,description) VALUES ('Communication','description');
INSERT INTO esope.categories(name,description) VALUES ('Habitation','description');
INSERT INTO esope.categories(name,description) VALUES ('Déplacements','description');
INSERT INTO esope.categories(name,description) VALUES ('Responsabilités','description');
INSERT INTO esope.categories(name,description) VALUES ('Loisirs','description');
-- Guardians to children
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (2,16);
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (3,16);
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (1,16);
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (2,17);
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (3,17);
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (1,17);
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (4,18);
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (5,19);
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (6,19);
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (7,20);
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (8,21);
INSERT INTO esope.guardians_to_children(id_user_child, id_user_guard) VALUES (9,22);
-- Professionals to children
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (1,10, TO_TIMESTAMP('2000-01-10 15:15:15','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (1,12, TO_TIMESTAMP('2000-05-10 14:14:14','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (1,14, TO_TIMESTAMP('2010-09-09 10:10:10','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (2,10, TO_TIMESTAMP('2010-10-10 03:03:03','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (2,13, TO_TIMESTAMP('2015-10-15 02:02:02','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (3,10, TO_TIMESTAMP('2005-09-05 01:01:01','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (4,10, TO_TIMESTAMP('2005-07-05 01:01:01','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (5,10, TO_TIMESTAMP('2005-04-05 01:01:01','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (6,10, TO_TIMESTAMP('2005-02-05 01:01:01','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (7,11, TO_TIMESTAMP('2005-01-05 01:01:01','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (8,11, TO_TIMESTAMP('2005-03-05 01:01:01','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_user_child,id_user_prof, start_care_date) VALUES (9,13, TO_TIMESTAMP('2005-07-07 01:01:01','YYYY-MM-DD HH24:MI:SS'));
-- TODO Pictures

-- TODO Game sessions
-- TODO selected categories
-- TODO selected pictures