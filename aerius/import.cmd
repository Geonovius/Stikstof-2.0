@echo off
setlocal ENABLEDELAYEDEXPANSION
set app= d:\GDAL\ogr2ogr.exe
set host="kaarten.vggm.nl"
set db=gisdata-vggm
set usr=vggm
set PGPASSWORD=Qv0zgxCd1SOAGvPSPnvM
set schema=od
set table=igo_veehouderijen
set schematable=!schema!.!table!
set dllocation="WFS:http://geoserver.igoview.nl/geoserver/OD_EXTERN/ows?service=WFS&TYPENAME=OD_EXTERN:IGO_VEEHOUDERIJEN"
set pg="psql.exe" -h %host% -U %usr% -p 5432 -d %db% -f 
set updatetime='Laatste update: %date% %time% (download van: !dllocation!)'

if "%1"=="/s" goto script

"ogrinfo.exe" !dllocation! -so
Echo .... importeren van de geodata....

timeout /t 10

%app% -lco GEOMETRY_NAME=geom -overwrite -f "PostgreSQL" -a_srs EPSG:28992 PG:"dbname=!db! user=!usr! host=!host!" -nln !schematable! !dllocation! --debug on
goto script

:script
ECHO ...script wordt uitgevoerd op de bestaande geodata
timeout /t 10
!pg! script.sql