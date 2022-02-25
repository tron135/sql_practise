-- create table students(
--     id int auto_increment primary key,
--     first_name varchar(100)
-- );

-- create table papers(
--     title varchar(100),
--     grade int,
--     student_id int,
--     foreign key(student_id) references students(id)
-- );

-- INSERT INTO students (first_name) VALUES 
-- ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

-- INSERT INTO papers (student_id, title, grade ) VALUES
-- (1, 'My First Book Report', 60),
-- (1, 'My Second Book Report', 75),
-- (2, 'Russian Lit Through The Ages', 94),
-- (2, 'De Montaigne and The Art of The Essay', 98),
-- (4, 'Borges and Magical Realism', 89);

-- 1st question
-- select 
--     first_name, 
--     title, 
--     grade
-- from students
-- inner join papers
--     on papers.student_id = students.id
-- order by grade desc;

-- 2nd question
-- select 
--     first_name, 
--     title, 
--     grade
-- from students
-- left join papers
--     on papers.student_id = students.id;

-- 3rd question
-- select 
--     first_name, 
--     ifnull(title, 'MISSING'), 
--     ifnull(grade, 0)
-- from students
-- left join papers
--     on papers.student_id = students.id;

-- 4th question
-- select 
--     first_name, 
--     ifnull(avg(grade), 0) as average
-- from students
-- left join papers
--     on papers.student_id = students.id
-- group by first_name
-- order by average desc;

-- 5th question
select 
    first_name, 
    ifnull(avg(grade), 0) as average,
    case
        when avg(grade) is null then 'FAILING'
        when avg(grade) >=75 then 'PASSING'
        else 'FAILING'
    end as passing_status
from students
left join papers
    on papers.student_id = students.id
group by first_name
order by average desc;

