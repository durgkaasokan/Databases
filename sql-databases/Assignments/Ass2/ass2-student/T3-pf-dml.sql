/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T3-pf-dml.sql

--Student ID:34082115
--Student Name:Durgka Asokan

/* Comments for your marker:




*/

/*(a)*/

DROP SEQUENCE visit_seq;

CREATE SEQUENCE visit_seq START WITH 100 INCREMENT BY 10;



/*(b)*/

INSERT INTO visit (
    visit_id,
    visit_date_time,
    visit_length,
    visit_notes,
    visit_weight,
    visit_total_cost,
    animal_id,
    vet_id,
    clinic_id,
    from_visit_id
) VALUES (
    visit_seq.NEXTVAL,
    TO_DATE('19-May-2024 02:00:00 PM', 'DD-Mon-YYYY HH:MI:SS AM'),
    30,
    NULL,
    NULL,
    (SELECT service_std_cost FROM service WHERE upper(service_desc) = upper('general consultation')),
    (SELECT animal_id FROM animal WHERE upper(animal_name) = upper('Oreo') AND animal_born = TO_DATE('01-Jun-2018', 'DD-Mon-YYYY')),
    (SELECT vet_id FROM vet WHERE upper(vet_givenname) = upper('Anna') AND upper(vet_familyname) = upper('KOWALSKI')),
    3,
    NULL
);

INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
    visit_seq.CURRVAL,
    (SELECT service_code FROM service WHERE upper(service_desc) = upper('general consultation')),
    (SELECT service_std_cost FROM service WHERE upper(service_desc) = upper('general consultation'))
);

COMMIT;


/*(c)*/
UPDATE VISIT_SERVICE
SET
    SERVICE_CODE = (
        SELECT
            SERVICE_CODE
        FROM
            SERVICE
        WHERE
            UPPER(SERVICE_DESC) = UPPER('Ear Infection Treatment')
    ),
    VISIT_SERVICE_LINECOST= (
        SELECT
            SERVICE_STD_COST
        FROM
            SERVICE
        WHERE
            UPPER(SERVICE_DESC) = UPPER('Ear Infection Treatment')
    )
WHERE
    VISIT_ID = (
        SELECT
            VISIT_ID
        FROM
            VISIT
        WHERE
            ANIMAL_ID =(
                SELECT
                    ANIMAL_ID
                FROM
                    ANIMAL
                WHERE
                    UPPER(ANIMAL_NAME) = UPPER('Oreo')
                    AND ANIMAL_BORN = TO_DATE('01-Jun-2018', 'DD-Mon-YYYY')
            )
            AND VISIT_DATE_TIME = TO_DATE('19-May-2024 02:00:00 PM', 'DD-Mon-YYYY HH:MI:SS AM')
    );

    select * from VISIT;
    select * from VISIT_SERVICE;



INSERT INTO visit_drug (
    visit_id,
    drug_id,
    visit_drug_dose,
    visit_drug_frequency,
    visit_drug_qtysupplied,
    visit_drug_linecost
) VALUES (
    (
        SELECT
            visit_id
        FROM
            visit
        WHERE
            animal_id = (
                SELECT
                    animal_id
                FROM
                    animal
                WHERE
                    upper(animal_name) = upper('Oreo')
                    AND animal_born = TO_DATE('01-Jun-2018', 'DD-Mon-YYYY')
            )
            AND visit_date_time = TO_DATE('19-May-2024 02:00:00 PM', 'DD-Mon-YYYY HH:MI:SS PM')
    ),
    (
        SELECT
            drug_id
        FROM
            drug
        WHERE
            upper(drug_name) = upper('Clotrimazole')
    ),
    '10 mg',
    'Twice daily',
    1,
    (1*(
        SELECT
            drug_std_cost
        FROM
            drug
        WHERE
            upper(drug_name) = upper('Clotrimazole')
    )
));

SELECT * from visit_drug;



