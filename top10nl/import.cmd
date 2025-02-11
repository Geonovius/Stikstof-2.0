ECHO OFF
set PROJ_LIB "c:\OSGeo4W\share\proj"
setlocal ENABLEDELAYEDEXPANSION
rem set PGPASSWORD=Qv0zgxCd1SOAGvPSPnvM
set PGPASSWORD=system
set host="localhost"
set db=stikstof
set usr=postgres
set pg="psql.exe" -h %host% -U %usr% -p 5432 -d %db% -f
rem set importfile="d:\Geodata4ETL\top10nl_compleet.gpkg"
set dllocation="https://service.pdok.nl/brt/topnl/atom/downloads/top10nl_Compleet.gpkg"
set importfile="d:\Geodata4ETL\top10nl_compleet.gpkg"


ECHO start het importeren van de TOP10NL geodata naar de productieomgeving
ECHO Er is geen switch opgegeven. De gehele dataset wordt opgehaald en geimporteerd.
timeout /t 10
rem del /F d:\Geodata4ETL\top10nl_compleet.gpkg
rem curl -A "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "https://service.pdok.nl/brt/topnl/atom/downloads/top10nl_Compleet.gpkg" -o c:\Geodata4ETL\top10nl_compleet.gpkg
rem d:\GDAL\ogr2ogr.exe -lco GEOMETRY_NAME=geom -overwrite -f "PostgreSQL" -a_srs EPSG:28992 PG:"dbname=gisdata-vggm user=vggm host='kaarten.vggm.nl' ACTIVE_SCHEMA='brt'" !importfile! -progress --debug on 1> import.log 2>&1
c:\OSGeo4W\bin\ogr2ogr.exe -lco GEOMETRY_NAME=geom -overwrite -f "PostgreSQL" -a_srs EPSG:28992 PG:"dbname=stikstof user=postgres host='localhost' ACTIVE_SCHEMA='top10nl'" !importfile! -progress --debug on 1> import.log 2>&1

ECHO start het opschonen van de bestaande TOP10 geodata op basis van de VGGM grens
timeout /t 10
rem !pg! \\org.vggm.nl\kaartmateriaal\VGGM\geo_magazijn\ETL\brt\clean.sql


rem del /F c:\Geodata4ETL\top10nl_compleet.gpkg

