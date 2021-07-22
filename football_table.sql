create table football_votes (
	player_name		varchar(80) not null,
	player_image_url	varchar(200),
	votes			int
);

insert into football_votes (player_name, player_image_url, votes) values('Christiano Ronaldo', 'http://ronaldo.jpg', 20);
insert into football_votes (player_name, player_image_url, votes) values('Lionel Messi', 'http://messi.jpg', 20);
insert into football_votes (player_name, player_image_url, votes) values('Mo Salah', 'http://salah.jpg', 20);
