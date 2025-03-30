setlocal ENABLEDELAYEDEXPANSION
set PGPASSWORD=system






d:\GDAL\ogr2ogr.exe -skipfailures -lco GEOMETRY_NAME=geom --config CPL_CURL_VERBOSE YES -overwrite -f "PostgreSQL" -spat_srs EPSG:28992 -a_srs EPSG:28992 PG:"dbname=stikstof user=postgres host='localhost' ACTIVE_SCHEMA='aerius'" -lco  PRECISION=NO -makevalid -progress import.xml 







