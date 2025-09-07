/* �e�[�u�����쐬����B */
create table test(id text,message text);

/* �e�[�u�����쐬����B */
create table user(id text,name text,age integer,type text);
create index user_idx on test(id);

/* �e�[�u�����쐬����B */
create table history(exec_time text,userid text,action text,message text);
create index history_idx on history(userid,action);

/* �R�l�N�V������ؒf����B*/
.quit