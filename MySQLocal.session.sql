SELECT name_author, title, name_genre 
  FROM genre INNER JOIN book ON genre.genre_id = book.genre_id 
             INNER JOIN author ON author.author_id = book.author_id;