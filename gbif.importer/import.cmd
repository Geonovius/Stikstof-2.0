@echo off
setlocal ENABLEDELAYEDEXPANSION
set app= c:\OSGeo4W\bin\ogr2ogr.exe
set host="localhost"
set db=stikstof
set usr=postgres
set PGPASSWORD=system
set schema=gbif
set table=0007494-250127130748423
set schematable=!schema!.!table!
set dllocation="d:\projects\gbif.data\0007494-250127130748423.csv"
set pg="psql.exe" -h %host% -U %usr% -p 5432 -d %db% -f 
set updatetime='Laatste update: %date% %time% (download van: !dllocation!)'


%app% -lco GEOMETRY_NAME=geom -overwrite -f "PostgreSQL" PG:"dbname=!db! user=!usr! host=!host!" -nln !schematable! !dllocation! --debug on

