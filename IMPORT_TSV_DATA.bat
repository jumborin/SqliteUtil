@echo off

REM ==============================================================
REM TSV�t�@�C������f�[�^����荞�ރo�b�`�t�@�C��
REM ==============================================================

REM �ϐ��ݒ�

REM �ݒ�t�@�C����ǂݍ���ŕϐ��ɐݒ�
for /f "tokens=1,* delims==" %%a in (db_setting.ini) do (
    set %%a=%%b
)

REM TSV�t�@�C������w��e�[�u���Ƀf�[�^����荞��SQL�t�@�C��
SET IMPORT_TSV_DATA_SQL_FILE=sql/import_tsv_data.sql

REM TSV�t�@�C������w��e�[�u���Ƀf�[�^����荞�ށB
sqlite3.exe %DB_FILE% < %IMPORT_TSV_DATA_SQL_FILE%

