create table users(
    id serial primary key ,
    name varchar(255) not null,
    last_name varchar(255) not null,
    email varchar(255) unique not null,
    work_id int
);

create table works(
    id serial primary key ,
    work_name varchar(255) not null,
    status bool
);

create table timings(
    id serial primary key,
    code varchar(255) not null,
    track uuid,
    work_id int
);

insert into users (name, last_name, email)
VALUES ('Stepan', 'Borisov', 's_steps@mail.ru'),
       ('Mike', 'Tyson', 'mike.t2000@mail.ru');

select id, name, last_name, email from users;

alter table timings
add user_id int;

insert into users (name, last_name, email)
VALUES ('bob', 'Borisov', 'bob@mail.ru'),
       ('Harry', 'Stone', 'sss@mail.ru'),
       ('Masha', 'Philipova', 'mash@mail.ru');

select id, name, last_name, email from users where name = 'bob';

select id, name, last_name, email from users where id = 2;

select id, name, last_name, email from users where last_name = 'Borisov' and name = 'Stepan';

update users
set name = 'Robot' where name = 'bob';

delete from users where id = 4;
