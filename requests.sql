-- Все треки, по годам
select bands.name as band, tracks.title as track, albums.title as album, albums.release_date as release_date from bands
join track_author on bands.id = track_author.band_id
join tracks on track_author.track_id = tracks.id
join track_in_album on tracks.id = track_in_album.track_id
join albums on track_in_album.album_id = albums.id
order by albums.release_date DESC;

-- Альбомы, выпущенные без лейбла(Под собственным лейблом)
select title as album_title, bands.name as author from albums
join bands on albums.band_id = bands.id
where label_id is null;

-- Альбомы, выпущенные под отличным от контрактного лейблом
select title, album_label.name, author_label.name from albums
left outer join labels album_label on albums.label_id = album_label.id
left outer join label_contracts on albums.band_id = label_contracts.band_id and
                        albums.release_date > label_contracts.start_date and
                        albums.release_date < label_contracts.end_date
left outer join labels author_label on author_label.id = label_contracts.label_id
where coalesce(album_label.name, '') <> coalesce(author_label.name, '');

-- Синглы с более чем одним треком
select title as album, bands.name as author from albums
join bands on albums.band_id = bands.id
where albums.id in (select albums.id
                    from tracks
                    join track_in_album on tracks.id = track_in_album.track_id
                    join albums on track_in_album.album_id = albums.id
                    where albums.type = 0
                    group by albums.id
                    having count(track_id) > 1);

-- Инфо о длительности треков в альбоме
select albums.title, bands.name, count(track_id), min(duration), max(duration), avg(duration), sum(duration)
from albums
join bands on albums.band_id = bands.id
join track_in_album on albums.id = track_in_album.album_id
join tracks on track_in_album.track_id = tracks.id
group by albums.id, bands.id;

-- Активные контракты
select labels.name, bands.name, label_contracts.start_date, label_contracts.end_date from labels
join label_contracts on labels.id = label_contracts.label_id
join bands on label_contracts.band_id = bands.id
where (label_contracts.start_date < now() and
       label_contracts.end_date > now())

-- Завершившиеся контракты
select labels.name, bands.name,
       label_contracts.start_date, label_contracts.end_date,
       label_contracts.end_date - label_contracts.start_date as duration from labels
join label_contracts on labels.id = label_contracts.label_id
join bands on label_contracts.band_id = bands.id
where (label_contracts.end_date < now());

-- Самый продолжительный трек в каждом альбоме
select distinct on (albums.id) albums.title, bands.name as author, tracks.title, tracks.duration
from albums
join bands on albums.band_id = bands.id
join track_in_album on albums.id = track_in_album.album_id
join tracks on track_in_album.track_id = tracks.id
order by albums.id, tracks.duration desc ;

-- Количество альбомов, выпущенных каждым лейблом
select labels.name, count(albums.id) as albums_count
from labels
left join albums on labels.id = albums.label_id
group by labels.id
order by albums_count desc;

-- альбомы с треками, длительность которых больше средней длительности треков в этом альбоме
select albums.title, bands.name as author, tracks.title, tracks.duration
from albums
join bands on albums.band_id = bands.id
join track_in_album on albums.id = track_in_album.album_id
join tracks on track_in_album.track_id = tracks.id
where tracks.duration > (
    select avg(tracks.duration)
    from track_in_album
    join tracks on track_in_album.track_id = tracks.id
    where track_in_album.album_id = albums.id
)
order by tracks.duration desc;
