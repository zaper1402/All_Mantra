BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "language" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"code"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "mantra_category" (
	"id"	INTEGER,
	"position"	INTEGER,
	"keyword"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "mantra_category_translation" (
	"title"	TEXT,
	"mantra_category"	INTEGER,
	"language"	INTEGER,
	FOREIGN KEY("mantra_category") REFERENCES "mantra_category"("id"),
	FOREIGN KEY("language") REFERENCES "language"("id")
);
CREATE TABLE IF NOT EXISTS "mantra" (
	"id"	INTEGER,
	"image"	TEXT,
	"sound"	TEXT,
	"thumbnail"	TEXT,
	"big"	INTEGER DEFAULT 0,
	"mantra_category"	INTEGER,
	FOREIGN KEY("mantra_category") REFERENCES "mantra_category"("id"),
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "mantra_translation" (
	"title"	TEXT,
	"mantra"	TEXT,
	"language"	INTEGER,
	"mantra_id"	INTEGER,
	FOREIGN KEY("language") REFERENCES "language"("id"),
	FOREIGN KEY("mantra_id") REFERENCES "mantra"("id")
);
INSERT INTO "language" VALUES (1,'English','en');
INSERT INTO "language" VALUES (2,'Hindi','hi');
INSERT INTO "mantra_category" VALUES (1,1,'famous');
INSERT INTO "mantra_category" VALUES (2,2,'stotra');
INSERT INTO "mantra_category" VALUES (3,6,'navagraha-beej');
INSERT INTO "mantra_category" VALUES (4,7,'navagraha-stotra');
INSERT INTO "mantra_category" VALUES (5,8,'navagraha-gayatri');
INSERT INTO "mantra_category" VALUES (6,5,'swami-mantra');
INSERT INTO "mantra_category" VALUES (7,3,'shloka');
INSERT INTO "mantra_category" VALUES (8,4,'shanti');
INSERT INTO "mantra_category_translation" VALUES ('Mantras',1,1);
INSERT INTO "mantra_category_translation" VALUES ('मंत्र',1,2);
INSERT INTO "mantra_category_translation" VALUES ('Navagraha Beej Mantras',3,1);
INSERT INTO "mantra_category_translation" VALUES ('नवग्रह बीज मंत्र',3,2);
INSERT INTO "mantra_category_translation" VALUES ('Stotras',2,1);
INSERT INTO "mantra_category_translation" VALUES ('स्तोत्र',2,2);
INSERT INTO "mantra_category_translation" VALUES ('Navagraha Stotras',4,1);
INSERT INTO "mantra_category_translation" VALUES ('नवग्रह स्तोत्र',4,2);
INSERT INTO "mantra_category_translation" VALUES ('Navagraha Gayatri Mantras',5,1);
INSERT INTO "mantra_category_translation" VALUES ('नवग्रह गायत्री मंत्र',5,2);
INSERT INTO "mantra_category_translation" VALUES ('Swami Mantras',6,1);
INSERT INTO "mantra_category_translation" VALUES ('स्वामी मंत्र',6,2);
INSERT INTO "mantra_category_translation" VALUES ('Shlokas',7,1);
INSERT INTO "mantra_category_translation" VALUES ('श्लोक',7,2);
INSERT INTO "mantra_category_translation" VALUES ('Shanti Mantras',8,1);
INSERT INTO "mantra_category_translation" VALUES ('शांति मंत्र',8,2);
INSERT INTO "mantra" VALUES (1,'file:///android_asset/images/image_1.jpg','mantras/aud_1.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_1.jpg',0,1);
INSERT INTO "mantra" VALUES (2,'file:///android_asset/images/image_2.jpg','mantras/aud_2.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_2.jpg',0,1);
INSERT INTO "mantra" VALUES (3,'file:///android_asset/images/image_3.jpg','mantras/aud_3.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_3.jpg',0,1);
INSERT INTO "mantra" VALUES (4,'file:///android_asset/images/image_4.jpg','mantras/aud_4.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_4.jpg',0,6);
INSERT INTO "mantra" VALUES (5,'file:///android_asset/images/image_5.jpg','mantras/aud_5.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_5.jpg',0,1);
INSERT INTO "mantra" VALUES (6,'file:///android_asset/images/image_6.jpg','mantras/aud_6.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_6.jpg',0,6);
INSERT INTO "mantra" VALUES (7,'file:///android_asset/images/image_7.jpg','mantras/aud_7.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_7.jpg',0,1);
INSERT INTO "mantra" VALUES (8,'file:///android_asset/images/image_8.jpg','mantras/aud_8.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_8.jpg',0,1);
INSERT INTO "mantra" VALUES (9,'file:///android_asset/images/image_9.jpg','mantras/aud_9.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_9.jpg',0,1);
INSERT INTO "mantra" VALUES (10,'file:///android_asset/images/image_10.jpg','mantras/aud_10.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_10.jpg',0,1);
INSERT INTO "mantra" VALUES (11,'file:///android_asset/images/image_11.jpg','mantras/aud_11.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_11.jpg',0,1);
INSERT INTO "mantra" VALUES (12,'file:///android_asset/images/image_12.jpg','mantras/aud_12.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_12.jpg',0,6);
INSERT INTO "mantra" VALUES (13,'file:///android_asset/images/image_13.jpg','mantras/aud_13.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_13.jpg',0,1);
INSERT INTO "mantra" VALUES (14,'file:///android_asset/images/image_14.jpg','mantras/aud_14.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_14.jpg',0,1);
INSERT INTO "mantra" VALUES (15,'file:///android_asset/images/image_15.jpg','mantras/aud_15.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_15.jpg',0,1);
INSERT INTO "mantra" VALUES (16,'file:///android_asset/images/image_16.jpg','mantras/aud_16.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_16.jpg',0,1);
INSERT INTO "mantra" VALUES (17,'file:///android_asset/images/image_17.jpg','mantras/aud_17.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_17.jpg',0,1);
INSERT INTO "mantra" VALUES (18,'file:///android_asset/images/image_18.jpg','mantras/aud_18.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_18.jpg',0,6);
INSERT INTO "mantra" VALUES (19,'file:///android_asset/images/image_19.jpg','mantras/aud_19.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_19.jpg',0,3);
INSERT INTO "mantra" VALUES (20,'file:///android_asset/images/image_20.jpg','mantras/aud_20.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_20.jpg',0,3);
INSERT INTO "mantra" VALUES (21,'file:///android_asset/images/image_21.jpg','mantras/aud_21.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_21.jpg',0,3);
INSERT INTO "mantra" VALUES (22,'file:///android_asset/images/image_22.jpg','mantras/aud_22.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_22.jpg',0,3);
INSERT INTO "mantra" VALUES (23,'file:///android_asset/images/image_23.jpg','mantras/aud_23.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_23.jpg',0,3);
INSERT INTO "mantra" VALUES (24,'file:///android_asset/images/image_24.jpg','mantras/aud_24.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_24.jpg',0,3);
INSERT INTO "mantra" VALUES (25,'file:///android_asset/images/image_25.jpg','mantras/aud_25.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_25.jpg',0,3);
INSERT INTO "mantra" VALUES (26,'file:///android_asset/images/image_26.jpg','mantras/aud_26.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_26.jpg',0,3);
INSERT INTO "mantra" VALUES (27,'file:///android_asset/images/image_27.jpg','mantras/aud_27.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_27.jpg',0,3);
INSERT INTO "mantra" VALUES (28,'file:///android_asset/images/image_28.jpg','mantras/aud_28.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_28.jpg',1,2);
INSERT INTO "mantra" VALUES (29,'file:///android_asset/images/image_29.jpg','mantras/aud_29.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_29.jpg',1,2);
INSERT INTO "mantra" VALUES (30,'file:///android_asset/images/image_30.jpg','mantras/aud_30.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_30.jpg',1,2);
INSERT INTO "mantra" VALUES (31,'file:///android_asset/images/image_31.jpg','mantras/aud_31.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_31.jpg',1,2);
INSERT INTO "mantra" VALUES (32,'file:///android_asset/images/image_32.jpg','mantras/aud_32.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_32.jpg',0,1);
INSERT INTO "mantra" VALUES (33,'file:///android_asset/images/image_33.jpg','mantras/aud_33.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_33.jpg',0,7);
INSERT INTO "mantra" VALUES (34,'file:///android_asset/images/image_33.jpg','mantras/aud_34.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_33.jpg',1,2);
INSERT INTO "mantra" VALUES (35,'file:///android_asset/images/image_2.jpg','mantras/aud_35.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_2.jpg',1,2);
INSERT INTO "mantra" VALUES (36,'file:///android_asset/images/image_36.jpg','mantras/aud_36.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_36.jpg',1,2);
INSERT INTO "mantra" VALUES (37,'file:///android_asset/images/image_19.jpg','mantras/aud_37.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_19.jpg',0,4);
INSERT INTO "mantra" VALUES (38,'file:///android_asset/images/image_20.jpg','mantras/aud_38.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_20.jpg',0,4);
INSERT INTO "mantra" VALUES (39,'file:///android_asset/images/image_21.jpg','mantras/aud_39.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_21.jpg',0,4);
INSERT INTO "mantra" VALUES (40,'file:///android_asset/images/image_22.jpg','mantras/aud_40.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_22.jpg',0,4);
INSERT INTO "mantra" VALUES (41,'file:///android_asset/images/image_23.jpg','mantras/aud_41.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_23.jpg',0,4);
INSERT INTO "mantra" VALUES (42,'file:///android_asset/images/image_24.jpg','mantras/aud_42.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_24.jpg',0,4);
INSERT INTO "mantra" VALUES (43,'file:///android_asset/images/image_25.jpg','mantras/aud_43.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_25.jpg',0,4);
INSERT INTO "mantra" VALUES (44,'file:///android_asset/images/image_26.jpg','mantras/aud_44.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_26.jpg',0,4);
INSERT INTO "mantra" VALUES (45,'file:///android_asset/images/image_27.jpg','mantras/aud_45.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_27.jpg',0,4);
INSERT INTO "mantra" VALUES (46,'file:///android_asset/images/image_46.jpg','mantras/aud_46.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_46.jpg',0,8);
INSERT INTO "mantra" VALUES (47,'file:///android_asset/images/image_47.jpg','mantras/aud_47.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_47.jpg',1,2);
INSERT INTO "mantra" VALUES (48,'file:///android_asset/images/image_19.jpg','mantras/aud_48.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_19.jpg',0,5);
INSERT INTO "mantra" VALUES (49,'file:///android_asset/images/image_20.jpg','mantras/aud_49.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_20.jpg',0,5);
INSERT INTO "mantra" VALUES (50,'file:///android_asset/images/image_21.jpg','mantras/aud_50.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_21.jpg',0,5);
INSERT INTO "mantra" VALUES (51,'file:///android_asset/images/image_22.jpg','mantras/aud_51.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_22.jpg',0,5);
INSERT INTO "mantra" VALUES (52,'file:///android_asset/images/image_23.jpg','mantras/aud_52.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_23.jpg',0,5);
INSERT INTO "mantra" VALUES (53,'file:///android_asset/images/image_24.jpg','mantras/aud_53.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_24.jpg',0,5);
INSERT INTO "mantra" VALUES (54,'file:///android_asset/images/image_25.jpg','mantras/aud_54.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_25.jpg',0,5);
INSERT INTO "mantra" VALUES (55,'file:///android_asset/images/image_26.jpg','mantras/aud_55.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_26.jpg',0,5);
INSERT INTO "mantra" VALUES (56,'file:///android_asset/images/image_27.jpg','mantras/aud_56.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_27.jpg',0,5);
INSERT INTO "mantra" VALUES (57,'file:///android_asset/images/image_57.jpg','mantras/aud_57.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_57.jpg',0,7);
INSERT INTO "mantra" VALUES (58,'file:///android_asset/images/image_58.jpg','mantras/aud_58.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_58.jpg',1,2);
INSERT INTO "mantra" VALUES (59,'file:///android_asset/images/image_59.jpg','mantras/aud_59.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_59.jpg',0,6);
INSERT INTO "mantra" VALUES (60,'file:///android_asset/images/image_8.jpg','mantras/aud_60.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_8.jpg',1,2);
INSERT INTO "mantra" VALUES (61,'file:///android_asset/images/image_13.jpg','mantras/aud_61.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_13.jpg',1,2);
INSERT INTO "mantra" VALUES (62,'file:///android_asset/images/image_28.jpg','mantras/aud_62.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_28.jpg',0,7);
INSERT INTO "mantra" VALUES (63,'file:///android_asset/images/image_63.jpg','mantras/aud_63.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_63.jpg',0,8);
INSERT INTO "mantra" VALUES (64,'file:///android_asset/images/image_16.jpg','mantras/aud_64.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_16.jpg',0,7);
INSERT INTO "mantra" VALUES (65,'file:///android_asset/images/image_65.jpg','mantras/aud_65.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_65.jpg',0,7);
INSERT INTO "mantra" VALUES (66,'file:///android_asset/images/image_66.jpg','mantras/aud_66.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_66.jpg',0,7);
INSERT INTO "mantra" VALUES (67,'file:///android_asset/images/image_31.jpg','mantras/aud_67.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_31.jpg',0,1);
INSERT INTO "mantra" VALUES (68,'file:///android_asset/images/image_65.jpg','mantras/aud_68.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_65.jpg',0,1);
INSERT INTO "mantra" VALUES (69,'file:///android_asset/images/image_30.jpg','mantras/aud_69.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_30.jpg',0,1);
INSERT INTO "mantra" VALUES (70,'file:///android_asset/images/image_70.jpg','mantras/aud_70.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_70.jpg',0,1);
INSERT INTO "mantra" VALUES (71,'file:///android_asset/images/image_33.jpg','mantras/aud_71.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_33.jpg',0,1);
INSERT INTO "mantra" VALUES (72,'file:///android_asset/images/image_72.jpg','mantras/aud_72.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_72.jpg',0,1);
INSERT INTO "mantra" VALUES (73,'file:///android_asset/images/image_58.jpg','mantras/aud_73.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_58.jpg',0,1);
INSERT INTO "mantra" VALUES (74,'file:///android_asset/images/image_74.jpg','mantras/aud_74.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_74.jpg',0,8);
INSERT INTO "mantra" VALUES (75,'file:///android_asset/images/image_75.jpg','mantras/aud_75.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_75.jpg',0,8);
INSERT INTO "mantra" VALUES (76,'file:///android_asset/images/image_76.jpg','mantras/aud_76.ogg','file:///android_asset/thumbnails/mantra_thumbnails/thumbnail_76.jpg',0,8);
INSERT INTO "mantra_translation" VALUES ('Om','Om',1,1);
INSERT INTO "mantra_translation" VALUES ('ॐ','ॐ',2,1);
INSERT INTO "mantra_translation" VALUES ('Ganesh','Om Gang Ganpataye Namah',1,2);
INSERT INTO "mantra_translation" VALUES ('गणेश','ॐ गं गणपतये नमः।।',2,2);
INSERT INTO "mantra_translation" VALUES ('Shiva','Om Namah Shivay',1,3);
INSERT INTO "mantra_translation" VALUES ('शिव','ॐ नमः शिवाय।।',2,3);
INSERT INTO "mantra_translation" VALUES ('Swami Samarth','Maharaj Shri Swami Samarth Jay Jay Swami Samarth
Shri Swami Samarth Jay Jay Swami Samarth',1,4);
INSERT INTO "mantra_translation" VALUES ('स्वामी समर्थ','महाराज श्री स्वामी समर्थ जय जय स्वामी समर्थ
श्री स्वामी समर्थ जय जय स्वामी समर्थ',2,4);
INSERT INTO "mantra_translation" VALUES ('Dattatreya','Digambara Digambara Shripad Vallabh Digambara',1,5);
INSERT INTO "mantra_translation" VALUES ('दत्तात्रेय','दिगंबरा दिगंबरा श्रीपादवल्लभ दिगंबरा',2,5);
INSERT INTO "mantra_translation" VALUES ('Sai Baba','Om Sai namo namah
Sri Sai namo namah
Jaya jaya Sai namo namah
Sadguru Sai namo namah',1,6);
INSERT INTO "mantra_translation" VALUES ('साई बाबा','ॐ सांईं नमो नमः
श्री सांईं नमो नमः
जय जय सांईं नमो नमः
सतगुरु सांईं नमो नमः',2,6);
INSERT INTO "mantra_translation" VALUES ('Mahamrityunjay','Om Tryambakam Yajamahe
Sugandhim Pushtivardhanam
Urvarukamiva Bandhanan
Mrityor Mukshiya Maamritat',1,7);
INSERT INTO "mantra_translation" VALUES ('महामृत्युंजय','ॐ त्र्यम्बकं यजामहे
सुगन्धिं पुष्टिवर्धनम् ।
उर्वारुकमिव बन्धनान्
मृत्योर्मुक्षीय मामृतात् ।।',2,7);
INSERT INTO "mantra_translation" VALUES ('Gajanan Maharaj','Gan Gan Ganat Bote',1,12);
INSERT INTO "mantra_translation" VALUES ('गजान महाराज','गण गण गणात बोते',2,12);
INSERT INTO "mantra_translation" VALUES ('Hare Krishna Hare Rama','Hare Krishna Hare Krishna
Krishna Krishna Hare Hare
Hare Rama Hare Rama
Rama Rama Hare Hare',1,13);
INSERT INTO "mantra_translation" VALUES ('हरे कृष्णा हरे रामा','हरे कृष्ण हरे कृष्ण
कृष्ण कृष्ण हरे हरे
हरे राम हरे राम
राम राम हरे हरे',2,13);
INSERT INTO "mantra_translation" VALUES ('Gayatri','Om bhur bhuvaha svaha
Tat savitur varenyam
Bhargo devasya dhimahi
Dhiyo yonah prachodayat',1,9);
INSERT INTO "mantra_translation" VALUES ('गायत्री','ॐ भूर्भुवः स्वः
तत्सवितुर्वरेण्यं ।
भर्गो देवस्य धीमहि
धियो यो नः प्रचोदयात् ॥',2,9);
INSERT INTO "mantra_translation" VALUES ('Maha Laxmi','Om maha laxmi namo namah
Om vishnu prayayi namo namah
Om dhan pradaya namo namah
Om vishawa jannanya namo namah',1,10);
INSERT INTO "mantra_translation" VALUES ('महा लक्ष्मी','ॐ महा लक्ष्मी नमो नमः
ॐ विष्णु प्रयायी नमो नमः
ॐ धन प्रदाय नमो नमः
ॐ विशवा जान्नान्य नमो नमः',2,10);
INSERT INTO "mantra_translation" VALUES ('Shree Krishna Sharanam Mamah','Shree Krishna Sharanam Mamah
Shree Krishna Sharanam Mamah
Shree Krishna Sharanam Mamah
Shree Krishna Sharanam Mamah',1,11);
INSERT INTO "mantra_translation" VALUES ('श्री कृष्ण शरणम ममः','श्री कृष्ण शरणम ममः
श्री कृष्ण शरणम ममः
श्री कृष्ण शरणम ममः
श्री कृष्ण शरणम ममः',2,11);
INSERT INTO "mantra_translation" VALUES ('Hanuman','Om Shri Hanumate Namah',1,8);
INSERT INTO "mantra_translation" VALUES ('हनुमान','ॐ श्री हनुमते नमः',2,8);
INSERT INTO "mantra_translation" VALUES ('Kuber','Shri Suwarn Drashtim Kurumegh He Shri Kuber
Mahalaxmi Hari Priyaa Padmayh Namah',1,14);
INSERT INTO "mantra_translation" VALUES ('कुबेर','श्री सुवर्ण द्रष्टिम कुरुमेघ हे श्री कुबेर
महालक्ष्मी हरी प्रिया पद्मायह नमः ॥',2,14);
INSERT INTO "mantra_translation" VALUES ('Shani','Aum Nilaanjan Samaabhaasam Ravi Putram Yamagrajam
Chhayamartand Sambhootam Tam Namaami Shanaishcharam',1,15);
INSERT INTO "mantra_translation" VALUES ('शनि','ॐ नीलांजन समाभासं रवि पुत्रं यमाग्रजम |
छायामार्तंड संभूतं तं नमामि शनैश्चरम ||',2,15);
INSERT INTO "mantra_translation" VALUES ('Vishnu','Om Namo Bhagvate Vasudevaya',1,16);
INSERT INTO "mantra_translation" VALUES ('विष्णु','ॐ नमो भगवते वासुदेवाय',2,16);
INSERT INTO "mantra_translation" VALUES ('Balaji','Om Venkateswara Namo Namah
Shri Man Narayan Namo Namah
Tirumal Tirupati Namo Namah
Jai Balaji Namo Namah',1,17);
INSERT INTO "mantra_translation" VALUES ('बालाजी','ॐ वेंकटेस्वर नमो नमः
श्री मन नारायण नमो नमः
तिरुमल तिरुपति नमो नमः
जय बालाजी नमो नमः',2,17);
INSERT INTO "mantra_translation" VALUES ('Swaminarayan','Swaminarayan namo namah
Shreeji Maharaj namo namah
Shree Purshottam namo namah
Sadja Nandji namo namah',1,18);
INSERT INTO "mantra_translation" VALUES ('स्वामीनारायण','स्वामीनारायण नमो नमः
श्रीजी महाराज नमो नमः
श्री पुरषोत्तम नमो नमः
सादजा नंदजी नमो नमः',2,18);
INSERT INTO "mantra_translation" VALUES ('Surya','Om Hram Hreem Hroum Sah Suryaya Namah',1,19);
INSERT INTO "mantra_translation" VALUES ('सूर्य','ॐ ह्रां ह्रीं ह्रौं सः सूर्याय नमः',2,19);
INSERT INTO "mantra_translation" VALUES ('Chandra','Om Shram Sreem Shraum Sah Chandraya Namah',1,20);
INSERT INTO "mantra_translation" VALUES ('चंद्र','ॐ श्रां श्रीं श्रौं सः चन्द्रमसे नमः',2,20);
INSERT INTO "mantra_translation" VALUES ('Mangal','Om Kram Kreem Kroum Sah Bhaumaya Namah',1,21);
INSERT INTO "mantra_translation" VALUES ('मंगल','ॐ क्रां क्रीं क्रौं सः भौमाय नमः',2,21);
INSERT INTO "mantra_translation" VALUES ('Budha','Om Bram Breem Broum Sah Budhaya Namah',1,22);
INSERT INTO "mantra_translation" VALUES ('बुध','ॐ ब्रां ब्रीं ब्रौं सः बुधाय नमः',2,22);
INSERT INTO "mantra_translation" VALUES ('Guru','Om Grang Greeng Grong Sah Gurave Namah',1,23);
INSERT INTO "mantra_translation" VALUES ('गुरु','ॐ ग्रांग ग्रीं ग्रौं सः गुरवे नमः',2,23);
INSERT INTO "mantra_translation" VALUES ('Shukra','Om Dram Dreem Droum Sah Shukraya Namah',1,24);
INSERT INTO "mantra_translation" VALUES ('शुक्र','ॐ द्रां द्रीं द्रौं सः शुक्रया नमः',2,24);
INSERT INTO "mantra_translation" VALUES ('Shani','Om Pram Preem Proum Sah Shanaischaraya Namah',1,25);
INSERT INTO "mantra_translation" VALUES ('शनि','ॐ प्रां प्रीं प्रौं सः शनैश्चाराय नमः',2,25);
INSERT INTO "mantra_translation" VALUES ('Rahu','Om Bhram Bhreem Bhroum Sah Rahave Namah',1,26);
INSERT INTO "mantra_translation" VALUES ('राहु','ॐ भ्रां भ्रीं भ्रौं सः रहवे नमः',2,26);
INSERT INTO "mantra_translation" VALUES ('Ketu','Om Shram Shreem Shroum Sah Ketave Namah',1,27);
INSERT INTO "mantra_translation" VALUES ('केतु','ॐ स्रां स्रीं स्रौं सः केतवे नमः',2,27);
INSERT INTO "mantra_translation" VALUES ('Ganesh stotra','Narada Uvacha:

Pranamya sirasa devam,
Gauri putram, Vinayakam,
Bhakthya vyasa smaren nithya,
Mayu kama artha sidhaye.

Prathamam Vakra thundam cha,
Ekadantham dveethiyakam,
Trithiyam Krishna pingalaksham,
Gajavakthram Chathurthakam.

Lambhodaram panchamam cha,
Sashtam Vikatameva cha,
Sapthamam Vignarajam cha,
Dhoomra varnam thadashtamam.

Navamam phala chandram cha,
Dasamam thu Vinayakam,
Ekadasam Ganapathim,
Dwadasam the gajananam.

Dwathasaithani namani,
Trisandhyam ya paden nara,
Na cha vigna bhayam thasya,
Sarva sidhi karam dhruvam.

Vidyarthi labhadhe vidhyam,
Danarthi labhathe danam,
Puthrarthi labhathe puthran,
Moksharthi labhathe gatheem.

Japeth Ganapathi sthothram,
Shadbhir masai phalam labeth,
Samvatsarena sidhim cha,
Labhathe nathra samsaya.

Ashtanam Brahmanam cha,
Likihithwa ya samarpoayeth,
Thasya Vidhya bhaveth
Sarvaa Ganesasya prasadatha.

Ithi Sri Narada Purane Samkashta nasanam Ganapathi Stotram Sampoornam.',1,28);
INSERT INTO "mantra_translation" VALUES ('गणेश स्तोत्र','नारद उवाच

प्रणम्यं शिरसा देव गौरीपुत्रं विनायकम।
भक्तावासं: स्मरैनित्यंमायु:कामार्थसिद्धये।।
 
प्रथमं वक्रतुंडंच एकदंतं द्वितीयकम।
तृतीयं कृष्णं पिङा्क्षं गजवक्त्रं चतुर्थकम।।

लम्बोदरं पंचमं च षष्ठं विकटमेव च।
सप्तमं विघ्नराजेन्द्रं धूम्रवर्ण तथाष्टकम् ।।
 
नवमं भालचन्द्रं च दशमं तु विनायकम।
एकादशं गणपतिं द्वादशं तु गजाननम।।

द्वादशैतानि नामानि त्रिसंध्य य: पठेन्नर:।
न च विघ्नभयं तस्य सर्वासिद्धिकरं प्रभो।।
 
विद्यार्थी लभते विद्यां धनार्थी लभते धनम्।
पुत्रार्थी लभते पुत्रान् मोक्षार्थी लभते गतिम् ।।
 
जपेद्वगणपतिस्तोत्रं षड्भिर्मासै: फलं लभेत्।
संवत्सरेण सिद्धिं च लभते नात्र संशय: ।।

अष्टभ्यो ब्राह्मणेभ्यश्च लिखित्वां य: समर्पयेत।
तस्य विद्या भवेत्सर्वा गणेशस्य प्रसादत:।।
 
॥ इति श्रीनारदपुराणे संकष्टनाशनं गणेशस्तोत्रं सम्पूर्णम्‌ ॥  ',2,28);
INSERT INTO "mantra_translation" VALUES ('Shiva Panchakshara','Nagendra haraya Trilochanaya,
Bhasmanga ragaya maheshwaraya,
Nityaya shudhaya digambaraya,
Tasmay Na karaya namah shivaya.

Mandakini salila chandana charchithaya,
Nandeeshwara pramatha natha maheshwaraya,
Mandara pushpa bahu pushpa supoojithaya,
Tasmay Ma karaya namah shivaya.

Shivaaya gauri vadanabja vrinda,
Suryaya daksha dwara naashakaya,
Shri neelakanthaya vrisha dwajaya,
Tasmay Shi karaya namah shivaya.

Vasishta kumbhodhbhava gautamarya,
Munindra devarchitha shekharaya,
Chandrarka vaishwaanara lochanaya,
Tasmay Va karaya namah shivaya.

Yaksha swaroopaya jatadharaya,
Pinaka hasthaya sanathanaya,
Divyaya devaaya digambaraya,
Tasmay Ya karaya namah shivaya.

Phala shruti

Panchaksharamidam punyam,
Ya paTeth Shiva sannidhow,
Shivalokam avapnothi,
Shivena saha modate.

Iti shiva panchakshara stotram sampurnam.',1,29);
INSERT INTO "mantra_translation" VALUES ('शिव पंचाक्षर','नागेन्द्रहाराय त्रिलोचनाय
भस्मांगरागाय महेश्वराय।
नित्याय शुद्धाय दिगम्बराय
तस्मै न काराय नम: शिवाय ॥

मन्दाकिनी सलिल चन्दन चर्चिताय
नन्दीश्वर प्रमथनाथ महेश्वराय।
मन्दारपुष्प बहुपुष्प सुपूजिताय
तस्मै म काराय नम: शिवाय ॥

शिवाय गौरी वदनाब्ज वृन्द
सूर्याय दक्षाध्वर नाशकाय।
श्रीनीलकण्ठाय वृषध्वजाय
तस्मै शि काराय नम: शिवाय ॥

वसिष्ठ कुम्भोद्भव गौतमार्य
मुनीन्द्रदे वार्चित शेखराय।
चन्द्रार्क वैश्वानरलोचनाय
तस्मै व काराय नम: शिवाय ॥

यक्षस्वरूपाय जटाधराय
पिनाकहस्ताय सनातनाय।
दिव्याय देवाय दिगम्बराय
तस्मै य काराय नम: शिवाय ॥

फल श्रुति

पंचाक्षरमिदं पुण्यं य: पठेत शिव सन्निधौ।
शिवलोकम अवाप्नोति शिवेन सह मोदते ॥

इति शिव पञ्चाक्षर स्तोत्रं सम्पूर्णम्',2,29);
INSERT INTO "mantra_translation" VALUES ('Mahalakshmi Ashtakam','Namastestu Mahamaye
Shree Pithe Sura Poojite
Shanka Chakra Gadha Haste
Maha Lakshmi Namoostute

Namastestu Garudarudhe
Kolasura Bhayankari
Sarva Papa Hare Devi
Maha Lakshmi Namoostute

Sarvajne Sarva Varade
Sarva Dushta Bhayankari
Sarva Duhkha Hare Devi
Maha Lakshmi Namoostute

Siddhi Buddhi Prade Devi
Bhakti Mukti Pradayini
Mantra Moorte Sada Devi
Maha Lakshmi Namoostute

Adyanta Rahite Devi
Adi Shakti Maheshwari
Yogaje Yoga Sambhute
Maha Lakshmi Namoostute

Sthula Sukshme Maha Raudre
Maha Shakti Mahodari
Maha Papa Hare Devi
Maha Lakshmi Namoostute

Padmasana Sthithe Devi
Parabrahma Swaroopini
Parameshi Jagan Mata
Maha Lakshmi Namoostute

Shwetambara Dhare Devi
Nanalankara Shobhite
Jagasthithe Jaganmata
Maha Lakshmi Namoostute

Maha Lakshmyashtakam Stotram
Yah Patheth Bhakti Man Narah
Sarva Siddhi Mavapnoti
Rajyam Prapnoti Sarvada

Eka Kalam Pathennityam
Maha Papa Vinashanam
Dwikalam Yah Pathennityam
Dhana Dhanya Samanvitah

Trikalam Yah Pathennityam
Maha Shatru Vinashanam
Maha Lakshmi Bhavennityam
Prasanna Varada Shubhah',1,30);
INSERT INTO "mantra_translation" VALUES ('महालक्ष्मि अष्टकं','नमस्तेऽस्तु महामाये श्रीपीठे सुरपूजिते ।
शङ्खचक्रगदाहस्ते महालक्ष्मि नमोऽस्तुते ॥१॥

नमस्ते गरुडारूढे कोलासुरभयंकरि ।
सर्वपापहरे देवि महालक्ष्मि नमोऽस्तुते ॥२॥

सर्वज्ञे सर्ववरदे सर्वदुष्टभयंकरि ।
सर्वदुःखहरे देवि महालक्ष्मि नमोऽस्तुते ॥३॥

सिद्धिबुद्धिप्रदे भुक्तिमुक्तिप्रदायिनि ।
मन्त्रमूर्ते सदा देवि महालक्ष्मि नमोऽस्तुते ॥४॥

आद्यन्तरहिते आद्यशक्तिमहेश्वरि ।
योगजे योगसम्भूते महालक्ष्मि नमोऽस्तुते ॥५॥

स्थूलसूक्ष्ममहारौद्रे महाशक्तिमहोदरे ।
महापापहरे महाशक्तिमहोदरे देवि महालक्ष्मि नमोऽस्तुते ॥६॥

पद्मासनस्थिते देवि परब्रह्मस्वरूपिणि ।
परमेशि जगन्मातर्महालक्ष्मि महालक्ष्मि नमोऽस्तुते ॥७॥

श्वेताम्बरधरे देवि नानालङ्कारभूषिते ।
जगत्स्थिते जगन्मातर्महालक्ष्मि महालक्ष्मि नमोऽस्तुते ॥८॥

महालक्ष्म्यष्टकं स्तोत्रं यः पठेद्भक्तिमान्नरः ।
सर्वसिद्धिमवाप्नोति राज्यं प्राप्नोति सर्वदा ॥९॥

एककाले पठेन्नित्यं महापापविनाशनम् ।
द्विकालं यः पठेन्नित्यं धनधान्यसमन्वितः ॥१०॥

त्रिकालं यः पठेन्नित्यं महाशत्रुविनाशनम् ।
महालक्ष्मिर्भवेन्नित्यं प्रसन्ना वरदा शुभा ॥११॥',2,30);
INSERT INTO "mantra_translation" VALUES ('Hanuman Chalisa','Doha

Shri Guru Charan Saroj raj Nija manu Mukura sudhari
Baranau Raghuvar Bimal Jasu Jo Dayaku Phala Chari
Budheeheen Tanu Jannike Sumiro Pavan Kumara
Bal Buddhi Vidya Dehoo Mohee Harahu Kalesh Vikaar

Chaupaii

Jai Hanuman gyan gun sagar
Jai Kapis tihun lok ujagar
Ram doot atulit bal dhama
Anjani putra Pavan sut nama

Mahabir vikram Bajrangi
Kumati nivar sumati Ke sangi
Kanchan varan viraj subesa
Kanan Kundal Kunchit Kesha

Hath Vajra Aur Dhwaja Viraje
Kaandhe moonj janeu saaje
Sankar suvan kesri Nandan
Tej prataap maha jag vandan

Vidyavaan guni ati chatur
Ram kaj karibe ko aatur
Prabhu charitra sunibe ko rasiya
Ram Lakhan Sita man Basiya

Sukshma roop dhari Siyahi dikhava
Vikat roop dhari lank jalava
Bhim roop dhari asur sanhare
Ramachandra ke kaj sanvare

Laye Sanjivan Lakhan Jiyaye
Shri Raghuvir Harashi ur laye
Raghupati Kinhi bahut badai
Tum mama priya Bharat-hi-sam bhai

Sahas badan tumharo yash gaave
As kahi Shripati kanth lagaave
Sankadhik Brahmaadi Muneesa
Narad Sarad sahit Aheesa

Yam Kuber Dikpaal Jahan te
Kavi kovid kahi sake kahan te
Tum upkar Sugreevahin keenha
Ram milaye rajpad deenha

Tumhro mantra Vibheeshan maana
Lankeshwar Bhaye Sab jag jana
Yug sahasra yojan par Bhanu
Leelyo tahi madhur phal janu

Prabhu mudrika meli mukh mahee
Jaladhi langhi gaye achraj nahee
Durgam kaj jagat ke jete
Sugam anugraha tumhre tete

Ram duwaare tum rakhvare
Hot na agya binu paisare
Sab sukh lahai tumhari sarna
Tum rakshak kahu ko darna

Aapan tej samharo aapai
Teenon lok hank te kanpai
Bhoot pisaach Nikat nahin aavai
Mahavir jab naam sunavai

Nase rog harae sab peera
Japat nirantar Hanumat beera
Sankat se Hanuman chhudavai
Man Kram Vachan dhyan jo lavai

Sab par Ram tapasvee raja
Tin ke kaj sakal Tum saja
Aur manorath jo koi lavai
Soi amit jeevan phal pavai

Charon jug partap tumhara
Hai parsiddh jagat ujiyara
Sadhu Sant ke tum Rakhware
Asur nikandan Ram dulare

Ashta siddhi nav nidhi ke data
As var deen Janki mata
Ram rasayan tumhare pasa
Sada raho Raghupati ke dasa

Tumhare bhajan Ram ko pavai
Janam janam ke dukh bisraavai
Antkaal Raghuvar pur jayee
Jahan janam Hari Bhakt Kahayee

Aur Devta Chitt na dharahin
Hanumat sei sarv sukh karahin
Sankat kate mite sab peera
Jo sumirai Hanumat Balbeera

Jai Jai Jai Hanuman Gosain
Kripa Karahun Gurudev ki nayin
Jo shat bar path kare koi
Chhutahin bandi maha sukh hoi

Jo yeh padhe Hanuman Chalisa
Hoye siddhi saakhi Gaureesa
Tulsidas sada hari chera
Keejai Nath Hriday mahn dera

Doha

Pavan Tanay Sankat Harana Mangala Murati Roop
Ram Lakhan Sita Sahita Hriday Basahu Soor Bhoop',1,31);
INSERT INTO "mantra_translation" VALUES ('हनुमान चालीसा','॥दोहा॥

श्रीगुरु चरन सरोज रज निज मनु मुकुरु सुधारि ।
बरनउँ रघुबर बिमल जसु जो दायकु फल चारि ॥

बुद्धिहीन तनु जानिके सुमिरौं पवन-कुमार ।
बल बुधि बिद्या देहु मोहिं हरहु कलेस बिकार ॥

॥चौपाई॥

जय हनुमान ज्ञान गुन सागर ।
जय कपीस तिहुँ लोक उजागर  ॥१॥
राम दूत अतुलित बल धामा ।
अंजनि-पुत्र पवनसुत नामा  ॥२॥

महाबीर बिक्रम बजरंगी ।
कुमति निवार सुमति के संगी  ॥३॥
कंचन बरन बिराज सुबेसा ।
कानन कुंडल कुंचित केसा  ॥४॥

हाथ बज्र औ ध्वजा बिराजै ।
काँधे मूँज जनेउ साजै  ॥५॥
संकर सुवन केसरीनंदन ।
तेज प्रताप महा जग बंदन  ॥६॥

बिद्यावान गुनी अति चातुर ।
राम काज करिबे को आतुर  ॥७॥
प्रभु चरित्र सुनिबे को रसिया ।
राम लखन सीता मन बसिया  ॥८॥

सूक्ष्म रूप धरि सियहिं दिखावा ।
बिकट रूप धरि लंक जरावा  ॥९॥
भीम रूप धरि असुर सँहारे ।
रामचंद्र के काज सँवारे  ॥१०॥

लाय संजीवन लखन जियाये ।
श्रीरघुबीर हरषि उर लाये  ॥११॥
रघुपति कीन्ही बहुत बड़ाई ।
तुम मम प्रिय भरतहि सम भाई  ॥१२॥

सहस बदन तुम्हरो जस गावैं ।
अस कहि श्रीपति कंठ लगावैं  ॥१३॥
सनकादिक ब्रम्हादि मुनीसा ।
नारद सारद सहित अहीसा  ॥१४॥

जम कुबेर दिगपाल जहाँ ते ।
कबि कोबिद कहि सके कहाँ ते  ॥१५॥
तुम उपकार सुग्रीवहिं कीन्हा ।
राम मिलाय राज पद दीन्हा  ॥१६॥

तुम्हरो मंत्र बिभीषन माना ।
लंकेस्वर भए सब जग जाना  ॥१७॥
जुग सहस्र जोजन पर भानू ।
लील्यो ताहि मधुर फल जानू  ॥१८॥

प्रभु मुद्रिका मेलि मुख माहीं ।
जलधि लाँघि गये अचरज नाहीं  ॥१९॥
दुर्गम काज जगत के जेते ।
सुगम अनुग्रह तुम्हरे तेते  ॥२०॥

राम दुआरे तुम रखवारे ।
होत न आज्ञा बिनु पैसारे  ॥२१॥
सब सुख लहै तुम्हारी सरना ।
तुम रच्छक काहू को डर ना  ॥२२॥

आपन तेज सम्हारो आपै ।
तीनों लोक हाँक तें काँपै  ॥२३॥
भूत पिसाच निकट नहिं आवै ।
महाबीर जब नाम सुनावै  ॥२४॥

नासै रोग हरै सब पीरा ।
जपत निरंतर हनुमत बीरा  ॥२५॥
संकट तें हनुमान छुड़ावै ।
मन क्रम बचन ध्यान जो लावै  ॥२६॥

सब पर राम तपस्वी राजा ।
तिन के काज सकल तुम साजा  ॥२७॥
और मनोरथ जो कोई लावै ।
सोइ अमित जीवन फल पावै  ॥२८॥

चारों जुग परताप तुम्हारा ।
है परसिद्ध जगत उजियारा  ॥२९॥
साधु सन्त के तुम रखवारे ।
असुर निकंदन राम दुलारे  ॥३०॥

अष्ट सिद्धि नौ निधि के दाता ।
अस बर दीन जानकी माता  ॥३१॥
राम रसायन तुम्हरे पासा ।
सदा रहो रघुपति के दासा  ॥३२॥

तुम्हरे भजन राम को पावै ।
जनम जनम के दुख बिसरावै  ॥३३॥
अन्त काल रघुबर पुर जाई ।
जहाँ जन्म हरिभक्त कहाई  ॥३४॥

और देवता चित्त न धरई ।
हनुमत सेइ सर्ब सुख करई  ॥३५॥
संकट कटै मिटै सब पीरा ।
जो सुमिरै हनुमत बलबीरा  ॥३६॥

जय जय जय हनुमान गोसाईं ।
कृपा करहु गुरु देव की नाईं  ॥३७॥
जो सत बार पाठ कर कोई ।
छूटहि बंदि महा सुख होई  ॥३८॥

जो यह पढ़ै हनुमान चालीसा ।
होय सिद्धि साखी गौरीसा  ॥३९॥
तुलसीदास सदा हरि चेरा ।
कीजै नाथ हृदय महँ डेरा  ॥४०॥ 

॥दोहा॥

पवनतनय संकट हरन, मंगल मूरति रूप ।
राम लखन सीता सहित, हृदय बसहु सुर भूप ॥',2,31);
INSERT INTO "mantra_translation" VALUES ('Chamunda Devi','Om Hem Hrem Klim Chamunday Vichhe',1,32);
INSERT INTO "mantra_translation" VALUES ('चामुण्डा देवी','ॐ ऐं ह्रीं क्लीं चामुण्डायै विच्चे',2,32);
INSERT INTO "mantra_translation" VALUES ('Durga','Sarva Mangala Mangalye
Shive Sarvartha Sadhike
Sharanye Tryambake Gauri
Narayani Namostute',1,33);
INSERT INTO "mantra_translation" VALUES ('दुर्गा','सर्व मंगल मांगल्ये शिवे सर्वार्थ साधिके । 
शरन्ये त्रयम्बिके गौरी नारायणी नमोस्तुते ।।',2,33);
INSERT INTO "mantra_translation" VALUES ('Devi Suktam','yādevī sarvabhūteṣū viṣṇumāyeti śabdhitā।
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū cetanetyabhidhīyate।
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū buddhirūpeṇa saṃsthitā।
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū nidrārūpeṇa saṃsthitā।
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū kṣudhārūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū chāyārūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū śaktirūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū tṛṣṇārūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū kṣāntirūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū jātirūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū lajjārūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū śāntirūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū śraddhārūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū kāntirūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū lakṣmīrūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū vṛttirūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū smṛtirūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū dayārūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū tuṣṭirūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū mātṛrūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

yādevī sarvabhūteṣū bhrāntirūpeṇa saṃsthitā
namastasyai, namastasyai,namastasyai namonamaḥ ॥

indriyāṇāmadhiṣṭhātrī bhūtānāṃ cākhileṣu yā।
bhūteṣu satataṃ tasyai vyāpti devyai namo namaḥ ॥

citirūpeṇa yā kṛtsnameta dvyāpya sthitā jagat
namastasyai, namastasyai,namastasyai namonamaḥ ॥
',1,34);
INSERT INTO "mantra_translation" VALUES ('देवी सूक्तम','यादेवी सर्वभूतेषू विष्णुमायेति शब्धिता।
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू चेतनेत्यभिधीयते।
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू बुद्धिरूपेण संस्थिता।
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू निद्रारूपेण संस्थिता।
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू क्षुधारूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू छायारूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू शक्तिरूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू तृष्णारूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू क्षान्तिरूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू जातिरूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू लज्जारूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू शान्तिरूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू श्रद्धारूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू कान्तिरूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू लक्ष्मीरूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू वृत्तिरूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू स्मृतिरूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू दयारूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू तुष्टिरूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू मातृरूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

यादेवी सर्वभूतेषू भ्रान्तिरूपेण संस्थिता
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥

इन्द्रियाणामधिष्ठात्री भूतानां चाखिलेषु या।
भूतेषु सततं तस्यै व्याप्ति देव्यै नमो नमः ॥

चितिरूपेण या कृत्स्नमेत द्व्याप्य स्थिता जगत्
नमस्तस्यै, नमस्तस्यै,नमस्तस्यै नमोनमः ॥',2,34);
INSERT INTO "mantra_translation" VALUES ('Ganapati Atharvashirsha','Om bhadram karnebhih shrunuyam devaaha
Bhadram pashchemakshabhirya jatraha
Sthirairangaistushtuvamsastanubhih
Vyashem devahitam yadayuhu

swasti na Indro vrudhashravaha
Swasti nah pusha vishvavedaah
Swasti nastaakshyo arishtanemih
Swasti no bruhaspatirdadhatu

|| Om Shantih Shantih Shantih ||

Om namaste Ganapataye
Twameva Pratyksham Tatvamasi
Twameva Kevalam Kartasi
Twameva Kevalam Dhartasi
Twameva Kevalam Hartasi
Twameva Sarvam Khalvidam Brahmasi
Twam Sakashadatamasi Nityam || 1 ||

Rutam vachami
Satyam vachmi || 2 ||

Ava Twam Mam
Ava Vaktaram
Ava Shrotaram
Ava Dataram
Ava Dhataram
Avanuchanavamshishyam
Ava Pashchattat
Ava Purasttat
Avotarattat
Ava Dakshinattat
Ava Chordhvattat
Ava Dharattat
Sarvato Mam Pahi Pahi Samantat || 3 ||

Twam Vangamaystyam Chinmayaha
Twam Anandmayastvam Brahmamaya
Twam Satchidanandadvitiyosi
Twam Pratyaksham Brahmasi
Twam Dnyanamayo Vidnyanmayosi || 4 ||

Sarvam Jagadidam Twatto Jayate
Sarvam Jagadidam Twattastishthati
Sarvam Jagadidam Twayi Layamesheti
Sarvam Jagadidam Twayi Pratyeti
Twam Bhumiraponalo Nilo Nabhaha
Twam Chatwari Vakpadani || 5 ||

Twam Gunatrayatitaha
Twam Dehatrayatitaha
Twam Kalatrayatitaha
Twam Muladharasthitosi Nityam
Twam Shaktitrayatmakaha
Twaam Yogino Dhyayanti Nityam
Twam Brahma tvam, Twam Vishnustvam Rudrastvam Indrastvam Agnistvam Vayustvam Suryastvam Chandramastvam Brahmabhurbhuvaswarom || 6 ||

Ganadhim Purvamuchharya Varnadim Tadanuntaram
Anuswara Parataraha
Ardhendulasitam
Tarena Ruddham
Etattava Manuswaroopam
Gakarah Purvaroopam
Aakaro Madhyamarupam
Anuswaraschyantyarupam
Binduruttararupam
Nadah Sandhanam
Sanhita Sandhih
Saisha Ganeshvidhya
Ganakarushih
Nichrudgayatrichandaha
Ganapatirdevata
Om Gan Ganapataye Namaha || 7 ||

Ekadantaya Vidmahe
Vakaratundaya Dhimahi
Tanno Dantih Prachodayat || 8 ||

Ekadantam Chaturhastam Pashmankushdharinam
Radam Cha Varadam Hasteirbibhranam Mushakadwajam
Raktam Lambodaram Shurpakarnakam Raktavasasam
Raktagandhanuliptangam Raktapushpaih Supujitam
Bhaktanukampinam Devam Jagatkaranamchyutam
Aavirbhutam Cha Shrushtyadou Prakruteih Purushatparam
Evam Dhyayati Yo Nityam Sa Yogi Yoginam Varah || 9 ||

Namo Vratapataye Namo Ganapataye Namaha Pramathpataye Namaste Astu Lambodaraya Ekadantaya Vighnashine Shivasutaya Varadamurtaye Namo Namaha || 10 ||

Etadatharvasirsham yodhiite
Sa brahmabuyaya kalpate
Sa sarvavignairna badhyate
sa sarvatah sukamedhate
Sa panchamahapapat pramuchyate
Sayamadhiyano divasakrutam
papan naashayati
Prataradhiyano ratrikrutam
papan naashayati
Sayam pratah prayunjjano apapo bhavati
Sarvatraadhiyanopavigno bhavati
Dharmaarthakamamokshan cha vindati
Idam atharvasirsham asishyaya na deyam
Yo yadi mohaddasyati
sa papiyan bavati
Sahasraavartanaat
yam yan kaamamadhiite
tan tamanena saadhayet || 11 ||

Anena ganapatimabishinchati
Sa vagmi bhavati
Chatuthryamanasnan japati
sa vidyavan bhavati
Ityatharvanavakyam
brahmadyavaranam vidyaat
Na bibheti kadachaneti || 12 ||

Yo durvankurairyajati
sa vaishravanopamo bhavati
Yo lajairyajati, sa yashovan bhavati
Sa medhavan bhavati
Yo modakasahasrena yajati
Sa vanchitaphalamavapnoti
Yah sajyasamidbhiryajati
Sa sarvam labhate, sa sarvam labhate || 13 ||

Ashtau brahmanaan samyaggrahayitva,
Suryavarchasvi bhavati
Suryagrahe mahanadyam pratimasannidhau
va japtva, siddhamantro bhavati
Mahavighnaat pramuchyate
mahadoshat pramuchyate
Mahapaapaat pramuchyate
Sa sarvavid bhavati, sa sarvavid bhavati
Ya evam veda || 14 ||

Om sahanasvavatu
sahanau bhunaktu
Sahaviryan karaavavahai
Tejasvinaavadhitamastu ma vidvishavahai

|| Om Shantih Shantih Shantih ||

Om bhadram karnebhih shrunuyam devaaha
Bhadram pashchemakshabhirya jatraha
Sthirairangaistushtuvamsastanubhih
Vyashem devahitam yadayuhu

Om swasti na Indro vrudhashravaha
Swasti nah pusha vishvavedaah
Swasti nastaakshyo arishtanemih
Swasti no bruhaspatirdadhatu

|| Om Shantih Shantih Shantih ||',1,35);
INSERT INTO "mantra_translation" VALUES ('गणपति   अथर्वशीर्ष','ॐ भद्रङ् कर्णेभिः शृणुयाम देवाः ।
भद्रम् पश्येमाक्षभिर्यजत्राः ।
स्थिरैरङ्गैस्तुष्टुवांसस्तनूभिः व्यशेम देवहितं यदायुः ।।

ॐ स्वस्ति न इन्द्रो वृद्धश्रवाः ।
स्वस्ति नः पूषा विश्ववेदाः ।
स्वस्ति नस्ताक्ष्र्योऽअरिष्टनेमिः स्वस्ति नो बृहस्पतिर्दधातु ।।
ॐ शान्तिः शान्तिः शान्तिः ।।

ॐ नमस्ते गणपतये ।
त्वमेव प्रत्यक्षन् तत्त्वमसि ।
त्वमेव केवलङ् कर्ताऽसि ।
त्वमेव केवलन् धर्ताऽसि ।
त्वमेव केवलम् हर्ताऽसि ।
त्वमेव सर्वङ् खल्विदम् ब्रह्मासि ।
त्वं साक्षादात्माऽसि नित्यम् ।। १ ।।

ऋतं वच्मि । सत्यं वच्मि ।। २ ।।

अव त्वम् माम् ।
अव वक्तारम् ।
अव श्रोतारम् ।
अव दातारम् ।
अव धातारम् ।
अवानूचानमव शिष्यम् ।
अव पश्चात्तात् ।
अव पुरस्तात् ।
अवोत्तरात्तात् ।
अव दक्षिणात्तात् ।
अव चोध्र्वात्तात् ।
अवाधरात्तात् ।
सर्वतो माम् पाहि पाहि समन्तात् ।। ३ ।।

वं वाङ्मयस्त्वञ् चिन्मयः ।
त्वम् आनन्दमयस्त्वम् ब्रह्ममयः ।
त्वं सच्चिदानन्दाद्वितीयोऽसि ।
त्वम् प्रत्यक्षम् ब्रह्मासि ।
त्वम् ज्ञानमयो विज्ञानमयोऽसि ।। ४ ।।

सर्वञ् जगदिदन् त्वत्तो जायते ।
सर्वञ् जगदिदन् त्वत्तस्तिष्ठति ।
सर्वञ् जगदिदन् त्वयि लयमेष्यति ।
सर्वञ् जगदिदन् त्वयि प्रत्येति ।
त्वम् भूमिरापोऽनलोऽनिलो नभः ।
त्वञ् चत्वारि वाव्पदानि ।। ५ ।।

त्वङ् गुणत्रयातीतः ।
त्वन् देहत्रयातीतः ।
त्वङ् कालत्रयातीतः ।
त्वम् मूलाधारस्थितोऽसि नित्यम् ।
त्वं शक्तित्रयात्मकः ।
त्वां योगिनो ध्यायन्ति नित्यम् ।
त्वम् ब्रह्मा त्वं विष्णुस्त्वम् रुद्रस्त्वम् इन्द्रस्त्वम् अग्निस्त्वं वायुस्त्वं सूर्यस्त्वञ चन्द्रमास्त्वम् ब्रह्मभूर्भुवः स्वरोम् ।। ६ ।।

गणादिम् पूर्वमुच्चार्य वर्णादिन् तदनन्तरम् ।
अनुस्वारः परतरः ।
अर्धेन्दुलसितम् ।
तारेण ऋद्धम् ।
एतत्तव मनुस्वरूपम् ।
गकारः पूर्वरूपम् ।
अकारो मध्यमरूपम् ।
अनुस्वारश्चान्त्यरूपम् ।
बिन्दुरुत्तररूपम् ।
नादः सन्धानम् ।
संहिता सन्धिः ।
सैषा गणेशविद्या ।
गणक ऋषिः ।
निचृद्गायत्री छन्दः ।
गणपतिर्देवता ।
ॐ गँ गणपतये नमः ।। ७ ।।

एकदन्ताय विद्महे ।
वक्रतुण्डाय धीमहि ।
तन्नो दन्तिः प्रचोदयात् ।। ८ ।।

एकदन्तञ् चतुर्हस्तम्, पाशमङ्कुशधारिणम् ।
रदञ् च वरदम् हस्तैर्बिभ्राणम्, मूषकध्वजम् ।
रक्तं लम्बोदरं, शूर्पकर्णकम् रक्तवाससम् ।
रक्तगन्धानुलिप्ताङ्गम्, रक्तपुष्पैःसुपूजितम् ।
भक्तानुकम्पिनन् देवञ्, जगत्कारणमच्युतम् ।
आविर्भूतञ् च सृष्ट्यादौ, प्रकृतेः पुरुषात्परम् ।
एवन् ध्यायति यो नित्यं स योगी योगिनां वरः ।। ९ ।।

नमो व्रातपतये, नमो गणपतये, नमः प्रमथपतये, नमस्ते अस्तु लम्बोदराय एकदन्ताय, विघ्ननाशिने शिवसुताय, वरदमूर्तये नमः ।। १० ।।

एतदथर्वशीर्षं योऽधीते ।
स ब्रह्मभूयाय कल्पते ।
स सर्वविघ्नैर्न बाध्यते ।
स सर्वतः सुखमेधते ।
स पञ्चमहापापात् प्रमुच्यते ।
सायमधीयानो दिवसकृतम्
पापन् नाशयति ।
प्रातरधीयानो रात्रिकृतम्
पापन् नाशयति ।
सायम् प्रातः प्रयुञ्जानोऽअपापो भवति ।
सर्वत्राधीयानोऽपविघ्नो भवति ।
धर्मार्थकाममोक्षञ् च विन्दति ।
इदम् अथर्वशीर्षम् अशिष्याय न देयम् ।
यो यदि मोहाद्दास्यति
स पापीयान् भवति ।
सहस्रावर्तनात् ।
यं यङ् काममधीते
तन् तमनेन साधयेत् ।। ११ ।।

अनेन गणपतिमभिषिञ्चति ।
स वाग्मी भवति ।
चतुथ्र्यामनश्नन् जपति
स विद्यावान् भवति ।
इत्यथर्वणवाक्यम् ।
ब्रह्माद्यावरणम् विद्यात् ।
न बिभेति कदाचनेति ।। १२ ।।

यो दूर्वाङ्कुरैर्यजति ।
स वैश्रवणोपमो भवति ।
यो लाजैर्यजति, स यशोवान् भवति ।
स मेधावान् भवति ।
यो मोदकसहस्रेण यजति ।
स वाञ्छितफलमवाप्नोति ।
यः साज्यसमिद्भिर्यजति
स सर्वं लभते, स सर्वं लभते ।। १३ ।।

अष्टौ ब्राह्मणान् सम्यग्ग्राहयित्वा,
सूर्यवर्चस्वी भवति ।
सूर्यग्रहे महानद्याम् प्रतिमासन्निधौ
वा जप्त्वा, सिद्धमन्त्रो भवति ।
महाविघ्नात् प्रमुच्यते ।
महादोषात् प्रमुच्यते ।
महापापात् प्रमुच्यते ।
स सर्वविद् भवति, स सर्वविद् भवति ।
य एवम् वेद ।। १४ ।।

ॐ सहनाववतु । सहनौ भुनक्तु ।
सहवीर्यङ् करवावहै ।
तेजस्विनावधीतमस्तु मा विद्विषावहै ।।

ॐ शान्तिः शान्तिः शान्तिः ।।

ॐ भद्रङ् कर्णेभिः शृणुयाम देवाः ।
भद्रम् पश्येमाक्षभिर्यजत्राः । 
स्थिरैरङ्गैस्तुष्टुवांसस्तनूभिः
व्यशेम देवहितं यदायुः ।।

ॐ स्वस्ति न इन्द्रो वृद्धश्रवाः ।
स्वस्ति नः पूषा विश्ववेदाः ।
स्वस्ति नस्ताक्ष्र्योऽअरिष्टनेमिः
स्वस्ति नो बृहस्पतिर्दधातु ।।

ॐ शान्तिः शान्तिः शान्तिः ।।

',2,35);
INSERT INTO "mantra_translation" VALUES ('Mahishasuramardhini','Ayi giri nandini nandhitha medhini
Viswa vinodhini nandanuthe
Girivara vindhya sirodhi nivasini
Vishnu Vilasini Jishnu nuthe
Bhagawathi hey sithi kanda kudumbini
Bhoori kudumbini bhoori kruthe
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Suravara varshini durdara darshini
Durmukhamarshani harsha rathe
Tribhuvana poshini Sankara thoshini
Kilbisisha moshini ghosha rathe
Danuja niroshini Dithisutha roshini
Durmatha soshini Sindhu suthe
Jaya Jaya Hey Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Ayi Jagadambha Madambha  Kadambha
Vana priya vasini Hasarathe
Shikhari siromani thunga Himalaya
Srunga nijalaya madhyagathe
Madhu Madure Mdhukaitabha banjini
Kaitabha banjini rasa rathe
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Ayi satha kanda vikanditha runda
Vithunditha shunda Gajathipathe
Ripu Gaja ganda  Vidhaarana chanda
Paraakrama shunda mrugathipathe
Nija bhuja danda nipaathitha khanda
Vipaathitha munda bhatathipathe
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Ayi rana durmathaShathru vadhothitha
Durdhara nirjjara shakthi bruthe
Chathura vicharadureena maha shiva
Duthatkrutha pramadhipathe
Duritha Dureeha dhurasaya durmathi
Dhanava dhutha kruithaanthamathe
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Ayi saranagatha vairi vadhuvara
Veera varaa bhaya dhayakare
Tribhuvana masthaka soola virodhi
Sirodhi krithamala shoolakare
Dimidmi thaamara dundubinadha mahaa
Mukharikruthatigmakare
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Ayi nija huum kruthimathra niraakrutha
Dhoomra vilochana Dhoomra sathe
Samara vishoshitha sonitha bheeja
Samudhbhava sonitha bheejalathe
Shiva shiva shumbha nishumbhamaha hava
Tarpitha bhootha pisacha rathe
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Dhanu ranushanga rana kshana sanga
Parisphuradanga natath katake
Kanaka pishanga brushathka nishanga
Rasadbhata shrunga hatavatuke
Kritha chaturanga bala kshithirangakadath
Bahuranga ratadhpatuke
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Sura Lalanata Tatheyi Tatheyi Tathabhi Nayottama Nritya Rate
Hasa Vilasa Hulasa Mayi Prana Tartaja Nemita Prema Bhare
Dhimi Kita Dhikkata Dhikkata Dhimi Dhvani Ghora Mrdanga Ninada Late
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Jaya Jaya hey japya jayejaya shabda
Parastuti tatpara vishvanute
Bhana Bhanabhinjimi bhingrutha noopura
Sinjitha mohitha bhootha pathe
Nadintha nataartha nadi nada nayaka
Naditha natya sugaanarathe
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Ayi sumana sumana
Sumana sumanohara kanthiyuthe
Sritha rajani rajani rajani
Rajaneekaravakthra vruthe
Sunayana vibhramarabhrama
Bhramarabrahmaradhipadhe
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Sahitha maha hava mallama hallika
Mallitharallaka mallarathe
Virachithavallika pallika mallika billika
Bhillika varga Vruthe
Sithakruthapulli samulla sitharuna
Thallaja pallava sallalithe
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Avirala ganda kalatha mada medura
Matha matanga rajapathe
Tribhuvana bhooshana bhootha kalanidhi
Roopa payonidhi raja suthe
Ayi suda thijjana lalasa manasa
Mohana manmatha raja suthe
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Kamala dalaamala komala kanthi
Kala kalithaamala bala lathe
Sakala vilasa Kala nilayakrama
Keli chalathkala hamsa kule
Alikula sankula kuvalaya mandala
Mauli miladh bhakulalikule
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Kara murali rava veejitha koojitha
Lajjitha kokila manjumathe
Militha pulinda manohara kunchitha
Ranchitha shaila nikunjakathe
Nija guna bhootha maha sabari gana
Sathguna sambrutha kelithale
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Kati thata peetha dukoola vichithra
Mayuka thiraskrutha Chandra ruche
Pranatha suraasura mouli mani sphura
Damsula sannka Chandra ruche
Jitha kanakachala maulipadorjitha
Nirbhara kunjara kumbhakuche
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Vijitha sahasra karaika sahasrakaraika
Sarakaraika nuthe
Krutha sutha tharaka sangaratharaka
Sangaratharaka soonu suthe
Suratha Samadhi samana Samadhi
Samadhi Samadhi sujatharathe
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Padakamalam karuna nilaye varivasyathi
yo anudhinam sa shive
Ayi kamale kamala nilaye kamala nilaya
Sa katham na bhaveth
Thava padameva param ithi
Anusheelayatho mama kim na shive
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Kanakala sathkala sindhu jalairanu
Sinjinuthe guna ranga bhuvam
Bhajathi sa kim na Shachi kucha kumbha
Thati pari rambha sukhanubhavam
Thava charanam saranam kara vani
Nataamaravaaninivasi shivam
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe


Thava Vimalendu kulam vadnedumalam
Sakalayananu kulayathe
Kimu puruhootha pureendu mukhi
Sumukhibhee rasou vimukhi kriyathe
Mama thu matham shivanama dhane
Bhavathi krupaya kimu na kriyathe
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe

Ayi mai deena dayalu thaya krupayaiva
Thvaya bhavthavyam ume
Ayi jagatho janani kripayaa asi
thatha anumithasi rathe
Na yaduchitham atra bhavathvya rari kurutha
durutha pamapakarute
Jaya Jaya He Mahishasura Mardini
Ramya Kapardini Shaila Suthe',1,36);
INSERT INTO "mantra_translation" VALUES ('महिषासुरमर्दिनि','अयि गिरिनन्दिनि नन्दितमेदिनि विश्वविनोदिनि नन्दिनुते
गिरिवरविन्ध्यशिरोऽधिनिवासिनि विष्णुविलासिनि जिष्णुनुते ।
भगवति हे शितिकण्ठकुटुम्बिनि भूरिकुटुम्बिनि भूरिकृते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ १ ॥

 सुरवरवर्षिणि दुर्धरधर्षिणि दुर्मुखमर्षिणि हर्षरते
त्रिभुवनपोषिणि शङ्करतोषिणि किल्बिषमोषिणि घोषरते
दनुजनिरोषिणि दितिसुतरोषिणि दुर्मदशोषिणि सिन्धुसुते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ २ ॥

 अयि जगदम्ब मदम्ब कदम्ब वनप्रियवासिनि हासरते
शिखरि शिरोमणि तुङ्गहिमलय शृङ्गनिजालय मध्यगते ।
मधुमधुरे मधुकैटभगञ्जिनि कैटभभञ्जिनि रासरते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ ३ ॥

 अयि शतखण्ड विखण्डितरुण्ड वितुण्डितशुण्द गजाधिपते
रिपुगजगण्ड विदारणचण्ड पराक्रमशुण्ड मृगाधिपते ।
निजभुजदण्ड निपातितखण्ड विपातितमुण्ड भटाधिपते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ ४ ॥

 अयि रणदुर्मद शत्रुवधोदित दुर्धरनिर्जर शक्तिभृते
चतुरविचार धुरीणमहाशिव दूतकृत प्रमथाधिपते ।
दुरितदुरीह दुराशयदुर्मति दानवदुत कृतान्तमते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ ५ ॥

 अयि शरणागत वैरिवधुवर वीरवराभय दायकरे
त्रिभुवनमस्तक शुलविरोधि शिरोऽधिकृतामल शुलकरे ।
दुमिदुमितामर धुन्दुभिनादमहोमुखरीकृत दिङ्मकरे
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ ६ ॥

 अयि निजहुङ्कृति मात्रनिराकृत धूम्रविलोचन धूम्रशते
समरविशोषित शोणितबीज समुद्भवशोणित बीजलते ।
शिवशिवशुम्भ निशुम्भमहाहव तर्पितभूत पिशाचरते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ ७ ॥

 धनुरनुषङ्ग रणक्षणसङ्ग परिस्फुरदङ्ग नटत्कटके
कनकपिशङ्ग पृषत्कनिषङ्ग रसद्भटशृङ्ग हताबटुके ।
कृतचतुरङ्ग बलक्षितिरङ्ग घटद्बहुरङ्ग रटद्बटुके
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ ८ ॥

 सुरललना ततथेयि तथेयि कृताभिनयोदर नृत्यरते
कृत कुकुथः कुकुथो गडदादिकताल कुतूहल गानरते ।
धुधुकुट धुक्कुट धिंधिमित ध्वनि धीर मृदंग निनादरते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ ९ ॥

 जय जय जप्य जयेजयशब्द परस्तुति तत्परविश्वनुते
झणझणझिञ्झिमि झिङ्कृत नूपुरशिञ्जितमोहित भूतपते ।
नटित नटार्ध नटी नट नायक नाटितनाट्य सुगानरते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ १० ॥

 अयि सुमनःसुमनःसुमनः सुमनःसुमनोहरकान्तियुते
श्रितरजनी रजनीरजनी रजनीरजनी करवक्त्रवृते ।
सुनयनविभ्रमर भ्रमरभ्रमर भ्रमरभ्रमराधिपते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ ११ ॥

 सहितमहाहव मल्लमतल्लिक मल्लितरल्लक मल्लरते
विरचितवल्लिक पल्लिकमल्लिक झिल्लिकभिल्लिक वर्गवृते ।
शितकृतफुल्ल समुल्लसितारुण तल्लजपल्लव सल्ललिते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ १२ ॥

 अविरलगण्ड गलन्मदमेदुर मत्तमतङ्ग जराजपते
त्रिभुवनभुषण भूतकलानिधि रूपपयोनिधि राजसुते ।
अयि सुदतीजन लालसमानस मोहन मन्मथराजसुते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ १३ ॥

 कमलदलामल कोमलकान्ति कलाकलितामल भाललते
सकलविलास कलानिलयक्रम केलिचलत्कल हंसकुले ।
अलिकुलसङ्कुल कुवलयमण्डल मौलिमिलद्बकुलालिकुले
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ १४ ॥

 करमुरलीरव वीजितकूजित लज्जितकोकिल मञ्जुमते
मिलितपुलिन्द मनोहरगुञ्जित रञ्जितशैल निकुञ्जगते ।
निजगणभूत महाशबरीगण सद्गुणसम्भृत केलितले
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ १५ ॥

 कटितटपीत दुकूलविचित्र मयुखतिरस्कृत चन्द्ररुचे
प्रणतसुरासुर मौलिमणिस्फुर दंशुलसन्नख चन्द्ररुचे
जितकनकाचल मौलिमदोर्जित निर्भरकुञ्जर कुम्भकुचे
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ १६ ॥

 विजितसहस्रकरैक सहस्रकरैक सहस्रकरैकनुते
कृतसुरतारक सङ्गरतारक सङ्गरतारक सूनुसुते ।
सुरथसमाधि समानसमाधि समाधिसमाधि सुजातरते ।
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ १७ ॥

 दकमलं करुणानिलये वरिवस्यति योऽनुदिनं सुशिवे
अयि कमले कमलानिलये कमलानिलयः स कथं न भवेत् ।
तव पदमेव परम्पदमित्यनुशीलयतो मम किं न शिवे
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ १८ ॥

 कनकलसत्कलसिन्धुजलैरनुषिञ्चति तेगुणरङ्गभुवम्
भजति स किं न शचीकुचकुम्भतटीपरिरम्भसुखानुभवम् ।
तव चरणं शरणं करवाणि नतामरवाणि निवासि शिवम्
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ १९ ॥

 तव विमलेन्दुकुलं वदनेन्दुमलं सकलं ननु कूलयते
किमु पुरुहूतपुरीन्दु मुखी सुमुखीभिरसौ विमुखीक्रियते ।
मम तु मतं शिवनामधने भवती कृपया किमुत क्रियते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ २० ॥

 अयि मयि दीन दयालुतया कृपयैव त्वया भवितव्यमुमे
अयि जगतो जननी कृपयासि यथासि तथानुमितासिरते ।
यदुचितमत्र भवत्युररीकुरुतादुरुतापमपाकुरुते
जय जय हे महिषासुरमर्दिनि रम्यकपर्दिनि शैलसुते ॥ २१ ॥',2,36);
INSERT INTO "mantra_translation" VALUES ('Surya','Japaa Kusuma Sankasham
Kaashya Peyam Maha Dyutim
Tamo Arim Sarva Paapagh Nam
Pranatosmi Divaa Karam',1,37);
INSERT INTO "mantra_translation" VALUES ('सूर्य','जपाकुसुम संकाशं काश्यपेयं महदद्युतिम् I
तमोरिंसर्वपापघ्नं प्रणतोSस्मि दिवाकरम् II',2,37);
INSERT INTO "mantra_translation" VALUES ('Chandra','Dadhi Shankha Tusha Raabham
Kshiiro Dhaarnava Sambhavam
Namaami Shashinam Somam
Shambor Mukuta Bhushanam',1,38);
INSERT INTO "mantra_translation" VALUES ('चंद्र','दधिशंखतुषाराभं क्षीरोदार्णव संभवम् I
नमामि शशिनं सोमं शंभोर्मुकुट भूषणम् II',2,38);
INSERT INTO "mantra_translation" VALUES ('Mangal','Dharani Garbha Sambhuutam
Vidyut Kanti Samaprabham
Kumaram Shakti Hastam Cha
Mangalam Prana Maa Myaham',1,39);
INSERT INTO "mantra_translation" VALUES ('मंगल','धरणीगर्भ संभूतं विद्युत्कांति समप्रभम् I
कुमारं शक्तिहस्तं तं मंगलं प्रणाम्यहम् II',2,39);
INSERT INTO "mantra_translation" VALUES ('Budha','Priyangu Kalikaa Shyamam
Rupenaa Pratimam Budham
Sowmyam Sowmya Guno Petam
Tam Budham Prana Maa Myaham',1,40);
INSERT INTO "mantra_translation" VALUES ('बुध','प्रियंगुकलिकाश्यामं रुपेणाप्रतिमं बुधम् I
सौम्यं सौम्यगुणोपेतं तं बुधं प्रणमाम्यहम् II',2,40);
INSERT INTO "mantra_translation" VALUES ('Guru','Devanaam Cha Rishii Namcha
Gurum Kanchana Sannibham
Buddhi Bhuutam Trilo Kesham
Tam Namami Bruha Spatim',1,41);
INSERT INTO "mantra_translation" VALUES ('गुरु','देवानांच ऋषीनांच गुरुं कांचन सन्निभम् I
बुद्धिभूतं त्रिलोकेशं तं नमामि बृहस्पतिम् II',2,41);
INSERT INTO "mantra_translation" VALUES ('Shukra','Hima Kunda Mruna Labham
Daityanam Paramam Gurum
Sarva Shastra Pravak Taram
Bhar Gavam Prana Maa Myaham',1,42);
INSERT INTO "mantra_translation" VALUES ('शुक्र','हिमकुंद मृणालाभं दैत्यानां परमं गुरुम् I
सर्वशास्त्र प्रवक्तारं भार्गवं प्रणमाम्यहम् II',2,42);
INSERT INTO "mantra_translation" VALUES ('Shani','Neelaan Jana Sama Bhasam
Ravi Putram Yama Grajam
Chhaya Martanda Sambhutam
Tam Namaami Shanaish Charam',1,43);
INSERT INTO "mantra_translation" VALUES ('शनि','नीलांजन समाभासं रविपुत्रं यमाग्रजम् I 
छायामार्तंड संभूतं तं नमामि शनैश्चरम् II',2,43);
INSERT INTO "mantra_translation" VALUES ('Rahu','Ardha Kaayam Mahaa Viiryan
Chandraa Ditya Vimar Dhanam
Sinhi Kaa Garbha Sambhutam
Tam Rahum Prana Maa Myaham',1,44);
INSERT INTO "mantra_translation" VALUES ('राहु','अर्धकायं महावीर्यं चंद्रादित्य विमर्दनम् I
सिंहिकागर्भसंभूतं तं राहुं प्रणमाम्यहम् II',2,44);
INSERT INTO "mantra_translation" VALUES ('Ketu','Palasha Pushpa Sankaasham
Taarakaa Graha Mastakam
Rowdram Rowdraat Makam Ghoram
Tam Ketum Prana Maa Myaham',1,45);
INSERT INTO "mantra_translation" VALUES ('केतु','पलाशपुष्पसंकाशं तारकाग्रह मस्तकम् I
रौद्रंरौद्रात्मकं घोरं तं केतुं प्रणमाम्यहम् II',2,45);
INSERT INTO "mantra_translation" VALUES ('Sarvesham Svastir Bhavatu','Om Sarvesham Svastir Bhavatu
Sarvesham Shantir Bhavatu
Sarvesham Poornam Bhavatu
Sarvesham Mangalam Bhavatu
Om, Shanti, Shanti, Shantihi',1,46);
INSERT INTO "mantra_translation" VALUES ('सर्वेषाम स्वस्तिर भवतु','ॐ सर्वेषाम स्वस्तिर भवतु
सर्वेषाम शन्तिर भवतु
सर्वेषाम पूर्णम भवतु
सर्वेषाम मंगलम भवतु
ॐ शांति शांति शान्तिही',2,46);
INSERT INTO "mantra_translation" VALUES ('Shiva Tandav','Jata kata hasambhrama bhramanilimpanirjhari 
Vilolavichivalarai virajamanamurdhani 
Dhagadhagadhagajjva lalalata pattapavake 
Kishora chandrashekhare ratih pratikshanam mama

Jatatavigalajjala pravahapavitasthale 
Galeavalambya lambitam bhujangatungamalikam 
Damad damad damaddama ninadavadamarvayam 
Chakara chandtandavam tanotu nah shivah shivam

Dharadharendrana ndinivilasabandhubandhura 
Sphuradigantasantati pramodamanamanase 
Krupakatakshadhorani nirudhadurdharapadi 
Kvachidigambare manovinodametuvastuni

Jata bhujan gapingala sphuratphanamaniprabha 
Kadambakunkuma dravapralipta digvadhumukhe 
Madandha sindhu rasphuratvagutariyamedure 
Mano vinodamadbhutam bibhartu bhutabhartari

Lalata chatvarajvaladhanajnjayasphulingabha 
Nipitapajnchasayakam namannilimpanayakam 
Sudha mayukha lekhaya virajamanashekharam 
Maha kapali sampade shirojatalamastu nah

Sahasra lochana prabhritya sheshalekhashekhara
Prasuna dhulidhorani vidhusaranghripithabhuh
Bhujangaraja malaya nibaddhajatajutaka
Shriyai chiraya jayatam chakora bandhushekharah

Karala bhala pattikadhagaddhagaddhagajjvala
Ddhanajnjaya hutikruta prachandapajnchasayake
Dharadharendra nandini kuchagrachitrapatraka
Prakalpanaikashilpini trilochane ratirmama

Navina megha mandali niruddhadurdharasphurat 
Kuhu nishithinitamah prabandhabaddhakandharah 
Nilimpanirjhari dharastanotu krutti sindhurah 
Kalanidhanabandhurah shriyam jagaddhurandharah

Praphulla nila pankaja prapajnchakalimchatha
Vdambi kanthakandali raruchi prabaddhakandharam 
Smarachchidam purachchhidam bhavachchidam makhachchidam 
Gajachchidandhakachidam tamamtakachchidam bhaje

Akharvagarvasarvamangala kalakadambamajnjari 
Rasapravaha madhuri vijrumbhana madhuvratam 
Smarantakam purantakam bhavantakam makhantakam 
Gajantakandhakantakam tamantakantakam bhaje

Jayatvadabhravibhrama bhramadbhujangamasafur
Dhigdhigdhi nirgamatkarala bhaal havyavat 
Dhimiddhimiddhimidhva nanmrudangatungamangala 
Dhvanikramapravartita prachanda tandavah shivah

Drushadvichitratalpayor bhujanga mauktikasrajor 
Garishtharatnaloshthayoh suhrudvipakshapakshayoh 
Trushnaravindachakshushoh prajamahimahendrayoh 
Sama pravartayanmanah kada sadashivam bhaje

Kada nilimpanirjhari nikujnjakotare vasanh 
Vimuktadurmatih sada shirah sthamajnjalim vahanh 
Vimuktalolalochano lalamabhalalagnakah 
Shiveti mantramuchcharan sada sukhi bhavamyaham

Nilimpnath naagaree kadamb mauli mallika,
nigumpha nirbharkshanm dhooshnika manoharah.
tanotu no manomudam vinodineem maharshinam,
parshriyam param padam tadanjatvisham chayah

Prachanda wadavaanal prabha shubh pracharinee,
mahaasht siddhi kaaminee janavahoot jalpana.
vimukta vaam lochano vivaah kaalikdhvanih,
shiveti mantra bhooshano jagajjayaay jaaytaam

Imam hi nityameva muktamuttamottamam stavam 
Pathansmaran bruvannaro vishuddhimeti santatam 
Hare gurau subhaktimashu yati nanyatha gatim 
Vimohanam hi dehinam sushankarasya chintanam',1,47);
INSERT INTO "mantra_translation" VALUES ('शिवा तांडव','जटा कटा हसंभ्रम भ्रमन्निलिम्प निर्झरी, विलो लवी चिवल्लरी विराजमान मूर्धनि |
धगद् धगद् धगज्ज्वलल् ललाट पट्ट पावके किशोर चन्द्र शेखरे रतिः प्रतिक्षणं मम ||

जटा टवी गलज्जल प्रवाह पावितस्थले, गलेऽवलम्ब्य लम्बितां भुजङ्ग तुङ्ग मालिकाम् |
डमड्डमड्डमड्डमन्निनाद वड्डमर्वयं, चकार चण्डताण्डवं तनोतु नः शिवः शिवम् ||

धरा धरेन्द्र नंदिनी विलास बन्धु बन्धुरस् फुरद् दिगन्त सन्तति प्रमोद मानमानसे |
कृपा कटाक्ष धोरणी निरुद्ध दुर्धरापदि क्वचिद् दिगम्बरे मनो विनोदमेतु वस्तुनि ||

जटा भुजं गपिंगल स्फुरत्फणामणिप्रभा कदंबकुंकुम द्रवप्रलिप्त दिग्वधूमुखे ।
मदांध सिंधु रस्फुरत्वगुत्तरीयमेदुरे मनो विनोदद्भुतं बिंभर्तु भूतभर्तरि ||

ललाट चत्वरज्वलद् धनञ्जयस्फुलिङ्गभा निपीत पञ्चसायकं नमन्निलिम्प नायकम् |
सुधा मयूखले खया विराजमानशेखरं महाकपालिसम्पदे शिरोज टालमस्तु नः ||

सहस्र लोचनप्रभृत्य शेष लेखशेखर प्रसून धूलिधोरणी विधूस राङ्घ्रि पीठभूः |
भुजङ्ग राजमालया निबद्ध जाटजूटक श्रियै चिराय जायतां चकोर बन्धुशेखरः ||

कराल भाल पट्टिका धगद् धगद् धगज्ज्वल द्धनञ्जयाहुती कृतप्रचण्ड पञ्चसायके |
धरा धरेन्द्र नन्दिनी कुचाग्र चित्रपत्रक प्रकल्प नैक शिल्पिनि त्रिलोचने रतिर्मम |||

नवीन मेघ मण्डली निरुद् धदुर् धरस्फुरत्- कुहू निशीथि नीतमः प्रबन्ध बद्ध कन्धरः |
निलिम्प निर्झरी धरस् तनोतु कृत्ति सिन्धुरः कला निधान बन्धुरः श्रियं जगद् धुरंधरः ||

प्रफुल्ल नीलपङ्कज प्रपञ्च कालिम प्रभा- वलम्बि कण्ठकन्दली रुचिप्रबद्ध कन्धरम् |
स्मरच्छिदं पुरच्छिदं भवच्छिदं मखच्छिदं गजच्छि दांध कच्छिदं तमंत कच्छिदं भजे ||

अखर्व सर्व मङ्गला कला कदंब मञ्जरी रस प्रवाह माधुरी विजृंभणा मधुव्रतम् |
स्मरान्तकं पुरान्तकं भवान्तकं मखान्तकं गजान्त कान्ध कान्त कं तमन्त कान्त कं भजे ||

जयत् वदभ्र विभ्रम भ्रमद् भुजङ्ग मश्वस – द्विनिर्ग मत् क्रमस्फुरत् कराल भाल हव्यवाट् |
धिमिद्धिमिद्धिमिध्वनन्मृदङ्गतुङ्गमङ्गल ध्वनिक्रमप्रवर्तित प्रचण्डताण्डवः शिवः ||

स्पृषद्विचित्रतल्पयोर्भुजङ्गमौक्तिकस्रजोर्- – गरिष्ठरत्नलोष्ठयोः सुहृद्विपक्षपक्षयोः |
तृष्णारविन्दचक्षुषोः प्रजामहीमहेन्द्रयोः समप्रवृत्तिकः ( समं प्रवर्तयन्मनः) कदा सदाशिवं भजे ||

कदा निलिम्पनिर्झरीनिकुञ्जकोटरे वसन् विमुक्तदुर्मतिः सदा शिरः स्थमञ्जलिं वहन् |
विमुक्तलोललोचनो ललामभाललग्नकः शिवेति मंत्रमुच्चरन् कदा सुखी भवाम्यहम् ||

निलिम्प नाथनागरी कदम्ब मौलमल्लिका निगुम्फनिर्भक्षरन्म धूष्णिकामनोहरः ।
तनोतु नो मनोमुदं विनोदिनींमहनिशं परिश्रय परं पदं तदंगजत्विषां चयः ॥

प्रचण्ड वाडवानल प्रभाशुभप्रचारणी महाष्टसिद्धिकामिनी जनावहूत जल्पना ।
विमुक्त वाम लोचनो विवाहकालिकध्वनिः शिवेति मन्त्रभूषगो जगज्जयाय जायताम्‌ ॥

इदम् हि नित्यमेवमुक्तमुत्तमोत्तमं स्तवं पठन्स्मरन्ब्रुवन्नरो विशुद्धिमेतिसंततम् |
हरे गुरौ सुभक्तिमाशु याति नान्यथा गतिं विमोहनं हि देहिनां सुशङ्करस्य चिंतनम् ||
',2,47);
INSERT INTO "mantra_translation" VALUES ('Surya','Om Ashwadhwaja Vidmahe
Pasa Hasthaya Dheemahi
Thanno Soorya Prachodayath',1,48);
INSERT INTO "mantra_translation" VALUES ('सूर्य','ॐ अश्व्-वजय विद्महे पास् हस्थय धीमहि तन्नः सूर्यः प्रचोदयात् ॥',2,48);
INSERT INTO "mantra_translation" VALUES ('Chandra','Om Padmadwajaya Vidmahe
Hema Roopaya Dheemahi
Thanno Soma Prachodayath',1,49);
INSERT INTO "mantra_translation" VALUES ('चंद्र','ॐ पद्मद्-वजय विद्महे हेम्-रुपाय् धीमहि तन्नो सोमः प्रचोदयात् ॥',2,49);
INSERT INTO "mantra_translation" VALUES ('Mangal (Angaraka)','Om Veeradwajaya Vidmahe
Vighna Hasthaya Dheemahi
Thanno Bhauma Prachodayath',1,50);
INSERT INTO "mantra_translation" VALUES ('मंगल (अंगारका)','ॐ विरद्-वजय विद्महे विधन्-हस्ताय धीमहि तन्नो भौमः प्रचोदयात् ॥',2,50);
INSERT INTO "mantra_translation" VALUES ('Budha','Om Gajadwajaya Vidmahe
Shuka Hasthaya Dheemahi
Thanno Budha Prachodayath',1,51);
INSERT INTO "mantra_translation" VALUES ('बुध','ॐ गजद्वजाय विद्महे सुका-हस्ताय धीमहि तन्नो बुधा: प्रचोदयात् ॥',2,51);
INSERT INTO "mantra_translation" VALUES ('Guru','Om Vrishabhadwajaya Vidmahe
Ghrini Hasthaya Dheemahi
Thanno Guru Prachodayath',1,52);
INSERT INTO "mantra_translation" VALUES ('गुरु','ॐ व्रुशभ-वजय विद्महे क्रुनि-पुजयाय् धीमहि तन्नो गुरु: प्रचोदयात् ॥',2,52);
INSERT INTO "mantra_translation" VALUES ('Shukra','Om Ashwadwajaya Vidmahe
Dhanur Hasthaya Dheemahi
Thanno Shukra Prachodayath',1,53);
INSERT INTO "mantra_translation" VALUES ('शुक्र','ॐ अशवद्-वजया विद्महे धनुर्-हस्ताय धीमहि तन्नो शुकर: प्रचोदयात् ॥',2,53);
INSERT INTO "mantra_translation" VALUES ('Shani','Om Kakadwajaya Vidmahe
Khadga Hasthaya Dheemahi
Thanno Manda Prachodayath',1,54);
INSERT INTO "mantra_translation" VALUES ('शनि','ॐ काकद्-वजया विद्महे कद् हस्ताय धीमहि तन्नो शनि: प्रचोदयात् ॥',2,54);
INSERT INTO "mantra_translation" VALUES ('Rahu','Om Nagadwajaya Vidmahe
Padma Hasthaya Dheemahi
Thanno Rahu Prachodayath',1,55);
INSERT INTO "mantra_translation" VALUES ('राहु','ॐ नगद्-वजया विद्महे पद्म-हस्ताय धीमहि तन्नो राहु: प्रचोदयात् ॥',2,55);
INSERT INTO "mantra_translation" VALUES ('Ketu','Om Ashwadwajaya Vidmahe
Shoola Hasthaya Dheemahi
Thanno Ketu Prachodayath',1,56);
INSERT INTO "mantra_translation" VALUES ('केतु','ॐ अश्व् वजया विद्महे शुल्-हस्ताय धीमहि तन्नो केतु: प्रचोदयात् ॥',2,56);
INSERT INTO "mantra_translation" VALUES ('Guru Mantra','Gurur Brahmaa Gurur Vishnu
Gurur Devo Maheshwarah
Guru Saakshaata Parabrahma
Tasmai Shri Guruve Namah',1,57);
INSERT INTO "mantra_translation" VALUES ('गुरु मंत्र','गुरु ब्रम्हा गुरु विष्णू
गुरुः देवो महेश्वरा
गुरु शाक्षात परब्रम्हा
तस्मै श्री गुरुवे नमः',2,57);
INSERT INTO "mantra_translation" VALUES ('Ram Raksha','Shree Ganeshaynamah |

Aasya Shriramraksha strota mantrasya 
budhkaushik hrishi |
Shri Sitaram chandro devta 
anushtup Chanda: Sita shakti |
Shriman hanuman keelkam 
Shri Ram chandra preetyerthe 
jape vinyogah ||

|| Aththa Dhyanam ||

Dhyaaedaajaanu baahum dhyaanam dhrit 
shar dhanusham badhhpadmaasanastham |
Peetam vaaso vasaanam 
navkamaldalspardhinetram prasannam |
Vamaankaarooddh sita mukhkamal 
milallochanam neerdaabham |
Naanaalankaar deeptam dadhat 
urujataamandalam Ramchandram || 

|| Iththi Dhyanam ||

Charitam Raghunaathasya 
shut koti pravistaram |
Ekaikam aksharam punsaam 
mahaa paatak naashanam ||1||

Dhyaatvaa nilotpal shyaamam 
Ramam rajeev lochanam |
Jaanaki lakshmanopetam 
jataa mukut manditam ||2||

Saasitoor dhanurbaan paanim 
naktam charaantakam |
Swalilayaa jagat traatum
aavirbhuntam ajam vibhum ||3||

Ram rakshaam patthet praagyaha 
paapaghaneem sarv kaamdam |
Shiro may Raaghavah paatu 
bhaalam Dasharathaatmjah ||4||

Kausalyeyo Drishau Paatu 
Vishvaamitra priyah shrutee |
Ghraanam paatu makha traataa 
mukham saumitrivatsala ||5||

Jihvaam vidyaa nidhih paatu 
kanttham bharat vanditah |
Skandhau divyaayudhah paatu 
bhujau bhagnesh kaarmukah ||6||

Karau seetapatih paatu 
hridayam jaamadagnyajit |
Madhyam paatu khara dhwansi 
naabhim jaambvadaashrayah ||7|| 

Sugriveshah katee paatu 
sakthini hanumat prabhuh |
Uru Raghoot tamah paatu 
rakshakul vinaashkrit ||8||

Jaahnuni Setukrit Paatu 
janghey dasha mukhaantakah |
Paadau vibhishan shreedah 
paatu Ramokhilam vapuh ||9||

Etaam Ram balopetaam rakshaam 
yah sukriti patthet |
Sa chiraayuh sukheeputri 
vijayi vinayi bhavet ||10||

Paataal bhutalavyom 
chaari nash chadmchaarinah |
Na drashtumapi shaktaaste 
rakshitam ramnaambhih ||11||

Rameti Rambhadreti 
Ramchandreti vaa smaran |
Naro na lipyate paapeir 
bhuktim muktim chavindati ||12||

Jagat jaitreik mantrein 
Ram naam naabhi rakshitam |
Yah kantthe dhaareytasya 
karasthaah sarv siddhyah ||13||

Vajra panjar naamedam 
yo Ramkavacham smaret |
Avyaa hataagyah sarvatra 
labhate jai mangalam ||14||

Aadisht vaan yathaa swapne 
Ram rakshaimaam harah |
Tathaa likhit vaan praatah 
prabu dho budh kaushikah ||15||

Aaraamah kalpa vrikshaanam 
viraamah sakalaapadaam |
Abhiraam strilokaanam Ramahi 
Shrimaansah nah prabhuh ||16||

Tarunau roop sampannau 
sukumaarau mahaa balau |
Pundreek vishaalaakshau 
cheerkrishnaa jinaambarau ||17||

Fala moolaa shinau daantau 
taapasau brahma chaarinau |
putrau dashrathasyetau 
bhraatarau Ram Lakshmanau ||18||

Sharanyau sarv satvaanaam 
shreshtthau sarv dhanush mataam |
Rakshah kul nihantaarau 
traayetaam no raghuttamau ||19||

Aattasajjadhanushaa vishusprishaa 
vakshyaashug nishang sanginau |
Rakshnaaya mum Ram lakshmanaa 
vagratah pathi sadaiv gachhtaam ||20||

Sannadah kavachi khadagi 
chaap baan dharo yuvaa |
Gachhan manorathaa nashch 
Ramah paatu salakshmanah ||21||

Ramo daashraltih shooro 
lakshmanaaru charo balee |
Kaakutsthah purushah purnah 
kausalyeyo raghuttmah ||22||

Vedaant vedyo yagneshah 
puraan puru shottamah |
Jaanaki vallabhah shrimaan 
prameya paraakramah ||23||

Ityetaani japan nityam 
madabhaktah shraddhyaan vitah |
Ashvamedhaadhikam punyam 
sampraapnoti na sanshayah ||24||
                                                    
Ramam doorvaadal shyaamam 
padmaaksham peet vaasasam |
Stuvanti naambhirdivyern 
te sansaarino naraah ||25|| 

Ramam Lakshman poorvajam 
raghuvaram sitapatim sundaram |
Kaakutstham karunarnvam gunnidhim 
viprapriyam dhaarmikam ||26||

Raajendram satyasandham Dashrath 
tanayam shyaamalam shaantmurtium
Vande Lokaabhiraamam Raghukultilakam 
Raghavam Raavanaarim |
Ramaay Rambhadraay 
Ramchandraay Vedhasey
Raghunaathaay naathaay 
sitayah paataye namah ||27||

Shri Ram Ram Raghunandan Ram Ram
Shri Ram Ram Bharataagraj Ram Ram
Shri Ram Ram Runkarkash Ram Ram
Shri Ram Ram Sharanam bhav Ram Ram ||28||

Shriram Chandra Charanau manasaa smaraami
Shriram Chandra Charanau vachasaa grinaami
Shriram Chandra Charanau Shirasaa namaami
Shriram Chandra Charanau Sharanam prapadye ||29|| 

Maataa Raamo matpithaa Ramachandra-ha |
Swamee Raamo matsakhaa Ramachandra-ha |
Sarvaswam me RamachandrO dayaalu |
Naanyam jaane naiva jaane na jaane ||30||

DakshiNe LakshmaNO yasya 
vaame tu Janakaatmajaa |
Puratho Maarutiryasya 
tam vande Raghunandanam ||31||

Lokabhiraamam ranarangadheeram 
raajeevanetram Raghuvamshanaatham |
KaaruNyaroopam karuNaakaramtam 
Shreeraamachandram sharaNam prapadhye ||32||

Manojavam Maarutatulyavegam 
jitendriyam varishTam |
Vaataatmajam vaanarayuuthamukhyam 
Shreeraamadootam sharaNam prapadhye ||33||

Koojantham Raamaraameti 
madhuram madhuraaksharam |
Aaruhya kavithashaakhaam 
vande Valmiikikokilam ||34|| 

Aapadaampahartaaram 
daataaram sarvasampadaam |
Lokaabhiraamam Shreeraamam 
bhuyo bhuyo namaamyaham ||35|| 

Bharjanam bhavabeejaanaam 
marjanam sukhasampadaam |
Tarjanam yamadootaanaam 
Raamaraamethi garjanam ||36||

Raamo Raajamani-h sada vijayate 
Raamam ramesham bhaje |
RaameNaabhihathaa nishaacarachamuu 
Raamaya tasmai namaha |
Raamannaasti parayaaNam parataram 
Raamasya daaso-smayaham |
Raame chiththalaya-h sada 
bhavatu me bho Raam maamudhdhara ||37||

Raama Raamethi Raamethi 
Rame Raame manorame |
Sahastranaama taththulyam 
Ramanaam varaanane ||38||

Ithi ShreeBudhakaushikavirachitham 
Shree Ram raksha stotram sampoornam ||

|| Shree Seethaaraamachandraarpanamasthu ||',1,58);
INSERT INTO "mantra_translation" VALUES ('रामरक्षा','रीगणेशायनम: ।
अस्य श्रीरामरक्षास्तोत्रमन्त्रस्य ।
बुधकौशिक ऋषि: ।
श्रीसीतारामचंद्रोदेवता ।
अनुष्टुप्‌ छन्द: । सीता शक्ति: ।
श्रीमद्‌हनुमान्‌ कीलकम्‌ ।
श्रीसीतारामचंद्रप्रीत्यर्थे जपे विनियोग: ॥

॥ अथ ध्यानम्‌ ॥

ध्यायेदाजानुबाहुं धृतशरधनुषं बद्दद्पद्‌मासनस्थं ।
पीतं वासोवसानं नवकमलदलस्पर्धिनेत्रं प्रसन्नम्‌ ॥
वामाङ्‌कारूढसीता मुखकमलमिलल्लोचनं नीरदाभं ।
नानालङ्‌कारदीप्तं दधतमुरुजटामण्डनं रामचंद्रम्‌ ॥

॥ इति ध्यानम्‌ ॥ 

चरितं रघुनाथस्य शतकोटिप्रविस्तरम्‌ ।
एकैकमक्षरं पुंसां महापातकनाशनम्‌ ॥१॥ 

ध्यात्वा नीलोत्पलश्यामं रामं राजीवलोचनम्‌ ।
जानकीलक्ष्मणॊपेतं जटामुकुटमण्डितम्‌ ॥२॥ 

सासितूणधनुर्बाणपाणिं नक्तं चरान्तकम्‌ ।
स्वलीलया जगत्त्रातुमाविर्भूतमजं विभुम्‌ ॥३॥

रामरक्षां पठॆत्प्राज्ञ: पापघ्नीं सर्वकामदाम्‌ ।
शिरो मे राघव: पातु भालं दशरथात्मज: ॥४॥

कौसल्येयो दृशौ पातु विश्वामित्रप्रिय: श्रुती ।
घ्राणं पातु मखत्राता मुखं सौमित्रिवत्सल: ॥५॥

जिव्हां विद्दानिधि: पातु कण्ठं भरतवंदित: ।
स्कन्धौ दिव्यायुध: पातु भुजौ भग्नेशकार्मुक: ॥६॥

करौ सीतपति: पातु हृदयं जामदग्न्यजित्‌ ।
मध्यं पातु खरध्वंसी नाभिं जाम्बवदाश्रय: ॥७॥

सुग्रीवेश: कटी पातु सक्थिनी हनुमत्प्रभु: ।
ऊरू रघुत्तम: पातु रक्ष:कुलविनाशकृत्‌ ॥८॥

जानुनी सेतुकृत्पातु जङ्‌घे दशमुखान्तक: ।
पादौ बिभीषणश्रीद: पातु रामोSखिलं वपु: ॥९॥

एतां रामबलोपेतां रक्षां य: सुकृती पठॆत्‌ ।
स चिरायु: सुखी पुत्री विजयी विनयी भवेत्‌ ॥१०॥

पातालभूतलव्योम चारिणश्छद्‌मचारिण: ।
न द्र्ष्टुमपि शक्तास्ते रक्षितं रामनामभि: ॥११॥

रामेति रामभद्रेति रामचंद्रेति वा स्मरन्‌ ।
नरो न लिप्यते पापै भुक्तिं मुक्तिं च विन्दति ॥१२॥

जगज्जेत्रैकमन्त्रेण रामनाम्नाभिरक्षितम्‌ ।
य: कण्ठे धारयेत्तस्य करस्था: सर्वसिद्द्दय: ॥१३॥

वज्रपंजरनामेदं यो रामकवचं स्मरेत्‌ ।
अव्याहताज्ञ: सर्वत्र लभते जयमंगलम्‌ ॥१४॥

आदिष्टवान्‌ यथा स्वप्ने रामरक्षामिमां हर: ।
तथा लिखितवान्‌ प्रात: प्रबुद्धो बुधकौशिक: ॥१५॥

आराम: कल्पवृक्षाणां विराम: सकलापदाम्‌ ।
अभिरामस्त्रिलोकानां राम: श्रीमान्‌ स न: प्रभु: ॥१६॥

तरुणौ रूपसंपन्नौ सुकुमारौ महाबलौ ।
पुण्डरीकविशालाक्षौ चीरकृष्णाजिनाम्बरौ ॥१७॥

फलमूलशिनौ दान्तौ तापसौ ब्रह्मचारिणौ ।
पुत्रौ दशरथस्यैतौ भ्रातरौ रामलक्ष्मणौ ॥१८॥

शरण्यौ सर्वसत्वानां श्रेष्ठौ सर्वधनुष्मताम्‌ ।
रक्ष:कुलनिहन्तारौ त्रायेतां नो रघुत्तमौ ॥१९॥

आत्तसज्जधनुषा विषुस्पृशा वक्षया शुगनिषङ्‌ग सङि‌गनौ ।
रक्षणाय मम रामलक्ष्मणा वग्रत: पथि सदैव गच्छताम्‌ ॥२०॥

संनद्ध: कवची खड्‌गी चापबाणधरो युवा ।
गच्छन्‌मनोरथोSस्माकं राम: पातु सलक्ष्मण: ॥२१॥

रामो दाशरथि: शूरो लक्ष्मणानुचरो बली ।
काकुत्स्थ: पुरुष: पूर्ण: कौसल्येयो रघुत्तम: ॥२२॥

वेदान्तवेद्यो यज्ञेश: पुराणपुरुषोत्तम: ।
जानकीवल्लभ: श्रीमानप्रमेय पराक्रम: ॥२३॥

इत्येतानि जपेन्नित्यं मद्‌भक्त: श्रद्धयान्वित: ।
अश्वमेधायुतं पुण्यं संप्राप्नोति न संशय: ॥२४॥

रामं दूर्वादलश्यामं पद्‌माक्षं पीतवाससम्‌ ।
स्तुवन्ति नामभिर्दिव्यैर्न ते संसारिणो नर: ॥२५॥

रामं लक्शमण पूर्वजं रघुवरं सीतापतिं सुंदरम्‌ ।
काकुत्स्थं करुणार्णवं गुणनिधिं विप्रप्रियं धार्मिकम्‌ 
राजेन्द्रं सत्यसंधं दशरथनयं श्यामलं शान्तमूर्तिम्‌ ।
वन्दे लोकभिरामं रघुकुलतिलकं राघवं रावणारिम्‌ ॥२६॥

रामाय रामभद्राय रामचंद्राय वेधसे ।
रघुनाथाय नाथाय सीताया: पतये नम: ॥२७॥ 

श्रीराम राम रघुनन्दन राम राम ।
श्रीराम राम भरताग्रज राम राम ।
श्रीराम राम रणकर्कश राम राम ।
श्रीराम राम शरणं भव राम राम ॥२८॥

श्रीरामचन्द्रचरणौ मनसा स्मरामि ।
श्रीरामचन्द्रचरणौ वचसा गृणामि ।
श्रीरामचन्द्रचरणौ शिरसा नमामि ।
श्रीरामचन्द्रचरणौ शरणं प्रपद्ये ॥२९॥

माता रामो मत्पिता रामचंन्द्र: ।
स्वामी रामो मत्सखा रामचंद्र: ।
सर्वस्वं मे रामचन्द्रो दयालु ।
नान्यं जाने नैव जाने न जाने ॥३०॥

दक्षिणे लक्ष्मणो यस्य वामे तु जनकात्मजा ।
पुरतो मारुतिर्यस्य तं वन्दे रघुनंदनम्‌ ॥३१॥

लोकाभिरामं रनरङ्‌गधीरं राजीवनेत्रं रघुवंशनाथम्‌ ।
कारुण्यरूपं करुणाकरंतं श्रीरामचंद्रं शरणं प्रपद्ये ॥३२॥

मनोजवं मारुततुल्यवेगं जितेन्द्रियं बुद्धिमतां वरिष्ठम्‌ ।
वातात्मजं वानरयूथमुख्यं श्रीरामदूतं शरणं प्रपद्ये ॥३३॥

कूजन्तं रामरामेति मधुरं मधुराक्षरम्‌ ।
आरुह्य कविताशाखां वन्दे वाल्मीकिकोकिलम्‌ ॥३४॥

आपदामपहर्तारं दातारं सर्वसंपदाम्‌ ।
लोकाभिरामं श्रीरामं भूयो भूयो नमाम्यहम्‌ ॥३५॥

भर्जनं भवबीजानामर्जनं सुखसंपदाम्‌ ।
तर्जनं यमदूतानां रामरामेति गर्जनम्‌ ॥३६॥

रामो राजमणि: सदा विजयते रामं रमेशं भजे ।
रामेणाभिहता निशाचरचमू रामाय तस्मै नम: ।
रामान्नास्ति परायणं परतरं रामस्य दासोSस्म्यहम्‌ ।
रामे चित्तलय: सदा भवतु मे भो राम मामुद्धर ॥३७॥

राम रामेति रामेति रमे रामे मनोरमे ।
सहस्रनाम तत्तुल्यं रामनाम वरानने ॥३८॥

इति श्रीबुधकौशिकविरचितं श्रीरामरक्षास्तोत्रं संपूर्णम्‌ ॥

॥ श्री सीतारामचंद्रार्पणमस्तु ॥',2,58);
INSERT INTO "mantra_translation" VALUES ('Raghavendra','Om shri raaghavendraaya namaha',1,59);
INSERT INTO "mantra_translation" VALUES ('राघवेंद्र','ॐ श्री राघवेन्द्राय नमः',2,59);
INSERT INTO "mantra_translation" VALUES ('Hanuman Ashtak','Baal samay ravi bhaksh liyo tab, teenahu loka bhayo andhiyaro |
Taahi so traas bhayo jag ko, yah sankat kaahu so jaat na taaro ||
Devan aani kari bintee tab, chaadhi diyo ravi kasht nivaaro |
Ko nahin jaanat hai jag mein kapi sankat mochan naam tihaaro ||1||

Baali ki traas kapees basai giri, jaat maha-prabhu panth nihaaro |
Chounki maha-muni shap diyo, tab chahiye kaun bichar bichaaro ||
Kai dweej roop livaay maha-prabhu, so tum daas ke sok niwaaro |
Ko nahin jaanat hai jag mein kapi, sankat mochan naam tiharo ||2||

Angad ke sang lain gaye siya, khoj kapees yah baain uchaaro |
jeevat na bachihau hum son ju, bina sudhi laay ehaan pagu dhaaro ||
Heyri thake tatt sindhu sabaai tab laay siya-sudhi praan ubaaro |
Ko nahin jaanat hai jag mein kapi sankat mochan naam tiharo ||3||

Raavan traas dayee siya ko sab, raakshashi so kahi sok nivaaro |
Taahi samay hanuman mahaprabhu, Jaay mahaa rajneechar maaro ||
Chaahat seeya ashoka so aagi su, dai prabhu mudrika shoka nivaaro |
Ko nahin jaanat hai jag mein kapi sankat mochan naam tihaaro ||4||

Baan lagyo oor lakshiman ke tab, praan taje sut raavan maaro |
Lai griha baidya sushen samet, tabai giri drona su beer upaaro ||
Aani sajeewan hath dayee taba lakshiman ke tum praan upaaro|
Ko nahin jaanat hai jag mein kapi sankat mochan naam tihaaro||5||

Raavan yudh ajaan kiyo tab, naag ki phaas sabhi sir daaro |
Shri Raghunath samet sabai dal, moh bhayo yah sankat bhaaro ||
Aani khagesh tabai hanuman ju, bandhan kaati sutraas nivaaro |
Ko nahin jaanat hai jag mein kapi sankat mochan naam tiharo ||6||

Bandhu samet jabay ahiraavan, lai raghunath pataal sidhaaro |
Devhi puji bhalee vidhi so bali, deu sabay mili mantra vichaaro ||
Jaay sahaay bhayo tab hi, ahiraavan sainya samet sanhaaro |
Ko nahin jaanat hai jag mein kapi sankat mochan naam tihaaro ||7||

Kaaj kiye badh-dewan ke tum, beer maha-prabhu dekhi bichaaro |
Kaun so sankat mor gareeb ko, jo tumso nahin jaat hai taaro ||
Begi haro hanumaan mahaprabhu jo kuch sankat hoya hamaaro |
Ko nahin jaanat hai jag mein kapi sankat mochan naam tiharo ||8||

Doha:
Laal deh laalee lase, aru dhari laal langoor |
Bajra deh daanav dalan, jai jai jai kapi soor ||',1,60);
INSERT INTO "mantra_translation" VALUES ('हनुमान अष्टक','बाल समय रवि भक्ष लियो तब, तीनहुं लोक भयो अंधियारों |
ताहि सों त्रास भयो जग को, यह संकट काहु सों जात  न टारो ||
देवन आनि करी बिनती तब, छाड़ी दियो रवि कष्ट निवारो |
को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो  ||

बालि की त्रास कपीस बसैं गिरि, जात महाप्रभु पंथ निहारो |
चौंकि महामुनि शाप दियो तब, चाहिए कौन बिचार बिचारो ||
कैद्विज रूप लिवाय महाप्रभु, सो तुम दास के सोक निवारो |
को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो  ||

अंगद के संग लेन गए सिय, खोज कपीस यह बैन उचारो |
जीवत ना बचिहौ हम सो जु, बिना सुधि लाये इहाँ पगु धारो ||
हेरी थके तट सिन्धु सबे तब, लाए सिया-सुधि प्राण उबारो |
को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो ||

रावण त्रास दई सिय को सब, राक्षसी सों कही सोक निवारो |
ताहि समय हनुमान महाप्रभु, जाए महा रजनीचर मरो ||
चाहत सीय असोक सों आगि सु, दै प्रभुमुद्रिका सोक निवारो |
को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो ||

बान लग्यो उर लछिमन के तब, प्राण तजे सूत रावन मारो |
लै गृह बैद्य सुषेन समेत, तबै गिरि द्रोण सु बीर उपारो ||
आनि सजीवन हाथ  दिए तब, लछिमन के तुम प्रान उबारो |
को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो  ||

रावन जुध अजान कियो तब, नाग कि फाँस सबै सिर डारो |
श्रीरघुनाथ समेत सबै दल, मोह भयो यह संकट भारो ||
आनि खगेस तबै हनुमान जु, बंधन काटि सुत्रास निवारो |
को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो  ||

बंधू समेत जबै अहिरावन,  लै रघुनाथ पताल सिधारो |
देबिन्हीं पूजि भलि विधि सों बलि, देउ सबै मिलि मन्त्र विचारो ||
जाये सहाए भयो तब ही, अहिरावन सैन्य समेत संहारो |
को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो ||

काज किये बड़ देवन के तुम, बीर महाप्रभु देखि बिचारो |
कौन सो संकट मोर गरीब को, जो तुमसे नहिं जात है टारो ||
बेगि हरो हनुमान महाप्रभु, जो कछु संकट होए हमारो |
को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो  ||

दोहा :
लाल देह लाली लसे , अरु धरि लाल लंगूर |
वज्र देह दानव दलन , जय जय जय कपि सूर ||',2,60);
INSERT INTO "mantra_translation" VALUES ('Krishna Ashtakam','Vasudeva Sutham Devam Kamsa Chaanoora Mardhanam |
Devaki Paramaanandham Krishnam Vande’ Jagathgurum ||

Adhasee Pushpa Sankaasam Haara Noopura Sobhitham |
Rathna Kangana keyooram Krishnam Vandhe’ Jagathgurum ||

Kutilaalaka Samyuktham Poorna Chandra Nibhaananam |
Vilasath Kundala tharam Krishnam Vandhe’ Jagathgurum ||

Mandhara Gandha Samyuktham Chaaru-haasam Chathur-bhujam; |
Parhipinjaa Vasoodaangam Krishnam Vandhe’ Jagathgurum ||

Uthpulla Padma Patraksham Nilajimutha Sannibham. |
Yaadhavaanaam Sirorathnam Krishnam Vandhe’ Jagathgurum ||

Rukmini Ke’li Samyuktham, Peethambara Su Sobitham; |
Avaaptha Thulasi Gaandharam, Krishnam Vande Jagathgurum. ||

Gopikaanaam Kusathvanthva Kunkumaangitha Vakshasam |
Srinike’tham Maheshvaasam Krishnam Vandhe’ Jagathgurum ||

Srivatsaankam, Mahoraskam, Vana Maala Virayitham; |
Sanka Chakra Dharam, Devam, Krishnam Vande Jagathgurum. ||

Krishnaashtakam itham Punyam Praatha Ruththaaya Ya:pade’th|
Ko’ti Janma Krutham Papam Smaranaath Thasya Nachyathi. ||',1,61);
INSERT INTO "mantra_translation" VALUES ('कृष्णा अष्टकम','वसुदेव सुतं देवं कंस चाणूर मर्दनम् ।
देवकी परमानंदं कृष्णं वंदे जगद्गुरुम् ॥

अतसी पुष्प संकाशं हार नूपुर शोभितम् ।
रत्न कंकण केयूरं कृष्णं वंदे जगद्गुरुम् ॥

कुटिलालक संयुक्तं पूर्णचंद्र निभाननम् ।
विलसत् कुंडलधरं कृष्णं वंदे जगद्गुरम् ॥

मंदार गंध संयुक्तं चारुहासं चतुर्भुजम् ।
बर्हि पिंछाव चूडांगं कृष्णं वंदे जगद्गुरुम् ॥

उत्फुल्ल पद्मपत्राक्षं नील जीमूत सन्निभम् ।
यादवानां शिरोरत्नं कृष्णं वंदे जगद्गुरुम् ॥

रुक्मिणी केलि संयुक्तं पीतांबर सुशोभितम् ।
अवाप्त तुलसी गंधं कृष्णं वंदे जगद्गुरुम् ॥

गोपिकानां कुचद्वंद कुंकुमांकित वक्षसम् ।
श्रीनिकेतं महेष्वासं कृष्णं वंदे जगद्गुरुम् ॥

श्रीवत्सांकं महोरस्कं वनमाला विराजितम् ।
शंखचक्र धरं देवं कृष्णं वंदे जगद्गुरुम् ॥

कृष्णाष्टक मिदं पुण्यं प्रातरुत्थाय यः पठेत् ।
कोटिजन्म कृतं पापं स्मरणेन विनश्यति ॥',2,61);
INSERT INTO "mantra_translation" VALUES ('Vakratunda Mahakaya','Vakratunda Mahakaya Surya Koti Sama Prabha
Nirvighnam Kuru Me Deva Sarva Karyesu Sarvada.',1,62);
INSERT INTO "mantra_translation" VALUES ('वक्रतुण्ड महाकाय','वक्रतुण्ड महाकाय​ सूर्यकोटि समप्रभ​।
निर्विघ्नम् कुरु मे देव​ सर्व कार्येषु सर्वदा॥',2,62);
INSERT INTO "mantra_translation" VALUES ('Om Sahana Vavatu','Om Sahana Vavatu Sahanau Bhunaktu
Sahaveeryam Karavavahai
Tejas Vinavati Tamastuma vidhwishavahai
Om Shanti Shanti Shantihi',1,63);
INSERT INTO "mantra_translation" VALUES ('ॐ सह नाववतु','ॐ सह नाववतु ।
सह नौ भुनक्तु ।
सह वीर्यं करवावहै ।
तेजस्वि नावधीतमस्तु मा विद्विषावहै ।
ॐ शान्तिः शान्तिः शान्तिः ॥',2,63);
INSERT INTO "mantra_translation" VALUES ('Vishnu Stuti','Shanta Karam Bhujaga Shayanam
Padmanabham Suresham
Vishvadharam Gagana Sadrsham
Megha Varnam Shubhangam

Lakshmi Kantam Kamala Nayanam
Yogibhir Dhyana Gamyam
Vande Vishnum Bhava Bhaya Haram
Sarva Lokaiaka Natham',1,64);
INSERT INTO "mantra_translation" VALUES ('विष्णु स्तुति','शान्ताकारं भुजगशयनं
पद्मनाभं सुरेशं
विश्वाधारं गगनसदृशं
मेघवर्ण शुभाङ्गम् ।

लक्ष्मीकान्तं कमलनयनं
योगिभिर्ध्यानगम्यम्
वन्दे विष्णुं भवभयहरं
सर्वलोकैकनाथम् ॥',2,64);
INSERT INTO "mantra_translation" VALUES ('Saraswati Vandana','Ya kundendu tushara haara dhavala, ya shubhra vastravrita
Ya veena vara danda mandithakara, ya shwetha padmaasana
Ya brahmachyuthaha shankara prabrithibhi devai, sada poojitha
Samaam paatu saraswathi bhagavathi, nihshesha Jaddyapaha.',1,65);
INSERT INTO "mantra_translation" VALUES ('सरस्वती वंदन','या कुन्देन्दुतुषारहारधवला या शुभ्रवस्त्रावृता 
या वीणावरदण्डमण्डितकरा या श्वेतपद्मासना। 
या ब्रह्माच्युत शंकरप्रभृतिभिर्देवैः सदा पूजिता
सा मां पातु सरस्वती भगवती निःशेषजाड्यापहा॥१॥',2,65);
INSERT INTO "mantra_translation" VALUES ('Annapoorna','Annapoorne Sada poorne, Shankara Pranavallabhe
Gyana Vairagya Sidyartham, Bhikshaam Dehi cha Parvati
Mata cha Parvati Devi, Pita Devo Maheswarah
Baandava Shiva Bhaktyascha, Svadeso Bhuvanatrayam',1,66);
INSERT INTO "mantra_translation" VALUES ('अन्नपूर्णा','अन्नपूर्णे सदापूर्णे शङ्करप्राणवल्लभे ।
ज्ञानवैराग्यसिद्ध्यर्थं भिक्षां देहि च पार्वति ॥
माता च पार्वती देवी पिता देवो महेश्वरः ।
बान्धवाः शिवभक्ताश्च स्वदेशो भुवनत्रयम् ॥',2,66);
INSERT INTO "mantra_translation" VALUES ('Hanuman Beej','Aum aeem bhreem hanumate, shree ram dootaaya namaha',1,67);
INSERT INTO "mantra_translation" VALUES ('हनुमान बीज','ॐ ऐं भ्रीम हनुमते, श्री राम दूताय नम:',2,67);
INSERT INTO "mantra_translation" VALUES ('Saraswati Beej','Om Shreem Hreem Saraswati-ya Namaha',1,68);
INSERT INTO "mantra_translation" VALUES ('सरस्वती बीज','ॐ श्रीं ह्रीं सरस्वत्यै नमः',2,68);
INSERT INTO "mantra_translation" VALUES ('Laxmi Beej','Om Hrim Shrim Lakshmibhyo Namah',1,69);
INSERT INTO "mantra_translation" VALUES ('लक्ष्मी बीज','ॐ ह्रीं श्रीं लक्ष्मीभयो नमः',2,69);
INSERT INTO "mantra_translation" VALUES ('Kali','Om Jayanti Mangala kali Bhadrakali Kapalini Durga Kshama Shiva dhatri swaha swadha namostute',1,70);
INSERT INTO "mantra_translation" VALUES ('काली','ॐ जयंती मंगला काली भद्रकाली कपालिनी
दुर्गा क्षमा शिवा धात्री स्वाहा स्वधा नमोऽस्तु‍ते।',2,70);
INSERT INTO "mantra_translation" VALUES ('Durga Shakti Beej','Om Dum Durgayei Namah',1,71);
INSERT INTO "mantra_translation" VALUES ('दुर्गा शक्ति बीज','ॐ दुम् दुर्गायेै नमः',2,71);
INSERT INTO "mantra_translation" VALUES ('Narayan','Om Namo Narayana',1,72);
INSERT INTO "mantra_translation" VALUES ('नारायण','ॐ नमः नारायणाय',2,72);
INSERT INTO "mantra_translation" VALUES ('Ram','Shree Ram Jai Ram Jai Jai Ram ',1,73);
INSERT INTO "mantra_translation" VALUES ('राम','श्रीराम जयराम जयजय राम',2,73);
INSERT INTO "mantra_translation" VALUES ('Asato Ma Sadgamaya','Om Asato Maa Sad-Gamaya
Tamaso Maa Jyotir-Gamaya
Mrityor-Maa Amritam Gamaya
Om Shaantih Shaantih Shaantih',1,74);
INSERT INTO "mantra_translation" VALUES ('असतो मा सद्गमय','असतोमा सद्गमय ।
तमसोमा ज्योतिर् गमय ।
मृत्योर्मामृतं गमय ॥
ॐ शान्ति शान्ति शान्तिः ।।',2,74);
INSERT INTO "mantra_translation" VALUES ('Moola','Om Satchitananda Parabrahma
Purushothama Paramatma
Sri Bhagavati Sametha
Sri Bhagavate Namaha',1,75);
INSERT INTO "mantra_translation" VALUES ('मूळ ','ॐ सच्चिदानंद परब्रह्म
पुरुषोत्तम परमात्मा ।
श्री भगवती समेत
श्री भगवते नमः ॥',2,75);
INSERT INTO "mantra_translation" VALUES ('Shanti','Om poornamadah poornamidam poornaat poornamudachyate
Poornasya poornamaadaaya poornamevaavashishṣyate
Om shaantih shaantih shaantih',1,76);
INSERT INTO "mantra_translation" VALUES ('शांति','ॐ पूर्णमदः पूर्णमिदम् पूर्णात् पूर्णमुदच्यते |
पूर्णस्य पूर्णमादाय पूर्णमेवावशिष्यते ||
ॐ शान्तिः शान्तिः शान्तिः ||',2,76);
COMMIT;
