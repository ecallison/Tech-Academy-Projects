USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.BorrowerNameNoBooksCheckd
AS
	SELECT BORROWER.Name AS 'Name of Borrower:'
	FROM BORROWER
	WHERE BORROWER.CardNo NOT IN 
	(SELECT BOOK_LOANS.CardNo
	FROM BOOK_LOANS);
GO

EXEC BorrowerNameNoBooksCheckd