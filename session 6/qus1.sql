(
    SELECT u.name AS results
    FROM Users u
    JOIN MovieRating r ON u.user_id = r.user_id
    GROUP BY u.name
    ORDER BY COUNT(r.rating) DESC, u.name ASC
    LIMIT 1
)
UNION ALL
(
    SELECT m.title AS results
    FROM Movies m
    JOIN MovieRating r ON m.movie_id = r.movie_id
    WHERE DATE_FORMAT(r.created_at, '%Y-%m') = '2020-02'
    GROUP BY m.title
    ORDER BY AVG(r.rating) DESC, m.title ASC
    LIMIT 1
);