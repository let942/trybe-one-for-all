SELECT 
music.music_name AS 'nome'
,
COUNT(historic.id_music) AS 'reproducoes'
FROM
SpotifyClone.music AS music
INNER JOIN
SpotifyClone.historic AS historic
ON music.id = historic.id_music
INNER JOIN
SpotifyClone.users AS users
ON users.id = historic.id_user
INNER JOIN
SpotifyClone.plan AS plan
ON plan.id = users.user_plan
WHERE
plan.plan_name = 'gratuito' OR plan.plan_name = 'pessoal'
GROUP BY music.music_name
ORDER BY music.music_name ASC
;