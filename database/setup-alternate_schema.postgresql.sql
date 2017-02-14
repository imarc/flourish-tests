CREATE SCHEMA flourish2;

CREATE TABLE flourish2.users (
	user_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	middle_initial VARCHAR(100) NOT NULL DEFAULT '',
	last_name VARCHAR(100) NOT NULL
);

CREATE TABLE flourish2.groups (
	group_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE,
	group_leader INTEGER REFERENCES flourish2.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
	group_founder INTEGER REFERENCES flourish2.users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE flourish2.users_groups (
	user_id INTEGER NOT NULL REFERENCES flourish2.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
	group_id INTEGER NOT NULL REFERENCES flourish2.groups(group_id) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY(user_id, group_id)
);

CREATE TABLE flourish2.artists (
	artist_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE flourish2.albums (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	year_released INTEGER NOT NULL,
	artist_id INTEGER NOT NULL REFERENCES flourish2.artists(artist_id) ON UPDATE CASCADE ON DELETE CASCADE,
	UNIQUE (artist_id, name)
);