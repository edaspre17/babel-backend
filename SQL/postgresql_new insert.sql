-- Categories
INSERT INTO categories(id, name,description) VALUES (1,'Nutrition','description');
INSERT INTO categories(id, name,description) VALUES (2,'Soins Personnels','description');
INSERT INTO categories(id, name,description) VALUES (3,'Communication','description');
INSERT INTO categories(id, name,description) VALUES (4,'Habitation','description');
INSERT INTO categories(id, name,description) VALUES (5,'Déplacements','description');
INSERT INTO categories(id, name,description) VALUES (6,'Responsabilités','description');
INSERT INTO categories(id, name,description) VALUES (7,'Loisirs','description');
-- Pictures
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitudes de déplacement',5,'/bus.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitudes de déplacement',5,'/marcher.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitudes de déplacement',5,'/traverser.jpg  ');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitudes de déplacement',5,'/velo.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitudes de déplacement',5,'/voiture.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitudes de loisirs',7,'/casque et ordi.jpg'); 
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitudes de loisirs',7,'/écrire.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitudes de loisirs',7,'/Lire.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitudes de loisirs',7,'/television.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/allumer lumiere.jpg'); 
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/balayer.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/machine à laver.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/passer d une pièce à l autre.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/prothèse.jpg'); 
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/ranger son espace.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/vaisselle def.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relatives à la nutrition', 1,'/boire tasse.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relatives à la nutrition', 1,'/dresserlatable.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relatives à la nutrition', 1,'/manger au restaurant.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relatives à la nutrition', 1,'/manger avec les mains.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relatives à la nutrition', 1,'/preěparer a manger.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relatives à la nutrition', 1,'/sandwich def.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relatives à la nutrition', 1,'/serviraliments.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',3,'parler à des adultes.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',3,'parler en communauté.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',3,'téléphone.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',6,'acheter .jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'laver les mains.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'urgence.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'brosser cheveux.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'chaussures.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'dormir.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'douche.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'habits sales.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'laver cheveux.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'prendre vetement garde robe.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'se brosser les dents.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'se lever.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'se moucher.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'sécher les cheveux.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'s essuyer.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'s habiller.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'s habiller-tirette.jpg');
INSERT INTO pictures(description,category_id,path) VALUES ('Image relative à un truc',2,'toilettes.jpg');
-- Children
INSERT INTO children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('NotADeleguee','childsurname1',TO_TIMESTAMP('2015-01-01','YYYY-MM-DD'),'FR','Gaucher','Enseignement ordinaire','schoolLVL',NULL,'note1');--1
INSERT INTO children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('FinallyGone','childsurname2',TO_TIMESTAMP('2015-02-02','YYYY-MM-DD'),'NL','Gaucher','Enseignement ordinaire','schoolLVL',NULL,'note2');--2
INSERT INTO children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('WhatsAI','childsurname3',TO_TIMESTAMP('2015-03-03','YYYY-MM-DD'),'NL','Droitier','Enseignement spécialisé','schoolLVL','schoolType','note3');--3
INSERT INTO children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('WantsALogo?','childsurname4',TO_TIMESTAMP('2015-04-04','YYYY-MM-DD'),'FR','Droitier','Enseignement spécialisé','schoolLVL','schoolType','note4');--4
INSERT INTO children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('Drunkard','childsurname5',TO_TIMESTAMP('2015-05-05','YYYY-MM-DD'),'FR','Ambidextre','Enseignement en intégration','schoolLVL','schoolType','note5');--5
INSERT INTO children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('NotLate','childsurname6',TO_TIMESTAMP('2015-06-06','YYYY-MM-DD'),'NL','Ambidextre','Enseignement en intégration','schoolLVL','schoolType','note6');--6
INSERT INTO children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('Mushu','childsurname7',TO_TIMESTAMP('2015-07-07','YYYY-MM-DD'),'NL','Adominant','Enseignement en intégration','schoolLVL','schoolType','note7');--7
INSERT INTO children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('LetsDoPaypal','childsurname8',TO_TIMESTAMP('2015-08-08','YYYY-MM-DD'),'FR','Adominant','Enseignement ordinaire','schoolLVL',NULL,'note8');--8
INSERT INTO children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('IrishMan','childsurname9',TO_TIMESTAMP('2015-09-09','YYYY-MM-DD'),'FR','Adominant','Enseignement ordinaire','schoolLVL',NULL,'note9');--9
-- Users : specials
INSERT INTO users(name, surname, user_level, phone,email,pwd) VALUES ('OnceUponA','Administrator', 3,'08 36 65 65 65','admin.esope@vinci.be','admin');
INSERT INTO users(name, surname, user_level, phone,email,pwd) VALUES ('OnceUponA','Manager', 2,'08 36 65 65 65','man.esope@vinci.be','man');
-- Users : contacts
INSERT INTO users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian1','Contact1',0,'04 86 01 01 01','c1nt1ct@gmail.be','mdp');--3
INSERT INTO users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian2','Contact2',0,'04 86 02 02 02','c2nt2ct@gmail.be','mdp');--4
INSERT INTO users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian3','Contact3',0,'04 86 03 03 03','c3nt3ct@gmail.be','mdp');--5
INSERT INTO users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian4','Contact4',0,'04 86 04 04 04','c4nt4ct@gmail.be','mdp');--6
INSERT INTO users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian5','Contact5',0,'04 86 05 05 05','c5nt5ct@gmail.be','mdp');--7
INSERT INTO users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian6','Contact6',0,'04 86 06 06 06','c6nt6ct@gmail.be','mdp');--8
INSERT INTO users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian7','Contact7',0,'04 86 07 07 07','c7nt7ct@gmail.be','mdp');--9
INSERT INTO users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian8','Contact8',0,'04 86 08 08 08','c8nt8ct@gmail.be','mdp');--10
-- Users : professionals
INSERT INTO users(name, surname, user_level, phone,email,pwd,job) VALUES ('WhatDoYouActuallyKnow?','KissTheGirl',1,'04 85 10 10 10','dr1@vinci.be','mdp','Ergothérapeute');--11
INSERT INTO users(name, surname, user_level, phone,email,pwd,job) VALUES ('NoSoul','PasUneVidéoSVP!',1,'04 85 20 20 20','dr2@vinci.be','mdp','Psychologue');--12
INSERT INTO users(name, surname, user_level, phone,email,pwd,job) VALUES ('NoBalls','Flash',1,'04 85 30 30 30','dr3@vinci.be','mdp','Educateur');--13
INSERT INTO users(name, surname, user_level, phone,email,pwd,job) VALUES ('AreYouSarious?','PleaseNotTheRoaster',1,'04 85 40 40 40','dr4@vinci.be','mdp','Kinésithérapeute');--14
INSERT INTO users(name, surname, user_level, phone,email,pwd,job) VALUES ('Daddy','OSCheatSheet',1,'04 85 50 50 50','dr5@vinci.be','mdp','Enseignant');--15
INSERT INTO users(name, surname, user_level, phone,email,pwd,job) VALUES ('Mommy','WhyThePlacenta?',1,'04 85 60 60 60','dr6@vinci.be','mdp','Autre');--16

