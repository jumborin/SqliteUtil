@echo off

REM ==============================================================
REM TSV�t�@�C������f�[�^����荞�ރo�b�`�t�@�C��
REM ==============================================================

REM �ϐ��ݒ�

REM DB�t�@�C����
SET DB_FILE=test.db

REM TSV�t�@�C������w��e�[�u���Ƀf�[�^����荞��SQL�t�@�C��
SET IMPORT_TSV_DATA_SQL_FILE=sql/import_tsv_data.sql

REM TSV�t�@�C������w��e�[�u���Ƀf�[�^����荞�ށB
sqlite3.exe %DB_FILE% < %IMPORT_TSV_DATA_SQL_FILE%

