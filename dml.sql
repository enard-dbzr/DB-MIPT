truncate table bands cascade;
truncate table members cascade;
truncate table band_members cascade;
truncate table labels cascade;
truncate table label_contracts cascade;
truncate table albums cascade;
truncate table tracks cascade;


insert into bands (id, name, description, link, contact_information)
values (1, 'Alx Beats', 'Alx Beats, является хип-хоп музыкальным продюсером с острова Сахалин, Российская Федерация. Он производит разнообразные жанры, включая хорроркор, трэп, андеграунд, фонк, трэлл, грим и клауд.', 'https://music.yandex.ru/artist/4662618', 'https://vk.com/alx_beats'),
       (2, 'DEEP-EX-SENSE', 'Российский баттл-рэпер и хип-хоп-исполнитель. Участник баттл-площадок КУБОК МЦ, Russian Battle League и Slovo, на которых в общей сложности провел 34 баттла.', 'https://music.yandex.ru/artist/5465911', 'https://vk.com/deepexsensepublic'),
       (3, 'Dead Poet Society', 'Dead Poet Society — американская рок-группа, созданная в Бостоне, штат Массачусетс, в 2013 году Джеком Андеркофлером (вокал, гитара), Джеком Коллинзом (гитара), Ником Тёрнером (бас-гитара) и Уиллом Гудроудом (ударные).', 'https://music.yandex.ru/artist/2641515', 'Jeremy@WesternFrontMusic.com'),
       (4, 'четвёртый пациент', 'Декаданс-панк из москвы', 'https://music.yandex.ru/artist/15851945', 'https://vk.com/44hospital'),
       (5, 'Jake Hill & Josh A', 'Jake Hill & Josh A в домашних условиях записывают музыкальные шедевры.', 'https://music.yandex.ru/artist/3280411', 'inst: @officialjosha'),
       (6, 'Bury the wren', 'Меланхоличнtypeый трип-хоп, прекрасно подходящий под текущее настроение.', 'https://music.yandex.ru/artist/4436714', 'inst: @burythewren'),
       (7, '2rbina 2rista', 'Была основана 2 апреля 2011 года в столице отечественной атомной промышленности — городе Озёрске Челябинской области', 'https://music.yandex.ru/artist/3789570', 'https://vk.com/turbinaturista'),
       (8, 'Lorn', 'Композитор и битмейкер Маркос Ортега из штата Иллинойс, США.', 'https://music.yandex.ru/artist/322795', 'lorn.ws'),
       (9, 'plenka', 'Артём plenka (ранее пl3nk) - российский витчхаус исполнитель.', 'https://music.yandex.ru/artist/7048612', 'https://vk.com/pl3nkv'),
       (10, 'Twenty One Pilots', 'Американский дуэт из Колумбуса, штат Огайо.', 'https://music.yandex.ru/artist/792433', 'inst: @twentyonepilots'),
       (11, 'The Meto', 'The Meto - это внежанровые песни с сюжетной лирикой, звучание русского рока, хип-хопа и цифровой электронной музыки. ', 'https://music.yandex.ru/artist/4603159', 'https://vk.com/themeto'),
       (12, 'Onyx', 'Американская хардкор-рэп-группа, образовавшаяся в 1988 году и добившаяся широкой известности в начале 1990-х годов.', 'https://music.yandex.ru/artist/201808', 'https://vk.com/onyxrussia'),
       (13, 'Gessaffelstein', 'Французский техно-музыкант, диджей и продюсер', 'https://music.yandex.ru/artist/678505', 'https://www.youtube.com/user/GesaffelsteinChannel'),
       (14, 'Луперкаль', 'Алексей Альфредович Спиридонов, более известный под сценическим псевдонимом Horus, ранее также известный под псевдонимом Луперкаль — российский хип-хоп-исполнитель. С 2011 по 2014 являлся участником группы Проект Увечье, в составе которой записал три студийных альбома.', 'https://music.yandex.ru/artist/3134811', 'https://band.link/scanner?search=3134811&type=artist_id'),
       (15, 'Lodoss', 'Электронный грув и акустические мотивы, социальные подтексты в каждой строке и полное отсутствие жанровых барьеров.', 'https://music.yandex.ru/artist/4876374', 'https://vk.com/lodoss_music'),

       (16, '25/17', null, null, null),
       (17, 'RIPBEAT', null, null, null),
       (18, 'Бранимир', null, null, null),
       (19, 'HORUS', null, null, null),
       (20, 'Loc Dog', null, null, null);


