@echo off

REM ===============================================================================
REM sqlite�ł̃e�[�u���쐬�p�o�b�`�t�@�C��
REM ���ӎ����F�f�[�^�������Ă���ꍇ�͍폜����邽�߁A���ӂ��邱��
REM ===============================================================================


REM ===============================================================================
REM �ϐ��ݒ�
REM ===============================================================================

REM �ݒ�t�@�C����ǂݍ���ŕϐ��ɐݒ�
for /f "tokens=1,* delims==" %%a in (db_setting.ini) do (
    set %%a=%%b
)

REM �e�[�u���쐬�pSQL�t�@�C��
SET CREATE_TABLE_SQL_FILE=%SQL_DIR%/create_table.sql

REM �e�[�u���f�[�^�쐬�pSQL�t�@�C��
SET INSERT_DATA_SQL_FILE=%SQL_DIR%/insert_data.sql

REM �e�[�u���ꗗ���o�͂���SQL�t�@�C��
SET SELECT_TABLE_SQL_FILE=%SQL_DIR%/select_table_list.sql

REM Sqlite�}�X�^�e�[�u�����o�͂���SQL�t�@�C��
SET SELECT_SQLITE_MASTER_TABLE_SQL_FILE=%SQL_DIR%/select_sqlite_master_table.sql

REM �e�[�u�����̃f�[�^���o�͂���SQL�t�@�C��
SET SELECT_DATA_SQL_FILE=%SQL_DIR%/select_sqlite_data.sql

REM ===============================================================================
REM ���s����
REM ===============================================================================


REM ���ɓ�����DB�t�@�C�������݂���ꍇ�̓o�b�N�A�b�v����B
IF EXIST %DB_FILE% move %DB_FILE% %DB_FILE%_%DATE:/=%_%TIME::=%.bak

REM CreateTable�p��SQL�t�@�C�������s����B
sqlite3.exe %DB_FILE% < %CREATE_TABLE_SQL_FILE%

REM �e�[�u���f�[�^�쐬�p��SQL�t�@�C�������s����B
sqlite3.exe %DB_FILE% < %INSERT_DATA_SQL_FILE%

REM �e�[�u���ꗗ���o�͂���B
sqlite3.exe %DB_FILE% < %SELECT_TABLE_SQL_FILE%

REM Sqlite�}�X�^�e�[�u�����o�͂���B
sqlite3.exe %DB_FILE% < %SELECT_SQLITE_MASTER_TABLE_SQL_FILE%

REM ���ʂ��o�͂���B
sqlite3.exe %DB_FILE% < %SELECT_DATA_SQL_FILE%

