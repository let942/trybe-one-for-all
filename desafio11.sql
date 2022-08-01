SELECT 
 music.music_name AS 'nome_musica',
CASE 
      WHEN music.music_name LIKE '%Streets%' THEN REPLACE(music_name, 'Streets', 'Code Review')
      WHEN music.music_name LIKE '%Her Own%' THEN REPLACE(music_name, 'Her Own', 'Trybe')
      WHEN music.music_name LIKE '%Inner Fire%' THEN REPLACE(music_name, 'Inner Fire', 'Project')
      WHEN music.music_name LIKE '%Silly%' THEN REPLACE(music_name, 'Silly', 'Nice')
      WHEN music.music_name LIKE '%Circus%' THEN REPLACE(music_name, 'Circus', 'Pull Request')
	END AS "novo_nome"
 FROM
 SpotifyClone.music AS music
WHERE 
music.music_name LIKE '%Streets%'
OR music.music_name LIKE '%Her Own%'
OR music.music_name LIKE '%Inner Fire%'
OR music.music_name LIKE '%Silly%'
OR music.music_name LIKE '%Circus%'
ORDER BY music.music_name;