insert into members (id, first_name, last_name, display_name, birthday, country)
values  (1, 'Владислав', 'Нирнорский', 'Владислав Нирнорский', '1995-09-29', 'Russia'),
        (2, 'Анатолий', 'Семенов', 'Анатолий Анатольевич Семенов', '1992-01-02', 'Russia'),
        (3, 'Jack', 'Underkofler', 'Jack Underkofler', null, 'America'),
        (4, 'Jack', 'Collins', 'Jack Collins', null, 'America'),
        (5, 'Nick', 'Turner', 'Nick Turner', null, 'America'),
        (6, 'Will', 'Goodroad', 'Will Goodroad', null, 'America'),
        (7, 'Dylan', 'Brenner', 'Dylan Brenner', null, 'America'),
        (8, 'Степан', 'Чихалев', 'Стёпа Чихалёв', null, 'Russia'),
        (9, 'Владимир', 'Наумов', 'Владимир Наумов', '1995-09-26', 'Russia'),
        (10, 'Соня', 'Зайцева', 'Соня Зайцева', '1999-05-05', 'Russia'),
        (11, null, null, 'Josh A', null, 'America'),
        (12, 'Jake', 'Hill', 'Jake Hill', null, 'America'),
        (13, null, null, 'Bury the wren', null, null),
        (14, 'Ранис', 'Гайсин', 'Рэнто БАРОН Гарсиа', '1985-07-16', 'Russia'),
        (15, null, null, 'Дан Айла', null, 'Russia'),
        (16, 'Максим', 'Шишков', 'Макс Осквернитель', null, 'Russia'),
        (17, null, null, 'Артур UAP', null, 'Russia'),
        (18, null, null, 'Настя Серебро', null, 'Russia'),
        (19, 'Сергей', 'Давыдов', 'Падре Дэвис', '1985-06-22', 'Russia'),
        (20, 'Юля', 'Гайсина', 'Мама Бриджит', '1995-06-21', 'Russia'),
        (21, 'Рустам', 'Юсупов', 'Тонтон Макута', '1987-02-19', 'Russia'),
        (22, 'Маркос', 'Ортега', 'Маркос Ортега', '1987-01-01', 'America'),
        (23, null, null, 'pl3nkv', null, 'Russia'),
        (24, 'Роберт' ,'Тайлер', 'Тайлер Роберт Джозеф', '1988-12-01', 'America'),
        (25, 'Ник', 'Томас', 'Ник Томас', null, 'America'),
        (26, 'Крис', 'Салих', 'Крис Салих', null, 'America'),
        (27, 'Дан', 'Джош', 'Джошуа Уильям Дан', '1988-06-18', 'America'),
        (28, 'Дмитрий', 'Дрожжин', 'Дрожжин Дмитрий', null, 'Russia'),
        (29, 'Фред', 'Скраггс', 'Fredro Starr', '1971-04-18', 'America'),
        (30, 'Тайрон', 'Тейлор', 'Sonny Seeza', '1970-11-13', 'America'),
        (31, 'Марлон', 'Флетчер', 'Big DS', '1971-06-29', 'America'),
        (32, 'Кирк', 'Джонс', 'Sticky Fingaz', '1973-11-03', 'America'),
        (33, 'Майк', 'Ле́ви', 'Gesaffelstein', '1985-06-01', 'France'),
        (34, 'Алексей', 'Спиридонов', 'Луперкаль', '1983-05-23', 'Russia'),
        (35, 'Николай', 'Дукмас', 'Lodoss', '1990-06-23', 'Russia')
        ;


