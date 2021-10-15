CREATE DATABASE taxi;
CREATE TABLE cars(
    id BIGSERIAL PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(50),
    fuel VARCHAR(50),
    volume INTEGER,
    transmission VARCHAR(50),
    year VARCHAR(5),
    color VARCHAR(50)
);

INSERT INTO cars(brand, model, fuel, volume, transmission, year, color) VALUES ('BMW', 'x5','бензин', 50, 'автомат', 'черный');
INSERT INTO cars(brand, model, fuel, volume, transmission, year, color) VALUES ('Mercedes', 's350', 'дизель', 45, 'механика', 'белый');
INSERT INTO cars(brand, model, fuel, volume, transmission, year, color) VALUES ('Toyota', 'Camry', 'электричество', 32, 'механика', 'фиолетовый');
INSERT INTO cars(brand, model, fuel, volume, transmission, year, color) VALUES ('Mersedes', 'Benz','бензин', 50, 'механика', 'белый');
INSERT INTO cars(brand, model, fuel, volume, transmission, year, color) VALUES ('Lambirgini', 'Huragan', 'электричество', 65, 'механика', 'красный');
INSERT INTO cars(brand, model, fuel, volume, transmission, year, color) VALUES ('Porshe', '911', 'дизель', 32, 'механика', 'желтый');
INSERT INTO cars(brand, model, fuel, volume, transmission, year, color) VALUES ('Toyota', 'Camry 3.5','бензин', 29, 'автомат', 'черный');
INSERT INTO cars(brand, model, fuel, volume, transmission, year, color) VALUES ('Audi', 'R8', 'дизель', 41, 'механика', 'хомелеон');
INSERT INTO cars(brand, model, fuel, volume, transmission, year, color) VALUES ('Audi', 'q5', 'электричество', 32, 'механика', 'фиолетовый');
INSERT INTO cars(brand, model, fuel, volume, transmission, year, color) VALUES ('Tiko', 'matiz','бензин', 15, 'механика', 'зеленый');


CREATE TABLE drivers(
    id BIGSERIAL PRIMARY KEY, 
    name VARCHAR(50),
    surname VARCHAR(50),
    data_of_birth DATE,
    experience INTEGER,
    gender VARCHAR(10),
    id_car INTEGER REFERENCES cars(id)
);
CREATE TABLE operators(
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50), 
    surname VARCHAR(50), 
    data_of_birth DATE, 
    gender VARCHAR(10)
);

INSERT INTO drivers(name, surname, data_of_birth, experience, gender, id_car) VALUES ('Баха', 'Сулайманов', '1992-12-11', 12, 'Мужчина', 3);
INSERT INTO drivers(name, surname, data_of_birth, experience, gender, id_car) VALUES ('Бекзат', 'Султанбеков', '2006-01-01', 1, 'Мужчина', 2);
INSERT INTO drivers(name, surname, data_of_birth, experience, gender, id_car) VALUES ('Сорвиноз', 'Unknow', '1997-04-08', 3, 'Женшина', 1);
INSERT INTO drivers(name, surname, data_of_birth, experience, gender, id_car) VALUES ('Tony', 'Stark', '1986-02-12', 16, 'Мужчина', 4);
INSERT INTO drivers(name, surname, data_of_birth, experience, gender, id_car) VALUES ('Halk', 'Green', '1985-09-18', 3, 'Мужчина', 1);
INSERT INTO drivers(name, surname, data_of_birth, experience, gender, id_car) VALUES ('Тоха', 'Абдурасулов', '1992-11-15', 7, 'Мужчина', 6);
INSERT INTO drivers(name, surname, data_of_birth, experience, gender, id_car) VALUES ('Рамазан', 'Абдулаев', '1999-10-16', 2, 'Мужчина', 7);
INSERT INTO drivers(name, surname, data_of_birth, experience, gender, id_car) VALUES ('Роза', 'Кыздарова', '2000-04-12', 3, 'Женшина', 8);
INSERT INTO drivers(name, surname, data_of_birth, experience, gender, id_car) VALUES ('Аделя', 'Янезнаёвна', '1997-04-08', 3, 'Женшина', 9);
INSERT INTO drivers(name, surname, data_of_birth, experience, gender, id_car) VALUES ('Азамат', 'Азаматов', '1997-04-08', 3, 'Мужчина', 10);


INSERT INTO operators(name, surname, data_of_birth, gender) VALUES ('Друг', 'Бахи', '1992-12-11','Мужчина');
INSERT INTO operators(name, surname, data_of_birth, gender) VALUES ('Племянник', 'Бекзата', '2006-01-01', 'Мужчина');
INSERT INTO operators(name, surname, data_of_birth, gender) VALUES ('Подруга', 'Кого-то', '1997-04-08', 'Женшина');
INSERT INTO operators(name, surname, data_of_birth, gender) VALUES ('Друг', 'Tony', '1986-02-12', 'Мужчина');
INSERT INTO operators(name, surname, data_of_birth, gender) VALUES ('Родственник', 'Халка', '1985-09-18', 'Мужчина');
INSERT INTO operators(name, surname, data_of_birth, gender) VALUES ('Двоюродный брат', 'Тохи', '1992-11-15', 'Мужчина');
INSERT INTO operators(name, surname, data_of_birth, gender) VALUES ('Брат', 'Рамазана', '1999-10-16', 'Мужчина');
INSERT INTO operators(name, surname, data_of_birth, gender) VALUES ('Сакура', 'Кыздарова', '2000-04-12', 'Женшина');
INSERT INTO operators(name, surname, data_of_birth, gender) VALUES ('Тётя', 'Янезнаёвна', '1997-04-08', 'Женшина');
INSERT INTO operators(name, surname, data_of_birth, gender) VALUES ('Корочедевушка', 'Прохожая', '1997-04-08', 'Женшина');

SELECT * FROM cars WHERE brand = 'Toyota' and model = 'Camry' ORDER BY year DESC LIMIT 10;
SELECT DISTINCT name FROM operators;
SELECT * FROM operators ORDER BY name DESC;
UPDATE cars SET brand = 'Mersus' WHERE brand = 'Mersedes';
DELETE drivers name = 'Азамат' and surname = 'Азаматов';
SELECT COUNT(name) FROM drivers WHERE experience > 10 and gender = 'Мужчина';
SELECT AVG(data_of_birth) FROM drivers WHERE data_of_birth > '1975-10-10';
SELECT COUNT(brand) FROM drivers WHERE brand = 'Toyota' ORDER BY year DESC;
SELECT COUNT(brand) FROM drivers WHERE brand = 'BMW' ORDER BY year DESC;
SELECT COUNT(*) FROM id_car ORDER BY id_car DESC;