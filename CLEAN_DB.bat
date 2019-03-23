@echo off

REM ==============================================================
REM sqliteでのテーブルインポート用バッチファイル
REM ==============================================================

REM 変数設定

REM DBファイル名
SET DB_FILE=test.db

REM ダンプファイルインポート用SQLファイル
SET IMPORT_DUMP_SQL_FILE=import_dump_file.sql

REM 実行処理

IF EXIST %DB_FILE% move %DB_FILE% %DB_FILE%_%DATE:/=%_%TIME::=%.bak

REM CreateTable用のSQLファイルを実行する。
sqlite3.exe %DB_FILE% < %IMPORT_DUMP_SQL_FILE%