insert into band_members (member_id, band_id, role, start_date, end_date)
values  (1, 1, 'executor', '2012-01-27', '3000-01-01'),
        (2, 2, 'executor', '2011-01-01', '3000-01-01'),
        (3, 3, 'vocals, guitar', '2013-01-01', '3000-01-01'),
        (4, 3, 'guitar', '2013-01-01', '3000-01-01'),
        (5, 3, 'bass guitar', '2013-01-01', '2019-01-01'),
        (6, 3, 'drums', '2013-01-01', '3000-01-01'),
        (7, 3, 'bass guitar', '2019-01-01', '3000-01-01'),
        (8, 4, 'voice, guitar', '2022-12-01', '3000-01-01'),
        (9, 4, 'bass guitar, text', '2022-12-01', '3000-01-01'),
        (10, 4, 'drums', '2022-12-01', '3000-01-01'),
        (11, 5, 'executor', '2014-01-01', '3000-01-01'),
        (12, 5, 'executor', '2014-01-01', '3000-01-01'),
        (13, 6, 'executor', '2016-01-01', '2017-01-01'),
        (14, 7, 'front-man, singer', '2011-01-01', '3000-01-01'),
        (15, 7, 'executor', '2011-01-01', '2013-01-01'),
        (16, 7, 'executor', '2012-01-01', '2015-01-01'),
        (17, 7, 'guitar', '2014-01-01', '2019-01-01'),
        (18, 7, 'executor', '2014-01-01', '2018-04-01'),
        (19, 7, 'guitar', '2019-01-01', '3000-01-01'),
        (20, 7, 'animator', '2022-01-01', '3000-01-01'),
        (21, 7, 'production', '2022-01-01', '3000-01-01'),
        (22, 8, 'executor', '2006-01-01', '3000-01-01'),
        (23, 9, 'executor', '2014-01-01', '3000-01-01'),
        (24, 10, 'executor', '2009-01-01', '3000-01-01'),
        (25, 10, 'executor', '2009-01-01', '2011-01-01'),
        (26, 10, 'executor', '2009-01-01', '2011-01-01'),
        (27, 10, 'executor', '20011-01-01', '3000-01-01'),
        (28, 11, 'executor', '2016-01-01', '3000-01-01'),
        (29, 12, 'executor', '1988-01-01', '3000-01-01'),
        (30, 12, 'executor', '1988-01-01', '3000-01-01'),
        (31, 12, 'executor', '1988-01-01', '3000-01-01'),
        (32, 12, 'executor', '1991-01-01', '3000-01-01'),
        (33, 13, 'executor', '2008-01-01', '3000-01-01'),
        (34, 14, 'executor', '2014-01-01', '3000-01-01'),
        (35, 15, 'executor', '2014-01-01', '3000-01-01');

insert into labels (id, name)
values (1, 'Ренессанс/Антихайп'),
       (2, 'Союз Мьюзик'),
       (3, 'Spinefarm Music Group'),
       (4, 'Сквозь'),
       (5, 'LONELY VIBES'),
       (6, 'FOUND SOUND'),
       (7, 'Flying Lotus Brainfeeder'),
       (8, 'Ninja Tune'),
       (9, 'Wednesday Sound'),
       (10, 'Fueled by Ramen'),
       (11, 'Rhymes Music'),
       (12, 'Profile Records'),
       (13, 'JMJ Records'),
       (14, 'Armee Records'),
       (15, 'Koch Records'),
       (16, '100 MAD'),
       (17, 'GoodLife Records'),
       (18, 'Turbo Records'),
       (19, 'EMI Music France'),
       (20, 'ACIDHOUZE');

