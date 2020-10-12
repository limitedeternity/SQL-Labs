RESTORE FILELISTONLY
FROM DISK = 'Z:\Downloads\SQL-02\Книги_ру.bak'

RESTORE DATABASE Книги
FROM DISK = 'Z:\Downloads\SQL-02\Книги_ру.bak'

WITH MOVE 'booksSQL_dat' TO 'Z:\Downloads\SQL-02\Книги_ру.mdf',
MOVE 'booksSQL_log' TO 'Z:\Downloads\SQL-02\Книги_ру.ldf',
REPLACE;
