DO $$
DECLARE temprow text;
BEGIN FOR temprow IN
    SELECT tablename FROM pg_tables WHERE schemaname = 'brt' ORDER BY tablename
  LOOP
  	RAISE NOTICE 'Clean up : %',temprow;
	EXECUTE 'DELETE FROM brt."'||temprow||'" t WHERE ST_DISJOINT(t.geom, (SELECT vc.the_geom FROM public.vggm_contour vc))';
	EXECUTE 'COMMENT ON TABLE brt."'||temprow||'" IS ''Laatste update: '||to_char(LOCALTIMESTAMP, 'YYYY-MM-DD HH24:MI:SS')||'''';
  END LOOP;
END $$

