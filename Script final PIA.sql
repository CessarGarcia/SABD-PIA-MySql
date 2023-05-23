drop schema if exists hospital_model; 
create schema hospital_model;
use hospital_model;

									-- CREACION DE TABLAS
-- Table: pacientes
CREATE TABLE `PACIENTES` (
  `patient_Id` int UNIQUE NOT NULL AUTO_INCREMENT,
  `name` varchar(50),
  `blood_type` varchar(10),
  `age` int,
  `phone_number` varchar(10),
  `nacionality` varchar(20),
  `date_Of_Admission` timestamp,
  CONSTRAINT PK_PACIENTES PRIMARY KEY (patient_Id)
);

-- Table: cuartos
CREATE TABLE `ROOMS` (
  `patient_Id` int,
  `floor_number` int,
  `room_number` int,
  CONSTRAINT PK_ROOMS PRIMARY KEY (patient_Id)
);

-- Table: historial medico
CREATE TABLE `MEDICAL_HISTORY` (
  `patient_Id` int,
  `doctor_id` int,
  `treatment` varchar(50),
  `disease` varchar(50)
);

-- Table: doctor
CREATE TABLE `DOCTOR` (
  `doctor_id` int UNIQUE,
  `name` varchar(50),
  `phone_number` varchar(10),
  `identification_card` int,
  `specialty` varchar(20),
  CONSTRAINT PK_DOCTOR PRIMARY KEY (doctor_id)
);

-- foreign keys
-- Reference: FK_ROOMS_patient_Id (table: ROOMS)
ALTER TABLE ROOMS ADD CONSTRAINT FK_rooms_patient_Id FOREIGN KEY (patient_Id)
REFERENCES PACIENTES (patient_Id);

-- Reference: FK_MEDICAL_HISTORY_doctor_id (table: MEDICAL_HISTORY)
ALTER TABLE MEDICAL_HISTORY ADD CONSTRAINT FK_MEDICAL_HISTORY_patient_Id FOREIGN KEY (patient_Id)
REFERENCES PACIENTES (patient_Id);

-- Reference: FK_MEDICAL_HISTORY_doctor_id (table: DOCTOR)
ALTER TABLE MEDICAL_HISTORY ADD CONSTRAINT FK_MEDICAL_HISTORY_doctor_id FOREIGN KEY (doctor_id)
REFERENCES DOCTOR (doctor_id);
										-- END CREATE TABLA.
	
    
    
										-- INSERT DATA
-- Insert table PACIENTES
insert into PACIENTES (Patient_Id, name, blood_type, age, phone_number, nacionality, date_Of_Admission)
values (1, "Gael Patricio", "O+", 18, "8147659937", "Mexico", CURRENT_TIMESTAMP);
insert into Pacientes (Patient_Id, name, blood_type, age, phone_number, nacionality, date_Of_Admission)
values (2, "Marisa Thayre", "A+", 54, "4847457994", "Brasil", CURRENT_TIMESTAMP);
insert into Pacientes (Patient_Id, name, blood_type, age, phone_number, nacionality, date_Of_Admission)
values (3, "Kamila McDarmid", "AB+", 34, "6227922781", "Paraguay", CURRENT_TIMESTAMP);
insert into Pacientes (Patient_Id, name, blood_type, age, phone_number, nacionality, date_Of_Admission)
values (4, "Ronny Clynman", "B+", 61, "9228398450", "Bolivia", CURRENT_TIMESTAMP);
insert into Pacientes (Patient_Id, name, blood_type, age, phone_number, nacionality, date_Of_Admission)
values (5, "Addi McDaid", "O-", 46, "4159973426", "Estados Unidos", CURRENT_TIMESTAMP);
insert into Pacientes (Patient_Id, name, blood_type, age, phone_number, nacionality, date_Of_Admission)
values (6, "Israel Deplacido", "B-", 62, "6981245868", "Argentina", CURRENT_TIMESTAMP);
insert into Pacientes (Patient_Id, name, blood_type, age, phone_number, nacionality, date_Of_Admission)
values (7, "Hebert Sainsberry", "A-", 6, "4083152699", "Venezuela", CURRENT_TIMESTAMP);

