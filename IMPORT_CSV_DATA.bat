@echo off

REM ==============================================================
REM CSVファイルからデータを取り込むバッチファイル
REM ==============================================================

REM 変数設定

REM DBファイル名
SET DB_FILE=test.db

REM CSVファイルから指定テーブルにデータを取り込むSQLファイル
SET IMPORT_CSV_DATA_SQL_FILE=sql/import_csv_data.sql

REM CSVファイルから指定テーブルにデータを取り込む
sqlite3.exe %DB_FILE% < %IMPORT_CSV_DATA_SQL_FILE%