insert into label_contracts (band_id, label_id, start_date, end_date)
values (1, 1, '2015-01-01', '3000-01-01'),
       (2, 2, '2017-01-01', '3000-01-01'),
       (3, 3, '2021-01-01', '3000-01-01'),
       (4, 4, '2023-01-01', '3000-01-01'),
       (5, 5, '2020-01-01', '3000-01-01'),
       (6, 6, '2016-01-01', '2017-01-01'),
       (7, 2, '2012-01-01', '3000-01-01'),
       (8, 7, '2009-01-01', '2012-01-01'),
       (8, 8, '2012-01-01', '2014-01-01'),
       (8, 9, '2014-01-01', '3000-01-01'),
       (10, 10, '2012-01-01', '3000-01-01'),
       (11, 11, '2016-01-01', '3000-01-01'),
       (12, 12, '1988-01-01', '1993-01-01'),
       (12, 13, '1993-01-01', '1995-01-01'),
       (12, 14, '1995-01-01', '2005-01-01'),
       (12, 15, '2005-01-01', '2014-01-01'),
       (12, 16, '2014-01-01', '3000-01-01'),
       (13, 17, '2008-01-01', '2010-01-01'),
       (13, 18, '2010-01-01', '2012-01-01'),
       (13, 19, '2012-01-01', '3000-01-01'),
       (14, 20, '2014-01-01', '3000-01-01');

insert into albums (id, band_id, label_id, title, release_date, type)
values (1, 1, 1, 'Sangria', '2020-05-23', 0),
       (2, 1, 1, 'Transcendence', '2024-04-03', 0),

       (3, 2, 2, 'Neurotoxin', '2017-04-15', 0),
       (4, 2, 2, 'Мёртвый шёлк', '2021-05-21', 2),

       (5, 3, 3, 'Axiom', '2015-11-13', 2),

       (6, 4, 4, 'Анекдот', '2023-01-02', 0),

       (7, 5, 5, 'Pennywise', '2017-02-25', 0),

       (8, 6, 6, '2:15 to New Glory', '2017-02-25', 2),

       (9, 7, 2, 'Nuclear Rap', '2014-07-29', 2),

       (10, 8, 9, 'YO2_RUSTLIN', '2021-10-14', 0),

       (11, 9, null, 'Angle', '2020-09-28', 2),

       (12, 10, 10, 'Chlorine - Alternative Mix', '2019-09-22', 0),

       (13, 11, 11, 'Осколки', '2023-09-05', 0),

       (14, 12, 16, 'Wakedafucup', '2014-12-26', 2),

       (15, 13, 18, 'Conspiracy Pt.1', '2011-02-22', 0),
       (16, 13, 18, 'Conspiracy Pt.2', '2011-02-28', 0),

       (17, 14, null, 'Зимородок', '2016-04-10', 2),

       (18, 15, null, 'Костяника', '2021-10-15', 0);

