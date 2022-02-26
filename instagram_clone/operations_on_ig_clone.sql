-- challenge 1
-- select * 
-- from users 
-- order by created_at 
-- limit 5;

-- challenge 2
-- select 
--     dayname(created_at) as day_registered,
--     count(username) as 'number of users'
-- from users
-- group by 1
-- order by 2 desc
-- limit 2;

-- challenge 3
-- select
--     username
-- from users
-- left join photos
--     on users.id = photos.user_id
-- where photos.id is null;

-- challenge 4
-- select
--     username,
--     image_url,
--     count(*) as 'total likes'
-- from photos
-- inner join likes
--     on photos.id = likes.photo_id
-- inner join users
--     on users.id = photos.user_id
-- group by photos.id
-- order by 3 desc
-- limit 1;

-- challenge 5
-- select
--     (
--         select count(*) from photos
--     )/
--     (
--         select count(*) from users
--     ) as avg;

-- challenge 6
-- select
--     tag_name,
--     count(*) as total
-- from photo_tags
-- join tags
--     on photo_tags.tag_id = tags.id
-- group by tag_id
-- order by total desc
-- limit 5;

-- challenge 7
select 
    username,
    count(*) as 'num_likes'
from users
inner join likes
    on users.id = likes.user_id
group by likes.user_id
having num_likes = (select count(*) from photos);