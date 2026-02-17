--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T1-pf-schema.sql

--Student ID:34082115
--Student Name:Durgka Asokan


/* Comments for your marker:




*/

-- Task 1 Add Create table statements for the Missing TABLES below.
-- Ensure all column comments, and constraints (other than FK's)are included. 
-- FK constraints are to be added at the end of this script

--VISIT 


CREATE TABLE visit (
    visit_id NUMBER(5),
    visit_date_time DATE NOT NULL,
    visit_length NUMBER(2),
    visit_notes VARCHAR2(200),
    visit_weight NUMBER(4,1),
    visit_total_cost NUMBER(6,2),
    animal_id NUMBER(5),
    vet_id NUMBER(4),
    clinic_id NUMBER(2),
    from_visit_id NUMBER(5)

);

COMMENT ON COLUMN visit.visit_id IS 'VISIT IDENTIFIER';

COMMENT ON COLUMN visit.visit_date_time IS 'TIME AND DATE OF VISIT';

COMMENT ON COLUMN visit.visit_length IS 'LENGTH OF VISIT IN MINUTES';

COMMENT ON COLUMN visit.visit_notes IS 'NOTES OF THE VET FROM THE VISIT';

COMMENT ON COLUMN visit.visit_weight IS 'WEIGHT IN Kgs';

COMMENT ON COLUMN visit.visit_total_cost IS 'TOTAL COST FOR THE VISIT';

COMMENT ON COLUMN visit.animal_id IS 'ANIMAL IDENTIFIER';

COMMENT ON COLUMN visit.vet_id IS 'VET IDENTIFIER';

COMMENT ON COLUMN visit.clinic_id IS 'CLINIC IDENTIFIER ';

COMMENT ON COLUMN visit.from_visit_id IS 'PREVIOUS VISIT ID';


ALTER TABLE visit ADD CONSTRAINT pk_visit PRIMARY KEY(visit_id);

ALTER TABLE visit ADD CONSTRAINT chk_visit_length CHECK ( visit_length BETWEEN 30 AND 90);

ALTER TABLE visit ADD CONSTRAINT uq_visit UNIQUE (animal_id, vet_id, visit_date_time);


--VISIT_DRUG

CREATE TABLE visit_drug (
    visit_id NUMBER(5),
    drug_id NUMBER(4),
    visit_drug_dose VARCHAR2(20),
    visit_drug_frequency VARCHAR2(20),
    visit_drug_qtysupplied NUMBER(2),
    visit_drug_linecost NUMBER(5,2)
);

ALTER TABLE visit_drug ADD CONSTRAINT pk_visit_drug PRIMARY KEY(visit_id, drug_id);

COMMENT ON COLUMN visit_drug.visit_id IS 'VISIT IDENTIFIER';

COMMENT ON COLUMN visit_drug.drug_id IS 'DRUG IDENTIFIER';

COMMENT ON COLUMN visit_drug.visit_drug_dose IS 'DOSE OF DRUG PRESCRIBED IN THE VISIT';

COMMENT ON COLUMN visit_drug.visit_drug_frequency IS 'FREQUENCY OF DRUG PRESCRIBED FOR THIS VISIT';

COMMENT ON COLUMN visit_drug.visit_drug_qtysupplied IS ' QUANTITY OF DRUG SUPPLIED';

COMMENT ON COLUMN visit_drug.visit_drug_linecost IS 'COST CHARGED FOR THE DRUG DURING VISIT';

-- VISIT_SERVICE
CREATE TABLE visit_service (
    visit_id NUMBER(5),
    service_code CHAR(5),
    visit_service_linecost NUMBER(6,2)
);

ALTER TABLE visit_service ADD CONSTRAINT pk_visit_service PRIMARY KEY(visit_id, service_code);


-- Add all missing FK Constraints below here


ALTER TABLE visit ADD CONSTRAINT fk_visit_animal FOREIGN KEY (animal_id) REFERENCES ANIMAL (animal_id);

ALTER TABLE visit ADD CONSTRAINT fk_visit_vet FOREIGN KEY (vet_id) REFERENCES VET (vet_id);

ALTER TABLE visit ADD CONSTRAINT fk_visit_clinic FOREIGN KEY (clinic_id) REFERENCES CLINIC (clinic_id);

ALTER TABLE visit ADD CONSTRAINT fk_visit_from_visit FOREIGN KEY (from_visit_id) REFERENCES VISIT (visit_id);

ALTER TABLE visit_drug ADD CONSTRAINT fk_visit_drug_visit FOREIGN KEY (visit_id) REFERENCES VISIT (visit_id);

ALTER TABLE visit_drug ADD CONSTRAINT fk_visit_drug_drug FOREIGN KEY (drug_id) REFERENCES DRUG (drug_id);

ALTER TABLE visit_service ADD CONSTRAINT fk_visit_service_visit FOREIGN KEY (visit_id) REFERENCES VISIT (visit_id);

ALTER TABLE visit_service ADD CONSTRAINT fk_visit_service_service FOREIGN KEY (service_code) REFERENCES SERVICE (service_code);

COMMENT ON COLUMN visit_service.visit_id IS 'VISIT IDENTIFIER';

COMMENT ON COLUMN visit_service.service_code IS 'SERVICE IDENTIFIER';

COMMENT ON COLUMN visit_service.visit_service_linecost IS 'CHARGES COSTED FOR SERVICE IN THE VISIT';
