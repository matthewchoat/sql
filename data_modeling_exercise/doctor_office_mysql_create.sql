CREATE TABLE `Doctor` (
	`doctor_id` int NOT NULL AUTO_INCREMENT,
	`Physician_name` varchar(50) NOT NULL,
	PRIMARY KEY (`doctor_id`)
);

CREATE TABLE `diagnosis` (
	`doctor_id` bigint NOT NULL,
	`diagnosis_id` int NOT NULL AUTO_INCREMENT,
	`diagnosis_name` varchar(50) NOT NULL,
	`diagnosis_notes` varchar(255) NOT NULL,
	`patient_id` INT NOT NULL,
	PRIMARY KEY (`diagnosis_id`)
);

CREATE TABLE `patients` (
	`patient_id` int NOT NULL AUTO_INCREMENT,
	`patient_name` varchar(50) NOT NULL,
	`patient_email` varchar(50) NOT NULL,
	`patient_phone` int NOT NULL,
	PRIMARY KEY (`patient_id`)
);

CREATE TABLE `schedules` (
	`appointment_id` INT NOT NULL AUTO_INCREMENT,
	`diagnosis_id` INT NOT NULL,
	`patient_id` INT NOT NULL,
	`appointment_datetime` DATETIME NOT NULL,
	`doctor_id` int NOT NULL,
	`appointment_notes` varchar(255) NOT NULL,
	PRIMARY KEY (`appointment_id`)
);

CREATE TABLE `preexisting_conditions` (
	`patient_files_id` int NOT NULL AUTO_INCREMENT,
	`patient_id` int NOT NULL,
	`condition_name` varchar(50) NOT NULL,
	`condition_desc` varchar(255) NOT NULL,
	PRIMARY KEY (`patient_files_id`)
);

CREATE TABLE `patient_medications` (
	`rx_id` INT NOT NULL AUTO_INCREMENT,
	`rx_name` varchar(50) NOT NULL,
	`patient_id` varchar(50) NOT NULL,
	`doctor_id` INT NOT NULL,
	PRIMARY KEY (`rx_id`)
);

ALTER TABLE `diagnosis` ADD CONSTRAINT `diagnosis_fk0` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor`(`doctor_id`);

ALTER TABLE `diagnosis` ADD CONSTRAINT `diagnosis_fk1` FOREIGN KEY (`patient_id`) REFERENCES `patients`(`patient_id`);

ALTER TABLE `schedules` ADD CONSTRAINT `schedules_fk0` FOREIGN KEY (`patient_id`) REFERENCES `patients`(`patient_id`);

ALTER TABLE `schedules` ADD CONSTRAINT `schedules_fk1` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor`(`doctor_id`);

ALTER TABLE `preexisting_conditions` ADD CONSTRAINT `preexisting_conditions_fk0` FOREIGN KEY (`patient_id`) REFERENCES `patients`(`patient_id`);

ALTER TABLE `patient_medications` ADD CONSTRAINT `patient_medications_fk0` FOREIGN KEY (`patient_id`) REFERENCES `patients`(`patient_id`);

ALTER TABLE `patient_medications` ADD CONSTRAINT `patient_medications_fk1` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor`(`doctor_id`);

