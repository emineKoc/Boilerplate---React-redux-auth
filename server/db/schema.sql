DROP TABLE if EXISTS Users CASCADE;
DROP TABLE if EXISTS Employers CASCADE;
DROP TABLE if EXISTS Applicants CASCADE;
DROP TABLE if EXISTS Jobs CASCADE;
DROP TABLE if EXISTS Messages CASCADE;
DROP TABLE if EXISTS JT CASCADE;
DROP TABLE if EXISTS Applications CASCADE;
DROP TABLE if EXISTS Networking_Status CASCADE;


CREATE TABLE Users (
  id SERIAL PRIMARY KEY UNIQUE,
  name VARCHAR(200),
  last_name VARCHAR(200),
  email VARCHAR(200) UNIQUE,
  password VARCHAR(200),
  type VARCHAR(200)
);

CREATE TABLE Employers (
  id SERIAL PRIMARY KEY UNIQUE,
  company_name VARCHAR(200),
  company_address VARCHAR(200),
  company_description VARCHAR(200),
  company_website VARCHAR(100),
  company_phone_number VARCHAR(200),
  company_email VARCHAR(2000),
  company_logo VARCHAR(200)
);

CREATE TABLE JT (
  user_id INTEGER REFERENCES Users (id) ON DELETE CASCADE,
  employer_id INTEGER REFERENCES Employers (id) ON DELETE CASCADE,
  PRIMARY KEY (user_id, employer_id)
);

CREATE TABLE Applicants (
  id SERIAL PRIMARY KEY UNIQUE,
  user_id INTEGER REFERENCES Users (id) ON DELETE CASCADE,
  first_name VARCHAR(200),
  last_name VARCHAR(200),
  desired_industry text,
  desired_location text[],
  education_level VARCHAR(200),
  school VARCHAR(200),
  experience_level VARCHAR(200),
  certifications text[],
  languages_spoken text[],
  resume_pdf VARCHAR(2000),
  profile_image VARCHAR(200)
);

CREATE TABLE Jobs (
  id SERIAL PRIMARY KEY UNIQUE,
  employer_id INTEGER REFERENCES Employers (id) ON DELETE CASCADE,
  title VARCHAR(200),
  description VARCHAR(3500),
  location VARCHAR(200),
  type VARCHAR(200),
  industry VARCHAR(200),
  salary VARCHAR(200),
  experience_level VARCHAR(2000),
  education_level VARCHAR(200),
  starting_date VARCHAR(200),
  status VARCHAR(20)
);

CREATE TABLE Applications (
  applicant_id INTEGER REFERENCES Applicants (id) ON DELETE CASCADE,
  job_id INTEGER REFERENCES Jobs (id) ON DELETE CASCADE,
  status VARCHAR(20),
  PRIMARY KEY (applicant_id, job_id)
);

CREATE TABLE Networking_Status (
  applicant_id INTEGER REFERENCES Users (id) ON DELETE CASCADE,
  employer_id INTEGER REFERENCES Users (id) ON DELETE CASCADE,
  PRIMARY KEY (applicant_id, employer_id)
);

CREATE TABLE Messages (
  id SERIAL PRIMARY KEY UNIQUE,
  sender INTEGER REFERENCES Users (id) ON DELETE CASCADE,
  receiver INTEGER REFERENCES Users (id) ON DELETE CASCADE,
  message VARCHAR(3500)
);
