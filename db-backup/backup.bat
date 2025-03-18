REM DATETIME
for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set DateTime=%%a

set year=%DateTime:~0,4%
set month=%DateTime:~4,2%
set day=%DateTime:~6,2%

set complete_datetime=%year%-%month%-%day%
echo %complete_datetime%
"D:\PostgreSQL\17\pgAdmin 4\runtime\pg_dump.exe" --file "D:\backup\%complete_datetime%_stikstof.backup" --dbname=postgresql://postgres:system@localhost:5432/stikstof --format=c --large-objects --section=pre-data --section=data --section=post-data --verbose 