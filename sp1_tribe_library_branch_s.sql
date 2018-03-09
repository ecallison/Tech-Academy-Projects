USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.TribeBranchSha
AS
	SELECT BOOK.Title AS 'Book Title:', BOOK_COPIES.No_Of_Copies AS 'Copies in Stock at Sharpstown Branch:'
	FROM BOOK_COPIES
	INNER JOIN BOOK
	ON BOOK_COPIES.BookIdD = BOOK.BookIdA
	INNER JOIN LIBRARY_BRANCH
	ON BOOK_COPIES.BranchIdB = LIBRARY_BRANCH.BranchIdC
	WHERE LIBRARY_BRANCH.BranchName = 'Sharpstown' AND BOOK.Title = 'The Lost Tribe'
GO

EXEC TribeBranchSha