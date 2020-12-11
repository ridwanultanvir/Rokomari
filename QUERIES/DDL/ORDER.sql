CREATE TABLE ORDER_LIST (
	order_id INTEGER NOT NULL,
	user_id INTEGER NOT NULL,
	admin_id INTEGER NOT NULL,
	order_date DATE DEFAULT SYSDATE,
	received_date DATE,
	order_location VARCHAR2(512) NOT NULL,
	total_price INTEGER NOT NULL,
	CONSTRAINT ORDER_LIST_PK PRIMARY KEY (order_id),
	CONSTRAINT ORDER_LIST_USER_FK FOREIGN KEY (user_id) REFERENCES CUSTOMER (user_id) ON DELETE CASCADE,
	CONSTRAINT ORDER_LIST_ADMIN_FK FOREIGN KEY (admin_id) REFERENCES ADMIN (admin_id) ON DELETE CASCADE
 
);

CREATE TABLE ORDER_DETAILS(
	order_id INTEGER NOT NULL,
	book_id INTEGER NOT NULL,
	quantity INTEGER DEFAULT 1,
	price_per_book INTEGER NOT NULL,
	CONSTRAINT ORDER_DETAILS_PK PRIMARY KEY (order_id,book_id),
	CONSTRAINT ORDER_DETAIL_ORDER_FK FOREIGN KEY (order_id) REFERENCES ORDER_LIST (order_id) ON DELETE CASCADE,
	CONSTRAINT ORDER_DETAIL_BOOK_FK FOREIGN KEY (book_id) REFERENCES BOOK (book_id) ON DELETE CASCADE
);