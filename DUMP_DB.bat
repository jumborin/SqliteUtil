@echo off

REM ==============================================================
REM DB��DUMP�p�o�b�`�t�@�C��
REM ==============================================================

REM �ϐ��ݒ�

REM DB�t�@�C����
SET DB_FILE=test.db

REM DB�t�@�C���̃_���v�t�@�C�����쐬����SQL�t�@�C��
SET DUMP_SQL_FILE=dump_sqlite_data.sql

REM DB�t�@�C���̃_���v�t�@�C�����쐬����B
sqlite3.exe %DB_FILE% < %DUMP_SQL_FILE%

