CREATE DATABASE freedom_library;

CREATE TABLE BOOK (
	BookIdA INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL
);

CREATE TABLE LIBRARY_BRANCH (
	BranchIdC INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL
);

CREATE TABLE BORROWER (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (12345,1),
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

ALTER TABLE BORROWER
ALTER COLUMN Name VARCHAR(50) NULL;

CREATE TABLE BOOK_AUTHORS (
	BookIdB INT NOT NULL CONSTRAINT fk_BookIdB FOREIGN KEY REFERENCES BOOK(BookIdA) ON UPDATE CASCADE ON DELETE CASCADE,
	AuthorName VARCHAR(50) NOT NULL
);

CREATE TABLE PUBLISHER (
	PubliserName VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

CREATE TABLE BOOK_LOANS (
	BookIdC INT NOT NULL CONSTRAINT fk_BookIdC FOREIGN KEY REFERENCES BOOK(BookIdA) ON UPDATE CASCADE ON DELETE CASCADE,
	BranchIdA INT NOT NULL CONSTRAINT fk_BranchIdA FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchIdC) ON UPDATE CASCADE ON DELETE CASCADE,
	CardNo INT NOT NULL CONSTRAINT fk_CardNo FOREIGN KEY REFERENCES BORROWER(CardNo) ON UPDATE CASCADE ON DELETE CASCADE,
	DateOut VARCHAR(50) NOT NULL,
	DueDate VARCHAR(50) NOT NULL
);

CREATE TABLE BOOK_COPIES (
	BookIdD INT NOT NULL CONSTRAINT fk_BookIdD FOREIGN KEY REFERENCES BOOK(BookIdA) ON UPDATE CASCADE ON DELETE CASCADE,
	BranchIdB INT NOT NULL CONSTRAINT fk_BranchIdB FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchIdC) ON UPDATE CASCADE ON DELETE CASCADE,
	No_Of_Copies INT NOT NULL
);

INSERT INTO BOOK
		(Title, PublisherName)
		VALUES 
		('The Lost Tribe', 'West 26th Street Press'),
		('The Miracle of Water', 'Atria Books'),
		('The Alchemist', 'HarperTorch'),
		('Sadhartha', 'New Directions'),
		('The Four Agreements', 'Amber Allen Publishing'),
		('Power vs Force', 'Veritas Publishing'),
		('Letting Go', 'Veritas Publishing'),
		('A New Earth', 'Penguin'),
		('The Lightworker''s Source', 'New Page Books'),
		('Spark: The Guide for the Aspiring Alchemist', 'Barbara DeJesus Publishing'),
		('The Seven Spiritual Laws for Success', 'Hay House'),
		('Braiding Sweetgrass', 'Milkweed Editions'),
		('The Celestine Prophecy', 'Hay House'),
		('Ishmael', 'Bantam/Turner Books'),
		('Autobiography of a Yogi', 'The Philosophical Library'),
		('12 Rules for Life', 'Penguin Books Limited'),
		('Ask and You Shall Recieve', 'Hay House'),
		('The Green Mile', 'New American Library'),
		('Under the Dome', 'Scribner'),
		('The Secret', 'Atria Books')
;

INSERT INTO LIBRARY_BRANCH
		(BranchName, Address)
		VALUES 
		('Sharpstown', '1234 Happy Street, Sharpstown, TX 77036'),
		('Los Angeles', '1212 Harmony Ave, Los Angeles, CA 95432'),
		('Berkeley', '643 Telegraph Ave, Berkeley, CA 93707'),
		('Central', '444 Central Street, Seattle , WA 98101')
;

