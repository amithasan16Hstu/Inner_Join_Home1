create table student_info(
std_id int not null,
std_name varchar(20),
department varchar(20),
course_id int,
primary key(std_id),
foreign key(course_id) references course_info(course_id)
);
insert into student_info(std_id,std_name,department,course_id)
values(2102043,'Amit','CSE',101),(2102044,'Porag','CSE',102),
(2102045,'Utal','CSE',103),(2102077,'Sayem','EEE',201),
(2102143,'kaka','ECE',301);

create table course_info(
course_id int not null,
course_name varchar(20),
teacher_id int,
primary key(course_id),
foreign key(teacher_id) references teachers_info(teacher_id)
);
insert into course_info(course_id,course_name,teacher_id)
values(101,'C',1),(102,'C++',2),(103,'DLD',3),(201,'OOP',4),
(301,'DBMS',5);

create table teachers_info(teacher_id int not null,
teacher_name varchar(20),
primary key(teachers_id)
);
insert into teachers_info(teacher_id,teacher_name)
values(1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E');

select student_info.std_name,course_info.course_name,teachers_info.teacher_name
from ((student_info 
inner join course_info on student_info.course_id=course_info.course_id)
inner join teachers_info on course_info.teacher_id=teachers_info.teacher_id);
