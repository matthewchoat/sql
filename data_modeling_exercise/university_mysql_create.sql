CREATE TABLE `students` (
	`student_id` int NOT NULL AUTO_INCREMENT,
	`student_name` varchar(100) NOT NULL,
	`student_major_id` int NOT NULL,
	`advisor_id` int NOT NULL,
	`notes_id` int NOT NULL,
	PRIMARY KEY (`student_id`)
);

CREATE TABLE `advisors` (
	`advisor_id` int NOT NULL AUTO_INCREMENT,
	`advisor_name` varchar(100) NOT NULL,
	`advisor_field` varchar(100) NOT NULL,
	`student_id` int NOT NULL,
	PRIMARY KEY (`advisor_id`)
);

CREATE TABLE `majors` (
	`major_id` int NOT NULL AUTO_INCREMENT,
	`major_name` varchar(100) NOT NULL,
	`major_degree` varchar(100) NOT NULL,
	`major_field` varchar(100) NOT NULL,
	PRIMARY KEY (`major_id`)
);

CREATE TABLE `student_notes` (
	`notes_id` int NOT NULL AUTO_INCREMENT,
	`note` TEXT NOT NULL,
	`student_id` int NOT NULL,
	`advisor_id` int NOT NULL,
	PRIMARY KEY (`notes_id`)
);

ALTER TABLE `students` ADD CONSTRAINT `students_fk0` FOREIGN KEY (`student_major_id`) REFERENCES `majors`(`major_id`);

ALTER TABLE `students` ADD CONSTRAINT `students_fk1` FOREIGN KEY (`advisor_id`) REFERENCES `advisors`(`advisor_id`);

ALTER TABLE `students` ADD CONSTRAINT `students_fk2` FOREIGN KEY (`notes_id`) REFERENCES `student_notes`(`notes_id`);

ALTER TABLE `advisors` ADD CONSTRAINT `advisors_fk0` FOREIGN KEY (`student_id`) REFERENCES `students`(`student_id`);

ALTER TABLE `student_notes` ADD CONSTRAINT `student_notes_fk0` FOREIGN KEY (`student_id`) REFERENCES `students`(`student_id`);

ALTER TABLE `student_notes` ADD CONSTRAINT `student_notes_fk1` FOREIGN KEY (`advisor_id`) REFERENCES `advisors`(`advisor_id`);

