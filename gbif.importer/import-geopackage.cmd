setx GDAL_DATA "d:\GDAL\gdal-data\"
setx GDAL_DRIVER_PATH "d:\GDAL\gdalplugins\"
setx PROJ_LIB "d:\GDAL\projlib\"
setx PYTHONPATH "d:\GDAL\"

REM d:\GDAL\ogr2ogr.exe -f GPKG "d:\projects\gbifdata\t.gpkg" "d:\projects\gbifdata\0007494-250127130748423.csv" -progress -skipfailures -nlt NONE 
d:\GDAL\ogr2ogr.exe --config PG_USE_COPY YES -f "PostgreSQL" PG:"dbname='stikstof' host='localhost' port='5432' user='postgres' password='system'" -nln gbif.occurencies "d:\projects\gbifdata\0001329-250426092105405\0001329-250426092105405.csv" -progress -skipfailures -nlt point -a_srs EPSG:28992
