DROP TABLE gbif.foo;
CREATE TABLE gbif.foo (fooid INT, foosubid INT, fooname TEXT);
INSERT INTO foo VALUES (1, 2, 'three');
INSERT INTO foo VALUES (4, 5, 'six');

CREATE OR REPLACE FUNCTION get_all_foo() RETURNS SETOF foo AS
$BODY$
DECLARE
    --r foo%rowtype;
	r aerius."base_geometries:relevant_habitats"%rowtype;    
BEGIN
    FOR r IN
        --SELECT * FROM foo WHERE fooid > 0
		SELECT distinct(natura2000_area_name) FROM aerius."base_geometries:relevant_habitats"
    LOOP
        -- can do some processing here
        RETURN NEXT r; -- return current row of SELECT
    END LOOP;
    RETURN;
END;
$BODY$
LANGUAGE plpgsql;

SELECT * FROM get_all_foo();