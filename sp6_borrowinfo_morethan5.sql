USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.BorrowerInfoMoreThan5Books
AS
	SELECT a1.Name AS 'Borrower Name:', a1.Address AS 'Borrower Address:', COUNT(a2.BookIdC) AS 'Number of Books Currently Checked Out:'
	FROM BORROWER a1
	INNER JOIN BOOK_LOANS a2
	ON a1.CardNo = a2.CardNo
	GROUP BY a1.Name, a1.Address 
	HAVING COUNT(a2.BookIdC) > 5;
GO

EXEC BorrowerInfoMoreThan5Books


