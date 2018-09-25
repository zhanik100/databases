Create database lab1;

Create table users(
   id serial primary key,
   firstname varchar(50),
   lastname varchar(50)
);

Select * from users;

alter table users add column "isadmin" int;

alter table users
   alter column isadmin type boolean using isadmin::boolean;
   
alter table users
   alter column isadmin set default false;
   
alter table users add constraint con_id unique(id);

create table tasks(
   id serial primary key,
   name varchar(50),
   user_id int
);

Drop table tasks;
Drop database lab1;