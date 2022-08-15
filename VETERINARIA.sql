CREATE DATABASE Veterinaria;

use Veterinaria;

CREATE TABLE Dueno
(
DNI int primary key not null ,
Nombre varchar(45) not null,
Apellido varchar(45) not null,
Telefono varchar(20) not null,
Direccion varchar(50) not null

);

CREATE TABLE Perro
(
ID_Perro int primary key not null auto_increment ,
Nombre varchar(45) not null,
Fecha_nac date not null,
Sexo varchar(20) not null,
DNI_dueno int not null,
foreign key(DNI_dueno) references Dueno(DNI)
);


CREATE TABLE Historial
(
ID_Historial int primary key not null auto_increment,
Fecha datetime not null,
Perro int not null,
Descripcion text(140) not null,
Monto decimal(6,2) not null,
foreign key(Perro) references Perro(ID_Perro)

);

INSERT INTO Dueno values
(39724184,'Mariquena','Allosa','3765897654','Felix Bogado 234'),(22587645,'Marcela','Corin','3765986782','Fco de Haro 235'),
(42356749,'Aldana','Gonzalez','3765896543','Colon 3234'),(20053318,'Daniel','Lopez','3765897654','Lavalle 765'),
(4567875,'Maria','Lopez','1123457865','Colon 3425'),(20456723,'Pedro','Gomez','2653785432','Brasil 2425') ;

INSERT INTO Perro(Nombre, Fecha_nac, Sexo, DNI_dueno) values 
('Nino','2000-05-21','Macho',39724184),('Kob','2004-12-13','Macho',22587645),
('Lito','2005-12-25','Macho',42356749),('Frida','2011-11-01','Hembra',20053318),
('Lola','2015-12-01','Hembra',4567875),('toby','2000-12-05','Macho',39724184),
('Koby','2010-04-15','Macho',22587645),('Litio','2018-07-05','Macho',42356749),
('Lila','2022-04-15','Hembra',20053318),('Indigo','2000-06-05','Hembra',4567875),
('India','2020-05-05','Hembra',20456723);

INSERT INTO Historial(Fecha, Perro, Descripcion, Monto) values 
('2000-05-05', 1,'Revisión de control',2000),('2020-12-05', 2,'Desparasitacion',3000),
('2010-04-05', 3,'Revisión de control y pipetas',4000),('2014-04-05', 4,'Revisión de control y pipetas',4000),
('2022-08-01', 5,'Revisión de control y pipetas',4000), ('2022-08-01',6,'Revisión de control y pipetas',4000),
('2021-06-11', 7,'Limpieza de dientes',2000),('2022-08-21', 8,'Baño y corte',3500),
('2022-08-01', 9,'Vacunas',1000),('2010-05-12', 10,'Baño, corte, revisión de control y pipetas',1500),
('2022-07-21', 1,'Revisión de control y pipetas',4000), ('2021-06-11', 4,'Vacunas',2000), 
('2012-08-11', 8,'Baño y corte',2000),('2022-08-07', 11,'Baño y corte',3500);

INSERT INTO Dueno values (26781887,'Alfonso','Roberto','541162033759','21 2975');
INSERT INTO Perro values ('012','Rin','2020-01-12','Macho',26781887);

-- 4. Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
UPDATE Perro SET Fecha_nac = '2019-01-12' WHERE ID_Perro = 12;