insert into Pacientes values 
	(8, "Ajay Bleiman", "AB-", 36, "7365459417", "Mexico", CURRENT_TIMESTAMP),
	(9, "Vale Vale", "A-", 34, "2074836244", "Perú", CURRENT_TIMESTAMP),
	(10, "Felipe Terzo", "O-", 47, "1607327562", "El salvador", CURRENT_TIMESTAMP),
	(11, "Vale Vale", "B+", 34, "2924329663", "Panama", CURRENT_TIMESTAMP),
	(12, "Vale Vale", "AB-", 94, "2950486428", "Nicaragua", CURRENT_TIMESTAMP),
	(13, "Brandon Kevane", "A-", 66, "2196067121", "Guatemala", CURRENT_TIMESTAMP),
	(14, "Vale Vale", "O-", 78, "9670719275", "Ecuador", CURRENT_TIMESTAMP),
	(15, "Lucienne Gell", "A+", 87, "9670719275", "Chile", CURRENT_TIMESTAMP),
	(16, "Nessy Gilfoy", "AB+", 7, "3543059146", "Republica Dominicana", CURRENT_TIMESTAMP),
	(17, "Maria Kevane", "O+", 17, "8288731368", "Honduras", CURRENT_TIMESTAMP),
	(18, "Jullisa Guare", "B+", 31, "3684539228", "Uruguay", CURRENT_TIMESTAMP), 
	(19, "Veronica Scading", "B+", 47, "1607327562", "Costa Rica", CURRENT_TIMESTAMP),
	(20, "Adolphe Gaishson", "B+", 47, "4488987427", "Canada", CURRENT_TIMESTAMP),
    (21, "Patricio Rodriguez", "O+", 38, "8165843087", "Canada", CURRENT_TIMESTAMP);

-- insert table Rooms
insert into ROOMS (patient_Id, floor_number, room_number) values (6, 1, 1);
insert into ROOMS values
			(14, 1, 2), (19, 1, 3), (8, 1, 4), (7, 2, 1),
            (16, 2, 2), (4, 2, 3), (9, 2, 4), (5, 3, 1),
            (15, 3, 2), (3, 3, 3), (12, 3, 4), (13, 4, 1),
            (2, 4, 2), (17, 4, 3), (20, 4, 4), (10, 5, 1),
            (18, 5, 2), (1, 5, 3), (11, 5, 4);

-- insert table DOCTOR
insert into Doctor (doctor_id, name, phone_number, identification_card, specialty) values 
		(1, "Zaria Barby", "4783444086", "25561171", "Cardiología"),
        (2, "Karl Sherman", "7775688956", "10666542", "Pediatra"),
        (3, "Angela Paulino", "4343328160", "27837346", "neurocirugía"),
        (4, "Willy Shoulders", "4136686461", "20630545", "Psiquiatría"),
        (5, "Alexis Beedle", "3438372183", "16305946", "otología"),
        (6, "Raimundo Brandel", "3535999587", "10794593", "Virología"),
        (7, "Clarissa de Milam ", "781234563", "12684126", "Psiquiatría"),
        (8, "Joseph Darrington", "4652857749", "20282110", "Pediatra"),
        (9, "Caterin Luckie", "7526751677", "10184983", "Cardiología");
        
insert into Doctor values
        (10, "Alissa Berard", "4455847361", "13113024", "Geriatría"),
        (11, "Pedro Cabrer", "5911284274", "18687193", "Enfermeria General"),
        (12, "Jaquelin Pierse", "5065328199", "10167862", "otología"),
        (13, "Maria Bernardo", "7562043016", "10525043", "nutriologa"),
        (14, "Tony Sarath", "8283707226", "13590734", "Psiquiatría"),
        (15, "Keyla Bonavia", "7655705775", "22107947", "Virología"),
        (16, "Martha Barby", "5444468177", "10530385", "Enfermeria General"),
        (17, "Annissa Barby", "8192330934", "22357082", "nutriologa"),
        (18, "Bella Barby", "8108177619", "11100745", "Dermatología"),
        (19, "Stephi Barby", "7529984062", "10136442", "Geriatría"),
        (20, "Andres Barby", "4884461258", "10785263", "Dermatología");

-- insert table MEDICAL_HISTORY
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (1, 16, "Farmacos", "Cuidado Personal");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (2, 14, "Farmacos", "depresion");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (3, 20, "Antibióticos", "Acné");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (4, 15, "farmacos antivirales", "influenza");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (5, 3, "homeopatia", "Prolactinoma");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (6, 1, "Atencion Quirúgica", "Insuficiencia cardiaca");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (7, 2, "Internación", "tos ferina");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (8, 19, "Terapia Fisica", "Artritis");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (9, 6, "farmacos antivirales", "influenza");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (10, 5, "terapia farmacológica", "Otitis");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (11, 12, "terapia farmacológica", "Otitis");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (12, 18, "Antibióticos", "Acné");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (13, 4, "farmacos", "depresion");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (14, 9, "Atencion Quirúgica", "Insuficiencia cardiaca");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (15, 7, "homeopatia", "Prolactinoma");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (16, 8, "Internación", "tos ferina");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (17, 13, "Fármacos antianémicos", "Anemia");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (18, 11, "Farmacos", "Cuidado personal");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (19, 10, "Terapia Fisica", "Artritis");
insert into Medical_History (patient_id, doctor_id, treatment, disease) 
values (20, 17, "Fármacos antianémicos", "Anemia");
										-- END INSERT DATA

										-- CREATE VIEWS
