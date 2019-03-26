
REM アップロードに不要なデータを削除する。

REM データフォルダに出力したファイルを削除する。
del /Q data\*.txt

REM データベースファイルを削除する。
del /Q *.db
del /Q *.sqlite3

REM バックアップファイルを削除する。
del /Q *.bak