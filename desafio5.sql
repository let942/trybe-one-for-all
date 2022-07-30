SELECT
music.music_name AS 'cancao',
COUNT(historic.id_music) AS 'reproducoes'
FROM
SpotifyClone.historic AS historic
INNER JOIN SpotifyClone.music AS music
ON music.id = historic.id_music
GROUP BY historic.id_music
ORDER BY COUNT(historic.id_music) DESC, music.music_name
LIMIT 2;