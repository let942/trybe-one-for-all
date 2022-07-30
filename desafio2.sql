SELECT 
COUNT(DISTINCT(music.id)) AS 'cancoes', 
COUNT(DISTINCT(artist.id)) AS 'artistas', 
COUNT(DISTINCT(album.id)) AS 'albuns'
FROM SpotifyClone.music AS music,
SpotifyClone.album AS album,
SpotifyClone.artist AS artist;