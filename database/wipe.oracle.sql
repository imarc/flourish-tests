BEGIN;
DELETE FROM blobs;
DELETE FROM owns_on_tape;
DELETE FROM owns_on_cd;
DELETE FROM songs;
DELETE FROM albums;
DELETE FROM artists;
DELETE FROM users_groups;
DELETE FROM groups;
DELETE FROM users;
COMMIT;

DROP SEQUENCE users_user_id_seq;
DROP SEQUENCE groups_group_id_seq;
DROP SEQUENCE artists_artist_id_seq;
DROP SEQUENCE albums_album_id_seq;
DROP SEQUENCE songs_song_id_seq;
CREATE SEQUENCE users_user_id_seq;
CREATE SEQUENCE groups_group_id_seq;
CREATE SEQUENCE artists_artist_id_seq;
CREATE SEQUENCE albums_album_id_seq;
CREATE SEQUENCE songs_song_id_seq;