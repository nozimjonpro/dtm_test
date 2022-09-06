

INSERT INTO users(username, email, password, gender) VALUES('Salim', 'salim@gmail.com', crypt('112233', gen_salt('bf')), 'male'), ('Qodir', 'qodir@gmail.com', crypt('112244', gen_salt('bf')), 'male');

INSERT INTO subjects(subject_name, subject_status) VALUES('maths', 'cal'), ('english', 'cal'), ('physics', 'cal'), ('biology', 'med'), ('chemistry', 'med');

INSERT INTO universities (university_name) VALUES 
    ('Toshkent Tibbiyot Akademiyasi'), 
    ('Toshkent Pediatriya Tibbiyot Instituti'), 
    ('Qoraqalpog`iston Tibbiyot Instituti'), 
    ('Toshkent Davlat Stomotologiya Instituti'), 
    ('Toshkent Farmatsevtika Instituti'),
    ('Toshkent Axborot Texnologiyalari Universiteti'), 
    ('Urganch Davlat Universiteti'), 
    ('Toshkent Moliya Instituti'), 
    ('Toshkent Davlat Iqtisodiyot Universiteti'), 
    ('O`zbekiston Milliy Universiteti');

--   Toshkent Tibbiy Akademiyasi mockdata

INSERT INTO 
faculties (
        faculty_name,
        grant_score,
        contract_score,
        grant_number,
        contract_number,
        university_id,
        subject1_id,
        subject2_id) VALUES 
    ('Tibbiy-biologik ish', 155.4, 128.1, 4, 55, 1, 5, 4), 
    ('Xalq tabobati', 134.4, 126.0, 10, 15, 1, 5, 4), 
    ('Biotibbiyot muhandisligi', 132.3, 126.0, 10, 15, 1, 5, 4), 
    ('Davolash ishi', 177.5, 156.5, 30, 300, 1, 5, 4);


-- Toshkent Pediatriya Tibbiyot Instituti mockdata

INSERT INTO 
faculties (
        faculty_name,
        grant_score,
        contract_score,
        grant_number,
        contract_number,
        university_id,
        subject1_id,
        subject2_id) VALUES 
  ('Tibbiy-biologik ish', 152.8, 129.2, 3, 34, 2, 5, 4), 
    ('Xalq tabobati', 132.3, 122.9, 10, 15, 2, 5, 4), 
    ('Pediatriya ishi', 162.8, 140.7, 25, 175, 2, 5, 4), 
    ('Davolash ishi', 162.8, 144.9, 10, 75, 2, 5, 4);

-- Qoraqalpog''iston Tibbiyot Instituti mockdata 

INSERT INTO 
faculties (
        faculty_name,
        grant_score,
        contract_score,
        grant_number,
        contract_number,
        university_id,
        subject1_id,
        subject2_id) VALUES 
('Stomatologiya (yo``nalishlar bo``yicha)', 148.1, 139.7, 5, 5, 3, 5, 4), 
('Farmatsiya (turlari bo``yicha)', 137.6, 130.2, 5, 5, 3, 5, 4), 
('Pediatriya ishi', 139.7, 130.2, 5, 22, 3, 5, 4), 
('Davolash ishi', 153.3, 136.5, 8, 22, 3, 5, 4);

-- Toshkent Davlat Stomotologiya Instituti mockdata

INSERT INTO 
faculties (
        faculty_name,
        grant_score,
        contract_score,
        grant_number,
        contract_number,
        university_id,
        subject1_id,
        subject2_id) VALUES
        ('Stomatologiya (yo``nalishlar bo``yicha)', 170.1, 154.4, 55, 72, 4, 5, 4),
  ('Xalq tabobati', 140.7, 129.2, 10, 15, 4, 5, 4);

--   Toshkent Farmatsevtika Instituti mockdata

INSERT INTO 
faculties (
        faculty_name,
        grant_score,
        contract_score,
        grant_number,
        contract_number,
        university_id,
        subject1_id,
        subject2_id) VALUES
            ('Biotexnologiya (farmatsevtik biotexnologiya)', 134.4, 126.0, 10, 15, 5, 5, 4), 
    ('Farmatsiya (turlari bo``yicha)', 143.9, 112.4, 70, 130, 5, 5, 4), 
    ('Sanoat farmatsiyasi (turlari bo``yicha)', 141.8, 122.9, 30, 120, 5, 5, 4);


-- Toshkent Axborot Texnologiyalari Universiteti mockdata

INSERT INTO 
faculties (
        faculty_name,
        grant_score,
        contract_score,
        grant_number,
        contract_number,
        university_id,
        subject1_id,
        subject2_id) VALUES
   ('Kiberxavfsizlik injiniringi', 160.7, 144.9, 14, 20, 6, 1, 3), 
    ('Kompyuter injiniringi: AT-Servis', 160.7, 112.4, 20, 75, 6, 1, 3), 
    ('Kompyuter injiniringi: “Kompyuter injiniringi”', 160.7, 113.4, 30, 75, 6, 1, 3), 
    ('Dasturiy injiniring', 168.0, 123.9, 35, 100, 6, 1, 3), 
    ('Sun``iy intellekt)', 160.6, 119.7, 7, 23, 6, 1, 3);

