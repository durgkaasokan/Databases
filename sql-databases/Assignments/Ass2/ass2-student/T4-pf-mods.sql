/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T4-pf-mods.sql

--Student ID:34082115
--Student Name:Durgka Asokan


/* Comments for your marker:




*/

/*(a)*/
ALTER TABLE visit_service ADD not_charged_at_standard_cost_count NUMBER(5) DEFAULT 0;

UPDATE visit_service vs
SET not_charged_at_standard_cost_count = (
  SELECT COUNT(*)
  FROM service s
  WHERE vs.service_code = s.service_code
  AND vs.visit_service_linecost <> (
    SELECT service_std_cost
    FROM service
    WHERE service_code = vs.service_code
  )
);

DESC visit_service;

SELECT * from VISIT_SERVICE;

SELECT vs.visit_id, vs.service_code, vs.visit_service_linecost, vs.not_charged_at_standard_cost_count, s.service_std_cost
FROM visit_service vs
LEFT JOIN service s ON vs.service_code = s.service_code
WHERE vs.visit_service_linecost <> s.service_std_cost;


/*(b)*/

DROP TABLE visit_payment;

CREATE TABLE visit_payment (
    payment_id NUMBER(10) PRIMARY KEY, 
    visit_id NUMBER(5),
    payment_date DATE NOT NULL,
    payment_amount NUMBER(6, 2),
    payment_method VARCHAR2(50),
    outstanding_payment NUMBER(6, 2)
);


COMMENT ON COLUMN visit_payment.payment_id IS 'PAYMENT IDENTIFIER';
COMMENT ON COLUMN visit_payment.visit_id IS 'VISIT IDENTIFIER';
COMMENT ON COLUMN visit_payment.payment_date IS 'DATE OF PAYMENT';
COMMENT ON COLUMN visit_payment.payment_amount IS 'PAYMENT AMOUNT';
COMMENT ON COLUMN visit_payment.outstanding_payment IS 'OUTSTANDING PAYMENT';

ALTER TABLE visit_payment ADD CONSTRAINT fk_visit_payment FOREIGN KEY (visit_id) REFERENCES visit (visit_id);

DROP SEQUENCE payment_seq;

CREATE SEQUENCE payment_seq START WITH 1 INCREMENT BY 1;

INSERT INTO visit_payment (
    payment_id,
    visit_id,
    payment_date,
    payment_amount,
    payment_method,
    outstanding_payment
)
    SELECT
        payment_seq.nextval,
        v.visit_id,
        v.visit_date_time,
        CASE
            WHEN v.visit_weight IS NULL AND v.visit_notes = 'NULL' THEN
                0
            ELSE
                v.visit_total_cost
        END                 AS payment_amount,
        CASE
            WHEN v.visit_weight IS NULL AND v.visit_notes = 'NULL' THEN
                'Outstanding - Card or Cash'
            ELSE
                'Historical'
        END                 AS payment_method,
        CASE
            WHEN v.visit_weight IS NULL AND v.visit_notes = 'NULL' THEN
                v.visit_total_cost
            ELSE
                0
        END                 AS outstanding_payment
    FROM
        visit v;

DESC visit_payment;

SELECT
    *
FROM
    visit_payment;

DESC visit;

SELECT
    *
FROM
    visit;

DESC visit_service;

SELECT
    *
FROM
    visit_service;