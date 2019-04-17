@echo off

:IMPORTFOLDERID
set /p importfolderid=Enter the path to your folder for import:
cls


echo FOLDER PATH YOU ENTERED IS = %importfolderid%
echo Please type Y for Yes - N for No - T for Terminate

set /p answer=IS THIS CORRECT (Y/N/T)?
if /i "%answer:~,1%" EQU "Y" goto IMPORTER
if /i "%answer:~,1%" EQU "N" goto IMPORTFOLDERID
if /i "%answer:~,1%" EQU "T" EXIT

cd %importfolderid%
cd


:IMPORTER

set month=%DATE:~4,2%
set day=%DATE:~7,2%
set year=%DATE:~10,4%
set hour=%TIME:~0,2%
set min=%TIME:~3,2%

set importtime=%month%-%day%-%year%-%hour%-%min%
echo %importtime%

set mysql="C:\Program Files\MySQL\MySQL Server 5.7\bin\mysql.exe"
set dbhost=127.0.0.1
set dbuser=root

:dbpassset

set /p dbpass=Enter the database password:
cls


echo Password you entered is = %dbpass%
echo Please type Y for Yes - N for No - T for Terminate

set /p answer=IS THIS CORRECT (Y/N/T)?
if /i "%answer:~,1%" EQU "Y" goto databaseset
if /i "%answer:~,1%" EQU "N" goto dbpassset
if /i "%answer:~,1%" EQU "T" EXIT

:databaseset

set /p database=Enter the database name:
cls

echo Database you entered is = %database%
echo Please type Y for Yes - N for No - T for Terminate

set /p answer=IS THIS CORRECT (Y/N/T)?
if /i "%answer:~,1%" EQU "Y" goto IMPORTER2
if /i "%answer:~,1%" EQU "N" goto dbpassset
if /i "%answer:~,1%" EQU "T" EXIT

:IMPORTER2
cd %importfolderid%
cd

for %%S in (abilities*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (augments.sql) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (automaton*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (b*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (conquest*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (despoil*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (digging.sql) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (exp*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (f*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (g*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (h*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (i*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (j*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (m*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (n*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (p*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (skill*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (spell*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (status*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (synth*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (t*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (w*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
for %%S in (z*) do %mysql% --host=%dbhost% --user=%dbuser% --password=%dbpass% --database=%database% < %%S
pause
exit