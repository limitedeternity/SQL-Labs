RESTORE FILELISTONLY
FROM DISK = 'Z:\Downloads\SQL-02\�����_��.bak'

RESTORE DATABASE �����
FROM DISK = 'Z:\Downloads\SQL-02\�����_��.bak'

WITH MOVE 'booksSQL_dat' TO 'Z:\Downloads\SQL-02\�����_��.mdf',
MOVE 'booksSQL_log' TO 'Z:\Downloads\SQL-02\�����_��.ldf',
REPLACE;
