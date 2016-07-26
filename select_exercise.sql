USE codeup_test_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre as caption FROM albums WHERE name = 'Nevermind';

SELECT name as caption FROM albums WHERE release_date BETWEEN 1989 AND 2000;

SELECT name as caption FROM albums WHERE sales < 20;

SELECT genre as caption FROM albums WHERE genre = 'Rock';