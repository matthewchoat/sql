-- Original database students -> tekcamp01

-- #2 I used the MySql workbench interface to create my personal database


-- create table tekcampers (id, first_name, last_name, gender, education);

-- SELECT * FROM tekcampers;
-- INSERT INTO tekcampers SELECT * FROM students.tekcamp01;\\id
-- ALTER TABLE tekcampers MODIFY COLUMN id INT auto_increment;

-- select * from tekcampers;

-- DELETE FROM tekcampers where (id=9 or id = 20 or id = 26);

--INSERT INTO tekcampers (first_name, last_name, gender, education)
-- values
-- ('Cody', 'Clark', 'M', null),
-- ('Aaron', 'White', 'M', null),
-- ('Monica', 'Howard', 'F', null),
-- ('Kevin', 'Keesee', 'M', null),
-- ('Devon', 'Brewster', 'M', null),
-- ('John', 'Bozarov', 'M', null),
-- ('John', 'Kol', 'M', null),
-- ('Justin', 'Cheng', 'M', null),
-- ('Tyler', 'Clements', 'M', null),
-- ('Vimala', 'Murthy', 'F', null),
-- ('Gowtham', 'Katta', 'M', null);

-- update tekcampers
-- set gender = education
-- where id BETWEEN 1 and 38;

-- update tekcampers
-- set education = null
-- where id BETWEEN 1 and 38;

-- update tekcampers
-- set gender = "F"
-- where (id=4 or id=10);

-- update tekcampers
-- set gender = "M"
-- where (id=2 or id=15 or id=22 or id=24);

-- DELETE from tekcampers
-- WHERE id = idtekcamperstekcampers

-- UPDATE tekcampers
-- set education = null
-- WHERE id BETWEEN 1 and 35;

-- UPDATE tekcampers
-- set education = ('Bachelors Degree')
-- WHERE first_name = ('Abigail') OR ('Adam') OR ('Jose') OR ('Matthew') OR ('Jessica') OR ('Gowtham') OR ('Sabitha') OR ('Katherine') OR ('John');

-- UPDATE tekcampers
-- set education = 'Associates Degree'
-- WHERE id = 8;

-- UPDATE tekcampers
-- set education = 'Bachelors'
-- WHERE id = 36;

-- UPDATE tekcampers
-- set gender = 'M'
-- WHERE id = 24;

-- select * from tekcampers
-- where length(last_name) > 7;

-- select * from tekcampers
-- order by first_name asc;

-- select * from tekcampers
-- order by last_name;

-- select * from tekcampers
-- where gender = 'M';

-- select * from tekcampers
-- where gender = 'F';

-- select * from tekcampers
-- where education = 'Masters Degree';

-- select * from tekcampers
-- where education = 'Bachelors Degree';

-- select * from tekcampers
-- where education = 'Associates Degree';

-- select * from tekcampers
-- where (education = null OR education = 'Some College' OR education = 'High School');

-- create table `ta-mark` AS
-- select * from tekcampers
-- where (id=8 OR id=21 or id=23 or id=25 or id=27 or id=28 or id=29 or id=31 or id=33 or id=35 or id=36 or id=38);

-- insert into hobbies(hobby)
-- values
-- ("Reading"),
-- ("Motorcycle Riding"),
-- ("Video Games"),
-- ("Golfing"),
-- ("Cattle Rusting"),
-- ("Gardening"),
-- ("Aerial Yoga"),
-- ("Running"),
-- ("Working Out"),
-- ("Pickle Ball"),
-- ("Engineering projects with the kids"),
-- ("Jiu Jitsu"),
-- ("Writing"),
-- ("Cooking"),
-- ("Eating"),
-- ("Music"),
-- ("Hockey"),
-- ("Soccer"),
-- ("Longboarding"),
-- ("Soccer"),
-- ("Growing Hot Peppers");

-- create table hobbiesintagroup(
-- person_id int not null references `ta-mark`(id),
-- hobby_id int not null references `ta-mark`(hobby_id)
-- );

-- select * from hobbies;

-- insert into hobbiesintagroup(person_id, hobby_id)
-- values
-- (38, 8),
-- (31, 3),
-- (28, 14),
-- (8, 15),
-- (35, 15),
-- (33, 18),
-- (21, 19),
-- (36, 20),
-- (25, 17),
-- (23, 1),
-- (27, 1),
-- (36, 21)
-- ;

-- select first_name, last_name, hobby from `ta-mark`
-- left join hobbiesintagroup
-- on `ta-mark`.id = hobbiesintagroup.person_id
-- left join hobbies
-- on hobbiesintagroup.hobby_id = hobbies.id;
--
--alter table `ta-mark`
--add column last_bootcamp varchar(50);

-- UPDATE tekcampers
-- set education = 'Bachelors Degree'
-- WHERE id = 34;

--  alter table tekcampers
-- add column last_bootcamp varchar(50);

