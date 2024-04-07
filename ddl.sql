drop table if exists members cascade;
create table members (
    id integer primary key,
    first_name varchar(255),
    last_name varchar(255),
    display_name varchar(255) not null,
    birthday date,
    country varchar(100)
);

drop table if exists bands cascade ;
create table bands (
    id integer primary key,
    name varchar(255) not null ,
    description text,
    link varchar(255),
    contact_information text
);

drop table if exists labels cascade ;
create table labels (
    id integer primary key,
    name varchar(255) not null,
    description text,
    address varchar(255),
    contact_information text
);

drop table if exists tracks cascade ;
create table tracks (
    id integer primary key,
    title varchar(255) not null,
    duration interval not null,
    track_file_url varchar(255) not null
);

drop table if exists albums cascade ;
create table albums (
    id integer primary key,
    band_id integer references bands(id),
    label_id integer references labels(id),
    title varchar(255) not null,
    release_date date not null,
    picture_file_url varchar(255),
    type integer check ( type >= 0 and type <= 2 ) -- 0-single, 1-mini-album, 2-album
);

drop table if exists band_members cascade;
create table band_members (
    member_id integer references members(id),
    band_id integer references bands(id),
    role varchar(100),
    start_date date not null,
    end_date date not null default '3000-01-01',
    primary key (member_id, band_id)
);

drop table if exists track_author cascade;
create table track_author (
    track_id integer references tracks(id),
    band_id integer references bands(id),
    role integer check ( role >= 0 and role <= 2 ), -- 0-main, 1-feat, 2-remix
    primary key (track_id, band_id)
);

drop table if exists track_in_album cascade;
create table track_in_album (
    track_id integer references tracks(id),
    album_id integer references albums(id),
    type varchar(100),
    primary key (track_id, album_id)
);

drop table if exists label_contracts cascade;
create table label_contracts (
    band_id integer references bands(id),
    label_id integer references labels(id),
    start_date date not null,
    end_date date not null default '3000-01-01',
    primary key (band_id, label_id)
);
