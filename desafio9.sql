SELECT
COUNT(historic.id_music) AS 'quantidade_musicas_no_historico'
FROM
SpotifyClone.historic AS historic
INNER JOIN SpotifyClone.users AS users
ON users.id = historic.id_user
WHERE users.user_name = 'BILL'
GROUP BY historic.id_user;