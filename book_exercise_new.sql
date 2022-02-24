-- select count(*) as 'Total number of books in database' from books;

-- select released_year, count(*) as '# of books released each year'
-- from books
-- group by 1;

-- select sum(stock_quantity) as '# of books in stock' from books;

-- select author_fname, author_lname, avg(released_year)
-- from books
-- group by 2, 1;

-- select concat(author_fname, ' ', author_lname) as 'Author with longest book'
-- from books
-- order by pages
-- desc
-- limit 1;

-- select released_year as 'year', count(*) as '# books', avg(pages) as 'avg pages'
-- from books
-- group by 1
-- order by 1;

select title, author_lname,
case
when count(*) = 1 then '1 book'
else concat(count(*), ' books')
end as COUNT
from books
group by author_lname, author_fname;