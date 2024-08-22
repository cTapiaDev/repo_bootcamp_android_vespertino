/* Add the studio's new production, Toy Story 4
to the list of movies (you can use any director) */
INSERT INTO movies (title, director, year, length_minutes)
VALUES ("Toy Story 4", "Pepe Gonzalez", 2019, 120)

/* Toy Story 4 has been released to critical
acclaim! It had a rating of 8.7, and made 340
million domestically and 270 million
internationally. Add the record to the
BoxOffice table. */
INSERT INTO boxoffice (movie_id, domestic_sales, international_sales, rating)
VALUES (
    (SELECT id FROM movies WHERE id = 4),
    340000000,
    270000000,
    8.7
);