UPDATE visit v
SET
    visit_notes = 'Other services',
    visit_weight = 20,
    visit_total_cost = (
        SELECT
            nvl(SUM(vs.visit_service_linecost), 0) + nvl(SUM(vd.visit_drug_linecost), 0)
        FROM
            visit_service vs
            LEFT JOIN visit_drug vd
            ON vs.visit_id = vd.visit_id
        WHERE
            vs.visit_id = v.visit_id
    )
WHERE
    visit_id = (
        SELECT
            visit_id
        FROM
            visit
        WHERE
            animal_id = (
                SELECT
                    animal_id
                FROM
                    animal
                WHERE
                    upper(animal_name) = upper('Oreo')
                    AND animal_born = TO_DATE('01-Jun-2018', 'DD-Mon-YYYY')
            )
            AND visit_date_time = TO_DATE('19-May-2024 02:00:00 PM', 'DD-Mon-YYYY HH:MI:SS AM')
    );

SELECT
    *
FROM
    visit;

INSERT INTO visit (
    visit_id,
    visit_date_time,
    visit_length,
    visit_notes,
    visit_weight,
    visit_total_cost,
    animal_id,
    vet_id,
    clinic_id,
    from_visit_id
) VALUES (
    visit_seq.NEXTVAL,
    (TO_DATE('26-May-2024 02:00:00 PM', 'DD-Mon-YYYY HH:MI:SS PM')), 
    30,
    'Follow-up ear infection treatment',
    NULL,
    (SELECT service_std_cost FROM service WHERE upper(service_desc) = upper('Ear infection treatment')),
    (SELECT animal_id FROM animal WHERE upper(animal_name) = upper('Oreo') AND animal_born = TO_DATE('01-Jun-2018', 'DD-Mon-YYYY')),
    (SELECT vet_id FROM vet WHERE upper(vet_givenname) = upper('Anna') AND upper(vet_familyname) = upper('KOWALSKI')),
    3,
    (SELECT visit_id FROM visit WHERE animal_id = (SELECT animal_id FROM animal WHERE upper(animal_name) = upper('Oreo') AND animal_born = TO_DATE('01-Jun-2018', 'DD-Mon-YYYY')) AND visit_date_time = TO_DATE('19-May-2024 02:00:00 PM', 'DD-Mon-YYYY HH:MI:SS PM'))
);


INSERT INTO visit_service (
    visit_id,
    service_code,
    visit_service_linecost
) VALUES (
     visit_seq.CURRVAL,
    (SELECT service_code FROM service WHERE upper(service_desc) = upper('Ear Infection Treatment')),
    (SELECT nvl(service_std_cost, 0) FROM service WHERE upper(service_desc) = upper('Ear Infection Treatment'))
);

select * from visit;
select * from visit_service;

/*(d)*/

DELETE FROM visit_service
WHERE
    visit_id = (
        SELECT
            visit_id
        FROM
            visit
        WHERE
            animal_id = (
                SELECT
                    animal_id
                FROM
                    animal
                WHERE
                    upper(animal_name) = upper('Oreo')
                    AND animal_born = TO_DATE('01-Jun-2018', 'DD-Mon-YYYY')
            )
            AND visit_date_time = TO_DATE('26-May-2024 02:00:00 PM', 'DD-Mon-YYYY HH:MI:SS PM')
    );


DELETE FROM visit
WHERE
    visit_id = (
        SELECT
            visit_id
        FROM
            visit
        WHERE
            animal_id = (
                SELECT
                    animal_id
                FROM
                    animal
                WHERE
                    upper(animal_name) = upper('Oreo')
                    AND animal_born = TO_DATE('01-Jun-2018', 'DD-Mon-YYYY')
            )
            AND visit_date_time = TO_DATE('26-May-2024 02:00:00 PM', 'DD-Mon-YYYY HH:MI:SS PM')
    );

    select * from visit;
    select * from visit_service;