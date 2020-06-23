-- DROP TABLE REVIEW;
-- DROP TABLE WISH_LIST;

CREATE TABLE REVIEW(
	review_id INTEGER NOT NULL,
	user_id INTEGER NOT NULL,
	book_id INTEGER NOT NULL,
	full_review VARCHAR2(1000) NOT NULL,
	CONSTRAINT REVIEW_PK PRIMARY KEY(review_id),
	CONSTRAINT REVIEW_USER_FK FOREIGN KEY(user_id) REFERENCES CUSTOMER(user_id) ON DELETE CASCADE,
	CONSTRAINT REVIEW_BOOK_FK FOREIGN KEY(book_id) REFERENCES BOOK(book_id) ON DELETE CASCADE
);
CREATE TABLE WISH_LIST(
	user_id INTEGER NOT NULL,
	book_id INTEGER NOT NULL,
	CONSTRAINT WISH_LIST_PK PRIMARY KEY(user_id,book_id),
	CONSTRAINT WISH_LIST_USER_FK FOREIGN KEY(user_id) REFERENCES CUSTOMER(user_id) ON DELETE CASCADE,
	CONSTRAINT WISH_LIST_BOOK_FK FOREIGN KEY(book_id) REFERENCES BOOK(book_id) ON DELETE CASCADE
);