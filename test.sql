-- insert into myTable (accountnumber, org_id)
-- values (4435354, 81),
-- (4435354, 281),
-- (4435354, 404),
-- (3333333, 81),
-- (3333333, 281),
-- (4444444, 81),
-- (4444444, 81),
-- (4444444, 281),
-- (4444444, 404);

 select distinct accountnumber, org_id, count(*) 
 from myTable 
 group by accountnumber, org_id;