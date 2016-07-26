USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (id, artist, name, release_date, sales, genre)
VALUES ('1', 'Shania Twain', 'Come on Over', '1997', '29.6', 'Country, Pop');

INSERT INTO albums (id, artist, name, release_date, sales, genre)
VALUES ('2','Led Zeppelin', 'Led Zeppelin IV', '1971', '29.0', 'Hard Rock, Heavy Metal'),
       ('3','Michael Jackson', 'Bad', '1987', '20.3', 'Pop, Funk, Rock');


INSERT INTO albums (id, artist, name, release_date, sales, genre)
VALUES ('4','Alanis Morissette', 'Jagged Little Pill', '1995', '24.8', 'Alternative Rock'),
       ('5','Celine Dion', 'Falling into You', '1996', '20.2', 'Pop, Soft Rock');
      



INSERT INTO albums (id, artist, name, release_date, sales, genre)
VALUES ('6','Nirvana', 'Nevermind', '1991', '16.7', 'Grunge, Alternative Rock'),
       ('7','The Beatles', 'Sgt. Peppers Lonely Hearts Club Band', '1967', '13.1', 'Rock'),
       ('8','Pink Floyd', 'The Dark Side of the Moon', '1973', '22.7', 'Progressive Rock');

