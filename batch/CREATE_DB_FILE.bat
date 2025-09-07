@echo off

REM ===============================================================================
REM sqliteでのテーブル作成用バッチファイル
REM 注意事項：データが入っている場合は削除されるため、注意すること
REM ===============================================================================


REM ===============================================================================
REM 変数設定
REM ===============================================================================

REM 設定ファイルを読み込んで変数に設定
for /f "tokens=1,* delims==" %%a in (db_setting.ini) do (
    set %%a=%%b
)

REM テーブル作成用SQLファイル
SET CREATE_TABLE_SQL_FILE=%SQL_DIR%/create_table.sql

REM テーブルデータ作成用SQLファイル
SET INSERT_DATA_SQL_FILE=%SQL_DIR%/insert_data.sql

REM テーブル一覧を出力するSQLファイル
SET SELECT_TABLE_SQL_FILE=%SQL_DIR%/select_table_list.sql

REM Sqliteマスタテーブルを出力するSQLファイル
SET SELECT_SQLITE_MASTER_TABLE_SQL_FILE=%SQL_DIR%/select_sqlite_master_table.sql

REM テーブル内のデータを出力するSQLファイル
SET SELECT_DATA_SQL_FILE=%SQL_DIR%/select_sqlite_data.sql

REM ===============================================================================
REM 実行処理
REM ===============================================================================


REM 既に同名のDBファイルが存在する場合はバックアップする。
IF EXIST %DB_FILE% move %DB_FILE% %DB_FILE%_%DATE:/=%_%TIME::=%.bak

REM CreateTable用のSQLファイルを実行する。
sqlite3.exe %DB_FILE% < %CREATE_TABLE_SQL_FILE%

REM テーブルデータ作成用のSQLファイルを実行する。
sqlite3.exe %DB_FILE% < %INSERT_DATA_SQL_FILE%

REM テーブル一覧を出力する。
sqlite3.exe %DB_FILE% < %SELECT_TABLE_SQL_FILE%

REM Sqliteマスタテーブルを出力する。
sqlite3.exe %DB_FILE% < %SELECT_SQLITE_MASTER_TABLE_SQL_FILE%

REM 結果を出力する。
sqlite3.exe %DB_FILE% < %SELECT_DATA_SQL_FILE%