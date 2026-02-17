/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T5-pf-select.sql

--Student ID:34082115
--Student Name:Durgka Asokan


/* Comments for your marker:




*/


/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
    v.clinic_id,
    v.vet_id,
    vet.vet_givenname || ' ' || NVL(vet.vet_familyname, '') AS vetname,
    CASE
        WHEN v.vet_id = c.vet_id THEN 'HEAD VET'
        ELSE NULL
    END AS ishead,
    at.atype_description AS animaltype,
    COUNT(*) AS numberappts,
    ROUND((COUNT(*) * 100.0 / (
        SELECT COUNT(*)
        FROM visit v2
        JOIN animal a2 ON v2.animal_id = a2.animal_id
        JOIN animal_type at2 ON a2.atype_id = at2.atype_id
        WHERE v2.clinic_id = v.clinic_id
          AND at2.atype_description IN ('Dog', 'Cat')
          AND v2.visit_weight IS NOT NULL
          AND v2.visit_notes != 'NULL'
    )), 1) || '%' AS percentappts
FROM
    visit v
    JOIN animal a ON v.animal_id = a.animal_id
    JOIN animal_type at ON a.atype_id = at.atype_id
    JOIN clinic c ON c.clinic_id = v.clinic_id
    JOIN vet ON v.vet_id = vet.vet_id
WHERE
    at.atype_description IN ('Dog', 'Cat')
    AND v.visit_weight IS NOT NULL
    AND v.visit_notes != 'NULL'
GROUP BY
    v.clinic_id,
    v.vet_id,
    vet.vet_givenname,
    vet.vet_familyname,
    at.atype_description,
    c.vet_id
ORDER BY
    v.clinic_id,
    ishead DESC,
    v.vet_id,
    at.atype_description;



/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    s.service_code,
    s.service_desc,
    v.vet_id,
    v.vet_givenname,
    v.vet_familyname,
    c.clinic_id,
    c.clinic_name,
    vi.visit_id,
    to_char (vi.visit_date_time, 'DD-Mon-YYYY HH:MI:SS AM') AS visit_date_time,
    vs.visit_service_linecost                               AS actual_charge
FROM
    visit         vi
    JOIN visit_service vs
    ON vi.visit_id = vs.visit_id
    JOIN service s
    ON s.service_code = vs.service_code
    JOIN vet v
    ON vi.vet_id = v.vet_id
    JOIN clinic c
    ON vi.clinic_id = c.clinic_id
WHERE
    vs.visit_service_linecost > (
        SELECT
            AVG(vis.visit_service_linecost)
        FROM
            visit_service vis
        WHERE
            vis.service_code = vs.service_code
    )
ORDER BY
    s.service_code,
    vi.visit_id;
