REM Description: 1.Check the db backup file exist or not.
REM 			 2.
REM Copy to the target path and rename.
REM Delete the original file.
REM 
@echo off 

REM yyyymmdd - %DATE:~10,4%%DATE:~4,2%%DATE:~7,2%
REM YYYYMMDDHHMMSS - %DATE:~10,4%%DATE:~4,2%%DATE:~7,2%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
SET fileDate=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%

REM Default output it's on X:
SET DUMP_PATH=X:\!Data_Backup\Dump%fileDate%.sql
REM The default db file backup path and name
SET SRC_PATH=C:\WCMLicServer\upload\WCM\WCMLicense_Bak.sql

if exist %SRC_PATH% (
	echo "File exist! Do action copy!"
	copy %SRC_PATH% %DUMP_PATH% 
	echo "Complete the action copy!"
) else (
	echo "File doesn't exist!"
)