CREATE TABLE artist(
    id   serial      PRIMARY KEY,
    name varchar(48) NOT NULL
);

CREATE TABLE genre(
    name varchar(24) PRIMARY KEY
);

CREATE TABLE album(
    id   serial      PRIMARY KEY,
    name varchar(80) NOT NULL,
    year smallint    NOT NULL,
        CHECK(year > 1970)
);

CREATE TABLE track(
    id       serial                 PRIMARY KEY,
    name     varchar(80)            NOT NULL,
    duration time without time zone NOT NULL,
    album_id integer                REFERENCES album(id)
);

CREATE TABLE collection(
    id   serial      PRIMARY KEY,
    name varchar(80) NOT NULL,
    year smallint    NOT NULL,
        CHECK(year > 1970)
);

CREATE TABLE artist_genre(
    artist_id  integer     REFERENCES artist(id),
    genre_name varchar(24) REFERENCES genre(name)
);

CREATE TABLE artist_album(
    artist_id integer REFERENCES artist(id),
    album_id  integer REFERENCES album(id)
);

CREATE TABLE track_collection(
    track_id      integer REFERENCES track(id),
    collection_id integer REFERENCES collection(id)
);