-- Child_contacts
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (4,1,'Mère');
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (5,1,'Soeur (majeur)');
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (3,1,'Prère');
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (6,2,'Mère');
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (7,2,'Frère (majeur)');
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (8,3,'Autre');
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (9,4,'Autre');
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (10,5,'Tuteur');
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (10,6,'Tuteur');
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (7,7,'Frère(majeur)');
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (8,8,'Autre');
INSERT INTO children_contacts(user_id,child_id,relation) VALUES (6,9,'Mère');
-- Professionals_to_children
INSERT INTO professionals_to_children(child_id,user_id,start_care_date,end_care_date) VALUES (1,11,TO_TIMESTAMP('2017-01-01 01:01:01','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2017-01-11 01:01:01','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO professionals_to_children(child_id,user_id,start_care_date) VALUES (1,11,TO_TIMESTAMP('2017-02-02 02:02:02','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO professionals_to_children(child_id,user_id,start_care_date) VALUES (1,12,TO_TIMESTAMP('2017-03-03 03:03:03','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO professionals_to_children(child_id,user_id,start_care_date) VALUES (2,13,TO_TIMESTAMP('2017-04-04 04:04:04','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO professionals_to_children(child_id,user_id,start_care_date) VALUES (3,13,TO_TIMESTAMP('2017-05-05 05:05:05','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO professionals_to_children(child_id,user_id,start_care_date) VALUES (4,11,TO_TIMESTAMP('2017-06-06 06:06:06','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO professionals_to_children(child_id,user_id,start_care_date) VALUES (5,12,TO_TIMESTAMP('2017-07-07 07:07:07','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO professionals_to_children(child_id,user_id,start_care_date) VALUES (6,12,TO_TIMESTAMP('2017-08-08 08:08:08','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO professionals_to_children(child_id,user_id,start_care_date) VALUES (7,12,TO_TIMESTAMP('2017-09-09 09:09:09','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO professionals_to_children(child_id,user_id,start_care_date) VALUES (8,14,TO_TIMESTAMP('2017-10-10 10:10:10','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO professionals_to_children(child_id,user_id,start_care_date) VALUES (9,14,TO_TIMESTAMP('2017-11-11 11:11:11','YYYY-MM-DD HH24:MI:SS'));
-- Handicaps
INSERT INTO handicaps(description) VALUES ('l’enfant présente des difficultés visuelles'); --1
INSERT INTO handicaps(description) VALUES ('l’enfant ne voit pas'); --2
INSERT INTO handicaps(description) VALUES ('l’enfant présente des difficultés auditives'); --3
INSERT INTO handicaps(description) VALUES ('l’enfant n’entend pas'); --4
INSERT INTO handicaps(description) VALUES ('L’enfant présente des difficultés pour contrôler avec précision les mouvements de ses bras et mains'); --5
INSERT INTO handicaps(description) VALUES ('l’enfant ne peut pas mouvoir ses bras et mains'); --6
INSERT INTO handicaps(description) VALUES ('l’enfant présente des difficultés pour s’exprimer oralement'); --7
INSERT INTO handicaps(description) VALUES ('l’enfant ne peut pas parler'); --8
INSERT INTO handicaps(description) VALUES ('l’enfant présente des difficultés pour comprendre les étapes et/ou les images du jeu'); --9
INSERT INTO handicaps(description) VALUES ('l’enfant présente des difficultés pour s’orienter dans l’espace du jeu'); --10
INSERT INTO handicaps(description) VALUES ('l’enfant présente des difficultés pour comprendre les consignes verbales de l’adulte'); --11
INSERT INTO handicaps(description) VALUES ('autre'); --12
-- Handicaps_to_children
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (1,2,'comment');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (2,4,'comment');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (3,6,'gauche');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (4,8,'comment');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (5,2,'comment');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (6,1,'comment');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (7,3,'comment');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (7,5,'droite');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (7,7,'comment');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (8,9,'comment');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (8,10,'comment');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (8,12,'enfant insuportable');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (9,11,'comment');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (9,12,'troubles de l attention');
INSERT INTO handicaps_to_children(child_id,handicap_id,comment) VALUES (9,6,'bilatéral');

-- ###################

INSERT INTO mandates(child_id,instigator,demand,insert_date) VALUES (1,'Parents','Demande de mandat parce que voilà',TO_TIMESTAMP('2018-01-01 01:01:01','YYYY-MM-DD HH24:MI:SS')); --1
INSERT INTO mandates(child_id,instigator,demand,insert_date) VALUES (3,'Parents','Demande de mandat parce que voilà',TO_TIMESTAMP('2018-03-03 03:03:03','YYYY-MM-DD HH24:MI:SS')); --2
INSERT INTO mandates(child_id,instigator,demand,insert_date) VALUES (1,'Parents','Demande de mandat parce que voilà',TO_TIMESTAMP('2018-05-05 05:05:05','YYYY-MM-DD HH24:MI:SS')); --3
INSERT INTO mandates(child_id,instigator,demand,insert_date) VALUES (6,'Parents','Demande de mandat parce que voilà',TO_TIMESTAMP('2018-06-06 06:06:06','YYYY-MM-DD HH24:MI:SS')); --4
-- Game Sessions
INSERT INTO game_sessions(mandate_id,child_id,user_id,start_date,finished_state,step_one,step_two,step_three,guardian_comment,prof_comment) VALUES (1,1,11,TO_TIMESTAMP('2018-02-12 02:21:21','YYYY-MM-DD HH24:MI:SS'),3,1,2,0,'guardian comment','prof comment');-- 1
INSERT INTO game_sessions(mandate_id,child_id,user_id,start_date,finished_state,step_one,step_two,step_three,guardian_comment,prof_comment) VALUES (2,3,13,TO_TIMESTAMP('2018-05-15 05:51:51','YYYY-MM-DD HH24:MI:SS'),3,2,1,0,'guardian comment','prof comment');-- 2
INSERT INTO game_sessions(mandate_id,child_id,user_id,start_date,finished_state,step_one,step_two,step_three,guardian_comment,prof_comment) VALUES (3,1,12,TO_TIMESTAMP('2018-05-15 05:51:51','YYYY-MM-DD HH24:MI:SS'),2,1,0,2,'guardian comment','prof comment');-- 3
INSERT INTO game_sessions(mandate_id,child_id,user_id,start_date,finished_state,step_one,step_two,step_three,guardian_comment,prof_comment) VALUES (4,6,12,TO_TIMESTAMP('2018-07-17 07:21:21','YYYY-MM-DD HH24:MI:SS'),3,0,1,2,'guardian comment','prof comment');-- 4
-- Selected Categories: 4 pour game1, 2 pour game2, 1 pour game3 et 7 pour game4
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (1,1,1,true);-- 1
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (5,1,2,true);-- 1
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (7,1,3,true);-- 1
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (3,1,4,true);-- 1
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (1,2,1,true);-- 2
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (5,2,2,true);-- 2
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (2,3,1,true);-- 3
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (2,4,1,true);-- 4
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (4,4,2,true);-- 4
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (6,4,3,true);-- 4 
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (7,4,4,true);-- 4 
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (1,4,5,true);-- 4 
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (5,4,6,true);-- 4 
INSERT INTO selected_categories(category_id,game_session_id,sorting,status) VALUES (3,4,7,true);-- 4 
-- Selected Pictures
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (17,1,true,true,true,'note',false,false,true,false,NULL,false); -- 1,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (23,1,true,true,true,'note',false,true,false,true,NULL,false); -- 1,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (20,1,true,true,true,'note',false,true,true,true,NULL,false); -- 1,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (1,1,true,true,true,'note',true,false,true,true,NULL,false); -- 5,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (2,1,true,true,true,'note',true,true,false,true,NULL,false); -- 5,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (5,1,true,true,true,'note',false,true,true,true,NULL,false); -- 5,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (6,1,true,true,true,'note',false,true,false,true,NULL,false); -- 7,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (9,1,true,true,true,'note',false,true,true,false,NULL,true); -- 7,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (8,1,true,true,true,'note',false,true,true,true,NULL,false); -- 7,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (24,1,true,true,true,'note',false,true,false,true,NULL,false); -- 3,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (25,1,true,true,true,'note',false,true,true,true,NULL,false); -- 3,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (26,1,true,true,true,'note',false,true,true,true,NULL,true); -- 3,1
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (17,2,true,true,true,'note',true,false,true,false,NULL,false); -- 1,2
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (19,2,true,true,true,'note',true,false,true,true,NULL,false); -- 1,2
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (20,2,true,true,true,'note',true,false,false,true,NULL,false); -- 1,2
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (3,2,true,true,true,'note',true,false,true,true,NULL,false); -- 5,2
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (4,2,true,true,true,'note',true,false,true,true,NULL,false); -- 5,2
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (1,2,true,true,true,'note',true,false,true,true,NULL,true); -- 5,2
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (28,3,true,true,false,'note',true,false,false,NULL,NULL,false); -- 2,3
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (43,3,true,true,false,'note',true,false,false,NULL,NULL,false); -- 2,3
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (35,3,true,false,false,'note',NULL,NULL,NULL,NULL,NULL,NULL); -- 2,3
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (18,4,true,true,true,'note',false,true,true,false,NULL,true); -- 1,4 
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (19,4,true,true,true,'note',false,true,true,false,NULL,true); -- 1,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (20,4,true,true,true,'note',false,false,true,false,NULL,true); -- 1,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (36,4,true,true,true,'note',false,true,true,false,NULL,true); -- 2,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (44,4,true,true,true,'note',false,true,true,false,NULL,true); -- 2,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (31,4,true,true,true,'note',false,true,false,false,NULL,true); -- 2,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (24,4,true,true,true,'note',false,true,true,false,NULL,true); -- 3,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (25,4,true,true,true,'note',false,true,true,false,NULL,true); -- 3,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (26,4,true,true,true,'note',false,false,true,false,NULL,true); -- 3,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (15,4,true,true,true,'note',false,true,true,false,NULL,true); -- 4,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (13,4,true,true,true,'note',false,true,true,false,NULL,true); -- 4,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (11,4,true,true,true,'note',false,true,true,false,NULL,true); -- 4,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (5,4,true,true,true,'note',false,true,false,false,NULL,true); -- 5,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (1,4,true,true,true,'note',false,true,true,false,NULL,true); -- 5,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (2,4,true,true,true,'note',false,false,true,false,NULL,true); -- 5,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (27,4,true,true,true,'note',false,true,true,false,NULL,true); -- 6,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (6,4,true,true,true,'note',false,true,true,false,NULL,true); -- 7,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (9,4,true,true,true,'note',false,true,true,false,NULL,true); -- 7,4
INSERT INTO selected_pictures(picture_id,game_session_id,step_one_done,step_two_done,step_three_done,note,child_tag,do_like,is_happy,is_autonomous,priority,would_like) VALUES (8,4,true,true,true,'note',false,false,false,false,NULL,true); -- 7,4