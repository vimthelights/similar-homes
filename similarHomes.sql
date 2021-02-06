DROP DATABASE IF EXISTS similarlistings ;
CREATE DATABASE similarlistings;
\connect similarlistings

CREATE TABLE IF NOT EXISTS users (
  id serial primary key,
  username varchar(50),
  email varchar(50)
);

CREATE TABLE IF NOT EXISTS homes (
  id serial primary key,
  userid int not null,
  realtor varchar(50) not null,
  decreased boolean,
  price int not null,
  img varchar(50) not null,
  street varchar(50) not null,
  city varchar(50) not null,
  sta varchar(50) not null,
  beds int,
  baths int,
  sqft int not null,
  score int not null,
  foreign key (userid) references users (id)
);

CREATE TABLE IF NOT EXISTS liked_homes (
  id serial primary key,
  userid int,
  homeid int,
  foreign key (userid) references users (id),
  foreign key (homeid) references homes (id)
);

CREATE TABLE IF NOT EXISTS similar_homes (
  homeid int references homes (id),
  similarid int references homes (id)
);



-- CREATE TABLE IF NOT EXISTS similarHomes(
--   id serial primary key,
--   homeid int not null,
--   city varchar(50) not null,
--   img varchar(50) not null,
--   foreign key (homeid) references home (id),
--   foreign key (city) references home (city),
--   foreign key (img) references home (img)
-- );


