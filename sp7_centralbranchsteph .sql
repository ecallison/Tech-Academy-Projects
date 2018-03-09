USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.CentralBranchSteph
AS
	SELECT a1.Title AS 'Title of Stephen King Book:', SUM(a2.No_Of_Copies) AS 'Copies of Stephen King Book in Central Branch:'
	FROM BOOK a1
	INNER JOIN BOOK_COPIES a2
	ON a1.BookIdA = a2.BookIdD
	INNER JOIN LIBRARY_BRANCH a3
	ON a2.BranchIdB = a3.BranchIdC
	INNER JOIN BOOK_AUTHORS a4
	ON a1.BookIdA = a4.BookIdB
	WHERE a3.BranchName = 'Central' AND a4.AuthorName = 'Stephen King'
	GROUP BY a2.BranchIdB, a1.Title;
 GO

EXEC CentralBranchSteph



