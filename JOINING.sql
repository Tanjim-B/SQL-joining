CREATE TABLE doctor(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(40),
    mobile VARCHAR(11)
);

INSERT INTO doctor(NAME,mobile) VALUES('AAA','0000'),
('BBB','1111'),
('CCC','2222'),
('DDD','3333'),
('EEE','4444');

SELECT * FROM doctor;

CREATE TABLE patient_info(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pt_id INT NOT NULL,
    disease VARCHAR(20),
    address VARCHAR(40),
    FOREIGN KEY (pt_id) REFERENCES doctor(id)
);

INSERT INTO patient_info (pt_id,disease,address) VALUES
(1,'Flu','Uttara'),
(2,'Mumps','Gazipur'),
(4,'Fever','Uttara'),
(5,'Flu','Bonani');

SELECT * FROM patient_info;

SELECT * FROM doctor,patient_info  
WHERE doctor.id=patient_info.pt_id;

-- INNER JOIN

SELECT doctor.*,patient_info.* FROM  
doctor INNER JOIN patient_info   
ON doctor.id=patient_info.pt_id;

-- LEFT JOIN

SELECT doctor.*,patient_info.* FROM  
doctor LEFT JOIN patient_info 
ON doctor.id=patient_info.pt_id;

-- RIGHT JOIN

SELECT doctor.*,patient_info.* FROM  
doctor RIGHT JOIN patient_info  
ON doctor.id=patient_info.pt_id;

SELECT doctor.*,patient_info.* FROM  
patient_info RIGHT JOIN doctor  
ON doctor.id=patient_info.pt_id;

-- natural JOIN

SELECT * FROM  doctor,patient_info  
WHERE doctor.id=patient_info.pt_id
AND doctor.id=pt_id ORDER BY doctor.id ;
