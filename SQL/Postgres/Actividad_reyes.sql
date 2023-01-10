
create table gym_team (
id serial primary key,
nickname varchar(50) not null,
nif varchar(30) not null,
address varchar(100),
country varchar(100) not null
);
create table gymnast (
  id serial primary key,
  name varchar(100) not null,
  subname varchar (300) not null,
  Id_number(DNI) varchar (25) not null,
  country varchar(50) not null
);
create table championships  (
  id serial primary key,
  name varchar(100) not null,
  start_data date not null,
  ending_date date not null,
  place varchar(300),
  level_champion varchar (150),
  Id_number(DNI) varchar (25) not null,  
);
create table level (
  id serial primary key,
  name varchar(100) not null,
  constraint fk_Gymnast foreign key (id_gymnast) references gymnast (id)
);
insert into level (name)
values (benjamin),

create table Team_Gymnast  (
  constraint fk_team foreign key (id_gym_team) references gym_team (id),
  constraint fk_name foreign key (gym_name) references gym_team (nickname)
  constraint fk_Gymnast foreign key (id_Gymnast) references gymnast (id)
);
create table Cham_Level  (
  constraint fk_champions foreign key (id_champions) references championships (id),
  constraint fk_level foreign key (id_level) references "level" (id)
);
create table Gymnast_Champi    ( 
    --    como hago que empiece apartir del 1000 o tenga 3 cifras?
  number_gymnast unique serial not null,
  constraint fk_Gymnast foreign key (id_Gymnast) references gymnast (id),
  constraint fk_champions foreign key (id_champions) references championships (id)
  constraint fk_champions_number foreign key (id_number_indentificate) references championships (Id_number)
);

-- INTRODUCIR DATOS

insert into gym_team (nickname,nif, address, country)
values (xelsca,GM43434665,"coll d'en rebassa", españa),
('Club Gimnástic Terrassa',GM676437,"terrasa", españa),
(CLUB GRECH,GM43434665,Palma, españa),
(CLUB GIMNASTIC ES PLA,GM43434665,paris, francia),
(CLUB ARTHEMYS DELS,GM43434665,berlin, alemania);
-- Si en la id tengo que sea serial, tengo que ponerlo todo el tiempo?

insert into gymnast (name, subname, Id_number, country)
values (nicola, mir,11122233H, españa),
(pere miquel, mir,16543091H, españa),
(alberto, rocha,48398367K, españa),
(rebeca, catala,11122233H, españa),
(minerva, muntaner,34359836M, españa),
(alejandro, castello,62947359L, españa),
(paco, raban; 74689012P, españa),
(gunter, solft, C5479234M, alemania),
(sven, kijarro, T1494386B, alemania),
(annie, rosell, MR463298, francia),
(anthony, marquez, GW6549376, francia),
(rudolf, marvella, XV0615443, francia);

insert into championships (name, start_data, ending_date, place, level_champion, )
values (ibardrola,11-12-2022,05-01-2023, madrid, nivel 5),
(openeuro,11-12-2022,05-01-2023, berlin, nivel 10),
(selecion europea,17-04-2022,17-04-2022, varsobia, nivel 9),
(ibardrola,27-05-2022,030-05-2022, barcelona, nivel benjamin-5),
(ibardrola,1-07-2022,05-07-2022, mallorca, nivel 1-5),
(UEG,24-09-2022,05-01-2023, milan, nivel 10);