insert into tracks (id, title, duration, track_file_url)
values (1, 'Sangria', '00:02:42', 'https://music.yandex.ru/album/10491000/track/65010521'),

       (2, 'Transcendence', '00:02:12', 'https://music.yandex.ru/album/29426097/track/121961148'),

       (3, 'Neurotoxin', '00:02:37', 'https://music.yandex.ru/album/4849732/track/38080593'),

       (4, 'Грена', '00:03:50', 'https://music.yandex.ru/album/17164860/track/88301094'),
       (5, 'Червь', '00:04:20', 'https://music.yandex.ru/album/17164860/track/88301095'),
       (6, 'Кокон', '00:05:19', 'https://music.yandex.ru/album/17164860/track/88301096'),
       (7, 'Имаго', '00:03:08', 'https://music.yandex.ru/album/17164860/track/88301097'),

       (8, 'Creature', '00:02:58', 'https://music.yandex.ru/album/2898904/track/24756252'),
       (9, 'Sutton.', '00:03:48', 'https://music.yandex.ru/album/2898904/track/24756253'),
       (10, 'Be Here', '00:03:14', 'https://music.yandex.ru/album/2898904/track/24756254'),
       (11, 'Belharra', '00:03:54', 'https://music.yandex.ru/album/2898904/track/24756255'),
       (12, 'Sinn Féin', '00:03:01', 'https://music.yandex.ru/album/2898904/track/24756256'),
       (13, 'Sound and Silence', '00:02:52', 'https://music.yandex.ru/album/2898904/track/24756257'),
       (14, 'Colors', '00:04:16', 'https://music.yandex.ru/album/2898904/track/24756258'),

       (15, 'Анекдот', '00:02:44', 'https://music.yandex.ru/album/25290800/track/112458492'),

       (16, 'Pennywise', '00:02:45', 'https://music.yandex.ru/album/4761994/track/37543499'),

       (17, 'Untrue', '00:03:39', 'https://music.yandex.ru/album/3547504/track/29489615'),
       (18, 'Even Though', '00:03:11', 'https://music.yandex.ru/album/3547504/track/29489616'),
       (19, 'The One That Gets Away', '00:03:25', 'https://music.yandex.ru/album/3547504/track/29489617'),
       (20, 'Hang Me up High', '00:03:51', 'https://music.yandex.ru/album/3547504/track/29489618'),
       (21, '2:15 to New Glory', '00:03:46', 'https://music.yandex.ru/album/3547504/track/29489619'),
       (22, 'Im Happy', '00:03:35', 'https://music.yandex.ru/album/3547504/track/29489620'),

       (23, 'Стальные яйца', '00:04:15', 'https://music.yandex.ru/album/6370040/track/29727287'),
       (24, 'Bad Boys', '00:03:58', 'https://music.yandex.ru/album/6370040/track/29727288'),
       (25, 'Nuclear Rap', '00:04:54', 'https://music.yandex.ru/album/6370040/track/29727289'),
       (26, 'Листики', '00:03:56', 'https://music.yandex.ru/album/6370040/track/29727290'),
       (27, 'Ядерное гетто', '00:04:15', 'https://music.yandex.ru/album/6370040/track/29727291'),
       (28, 'Наркотестер', '00:04:58', 'https://music.yandex.ru/album/6370040/track/29727292'),
       (29, 'Не надо нас хоронить', '00:03:55', 'https://music.yandex.ru/album/6370040/track/29727293'),
       (30, 'Падальщики', '00:03:31', 'https://music.yandex.ru/album/6370040/track/29727294'),
       (31, 'Ural Magic Tour', '00:02:08', 'https://music.yandex.ru/album/6370040/track/29727295'),

       (32, 'YO2_RUSTLIN', '00:02:01', 'https://music.yandex.ru/album/17924371/track/90584958'),

       (33, 'Last Desire', '00:02:36', 'https://music.yandex.ru/album/12008229/track/70849534'),
       (34, 'Pressure', '00:02:36', 'https://music.yandex.ru/album/12008229/track/70849534'),
       (35, 'Shot', '00:02:36', 'https://music.yandex.ru/album/12008229/track/70849534'),
       (36, 'When You Find Me', '00:02:36', 'https://music.yandex.ru/album/12008229/track/70849534'),

       (37, 'Chlorine', '00:03:11', 'https://music.yandex.ru/album/6809372/track/49567139'),

       (38, 'Осколки', '00:02:49', 'https://music.yandex.ru/album/24870935/track/111353105'),

       (39, 'Whut Whut', '00:02:50', 'https://music.yandex.ru/album/1808640/track/16522664'),
       (40, 'We Dont Fuckin Care', '00:04:45', 'https://music.yandex.ru/album/1808640/track/16522653'),
       (41, 'Hustin Hour', '00:03:26', 'https://music.yandex.ru/album/1808640/track/16522660'),
       (42, 'The Realest', '00:02:51', 'https://music.yandex.ru/album/1808640/track/16522661'),
       (43, 'Wakedafucup', '00:04:49', 'https://music.yandex.ru/album/1808640/track/16522657'),
       (44, 'Dirty Cops', '00:03:47', 'https://music.yandex.ru/album/1808640/track/16522663'),
       (45, 'Turndafucup', '00:02:56', 'https://music.yandex.ru/album/1808640/track/16522656'),

       (46, 'Hatred', '00:06:47', 'https://music.yandex.ru/album/5963469/track/44446093'),
       (47, 'Aufstand', '00:07:59', 'https://music.yandex.ru/album/5963469/track/44446094'),
       (48, 'The Lack Of Hope', '00:06:24', 'https://music.yandex.ru/album/5963469/track/44446095'),

       (49, 'Viol', '00:05:43', 'https://music.yandex.ru/album/5962678/track/10327923'),
       (50, 'Opr', '00:03:53', 'https://music.yandex.ru/album/5962678/track/10327924'),
       (51, 'Conspiracy Origins', '00:02:32', 'https://music.yandex.ru/album/5962678/track/10327925'),

       (52, 'Ау', '00:03:52', 'https://music.yandex.ru/album/3942224/track/32356934'),
       (53, 'Человек упавший с луны', '00:03:29', 'https://music.yandex.ru/album/3942224/track/32356935'),
       (54, 'Билет', '00:03:04', 'https://music.yandex.ru/album/3942224/track/32356936'),
       (55, 'Пока смеются дети', '00:01:11', 'https://music.yandex.ru/album/3942224/track/32356937'),
       (56, 'Зимняя Сказка', '00:02:46', 'https://music.yandex.ru/album/3942224/track/32356938'),
       (57, 'Белый Лебедь', '00:03:47', 'https://music.yandex.ru/album/3942224/track/32356939'),
       (58, 'Побег', '00:03:30', 'https://music.yandex.ru/album/3942224/track/32356940'),
       (59, 'Белая полоса', '00:03:01', 'https://music.yandex.ru/album/3942224/track/32356941'),

       (60, 'Костяника', '00:02:49', 'https://music.yandex.ru/album/18639951/track/92813616');

