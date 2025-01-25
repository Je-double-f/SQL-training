SELECT DISTINCT buy_id, title, price, buy_book.amount
FROM 
    book 
    INNER JOIN buy_book USING(book_id)
    INNER JOIN buy USING(buy_id)
    INNER JOIN client USING(client_id)
WHERE name_client = 'Баранов Павел'
ORDER BY buy_id ASC, title ASC;