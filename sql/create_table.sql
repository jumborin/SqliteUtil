
/* �e�[�u�����쐬����B */
create table user(id text,name text,age integer,type text);
create index user_idx on test(id);

/* �e�[�u�����쐬����B */
create table history(exec_time text,userid text,action text,message text);
create index history_idx on test(userid,action);