-- Urganch Davlat Universiteti mockdata


INSERT INTO 
faculties (
        faculty_name,
        grant_score,
        contract_score,
        grant_number,
        contract_number,
        university_id,
        subject1_id,
        subject2_id) VALUES
('Fizika', 130.2, 79.8, 20, 60, 7, 3, 1), 
    ('Matematika', 142.8, 101.9, 35, 45, 7, 1, 3), 
    ('Biologiya (turlari bo``yicha)', 120.8, 104.0, 25, 55, 7, 4, 5), 
    ('Kimyo (turlari bo``yicha)', 106.1, 74.6, 25, 55, 7, 5, 4), 
    ('Iqtisodiyot (tarmoqlar va sohalar bo``yicha)', 172.2, 135.5, 5, 45, 7, 1, 2);

--     Toshkent Moliya Instituti mockdata 

INSERT INTO 
faculties (
        faculty_name,
        grant_score,
        contract_score,
        grant_number,
        contract_number,
        university_id,
        subject1_id,
        subject2_id) VALUES
    ('Budjet nazorati va g''aznachiligi', 173.3, 121.8, 3, 47, 8, 1, 2), 
    ('Buxgalteriya hisobi va audit (tarmoqlar bo``yicha)', 180.6, 151.2, 3, 47, 8, 1, 2), 
    ('Elektron tijorat ', 164.9, 106.1, 5, 20, 8, 1, 2), 
    ('Bank ishi va auditi', 182.7, 148.1, 3, 47, 8, 1, 2), 
    ('Iqtisodiyot (tarmoqlar va sohalar bo``yicha)', 182.7, 158.6, 3, 10, 8, 1, 2);


-- Toshkent Davlat Iqtisodiyot Universiteti mockdata 

INSERT INTO 
faculties (
        faculty_name,
        grant_score,
        contract_score,
        grant_number,
        contract_number,
        university_id,
        subject1_id,
        subject2_id) VALUES
   ('Korporativ boshqaruv', 171.2, 146.0, 4, 11, 9, 1, 2), 
    ('Buxgalteriya hisobi va audit (tarmoqlar bo``yicha)', 180.6, 146.0, 5, 45, 9, 1, 2), 
    ('Marketing (tarmoqlar va sohalar bo``yicha) ', 174.3, 126.0, 3, 32, 9, 1, 2), 
    ('Iqtisodiy xavfsizlik', 171.2, 149.5, 4, 11, 9, 1, 2), 
    ('Iqtisodiyot (tarmoqlar va sohalar bo``yicha)', 183.8, 156.5, 5, 70, 9, 1, 2);


--     O''zbekiston Milliy Universiteti mockdata


INSERT INTO 
faculties (
        faculty_name,
        grant_score,
        contract_score,
        grant_number,
        contract_number,
        university_id,
        subject1_id,
        subject2_id) VALUES
      ('Fizika', 156.5, 92.4, 50, 140, 10, 3, 1), 
    ('Matematika', 167.0, 131.3, 40, 60, 10, 1, 3), 
    ('Neft va gaz kimyosi', 107.1, 70.4, 20, 55, 10, 5, 4), 
    ('Kimyo (turlari bo``yicha)', 131.3, 78.8, 43, 132, 10, 5, 4), 
    ('Iqtisodiyot (tarmoqlar va sohalar bo``yicha)', 177.5, 146.0, 3, 27, 10, 1, 2);

INSERT INTO questions(question_name, subject_id) VALUES('10 + 10 = ?', 1), ('10 + x = 20', 1),
('what do you like ?', 2), ('what is your name ?', 2), ('Erkin tushihs tezlanish nima ?', 3),
('Nyutonning ikkinchi qonuni nima ?', 3), ('Fotosintez nima ?', 4), ('To''qimalar turlari', 4),
('Metan elementi nimadan tashkil topgan ?', 5), ('Onorganik kimyo nima ?', 5);

INSERT INTO variants(variant, question_id) VALUES('78', 1), ('34', 1), ('23', 1), ('78', 2), ('34', 2), ('23', 2), 
('i liked elephantsql', 3), ('i will like giraffe', 3), ('i should like', 3),
('my name is you', 4), ('your name is you', 4), ('her name is her', 4), 
('jismning uchib tushishi', 5), ('jismning ucishi', 5), ('jismning yerga tushishi', 5),
('kuch haqida', 6), ('unday qonun yoq', 6), ('jismlar tortishishi', 6),
('barcha javob togri', 7), ('a javob togri', 7), ('b javob togri', 7),
('bilmayman', 8), ('barcha javob togri', 7), ('a javob togri', 8),
('barcha javob togri', 9), ('togri javob keltirilmagan', 9), ('javob savol bilan', 9),
('kimyoning bitta turida', 10), ('a javob togri', 10), ('hamma javob xato', 10);
    

