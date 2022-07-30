SELECT 
users.user_name AS 'usuario',
IF (MAX(historic.time_data)>'2020-12-31 23:59:59','Usuário ativo', 'Usuário inativo' ) as 'condicao_usuario'
FROM
SpotifyClone.historic AS historic
INNER JOIN SpotifyClone.users AS users
ON users.id = historic.id_user
GROUP BY historic.id_user
ORDER BY users.user_name;
