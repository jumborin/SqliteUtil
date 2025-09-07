/* CREATE文の一覧を作成する。 */
.output data/sqlite_master_table.txt
select * from sqlite_master;

/* コネクションを切断する。*/
.quit