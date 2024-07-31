USE docker;

create table docker.member(
    id bigint auto_increment,
    user_nm varchar(50) not null,
    user_id varchar(50) not null,
    user_pw varchar(100) not null,
    user_email varchar(200),
    createdate datetime default current_timestamp,
    primary key(id),
    unique key(user_id)
    
);

create table docker.board(
    id bigint auto_increment,
    title varchar(255) not null,
    content text not null,
    writer_id varchar(50) not null,
    delyn tinyint default 0,
    createdate datetime default current_timestamp,board
    primary key (id), 
    foreign key (writer_id) references docker.member (user_id)
);