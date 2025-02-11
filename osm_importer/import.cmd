setlocal ENABLEDELAYEDEXPANSION
set PGPASSWORD=system
set pg="d:\PostgreSQL\17\bin\psql.exe" -h localhost -U postgres -p 5432 -d stikstof -f

curl %1 --ssl-no-revoke --output d:\geodata\osm.pbf



osm2pgsql.exe --verbose --number-processes 32 --extra-attributes --hstore-all --hstore-add-index -d stikstof --output-pgsql-schema=osm -U postgres -H localhost -P 5432 -O flex -S flex-config\generic.lua d:\geodata\osm.pbf



%pg% ddl\idx.sql

%pg% ddl\update_srid.sql

%pg% ddl\vw_buildings.sql
%pg% ddl\vw_gemeenten.sql
%pg% ddl\vw_windturbines.sql
%pg% ddl\vw_water.sql
%pg% ddl\vw_vliegvelden.sql
%pg% ddl\vw_roads.sql
%pg% ddl\vw_railway.sql
%pg% ddl\vw_powerlines.sql
%pg% ddl\vw_pipelines.sql

%pg% ddl\mv_pipelines.sql
%pg% ddl\mv_powerlines.sql
%pg% ddl\mv_railway.sql
%pg% ddl\mv_roads.sql
%pg% ddl\mv_vliegvelden.sql
%pg% ddl\mv_water.sql
%pg% ddl\mv_windturbines.sql

%pg% ddl\update_timestamp.sql