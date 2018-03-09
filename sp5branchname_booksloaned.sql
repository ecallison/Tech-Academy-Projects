USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.BranchNameLoanNum
AS
	SELECT a1.BranchName AS 'Branch Name:', COUNT(a2.BookIdC) AS 'Books Loaned Out:'
	FROM LIBRARY_BRANCH a1
	INNER JOIN BOOK_LOANS a2
	ON a1.BranchIdC = a2.BranchIdA 
	GROUP BY a1.BranchName
	ORDER BY a1.BranchName;
GO

EXEC BranchNameLoanNum

