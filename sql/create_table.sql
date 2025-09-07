/* テーブルを作成する。 */
create table test(id text,message text);

/* テーブルを作成する。 */
create table user(id text,name text,age integer,type text);
create index user_idx on user(id);

/* テーブルを作成する。 */
create table history(exec_time text,userid text,action text,message text);
create index history_idx on history(userid,action);

/* コネクションを切断する。*/
.quit