CREATE OR REPLACE VIEW rooms_Pacientes_View as
select rooms.patient_Id, pacientes.name, rooms.floor_number, rooms.room_number
from rooms rooms
INNER JOIN pacientes pacientes
ON rooms.patient_Id = pacientes.patient_Id;

CREATE OR REPLACE VIEW pacientes_History_View as
select a.patient_Id, a.name, b.treatment, b.disease
from pacientes a
inner join medical_history b
ON b.patient_Id = a.patient_Id;

CREATE OR REPLACE VIEW doctor_datos as
select mh.doctor_id, d.name
from doctor d
inner join medical_history mh
ON d.doctor_id = mh.doctor_id;

CREATE OR REPLACE VIEW pacientes_datos as
select mh.patient_Id, p.name
from pacientes p
inner join medical_history mh
ON p.patient_Id = mh.patient_Id;
									-- END CREATE VIEWS

				
									-- CREATE FUNCTIONS
DELIMITER $$

-- Funcion que devuelve los datos del doctor por su id
CREATE FUNCTION `GET_doctor`(Id_doctor int) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	declare datos_doctor varchar(255);
    SELECT CONCAT('ID Doctor: ', doctor_id, '\nNombre: ', name, '\nPhone Number: ', phone_number,
					'\nidentification_card: ', identification_card, '\nSpecialty: ', specialty
                ) 
                INTO datos_doctor
    from doctor where doctor_id = Id_doctor;
	RETURN datos_doctor;
END $$

-- Funcion que devuelve los datos del paciente por su id
CREATE FUNCTION `GET_Pacientes`(Id_paciente int) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE datos_paciente VARCHAR(255);
    SELECT CONCAT('Name: ', name, '\nBlood Type: ', blood_type, '\nAge: ', age, '\nPhone Number: ', phone_number, '\nNationality: ', nacionality, '\nDate of Admission: ', date_Of_Admission) INTO datos_paciente
	FROM pacientes
    where Id_paciente = patient_Id;
    return datos_paciente;
END $$

DELIMITER ;
											-- END CREATE FUNCTIONS


											-- PROCEDIMIENTOS ALMACENADOS
DELIMITER $$

-- SP para dar de alta un paciente
CREATE PROCEDURE `POST_pacientes_SP`(
                IN nombre varchar (50),
                IN tipo_sangre varchar (50),
                IN edad varchar (50),
                IN numero_telefono varchar (50),
                IN nacionalidad varchar (50)
                )
BEGIN
	declare ID_paciente int;
    set ID_paciente = (select max(patient_Id) from pacientes) + 1;
    if nombre = '' || tipo_sangre = '' || edad = '' || numero_telefono = '' || nacionalidad = ''
		then select "Error, algun campo esta vacio";
	else 
		insert into pacientes (patient_Id, name, blood_type, age, phone_number, nacionality, date_Of_Admission)
        values (ID_paciente, nombre, tipo_sangre, edad, numero_telefono, nacionalidad, NOW());
    end if;
    select * from pacientes;
END $$

-- SP para actualizar el historial medico de un paciente 
CREATE DEFINER=`root`@`localhost` PROCEDURE `PUT_medical_history_SP`(
				IN Id_patient int, 
				IN Id_doctor int,
                IN tratamiento varchar(50),
                IN enfermedad varchar(50)
				)
BEGIN  
    UPDATE medical_history 
    SET treatment = tratamiento, disease = enfermedad, doctor_id = Id_doctor
    WHERE patient_Id = Id_patient;
    SELECT * FROM medical_history;
END $$

-- SP para eliminar un doctor
CREATE DEFINER=`root`@`localhost` PROCEDURE `DELETE_doctor_SP`(IN Id_doctor int)
BEGIN	
	if Id_doctor IS NULL then 
		select "Error: Ingrese el id del doctor correctamente";
    else 
		-- Primero elimina los registros de la tabla secundaria 
		DELETE from medical_history where doctor_id = Id_doctor;
        
        -- Luego elimina los registros principal de la tabla
        DELETE from doctor where doctor_id = Id_doctor;
    end if;
    SELECT 'El registro se eliminó correctamente';
    select * from doctor;
END $$

DELIMITER ;
			
											-- END PROCESAMIENTO ALMACENADO
                                            
                                            
                                            -- TRIGGERS
