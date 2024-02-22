SELECT B.BOOK_ID, B.TITLE, B.PUB_NAME, A.AUTHOR_NAME,C.NO_OF_COPIES,L.PROGRAMME_ID FROM BOOK B, BOOK_AUTHORS A, BOOK_COPIES C, LIBRARY_PROGRAMME L WHERE B.BOOK_ID=A.BOOK_ID AND B.BOOK_ID=C.BOOK_ID AND L.PROGRAMME_ID=C.PROGRAMME_ID;


SELECT CARD_NO FROM BOOK_LENDINGWHERE DATE_OUT BETWEEN '2017-01-01' AND '2017-06-01'GROUP BY CARD_NO HAVING COUNT(*)>3;

DELETE FROM BOOK WHERE BOOK_ID=3; 
CREATE VIEW V_PUBLICATION AS SELECT PUB_YEAR FROM BOOK; 
CREATE VIEW V_BOOKS AS SELECT B.BOOK_ID, B.TITLE, C.NO_OF_COPIES FROM BOOK B, BOOK_COPIES C, LIBRARY_PROGRAMME L WHERE B.BOOK_ID=C.BOOK_ID AND C.PROGRAMME_ID=L.PROGRAMME_ID;

SELECT * FROM BOOK;
SELECT * FROM BOOK_AUTHORS;
SELECT * FROM V_PUBLICATION;
SELECT * FROM V_BOOKS;
