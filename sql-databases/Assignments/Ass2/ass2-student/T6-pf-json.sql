/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T6-pf-json.sql

--Student ID:34082115
--Student Name:Durgka Asokan


/* Comments for your marker:




*/

-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT TO GENERATE 
-- THE COLLECTION OF JSON DOCUMENTS HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    JSON_OBJECT(
        '_id' VALUE C.CLINIC_ID,
        'name' VALUE C.CLINIC_NAME,
        'address' VALUE C.CLINIC_ADDRESS,
        'phone' VALUE C.CLINIC_PHONE,
        'head_vet' VALUE JSON_OBJECT(
            'id' VALUE C.VET_ID,
            'name' VALUE (
                SELECT V.VET_GIVENNAME || ' ' || V.VET_FAMILYNAME 
                FROM VET V 
                WHERE V.VET_ID = C.VET_ID
            )
        ),
        'no_of_vets' VALUE (
            SELECT COUNT(*) 
            FROM VET Ve
            WHERE Ve.CLINIC_ID = C.CLINIC_ID
        ),
        'vets' VALUE JSON_ARRAYAGG(
            JSON_OBJECT(
                'id' VALUE V.VET_ID,
                'name' VALUE V.VET_GIVENNAME || ' ' || V.VET_FAMILYNAME,
                'specialisation' VALUE CASE WHEN S.SPEC_DESCRIPTION IS NOT NULL THEN S.SPEC_DESCRIPTION ELSE 'N/A' END
            )
        ) FORMAT JSON )
    || ','
FROM
    CLINIC C
    JOIN VET V ON V.CLINIC_ID = C.CLINIC_ID
    LEFT JOIN SPECIALISATION S ON V.SPEC_ID = S.SPEC_ID
GROUP BY
    C.CLINIC_ID,
    C.CLINIC_NAME,
    C.CLINIC_ADDRESS,
    C.CLINIC_PHONE,
    C.VET_ID
ORDER BY
    C.CLINIC_ID;