-- Creacion de la tabla audit_log
CREATE TABLE audit_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    table_name VARCHAR(50) NOT NULL,
    action_type VARCHAR(10) NOT NULL,
    change_date DATETIME NOT NULL,
    user_name VARCHAR(50) NOT NULL
);

DELIMITER $$
CREATE TRIGGER pacientes_after_insert_trigger
AFTER INSERT ON pacientes
FOR EACH ROW
BEGIN
    DECLARE change_date DATETIME;
    DECLARE user_name VARCHAR(50);

    SET change_date = NOW();  -- Fecha actual
    SET user_name = USER();   -- Usuario actual

    -- Insertar en una tabla de registro de cambios (audit_log)
    INSERT INTO audit_log (table_name, action_type, change_date, user_name)
    VALUES ('pacientes', 'INSERT', change_date, user_name);
END $$

-- Trigger after update de los pacientes
CREATE TRIGGER pacientes_after_update_trigger
AFTER UPDATE ON pacientes
FOR EACH ROW
BEGIN
    DECLARE change_date DATETIME;
    DECLARE user_name VARCHAR(50);

    SET change_date = NOW();  -- Fecha actual
    SET user_name = USER();   -- Usuario actual

    -- Insertar en una tabla de registro de cambios (audit_log)
    INSERT INTO audit_log (table_name, action_type, change_date, user_name)
    VALUES ('pacientes', 'UPDATE', change_date, user_name);
END $$

-- Trigger after delete de los pacientes
CREATE TRIGGER pacientes_after_delete_trigger
AFTER DELETE ON pacientes
FOR EACH ROW
BEGIN
    DECLARE change_date DATETIME;
    DECLARE user_name VARCHAR(50);

    SET change_date = NOW();  -- Fecha actual
    SET user_name = USER();   -- Usuario actual

    -- Insertar en una tabla de registro de cambios (audit_log)
    INSERT INTO audit_log (table_name, action_type, change_date, user_name)
    VALUES ('pacientes', 'DELETE', change_date, user_name);
END $$
DELIMITER ;
										-- END TRIGGERS
                                        
                                        
                                        -- SUBLENGUAJES TCL
/* 1er problema:
		En la primera tabla de la BD, Iniciar una transaction si tiene registros debera eliminar algunos de ellos, 
        Dejar comentada Rollback y commit 
        Dejar comenta las lineas para reinsertar lo eliminado
*/

start transaction;
delete from audit_log
where id = 2;
select * from audit_log;
commit;

-- rollback;
-- commit;

-- CODIGO PARA INSERTAR NUEVAMENTE EL CAMPO ELIMINADO
-- start transaction;
-- insert into audit_log values ("2", "medical_history", "INSERT", NOW(), user());
-- select * from audit_log;
-- commit;

/*	Problema 2:
		En la segunda tabla (doctor) iniciar una transiccion e insertar 8 registros
        agrega un savepont posterior al registro 4
        y otro savepoint posterior al registro 8
        
        Agregar en una linea comentada la sentencia de eliminacion del savepoint de los primeros 4 registros insertados
*/

START TRANSACTION;
savepoint lote_1;
INSERT INTO DOCTOR (doctor_id, name, phone_number, identification_card, specialty) 
values (20, "Andres Barby", "4884461258", "10785263", "Dermatología");
INSERT INTO DOCTOR (doctor_id, name, phone_number, identification_card, specialty) 
VALUES (21, "Gemma Shannon", "7735567130", "11284794", "Alergología");
INSERT INTO DOCTOR (doctor_id, name, phone_number, identification_card, specialty) 
VALUES (22, "Judah Chapman", "4245335723", "10423295", "Anestesiología");
INSERT INTO DOCTOR (doctor_id, name, phone_number, identification_card, specialty) 
VALUES (23, "Phoebe Maxwell", "6718374671", "10987415", "Cardiología");


savepoint lote_2;
INSERT INTO DOCTOR (doctor_id, name, phone_number, identification_card, specialty) 
VALUES (24, "Maya Goff", "4367910848", "12685370", "Endocrinología");
INSERT INTO DOCTOR (doctor_id, name, phone_number, identification_card, specialty) 
VALUES 	(25, "Charles Randolph", "6517735537", "16594828", "Gastroenterología");
INSERT INTO DOCTOR (doctor_id, name, phone_number, identification_card, specialty) 
VALUES 	(26, "Dane Bernard", "4894647217", "12980864", "Geriatría");
INSERT INTO DOCTOR (doctor_id, name, phone_number, identification_card, specialty) 
VALUES 	(27, "Nolan Castaneda", "7626371312", "15948542", "hemoterapia");

select * from doctor;

-- rollback to lote_1;
-- rollback to lote_2;
-- commit;