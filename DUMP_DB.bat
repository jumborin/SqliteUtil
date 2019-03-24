@echo off

REM ==============================================================
REM DBのDUMP用バッチファイル
REM ==============================================================

REM 変数設定

REM 設定ファイルを読み込んで変数に設定
for /f "tokens=1,* delims==" %%a in (db_setting.ini) do (
    set %%a=%%b
)

REM もしDBファイルが存在しなかったら以降の処理はスキップする。
if not exist %DB_FILE% exit

REM DBファイルのダンプファイルを作成するSQLファイル
SET DUMP_SQL_FILE=sql/dump_sqlite_data.sql

REM DBファイルのダンプファイルを作成する。
sqlite3.exe %DB_FILE% < %DUMP_SQL_FILE%

