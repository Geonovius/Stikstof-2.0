CREATE OR REPLACE FUNCTION get_all_gbif4kdw() RETURNS SETOF foo AS
$BODY$
DECLARE
    --r foo%rowtype;
	--r aerius."base_geometries:relevant_habitats"%rowtype;   
	r record; 
BEGIN
    FOR r IN SELECT * FROM aerius."base_geometries:relevant_habitats"
    LOOP
		-- INSERT INTO newtbl VALUES(r.*);
        -- can do some processing here
        -- RETURN NEXT r; -- return current row of SELECT
		-- RETURN;
    END LOOP;
END;
$BODY$
LANGUAGE plpgsql VOLATILE;

SELECT * FROM get_all_gbif4kdw();