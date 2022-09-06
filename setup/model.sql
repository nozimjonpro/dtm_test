DROP DATABASE IF EXISTS dtm_uz;
CREATE DATABASE dtm_uz;

\c dtm_uz;

CREATE EXTENSION pgcrypto;

CREATE TYPE gender AS enum('male', 'female');
CREATE TYPE type AS enum('t', 'f');


DROP TABLE IF EXISTS users;
CREATE TABLE users(
   user_id serial primary key,
   username varchar(32) unique not null,
   email varchar(60) not null,
   password varchar(60) not null,
   gender varchar(20) not null,
   created_at timestamp default current_timestamp,
   status varchar(20) default 'active'
);

DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects(
   subject_id serial primary key,
   subject_name varchar(100) not null,
   status varchar(16) default 'active',
   subject_status varchar(5) not null,
   created_at timestamp default current_timestamp
);

DROP TABLE IF EXISTS faculties;
CREATE TABLE faculties(
   faculty_id serial primary key,
   faculty_name varchar not null,
   status varchar(16) default 'active',
   grant_score NUMERIC(4, 1) NOT NULL,
   contract_score NUMERIC(4, 1) NOT NULL,
   grant_number INT NOT NULL,
   contract_number INT NOT NULL,
   university_id int references universities(university_id),
   subject1_id int references subjects(subject_id),
   subject2_id int references subjects(subject_id)
);

DROP TABLE IF EXISTS universities;
CREATE TABLE universities(
   university_id serial primary key,
   university_name varchar not null,
   status varchar(16) default 'active',
   created_at timestamp default current_timestamp
);


   DROP TABLE IF EXISTS questions;
   CREATE TABLE questions(
      question_id serial primary key,
      question_name varchar not null,
      created_at timestamp default current_timestamp,
      status varchar(16) default 'active',
      subject_id int references subjects(subject_id)
   );

   DROP TABLE IF EXISTS variants;
   CREATE TABLE variants(
      variant_id serial primary key,
      variant varchar not null,
      type varchar(1) default 'f',
      created_at timestamp default current_timestamp,
      status varchar(16) default 'active',
      question_id int references questions(question_id)
   );


   -- DROP TABLE IF EXISTS enter_ball;
   -- CREATE TABLE enter_ball(
   --    ball_id serial primary key,
   --    min_ball int not null,
   --    max_ball int not null,
   --    status varchar(16) default 'active',
   --    faculty_id in references faculties(faculty_id)
   -- );


   -- DROP TABLE IF EXISTS victors;
   -- CREATE TABLE victors(
   --    victor_id serial primary key,
   --    spend_time time default current_time,
   --    date date,
   --    overall_mark int,
   --    user_id int references (user_id)
   -- );

   -- DROP TABLE IF EXISTS profile;
   -- CREATE TABLE profile(
   --    profile_id serial primary key,
   --    user_id int references users(user_id)
   --    university_id int universities (university_id)
   -- );

   -- DROP TABLE if EXISTS statistics;
   -- CREATE TABLE statistics(
   --    statistics_id serial primary key,
   --    grant_count int not null,
   --    contract_count int not null,
   --    grant_ball int not null,
   --    contract_ball int not null,
   --    faculty_id int references faculties(faculty_id)
   -- );