INSERT INTO BORROWER
		(Name, Address, Phone)
		VALUES 
		('Erin Callison', '1111 Evolving Street, Sharpstown, TX 77036', '(926)399-4222'),
		('Connor Derting', '1288 Transform Blvd, Los Angeles, CA 95432', '(868)991-1111'),
		('Allie Aiello', '612 Humble Ave, Los Angeles, CA 95432', '(742)445-5465'),
		('Mary Light', '1243 Hope Street, Berkeley, CA 93707', '(269)344-9999'),
		('Michael Love', '819 Gratitude Street, Berkeley, CA 93707', '(962)555-2277'),
		('Raphael Peace', '628 Change Ave, Berkeley, CA 93707', '(618)846-7887'),
		('John Smith', '628 Embrace Street, Sharptown, TX 77036', '(699)816-799'),
		('Joy Bliss', '3726 Pure Blvd, Berkeley, CA 93707', '(707)443-4867'),
		('Barbara Wise', '1555 Eternal Street, Berkeley, CA 93707', '(816)466-4343'),
		('Bob Green', '1818 Listen Street, Central, CA 98101', '(683)545-8888'),
		('Michael Blue', '7474 Grace Blvd, Central, CA 98101', '(954)773-5555'),
		('Sasha Pazzuli', '3232 Serenity Street, Central, CA 98101', '(955)664-2117'),
		('Carlo Orion', '7232 Healing Ct, Central, CA 98101', '(999)444-9994'),
		('Summer Sun', '1717 Unity Street, Central, CA 98101', '(953)667-6661'),
		('Angel Orange', '5555 Solidarity Blvd, Central, CA 98101', '(977)599-4343'),
		('Amanda Opal', '2726 Abundance Ct, Sharpstown, TX 77036', '(856)155-4888'),
		('Harmony Violet', '7999 Nice Street, Sharpstown, TX 77036', '(789)366-2224'),
		('Pixie Freewoman', '1212 Sweet Ave, Sharpstown, TX 77036', '(865)333-5446'),
		('Marcus Moon', '1433 Lavendar Street, Sharpstown, TX 77036', '(912)341-6645'),
		('Kim Gold', '1288 Daisy Ave, Sharpstown, TX 77036', '(877)321-4567'),
		('Fred Wealth', '7636 Tulip Street, Sharpstown, TX 77036', '(589)344-4333')
;

INSERT INTO BOOK_AUTHORS
		(BookIdB, AuthorName)
		VALUES 
		(1, 'Mark Lee'),
		(2, 'Dr. Masaru Emoto'),
		(3, 'Paulo Coelho'),
		(4, 'Herman Hesse'),
		(5, 'Don Miguel Ruiz'),
		(6, 'David Hawkins'),
		(7, 'David Hawkins'),
		(8, 'Eckhart Tolle'),
		(9, 'Sahvanna Arienta'),
		(10, 'Barbara de Jesus'),
		(11, 'Deepak Chopra'),
		(12, 'Robin Wall Kimmerer'),
		(13, 'James Rendfield'),
		(14, 'Daniel Quinn'),
		(15, 'Paramahansa Yogananda'),
		(16, 'Jordan Peterson'),
		(17, 'Eshter Hicks'),
		(18, 'Stephen King'),
		(19, 'Stephen King'),
		(20, 'Rhonda Byrne')
;

INSERT INTO PUBLISHER
		(PubliserName, Address, Phone)
		VALUES 
		('West 26th Street Press', '1111 Awake Street, Berkeley, CA 94742', '(916)321-4567'),
		('Atria Books', '1288 Peace Blvd, Los Angeles, CA 92602', '(818)311-4747'),
		('HarperTorch', '612 Third Eye Street, Oakland, CA 92343', '(712)355-5555'),
		('New Directions', '1243 Light Street, Long Beach, CA 97512', '(219)331-7323'),
		('Amber Allen Publishing', '819 Amber Street, Miam, FL 91212', '(912)912-2292'),
		('Veritas Publishing', '628 Veritas Street, Bellvue, WA 96232', '(613)856-7777'),
		('Veritas Publishing', '628 Veritas Street, Bellvue, WA 96232', '(613)856-7777'),
		('Penguin', '3726 Divine Street, Los Angeles, CA 93939', '(567)333-4327'),
		('New Page Books', '1555 Alchemy Ave, Hayward, CA 94472', '(818)374-4747'),
		('Barbara DeJesus Publishing', '1818 Wisdom Street, Irvine, CA 91212', '(543)333-4557'),
		('Hay House', '7777 Love Street, Flagstaff, AZ 94702', '(989)333-4444'),
		('Milkweed Editions', '3232 Flower Street, Alameda, CA 92222', '(925)444-2727'),
		('Hay House', '7777 Love Street, Flagstaff, AZ 94702', '(989)333-4444'),
		('Bantam/Turner Books', '1717 Compassion Street, Manhattan, NY 92121', '(753)717-7171'),
		('The Philosophical Library', '5555 Pineal Blvd, Costa Mesa, CA 92617', '(909)999-4477'),
		('Penguin Books Limited', '2726 Blessed Street, Sadona, AZ 92227', '(828)123-4734'),
		('Hay House', '7777 Love Street, Flagstaff, AZ 94702', '(989)333-4444'),
		('New American Library', '1212 Conscious Ave, San Diego, CA 96342', '(265)333-7456'),
		('Scribner', '1433 Scribner Street, Sacramento, CA 94743', '(212)351-4545'),
		('Atria Books', '1288 Peace Blvd, Los Angeles, CA 92602', '(818)311-4747')
;

