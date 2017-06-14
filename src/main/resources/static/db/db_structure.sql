drop table if exists role;

create table role (
  role_id int(11) not null auto_increment,
  role varchar(255) default null,
  primary key (role_id)
) engine=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8

drop table if exists user;

create table user (
  user_id int(11) not null auto_increment,
  active int(11) default null,
  email varchar(255) not null,
  last_name varchar(255) not null,
  name varchar(255) not null,
  password varchar(255) not null,
  primary key (user_id)
)ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

drop table if exists user_role;

create table user_role (
  user_id int(11) not null,
  role_id int(11) not null,
  primary key (user_id, role_id),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;