USE ostad_assignments2;
-- google_salaries
CREATE TABLE google_salaries (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    education VARCHAR(50),
    salary INT
);

INSERT INTO google_salaries VALUES
(376, 'Gary', 'Stokes', 'Accounting', 'Master', 56760),
(377, 'Lorenzo', 'Cortez', 'Accounting', 'Doctorate', 74127),
(378, 'Roberta', 'Mcgee', 'Administration', 'Primary', 23987),
(379, 'Myrtle', 'Munoz', 'Administration', 'Primary', 31079),
(380, 'Molly', 'Walker', 'Administration', 'Primary', 20725),
(381, 'Maria', 'Simmons', 'Administration', 'Secondary', 39723),
(382, 'Muriel', 'Hernandez', 'Administration', 'Bachelor', 58555),
(383, 'Andres', 'Watson', 'BI', 'Bachelor', 56834),
(384, 'Wayne', 'Leonard', 'BI', 'Master', 65180),
(385, 'Julius', 'Poole', 'BI', 'Master', 55842),
(386, 'Louis', 'Baker', 'Facilities', 'Primary', 31158),
(387, 'Sandra', 'Wright', 'HR', 'Primary', 24082),
(388, 'Jenny', 'Peterson', 'HR', 'Secondary', 31098),
(389, 'Ellis', 'Hodges', 'HR', 'Secondary', 38128),
(390, 'Larry', 'Jacobs', 'IT', 'Secondary', 33544),
(391, 'Milton', 'Pratt', 'IT', 'Secondary', 35476),
(392, 'Marvin', 'Gilbert', 'IT', 'Bachelor', 41147),
(393, 'Geoffrey', 'Montgomery', 'IT', 'Bachelor', 47757),
(394, 'Anne', 'Mann', 'IT', 'Master', 54863),
(395, 'Marjorie', 'Malone', 'Legal', 'Bachelor', 45149),
(396, 'Erika', 'Fuller', 'Legal', 'Master', 53391),
(397, 'Guadalupe', 'Shaw', 'Legal', 'Doctorate', 62994),
(398, 'Benny', 'Scott', 'Legal', 'Doctorate', 77474),
(399, 'Geraldine', 'Stewart', 'Management', 'Doctorate', 79689),
(400, 'Sylvia', 'Ingram', 'Management', 'Doctorate', 75944);

-- google_laptop
CREATE TABLE google_laptop (
    laptop_id INT PRIMARY KEY,
    emp_id INT,
    brand VARCHAR(50),
    price INT
);

INSERT INTO google_laptop VALUES
(100, 376, 'Bran1', 567600),
(101, 377, 'Bran3', 741270),
(102, 378, 'Bran4', 239870),
(103, 379, 'Bran10', 310790),
(104, 380, 'Bran2', 207250),
(105, 381, 'Bran5', 397230),
(106, 382, 'Bran8', 585550),
(107, 383, 'Bran9', 568340),
(108, 384, 'Bran7', 651800),
(109, 385, 'Bran6', 558420);

-- Write the join query for which employee is assigned for which laptop
SELECT 
    l.laptop_id AS LaptopId,
    l.emp_id AS Empid,
    l.brand AS Brand,
    l.price AS Price,
    s.first_name,
    s.last_name
FROM 
    google_laptop l
JOIN 
    google_salaries s
ON 
    l.emp_id = s.id;