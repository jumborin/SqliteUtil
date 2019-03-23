@echo off

REM ==============================================================
REM DBのDUMP用バッチファイル
REM ==============================================================

REM 変数設定

REM DBファイル名
SET DB_FILE=test.db

REM DBファイルのダンプファイルを作成するSQLファイル
SET DUMP_SQL_FILE=dump_sqlite_data.sql

REM DBファイルのダンプファイルを作成する。
sqlite3.exe %DB_FILE% < %DUMP_SQL_FILE%

