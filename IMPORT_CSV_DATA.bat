@echo off

REM ==============================================================
REM CSV�t�@�C������f�[�^����荞�ރo�b�`�t�@�C��
REM ==============================================================

REM �ϐ��ݒ�

REM DB�t�@�C����
SET DB_FILE=test.db

REM CSV�t�@�C������w��e�[�u���Ƀf�[�^����荞��SQL�t�@�C��
SET IMPORT_CSV_DATA_SQL_FILE=sql/import_csv_data.sql

REM CSV�t�@�C������w��e�[�u���Ƀf�[�^����荞��
sqlite3.exe %DB_FILE% < %IMPORT_CSV_DATA_SQL_FILE%