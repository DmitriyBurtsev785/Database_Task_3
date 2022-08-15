-- название и год выхода альбомов, вышедших в 2018 году

select name, year_of_issue from album
where year_of_issue = 2018;

-- название и продолжительность самого длительного трека

select name, duration  from track
where duration = (select MAX(duration) from track);

-- название треков, продолжительность которых не менее 3,5 минуты

select name from track
where duration >= 3.49;

-- названия сборников, вышедших в период с 2018 по 2020 год включительно

select name from compilation
where year_of_issue >= 2018 and year_of_issue <= 2020;

-- исполнители, чье имя состоит из 1 слова

select name from singer
where "name"  not like '% %';

-- название треков, которые содержат слово "мой"/"my"

select name from track
where name LIKE '%My%';