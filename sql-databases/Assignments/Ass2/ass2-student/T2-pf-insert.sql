/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-pf-insert.sql

--Student ID:34082115
--Student Name:Durgka Asokan

/* Comments for your marker:

Assumptions

A vet giving one service may also offer other services to the same pet in the clinic.
A vet may go to another clinic after finsihing the consultation of a pet at one clinic or may go to different clinics to treat pets.





*/

--------------------------------------
--INSERT INTO visit
--------------------------------------

INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (1,TO_DATE('01-04-2024   10:00:00AM', 'DD-MM-YYYY HH:MI:SS AM'),30,'microchipping',24.2,240,12,1005,2,NULL);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (2,TO_DATE('01-04-2024   10:30:00AM', 'DD-MM-YYYY HH:MI:SS AM'),35,'nutritional counselling',17.1,54,1,1007,5,NULL);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (3,TO_DATE('04-04-2024   11:00:00AM', 'DD-MM-YYYY HH:MI:SS AM'),40,'senior pet care program,dental cleaning',4.3,193,5,1004,3,NULL);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (4,TO_DATE('06-04-2024   11:00:00AM', 'DD-MM-YYYY HH:MI:SS AM'),42,'senior pet care program,dental cleaning, x-ray imaging',6.3,280,11,1008,3,NULL);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (5,TO_DATE('11-04-2024   12:00:00PM', 'DD-MM-YYYY HH:MI:SS AM'),60,'cardiology examination',3.2,214,7,1010,5,NULL);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (6,TO_DATE('15-04-2024   10:00:00AM', 'DD-MM-YYYY HH:MI:SS AM'),55,'puppy/kitten health program,spay/neuter surgery, x-ray imaging',11.2,310,9,1009,5,NULL);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (7,TO_DATE('20-04-2024   11:30:00AM', 'DD-MM-YYYY HH:MI:SS AM'),66,'vaccination-routine,dental cleaning,orthopedic surgery',9.3,383,3,1001,1,NULL);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (8,TO_DATE('26-04-2024   12:00:00PM', 'DD-MM-YYYY HH:MI:SS AM'),70,'Emergency care',19,150,1,1003,2,2);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (9,TO_DATE('01-05-2024   10:45:00AM', 'DD-MM-YYYY HH:MI:SS AM'),36,'vaccination-routine,senior pet care program,puppy/kitten health program',12.3,669,2,1008,3,NULL);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (10,TO_DATE('10-05-2024   11:15:00AM', 'DD-MM-YYYY HH:MI:SS AM'),45,'flea and tick treatment, nutritional counselling',23,90,12,1001,1,1);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (11,TO_DATE('19-05-2024   12:00:00PM', 'DD-MM-YYYY HH:MI:SS AM'),58,'orthopedic surgery, vaccination routine',3.5,495,5,1009,5,3);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (12,TO_DATE('25-05-2024   10:00:00AM', 'DD-MM-YYYY HH:MI:SS AM'),72,'annual health checkup, flea and tick treatment',14.2,130,2,1001,1,9);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (13,TO_DATE('27-05-2024   10:15:00AM', 'DD-MM-YYYY HH:MI:SS AM'),80,'cardiology examination,oncology examination,annual health checkup',23.6,360,12,1011,4,10);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (14,TO_DATE('01-06-2024   11:00:00AM', 'DD-MM-YYYY HH:MI:SS AM'),53,'puppy/kitten health program,spay/neuter surgery,microchipping',3.4,315,7,1005,2,5);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (15,TO_DATE('09-06-2024   11:15:00AM', 'DD-MM-YYYY HH:MI:SS AM'),88,'spay/neuter surgery, behavioural training session',17.5,887,8,1007,5,NULL);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (16,TO_DATE('11-06-2024   10:00:00AM', 'DD-MM-YYYY HH:MI:SS AM'),75,'microchipping',17.2,82,8,1008,3,15);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (17,TO_DATE('15-06-2024   10:30:00AM', 'DD-MM-YYYY HH:MI:SS AM'),42,'annual health checkup',7.1,100,11,1008,3,4);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (18,TO_DATE('17-06-2024   12:00:00PM', 'DD-MM-YYYY HH:MI:SS AM'),32,'NULL',NULL,130,1,1007,5,8);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (19,TO_DATE('19-06-2024   10:00:00AM', 'DD-MM-YYYY HH:MI:SS AM'),40,'NULL',NULL,210,12,1001,1,13);
INSERT INTO visit (visit_id,visit_date_time,visit_length,visit_notes,visit_weight,visit_total_cost,animal_id,vet_id,clinic_id,from_visit_id) VALUES (20,TO_DATE('25-06-2024   12:30:00PM', 'DD-MM-YYYY HH:MI:SS AM'),66,'NULL',NULL,100,11,1009,5,17);

--------------------------------------
--INSERT INTO visit_service
--------------------------------------


INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (1,'S003',50);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (2,'S019',50);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (3,'S017',80);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (3,'S006',80);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (4,'S006',80);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (4,'S017',100);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (4,'S012',100);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (5,'S016',130);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (6,'S009',85);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (6,'S005',125);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (6,'S012',100);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (7,'S002',45);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (7,'S006',80);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (7,'S014',200);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (8,'S004',150);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (9,'S002',45);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (9,'S017',100);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (9,'S018',120);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (10,'S008',40);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (10,'S019',50);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (11,'S014',150);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (11,'S002',45);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (12,'S011',90);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (12,'S008',40);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (13,'S016',130);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (13,'S015',140);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (13,'S011',90);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (14,'S005',125);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (14,'S018',120);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (14,'S003',70);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (15,'S020',90);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (15,'S005',125);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (16,'S003',70);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (17,'S011',90);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (18,'S008',40);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (18,'S020',90);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (19,'S010',75);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (19,'S002',45);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (19,'S011',90);
INSERT INTO visit_service (visit_id,service_code,visit_service_linecost) VALUES (20,'S012',100);

--------------------------------------
--INSERT INTO visit_drug
--------------------------------------
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (1,103,'5.0 mg','Once ',1,50);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (1,114,'0.242mg','Twice a day',10,140);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (2,119,'3.3 mg','Once a day',4,4);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (3,109,'2.8 mg','Once a day',9,40.5);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (3,117,'500 mg','Once a day',15,22.5);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (5,119,'6.1 mg','Twice a day',4,4);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (5,116,'5.0mg','Twice a day',10,80);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (7,106,'1.2 mg','Once a day',4,40);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (7,111,'2.8 mg','Once a day',15,18);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (9,117,'500 mg','Once a day',3,4.5);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (9,102,'1.8 mg','Once monthly',4,399.96);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (11,102,'2.1 mg','Twice a day',3,299.97);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (15,105,'4.9 mg','Once a day',10,500);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (15,120,'5 mg','Twice daily',2,160);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (15,111,'10mg','Once a day',10,12);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (16,111,'10mg','Once a day',10,12);
INSERT INTO visit_drug (visit_id,drug_id,visit_drug_dose,visit_drug_frequency,visit_drug_qtysupplied,visit_drug_linecost) VALUES (17,119,'20mg','Once a day',10,10);

COMMIT;