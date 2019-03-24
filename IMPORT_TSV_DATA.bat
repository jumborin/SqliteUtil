@echo off

REM ==============================================================
REM TSVファイルからデータを取り込むバッチファイル
REM ==============================================================

REM 変数設定

REM DBファイル名
SET DB_FILE=test.db

REM TSVファイルから指定テーブルにデータを取り込むSQLファイル
SET IMPORT_TSV_DATA_SQL_FILE=sql/import_tsv_data.sql

REM TSVファイルから指定テーブルにデータを取り込む。
sqlite3.exe %DB_FILE% < %IMPORT_TSV_DATA_SQL_FILE%

