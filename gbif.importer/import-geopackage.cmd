setx GDAL_DATA "c:\OSGeo4W\apps\gdal\share\gdal\"
setx GDAL_DRIVER_PATH "c:\OSGeo4W\apps\gdal\lib\gdalplugins\"
setx PROJ_LIB "c:\OSGeo4W\share\proj\"
setx PYTHONPATH "c:\OSGeo4W\apps\Python312\"

c:\OSGeo4W\bin\ogr2ogr.exe -f GPKG "d:\projects\gbifdata\0007494-250127130748423.gpkg" "d:\projects\gbifdata\0007494-250127130748423.csv" -progress -skipfailures -nlt NONE 