INSERT INTO BOOK_LOANS
		(BookIdC, BranchIdA, CardNo, DateOut, DueDate)
		VALUES 
		(1, 1, 12345, '02-11-18', '03-11-18'),
		(2, 1, 12345, '02-11-18', '03-11-18'),
		(3, 1, 12345, '02-11-18', '03-11-18'),
		(4, 1, 12345, '02-11-18', '03-11-18'),
		(5, 1, 12345, '02-11-18', '03-11-18'),
		(6, 1, 12345, '02-11-18', '03-11-18'),
		(7, 1, 12351, '02-09-18', '03-09-18'),
		(8, 1, 12351, '02-09-18', '03-09-18'),
		(9, 1, 12351, '02-09-18', '03-09-18'),
		(10, 1, 12351, '02-09-18', '03-09-18'),
		(1, 1, 12351, '02-09-18', '03-09-18'),
		(2, 1, 12351, '02-09-18', '03-09-18'),
		(13, 2, 12346, '02-07-18', '03-07-18'),
		(14, 2, 12346, '02-07-18', '03-07-18'),
		(15, 2, 12346, '02-07-18', '03-07-18'),
		(16, 2, 12346, '02-07-18', '03-07-18'),
		(17, 2, 12347, '02-28-18', '03-28-18'),
		(18, 2, 12347, '02-28-18', '03-28-18'),
		(19, 2, 12347, '02-28-18', '03-28-18'),
		(20, 2, 12347, '02-25-18', '03-25-18'),
		(1, 3, 12348, '02-12-18', '03-12-18'),
		(2, 3, 12348, '02-12-18', '03-12-18'),
		(3, 3, 12349, '02-11-18', '03-11-18'),
		(4, 3, 12349, '02-11-18', '03-11-18'),
		(5, 3, 12350, '02-22-18', '03-22-18'),
		(6, 3, 12350, '02-22-18', '03-22-18'),
		(7, 3, 12351, '03-07-18', '04-07-18'),
		(8, 3, 12352, '03-07-18', '04-07-18'),
		(9, 3, 12353, '02-08-18', '03-08-18'),
		(10, 3, 12353, '02-08-18', '03-08-18'),
		(11, 4, 12354, '02-23-18', '03-23-18'),
		(12, 4, 12354, '02-27-18', '03-27-18'),
		(13, 4, 12355, '02-29-18', '03-29-18'),
		(14, 4, 12355, '03-03-18', '04-03-18'),
		(15, 4, 12357, '02-27-18', '03-27-18'),
		(16, 4, 12357, '03-04-18', '04-04-18'),
		(17, 4, 12358, '03-04-18', '04-04-18'),
		(18, 4, 12358, '03-02-18', '04-02-18'),
		(19, 4, 12359, '03-02-18', '04-02-18'),
		(20, 4, 12359, '02-26-18', '03-26-18'),
		(1, 1, 12360, '02-25-18', '03-25-18'),
		(2, 1, 12360, '02-25-18', '03-25-18'),
		(3, 1, 12361, '02-11-18', '03-11-18'),
		(4, 1, 12361, '02-12-18', '03-12-18'),
		(5, 1, 12362, '02-14-18', '03-14-18'),
		(6, 1, 12363, '02-14-18', '03-14-18'),
		(7, 1, 12364, '02-09-18', '03-09-18'),
		(8, 1, 12365, '02-09-18', '03-09-18'),
		(9, 1, 12365, '02-24-18', '03-24-18'),
		(10, 1, 12365, '02-25-18', '03-25-18')
;

INSERT INTO BOOK_COPIES
		(BookIdD, BranchIdB, No_Of_Copies)
		VALUES 
		(1, 1, 4),
		(2, 1, 3),
		(3, 1, 4),
		(4, 1, 5),
		(5, 1, 8),
		(6, 1, 7),
		(7, 1, 11),
		(8, 1, 1),
		(9, 1, 16),
		(10, 1, 8),
		(11, 2, 4),
		(12, 2, 8),
		(13, 2, 2),
		(14, 2, 11),
		(15, 2, 7),
		(16, 2, 3),
		(17, 2, 4),
		(18, 2, 9),
		(19, 2, 5),
		(20, 2, 6),
		(1, 3, 4),
		(2, 3, 3),
		(3, 3, 4),
		(4, 3, 5),
		(5, 3, 8),
		(6, 3, 7),
		(7, 3, 11),
		(8, 3, 1),
		(9, 3, 16),
		(10, 4, 8),
		(11, 4, 4),
		(12, 4, 8),
		(13, 4, 2),
		(14, 4, 11),
		(15, 4, 7),
		(16, 4, 3),
		(17, 4, 4),
		(18, 4, 9),
		(19, 4, 5),
		(20, 4, 6)
;

SELECT * FROM BOOK;
SELECT * FROM LIBRARY_BRANCH;
SELECT * FROM BORROWER;
SELECT * FROM BOOK_AUTHORS;
SELECT * FROM PUBLISHER;
SELECT * FROM BOOK_LOANS;
SELECT * FROM BOOK_COPIES;
