create schema `base` character set utf8mb4;
use `base`;
create table `domains` (`user_id` int not null, `dname` varchar(128) not null, primary key(`user_id`));
create table `users` (`user_id` int not null, `name` varchar(128) not null, primary key(`user_id`));
insert into `domains` (`user_id`, `dname`) values ('100', 'selo.ru');
insert into `domains` (`user_id`, `dname`) values ('110', 'instrument.com');
insert into `domains` (`user_id`, `dname`) values ('135', 'fermer.info');
insert into `domains` (`user_id`, `dname`) values ('140', 'whoami.us');
insert into `domains` (`user_id`, `dname`) values ('146', 'remont.info');
insert into `domains` (`user_id`, `dname`) values ('150', 'kingofnorth.sk');
insert into `domains` (`user_id`, `dname`) values ('155', 'korovi.net');
insert into `domains` (`user_id`, `dname`) values ('160', 'bastard.sk');
insert into `domains` (`user_id`, `dname`) values ('166', 'trainer.tut');
insert into `users` (`user_id`, `name`) values ('100', 'Иван Иванов');
insert into `users` (`user_id`, `name`) values ('110', 'Василий Пупкин');
insert into `users` (`user_id`, `name`) values ('135', 'Иван Иванов');
insert into `users` (`user_id`, `name`) values ('140', 'Джон Доу');
insert into `users` (`user_id`, `name`) values ('146', 'Василий Пупкин');
insert into `users` (`user_id`, `name`) values ('150', 'Джон Сноу');
insert into `users` (`user_id`, `name`) values ('155', 'Иван Иванов');
insert into `users` (`user_id`, `name`) values ('160', 'Рамси');
insert into `users` (`user_id`, `name`) values ('166', 'Ильдар');
select d.dname from domains as d
join users as u on d.user_id = u.user_id
where u.name = 'Иван Иванов';