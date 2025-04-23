##### post_db #####

CREATE DATABASE IF NOT EXISTS board_db 
DEFAULT CHARACTER SET uft8mb4 COLLATE utf8mb4_general_ci;

USE board_db;

CREATE TABLE IF NOT EXISTS post (
	id int auto_increment primary key,
    title varchar(100) not null,
    content text not null,
    anthor varchar(50) not null,
    created_at datetime not null default current_timestamp
);

select * from post;