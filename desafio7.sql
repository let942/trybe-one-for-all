SELECT
artist.artist_name AS 'artista',
album.album_name AS 'album',
COUNT(artists_following.id_user) AS seguidores
FROM
SpotifyClone.album AS album
INNER JOIN
SpotifyClone.artist AS artist
ON artist.id = album.artist_id
INNER JOIN
SpotifyClone.artists_following AS artists_following
ON artist.id = id_artist
GROUP BY artist.id, album.album_name
ORDER BY seguidores DESC,
artist.artist_name ASC,
album.album_name ASC;