USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.TribeEveryBranch
AS
	SELECT BOOK.Title AS 'Book Title:', LIBRARY_BRANCH.BranchName AS 'Library Branch:', BOOK_COPIES.No_Of_Copies AS 'Copies of Book in Stock:'
	FROM BOOK_COPIES
	INNER JOIN BOOK
	ON BOOK_COPIES.BookIdD = BOOK.BookIdA
	INNER JOIN LIBRARY_BRANCH
	ON BOOK_COPIES.BranchIdB = LIBRARY_BRANCH.BranchIdC
	WHERE BOOK.Title = 'The Lost Tribe'
GO

EXEC TribeEveryBranch