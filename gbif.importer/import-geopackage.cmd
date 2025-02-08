setx GDAL_DATA "d:\projects\Stikstof-2.0\gdal\bin\gdal-data"
setx GDAL_DRIVER_PATH "d:\projects\Stikstof-2.0\gdal\bin\gdal\plugins\"
setx PROJ_LIB "d:\projects\Stikstof-2.0\gdal\bin\proj9\share\"
setx PYTHONPATH "d:\projects\Stikstof-2.0\gdal\bin\gdal\"

d:\projects\Stikstof-2.0\gdal\bin\gdal\apps\ogr2ogr.exe -f GPKG "d:\projects\gbifdata\0007494-250127130748423.gpkg" "d:\projects\gbifdata\0007494-250127130748423.csv" -progress -skipfailures -nlt NONE 