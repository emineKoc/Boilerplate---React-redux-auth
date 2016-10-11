INSERT INTO Users (name, last_name, email, password, type) VALUES
('jim', 'jim-last', 'jim@jim.com', '23242sdsdsds', 'employer'),
('raz', 'raz-last', 'raz@raz.com', 'dsdsdsdsds', 'employer'),
('emi', 'emi-last', 'emi@emi.com', 'dsdsdsdsdsdsdsds', 'applicant'),
('emine', 'emine-last', 'emine@emine.com', '44dsdsds', 'applicant');


INSERT INTO Employers (company_name,company_address,company_description,company_website,company_phone_number,company_email,company_logo) VALUES
('company X', 'somewhere in NJ', 'Accounting', 'www.xyz.com', '21221212121', 'x@x.com', 'logo.png'),
('company Y', 'somewhere in NJ', 'Accounting', 'www.xyz.com', '21221212121', 'y@x.com', 'logo.png'),
('company Z', 'somewhere in NY', 'Accounting', 'www.xyz.com', '21221212121', 'z@x.com', 'logo.png'),
('company F', 'somewhere in NY', 'Accounting', 'www.xyz.com', '21221212121', 'f@x.com', 'logo.png'),
('company E', 'somewhere in NY', 'Accounting', 'www.xyz.com', '21221212121', 'e@x.com', 'logo.png');


INSERT INTO Applicants (user_id,desired_industry,desired_location,skills,education,experience,certifications,resume_pdf,image)  VALUES
('1', 'Finance', 'New York', 'Programming', 'General Assembly', 'xyz company, tyes company', 'spa', 'rere.pdf','sasa.png'),
('3', 'Enternatinment', 'New York', 'Programming', 'General Assembly', 'xyz company, tyes company', 'spa', 'rere.pdf','sasa.png'),
('2', 'Health', 'New York', 'Programming', 'General Assembly', 'xyz company, tyes company', 'spa', 'rere.pdf','sasa.png');


INSERT INTO Jobs (employer_id,title,description,location,type,industry,salary,experience_level,education_level,starting_date, status) VALUES
('1', 'Finance Manager', 'dskdslds dsdsds dsds', 'New York', 'Full Time', 'Finance', '$120.000', '5 years','masters degree', 'asap', 'active'),
('2', 'Finance Manager', 'dskdslds dsdsds dsds', 'New York', 'Full Time', 'Finance', '$120.000', '5 years','masters degree', 'asap', 'active'),
('2', 'Finance Manager', 'dskdslds dsdsds dsds', 'New York', 'Full Time', 'Finance', '$120.000', '5 years','masters degree', 'asap', 'active'),
('3', 'Finance Manager', 'dskdslds dsdsds dsds', 'New York', 'Full Time', 'Finance', '$120.000', '5 years','masters degree', 'asap', 'active'),
(5, 'Finance Manager', 'dskdslds dsdsds dsds', 'New York', 'Full Time', 'Finance', '$120.000', '5 years','masters degree', 'asap', 'active');


INSERT INTO JT (user_id , employer_id) VALUES
(1,2),
(1,4),
(1,5);

INSERT INTO Applications (applicant_id,job_id,status) VALUES
(2,1,'pending'),
(2,3,'pending'),
(1,3,'pending'),
(1,1,'pending');

INSERT INTO Networking_Status (applicant_id,employer_id) VALUES
(1,1),
(1,2),
(1,3);

INSERT INTO Applicants (user_id,first_name,last_name,desired_industry,desired_location,school,education_level, experience_level,certifications,languages_spoken, resume_pdf, profile_image ) VALUES
('2','Jimmy','Lin','{"Finance"}','{"New York", "New Jersey", "London"}','Pace University','MBA','2 Years','{"CPA", "CFA", "PFS"}', '{"TURKISH", "ENGLISH", "CHINESE"}', 'EMINEKOC.PDF', 'images/img_placeholders/150x150.jpg');
('1','emine','koc','{"health"}','{"new york", "new jersey"}','{"html","JS","Ruby"}','Entry Level','2 Years','{"GBA"}', '{"Chineese", "ENGLISH"}', 'EMINEKOC.PDF', 'EMINE.JPG'),
('2','jimmy','LIN','{"finance"}','{"new york", "new jersey"}','{"html","JS","Ruby"}','Entry Level','2 Years','{"GBA"}', '{"TURKISH", "ENGLISH"}', 'EMINEKOC.PDF', 'EMINE.JPG');

INSERT INTO Messages(sender,receiver,message) VALUES
(1,2,'Hi'),
(2,1,'Who are you?'),
(1,2,'I am noOne'),
(2,1,'So Silly');
