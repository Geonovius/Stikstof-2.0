DO
$do$
BEGIN
EXECUTE 'COMMENT ON schema "osm" IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 

EXECUTE 'COMMENT ON TABLE osm.boundaries IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| '''';
EXECUTE 'COMMENT ON TABLE osm.lines IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON TABLE osm.points IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON TABLE osm.polygons IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 

EXECUTE 'COMMENT ON VIEW osm.vw_gemeenten IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON VIEW osm.vw_pipelines IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON VIEW osm.vw_powerlines IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON VIEW osm.vw_railway IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON VIEW osm.vw_roads IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON VIEW osm.vw_vliegvelden IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON VIEW osm.vw_water IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON VIEW osm.vw_windturbines IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 

EXECUTE 'COMMENT ON MATERIALIZED VIEW restrictions.mv_pipelines IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON MATERIALIZED VIEW restrictions.mv_powerlines IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON MATERIALIZED VIEW restrictions.mv_railway IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON MATERIALIZED VIEW restrictions.mv_roads IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON MATERIALIZED VIEW restrictions.mv_vliegvelden IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON MATERIALIZED VIEW restrictions.mv_water IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 
EXECUTE 'COMMENT ON MATERIALIZED VIEW restrictions.mv_windturbines IS ''Last OSM data import: '|| to_char(LOCALTIMESTAMP, 'yyyy-mm-dd hh24:mi:ss')|| ''''; 



END
$do$