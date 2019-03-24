@echo off

REM ==============================================================
REM sqliteでのテーブルインポート用バッチファイル
REM ==============================================================

REM 変数設定

REM 設定ファイルを読み込んで変数に設定
for /f "tokens=1,* delims==" %%a in (db_setting.ini) do (
    set %%a=%%b
)

REM ダンプファイルインポート用SQLファイル
SET IMPORT_DUMP_SQL_FILE=sql/import_dump_file.sql


REM 実行処理


REM 既に同名のDBファイルが存在していた場合はバックアップする。
IF EXIST %DB_FILE% move %DB_FILE% %DB_FILE%_%DATE:/=%_%TIME::=%.bak

REM CreateTable用のSQLファイルを実行する。
sqlite3.exe %DB_FILE% < %IMPORT_DUMP_SQL_FILE%


