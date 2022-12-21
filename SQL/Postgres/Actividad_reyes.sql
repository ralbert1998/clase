create table gimnasio (
    id serial primary key,
    name varchar (200),
    id_gimnasta serial
    constraint fk_gimnasta foreign key (id_gimnasta) references gimnasta (id),
);

create table gimnasta (
    id serial primary key,
    full_name varchar (200),
    id_gimna serial
    constraint fk_gimnasta foreign key (id_gimnasta) references gimnasta (id),
);

create table gimnasio (
    id serial primary key,
    name varchar (200),
    id_gimnasta serial
    constraint fk_gimnasta foreign key (id_gimnasta) references gimnasta (id),
);

create table customer (
  email varchar(150) not null,
  name varchar(40) not null,
  surname varchar(40) not null,
  middle_name varchar(40) not null,
  address varchar(100),
  date_of_brith date not null,
  primary key (email)
);