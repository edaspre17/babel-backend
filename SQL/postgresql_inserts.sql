-- Categories
INSERT INTO esope.categories(name,description) VALUES ('Nutrition','description');
INSERT INTO esope.categories(name,description) VALUES ('Soins Personnels','description');
INSERT INTO esope.categories(name,description) VALUES ('Communication','description');
INSERT INTO esope.categories(name,description) VALUES ('Habitation','description');
INSERT INTO esope.categories(name,description) VALUES ('Déplacements','description');
INSERT INTO esope.categories(name,description) VALUES ('Responsabilités','description');
INSERT INTO esope.categories(name,description) VALUES ('Loisirs','description');
-- Pictures
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitudes de déplacement',5,'/bus.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitudes de déplacement',5,'/marcher.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitudes de déplacement',5,'/traverser.jpg  ');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitudes de déplacement',5,'/velo.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitudes de déplacement',5,'/voiture.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitudes de loisirs',7,'/casque et ordi.jpg'); 
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitudes de loisirs',7,'/écrire.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitudes de loisirs',7,'/Lire.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitudes de loisirs',7,'/television.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/allumer lumiere.jpg'); 
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/balayer.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/machine à laver.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/passer d une pièce à l autre.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/prothèse.jpg'); 
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/ranger son espace.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative aux habitures de vie au logis', 4, '/vaisselle def.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relatives à la nutrition', 1,'/boire tasse.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relatives à la nutrition', 1,'/dresserlatable.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relatives à la nutrition', 1,'/manger au restaurant.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relatives à la nutrition', 1,'/manger avec les mains.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relatives à la nutrition', 1,'/preěparer a manger.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relatives à la nutrition', 1,'/sandwich def.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relatives à la nutrition', 1,'/serviraliments.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',3,'parler à des adultes.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',3,'parler en communauté.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',3,'téléphone.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',6,'acheter .jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'laver les mains.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'urgence.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'brosser cheveux.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'chaussures.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'dormir.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'douche.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'habits sales.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'laver cheveux.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'prendre vetement garde robe.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'se brosser les dents.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'se lever.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'se moucher.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'sécher les cheveux.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'s essuyer.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'s habiller.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'s habiller-tirette.jpg');
INSERT INTO esope.pictures(description,id_category,path) VALUES ('Image relative à un truc',2,'toilettes.jpg');
-- Children
INSERT INTO esope.children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('NotADeleguee','childsurname1',TO_TIMESTAMP('2015-01-01','YYYY-MM-DD'),'FR','Gaucher','Enseignement ordinaire','schoolLVL',NULL,'note1');--1
INSERT INTO esope.children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('FinallyGone','childsurname2',TO_TIMESTAMP('2015-02-02','YYYY-MM-DD'),'NL','Gaucher','Enseignement ordinaire','schoolLVL',NULL,'note2');--2
INSERT INTO esope.children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('WhatsAI','childsurname3',TO_TIMESTAMP('2015-03-03','YYYY-MM-DD'),'NL','Droitier','Enseignement spécialisé','schoolLVL','schoolType','note3');--3
INSERT INTO esope.children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('WantsALogo?','childsurname4',TO_TIMESTAMP('2015-04-04','YYYY-MM-DD'),'FR','Droitier','Enseignement spécialisé','schoolLVL','schoolType','note4');--4
INSERT INTO esope.children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('Drunkard','childsurname5',TO_TIMESTAMP('2015-05-05','YYYY-MM-DD'),'FR','Ambidextre','Enseignement en intégration','schoolLVL','schoolType','note5');--5
INSERT INTO esope.children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('NotLate','childsurname6',TO_TIMESTAMP('2015-06-06','YYYY-MM-DD'),'NL','Ambidextre','Enseignement en intégration','schoolLVL','schoolType','note6');--6
INSERT INTO esope.children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('Mushu','childsurname7',TO_TIMESTAMP('2015-07-07','YYYY-MM-DD'),'NL','Adominant','Enseignement en intégration','schoolLVL','schoolType','note7');--7
INSERT INTO esope.children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('LetsDoPaypal','childsurname8',TO_TIMESTAMP('2015-08-08','YYYY-MM-DD'),'FR','Adominant','Enseignement ordinaire','schoolLVL',NULL,'note8');--8
INSERT INTO esope.children(name,surname,birthday,lang,hand,school,school_lvl,school_type,note) VALUES ('IrishMan','childsurname9',TO_TIMESTAMP('2015-09-09','YYYY-MM-DD'),'FR','Adominant','Enseignement ordinaire','schoolLVL',NULL,'note9');--9
-- Users : specials
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd) VALUES ('OnceUponA','Administrator', 3,'08 36 65 65 65','admin.esope@vinci.be','admin');
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd) VALUES ('OnceUponA','Manager', 2,'08 36 65 65 65','man.esope@vinci.be','man');
-- Users : contacts
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian1','Contact1',0,'04 86 01 01 01','c1nt1ct@gmail.be','mdp');--3
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian2','Contact2',0,'04 86 02 02 02','c2nt2ct@gmail.be','mdp');--4
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian3','Contact3',0,'04 86 03 03 03','c3nt3ct@gmail.be','mdp');--5
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian4','Contact4',0,'04 86 04 04 04','c4nt4ct@gmail.be','mdp');--6
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian5','Contact5',0,'04 86 05 05 05','c5nt5ct@gmail.be','mdp');--7
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian6','Contact6',0,'04 86 06 06 06','c6nt6ct@gmail.be','mdp');--8
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian7','Contact7',0,'04 86 07 07 07','c7nt7ct@gmail.be','mdp');--9
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd) VALUES ('Guardian8','Contact8',0,'04 86 08 08 08','c8nt8ct@gmail.be','mdp');--10
-- Users : professionals
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd,job) VALUES ('WhatDoYouActuallyKnow?','KissTheGirl',2,'04 85 10 10 10','dr1@vinci.be','mdp','Ergothérapeute');--11
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd,job) VALUES ('NoSoul','PasUneVidéoSVP!',2,'04 85 20 20 20','dr2@vinci.be','mdp','Psychologue');--12
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd,job) VALUES ('NoBalls','Flash',2,'04 85 30 30 30','dr3@vinci.be','mdp','Educateur');--13
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd,job) VALUES ('AreYouSarious?','PleaseNotTheRoaster',2,'04 85 40 40 40','dr4@vinci.be','mdp','Kinésithérapeute');--14
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd,job) VALUES ('Daddy','OSCheatSheet',2,'04 85 50 50 50','dr5@vinci.be','mdp','Enseignant');--15
INSERT INTO esope.users(name, surname, user_level, phone,email,pwd,job) VALUES ('Mommy','WhyThePlacenta?',2,'04 85 60 60 60','dr6@vinci.be','mdp','Autre');--16
-- Children_contacts
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (4,1,'Mère');
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (5,1,'Soeur (majeur)');
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (3,1,'Prère');
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (6,2,'Mère');
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (7,2,'Frère (majeur)');
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (8,3,'Autre');
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (9,4,'Autre');
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (10,5,'Tuteur');
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (10,6,'Tuteur');
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (7,7,'Frère(majeur)');
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (8,8,'Autre');
INSERT INTO esope.children_contacts(id_user,id_child,relation) VALUES (6,9,'Mère');
-- Professionals_to_children
INSERT INTO esope.professionals_to_children(id_child,id_user_prof,start_care_date,end_care_date) VALUES (1,11,TO_TIMESTAMP('2017-01-01 01:01:01','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2017-01-11 01:01:01','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_child,id_user_prof,start_care_date) VALUES (1,11,TO_TIMESTAMP('2017-02-02 02:02:02','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_child,id_user_prof,start_care_date) VALUES (1,12,TO_TIMESTAMP('2017-03-03 03:03:03','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_child,id_user_prof,start_care_date) VALUES (2,13,TO_TIMESTAMP('2017-04-04 04:04:04','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_child,id_user_prof,start_care_date) VALUES (3,13,TO_TIMESTAMP('2017-05-05 05:05:05','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_child,id_user_prof,start_care_date) VALUES (4,11,TO_TIMESTAMP('2017-06-06 06:06:06','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_child,id_user_prof,start_care_date) VALUES (5,12,TO_TIMESTAMP('2017-07-07 07:07:07','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_child,id_user_prof,start_care_date) VALUES (6,12,TO_TIMESTAMP('2017-08-08 08:08:08','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_child,id_user_prof,start_care_date) VALUES (7,12,TO_TIMESTAMP('2017-09-09 09:09:09','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_child,id_user_prof,start_care_date) VALUES (8,14,TO_TIMESTAMP('2017-10-10 10:10:10','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO esope.professionals_to_children(id_child,id_user_prof,start_care_date) VALUES (9,14,TO_TIMESTAMP('2017-11-11 11:11:11','YYYY-MM-DD HH24:MI:SS'));
-- Handicaps
INSERT INTO esope.handicaps(description) VALUES ('l’enfant présente des difficultés visuelles'); --1
INSERT INTO esope.handicaps(description) VALUES ('l’enfant ne voit pas'); --2
INSERT INTO esope.handicaps(description) VALUES ('l’enfant présente des difficultés auditives'); --3
INSERT INTO esope.handicaps(description) VALUES ('l’enfant n’entend pas'); --4
INSERT INTO esope.handicaps(description) VALUES ('L’enfant présente des difficultés pour contrôler avec précision les mouvements de ses bras et mains'); --5
INSERT INTO esope.handicaps(description) VALUES ('l’enfant ne peut pas mouvoir ses bras et mains'); --6
INSERT INTO esope.handicaps(description) VALUES ('l’enfant présente des difficultés pour s’exprimer oralement'); --7
INSERT INTO esope.handicaps(description) VALUES ('l’enfant ne peut pas parler'); --8
INSERT INTO esope.handicaps(description) VALUES ('l’enfant présente des difficultés pour comprendre les étapes et/ou les images du jeu'); --9
INSERT INTO esope.handicaps(description) VALUES ('l’enfant présente des difficultés pour s’orienter dans l’espace du jeu'); --10
INSERT INTO esope.handicaps(description) VALUES ('l’enfant présente des difficultés pour comprendre les consignes verbales de l’adulte'); --11
INSERT INTO esope.handicaps(description) VALUES ('autre'); --12
-- Handicaps_to_children
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (1,2,'comment');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (2,4,'comment');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (3,6,'gauche');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (4,8,'comment');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (5,2,'comment');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (6,1,'comment');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (7,3,'comment');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (7,5,'droite');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (7,7,'comment');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (8,9,'comment');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (8,10,'comment');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (8,12,'enfant insuportable');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (9,11,'comment');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (9,12,'troubles de l attention');
INSERT INTO esope.handicaps_to_children(id_child,id_handicap,comment) VALUES (9,6,'bilatéral');