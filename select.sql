SELECT name, duration
  FROM track
 WHERE duration = (SELECT MAX(duration) FROM track);

SELECT name
  FROM track
 WHERE duration >= '00:03:30';

SELECT name
  FROM collection
 WHERE year BETWEEN 2018 and 2020;

SELECT name
  FROM artist
 WHERE name NOT LIKE '% %';

SELECT name
  FROM track
 WHERE name LIKE 'мой'
    OR name LIKE 'мой %'
    OR name LIKE '% мой %'
    OR name LIKE '% мой'
    OR name LIKE 'my'
    OR name LIKE 'my %'
    OR name LIKE '% my %'
    OR name LIKE '% my';

  SELECT name as genre_name, COUNT(artist_id) as artist_count
    FROM genre
    JOIN artist_genre ON name = genre_name
GROUP BY name;

SELECT COUNT(track.id) as track_count
  FROM track
  JOIN album ON track.album_id = album.id
 WHERE year BETWEEN 2019 and 2020;

  SELECT album.name as album_name, AVG(track.duration) as avg_track_duration
    FROM track
    JOIN album ON track.album_id = album.id
GROUP BY album_name;

SELECT name as artist_name
  FROM artist
 WHERE name NOT IN (
     SELECT DISTINCT artist.name
       FROM artist
       JOIN artist_album ON artist.id = album_id
       JOIN album ON album_id = album.id
      WHERE YEAR = 2020
      );

SELECT collection.name as collection_name
  FROM collection
  JOIN track_collection ON collection.id = track_id
  JOIN track ON track_id = track.id
  JOIN album ON track.id = album.id
  JOIN artist_album ON album.id = artist_id
  JOIN artist ON artist_id = artist.id
 WHERE artist.name = 'QUEEN';