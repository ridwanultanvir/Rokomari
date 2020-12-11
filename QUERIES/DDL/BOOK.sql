-- DROP TABLE BOOK;

CREATE TABLE BOOK(
		book_id INTEGER NOT NULL,
		book_name VARCHAR2(512) NOT NULL,
		book_genre VARCHAR2(512),
		book_edition VARCHAR2(512),
		author_id INTEGER NOT NULL,
		publisher_id INTEGER NOT NULL,
		price INTEGER NOT NULL,
		discount INTEGER DEFAULT 0,
		country VARCHAR2(128),
		language VARCHAR2(128),
		summary VARCHAR2(3000),
		ISBN VARCHAR2(100) DEFAULT '0',
		pages INTEGER ,
		total_sold INTEGER DEFAULT 0,
		ratings decimal(3,2) DEFAULT 0,
		no_of_ratings INTEGER DEFAULT 0,
		CONSTRAINT BOOK_PK PRIMARY KEY (book_id),
		CONSTRAINT BOOK_AUTHOR_FK FOREIGN KEY(author_id) REFERENCES AUTHOR(author_id) ON DELETE CASCADE,
		CONSTRAINT BOOK_PUBLISHER_FK FOREIGN KEY(publisher_id) REFERENCES PUBLISHER(publisher_id) ON DELETE CASCADE 
);

