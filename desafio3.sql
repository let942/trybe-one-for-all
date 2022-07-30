 SELECT 
 users.user_name AS 'usuario', 
 COUNT(historic.id_music) AS 'qtde_musicas_ouvidas', 
 ROUND(SUM(music.time_seconds / 60), 2) AS 'total_minutos'
   FROM SpotifyClone.historic AS historic
   INNER JOIN SpotifyClone.users AS users
   ON historic.id_user = users.id
   INNER JOIN SpotifyClone.music AS music
   ON historic.id_music = music.id
   GROUP BY users.user_name
   ORDER BY users.user_name;