insert into track_in_album (track_id, album_id)
values (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 4),
       (6, 4),
       (7, 4),
       (8, 5),
       (9, 5),
       (10, 5),
       (11, 5),
       (12, 5),
       (13, 5),
       (14, 5),
       (15, 6),
       (16, 7),
       (17, 8),
       (18, 8),
       (19, 8),
       (20, 8),
       (21, 8),
       (22, 8),
       (23, 9),
       (24, 9),
       (25, 9),
       (26, 9),
       (27, 9),
       (28, 9),
       (29, 9),
       (30, 9),
       (31, 9),
       (32, 10),
       (33, 11),
       (34, 11),
       (35, 11),
       (36, 11),
       (37, 12),
       (38, 13),
       (39, 14),
       (40, 14),
       (41, 14),
       (42, 14),
       (43, 14),
       (44, 14),
       (45, 14),
       (46, 15),
       (47, 15),
       (48, 15),
       (49, 16),
       (50, 16),
       (51, 16),
       (52, 17),
       (53, 17),
       (54, 17),
       (55, 17),
       (56, 17),
       (57, 17),
       (58, 17),
       (59, 17),
       (60, 18);

insert into track_author (track_id, band_id, role)
values (1, 1, 0),
       (2, 1, 0),
       (3, 2, 0),

       (4, 2, 0),
       (5, 2, 0),
       (6, 2, 0),
       (7, 2, 0),

       (8, 3, 0),
       (9, 3, 0),
       (10, 3, 0),
       (11, 3, 0),
       (12, 3, 0),
       (13, 3, 0),
       (14, 3, 0),

       (15, 4, 0),

       (16, 5, 0),

       (17, 6, 0),
       (18, 6, 0),
       (19, 6, 0),
       (20, 6, 0),
       (21, 6, 0),
       (22, 6, 0),

       (23, 7, 0),
       (24, 7, 0),
       (25, 7, 0),
       (26, 7, 0),
       (27, 7, 0),
       (28, 7, 0),
       (29, 7, 0),
       (30, 7, 0),
       (31, 7, 0),

       (32, 8, 0),

       (33, 9, 0),
       (34, 9, 0),
       (35, 9, 0),
       (36, 9, 0),

       (37, 10, 0),

       (38, 11, 0),

       (39, 12, 0),
       (40, 12, 0),
       (41, 12, 0),
       (42, 12, 0),
       (43, 12, 0),
       (44, 12, 0),
       (45, 12, 0),

       (46, 13, 0),
       (47, 13, 0),
       (48, 13, 0),
       (49, 13, 0),
       (50, 13, 0),
       (51, 13, 0),

       (52, 14, 0),
       (53, 14, 0),
       (53, 16, 0),
       (54, 14, 0),
       (54, 17, 2),
       (55, 14, 0),
       (56, 14, 0),
       (57, 14, 0),
       (57, 18, 0),
       (57, 19, 0),
       (58, 14, 0),
       (59, 14, 0),
       (59, 20, 1),

       (60, 15, 0);
