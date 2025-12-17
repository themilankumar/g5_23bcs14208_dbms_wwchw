CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);



CREATE TABLE Enrollments (
    student_id INT,
    course VARCHAR(50)
);


INSERT INTO Student (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David');

--DROP TABLE STUDENT

INSERT INTO Enrollments (student_id, course) VALUES
(1, 'DBMS'),
(3, 'Java'),
(5, 'Python');

select s.student_id,s.student_name from
student as s
left join enrollments as e
on s.student_id=e.student_id
where e.student_id is null