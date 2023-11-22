INSERT INTO artist(name)
     VALUES ('Филипп Киркоров'), ('Баста'), ('Oxxxymiron'), ('QUEEN');

INSERT INTO genre(name)
     VALUES ('поп'), ('рок'), ('рэп');

INSERT INTO artist_genre(artist_id, genre_name)
     VALUES (1, 'поп'), (2, 'поп'), (2, 'рэп'), (3, 'рэп'), (4, 'рок');

INSERT INTO album(name, year)
     VALUES ('Ой, мама, шика дам!', 1998), ('Поколение Брат', 2020),
            ('Город под подошвой', 2015), ('Live Killers', 1979);

INSERT INTO artist_album(artist_id, album_id)
     VALUES (1, 1), (2, 2), (3, 3), (4, 4);

INSERT INTO track(name, duration, album_id)
     VALUES ('Салма', '00:04:17', 1), ('Дива', '00:03:33', 1),
            ('Ой, мама, шика дам!', '00:03:42', 1), ('Ростов мой', '00:03:03', 2),
            ('Вечно молодой', '00:04:28', 2), ('Чёрные птицы', '00:02:03', 2),
            ('Где нас нет', '00:04:25', 3), ('Безумие', '00:03:45', 3),
            ('Слово мэра', '00:04:00', 3), ('We Will Rock You', '00:03:29', 4),
            ('Dont Stop Me Now', '00:04:28', 4), ('Bohemian Rhapsody', '00:05:52', 4);

INSERT INTO collection(name, year)
     VALUES ('Лучшие песни', 2020), ('Баста+', 2015), ('Magic City', 2015),
            ('The Platinum Collection', 2000);

INSERT INTO track_collection(track_id, collection_id)
     VALUES (1, 1), (2, 1), (4, 2), (7, 3), (8, 3), (10, 4), (11, 4), (12, 4);