@echo off

REM ==============================================================
REM CSVファイルからデータを取り込むバッチファイル
REM ==============================================================

REM 変数設定

REM 設定ファイルを読み込んで変数に設定
for /f "tokens=1,* delims==" %%a in (db_setting.ini) do (
    set %%a=%%b
)

REM CSVファイルから指定テーブルにデータを取り込むSQLファイル
SET IMPORT_CSV_DATA_SQL_FILE=sql/import_csv_data.sql

REM CSVファイルから指定テーブルにデータを取り込む
sqlite3.exe %DB_FILE% < %IMPORT_CSV_DATA_SQL_FILE%