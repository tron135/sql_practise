-- Challenge 1
-- select
--     title,
--     rating
-- from reviews
-- inner join series
--     on reviews.series_id = series.id;

-- Challenge 2
-- select
--     title,
--     avg(rating) as avg_rating
-- from reviews
-- inner join series
--     on reviews.series_id = series.id
-- group by series.id
-- order by 2;

-- Challenge 3
-- select
--     first_name,
--     last_name,
--     rating
-- from reviewers
-- join reviews 
--     on reviewers.id = reviews.reviewer_id;

-- Challenge 4
-- select 
--     title as unreviewed_series
-- from series
-- left join reviews
--     on series.id = reviews.series_id
-- where rating is null;

-- Challenge 5
-- select
--     genre,
--     round(avg(rating), 2) as avg_rating
-- from series
-- join reviews
--     on series.id = reviews.series_id
-- group by 1;

-- Challenge 6
-- select
--     first_name,
--     last_name,
--     count(reviews.id) as COUNT,
--     ifnull(min(rating), 0) as MIN,
--     ifnull(max(rating), 0) as MAX,
--     ifnull(avg(rating), 0) as AVG,

--     if(count(reviews.id)>=1, 'ACTIVE', 'INACTIVE') as STATUS,
--     case
--         when count(reviews.id) >= 1 then 'ACTIVE'
--         else 'INACTIVE'
--     end as STATUS
-- from reviewers
-- left join reviews
--     on reviewers.id = reviews.reviewer_id
-- group by reviewers.id;

-- Challenge 7
select
    title,
    rating,
    concat(first_name, ' ', last_name) as reviewer
from reviewers
join reviews
    on reviewers.id = reviews.reviewer_id
join series
    on series.id = reviews.series_id
order by title;