@echo off

REM ==============================================================
REM DB��DUMP�p�o�b�`�t�@�C��
REM ==============================================================

REM �ϐ��ݒ�

REM �ݒ�t�@�C����ǂݍ���ŕϐ��ɐݒ�
for /f "tokens=1,* delims==" %%a in (db_setting.ini) do (
    set %%a=%%b
)

REM ����DB�t�@�C�������݂��Ȃ�������ȍ~�̏����̓X�L�b�v����B
if not exist %DB_FILE% exit

REM DB�t�@�C���̃_���v�t�@�C�����쐬����SQL�t�@�C��
SET DUMP_SQL_FILE=sql/dump_sqlite_data.sql

REM DB�t�@�C���̃_���v�t�@�C�����쐬����B
sqlite3.exe %DB_FILE% < %DUMP_SQL_FILE%

