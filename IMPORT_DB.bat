@echo off

REM ==============================================================
REM sqlite�ł̃e�[�u���C���|�[�g�p�o�b�`�t�@�C��
REM ==============================================================

REM �ϐ��ݒ�

REM �ݒ�t�@�C����ǂݍ���ŕϐ��ɐݒ�
for /f "tokens=1,* delims==" %%a in (db_setting.ini) do (
    set %%a=%%b
)

REM �_���v�t�@�C���C���|�[�g�pSQL�t�@�C��
SET IMPORT_DUMP_SQL_FILE=sql/import_dump_file.sql

REM ���s����

IF EXIST %DB_FILE% move %DB_FILE% %DB_FILE%_%DATE:/=%_%TIME::=%.bak

REM CreateTable�p��SQL�t�@�C�������s����B
sqlite3.exe %DB_FILE% < %IMPORT_DUMP_SQL_FILE%


