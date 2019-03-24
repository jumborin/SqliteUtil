
/* トランザクション開始(処理高速化のため) */
BEGIN;

/* テーブルにデータを登録する。 */
insert into test values('1', 'TEST1');
insert into test values('2', 'TEST2');
insert into test values('3', 'TEST3');


/*コミット処理*/
COMMIT;

/* コネクションを切断する。*/
.quit