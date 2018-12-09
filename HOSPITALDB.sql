drop database if exists HospitalDB;

CREATE DATABASE IF NOT EXISTS HospitalDB
	CHARACTER set utf8
	collate utf8_general_ci;

use HospitalDB;

DROP TABLE IF EXISTS Persona;
		
CREATE TABLE Persona (
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER  NOT NULL,
  Telefono INTEGER NOT NULL,
  Direccion varchar(250) NOT NULL,
  Fech_Nac CHAR(10) NOT NULL,
  Nombre varchar(250) NOT NULL,
  Prim_Apellido varchar(250) NOT NULL,
  Seg_Apellido varchar(250) NOT NULL,
  Sexo varchar(250) NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Personal;
		
CREATE TABLE Personal (
  DNI INTEGER NULL NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL,
  RUC_Hosp INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Paciente;
		
CREATE TABLE Paciente (
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Num_Historial INT not null
)ENGINE=InnoDB;


DROP TABLE IF EXISTS Pac_Sintomas;
		
CREATE TABLE Pac_Sintomas (
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Num_Historial INTEGER NOT NULL,
  Sintomas VARCHAR(255) NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Medico;
		
CREATE TABLE Medico (
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Enfermera;
		
CREATE TABLE Enfermera (
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL,
  Num_Bloq INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Vigilante;
		
CREATE TABLE Vigilante (
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Conductor;
		
CREATE TABLE Conductor (
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Director;
		
CREATE TABLE Director (
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS P_Limpieza;
		
CREATE TABLE P_Limpieza (
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Auxiliador;
		
CREATE TABLE Auxiliador (
  DNI INTEGER NULL NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Farmaceutico;
		
CREATE TABLE Farmaceutico(
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL,
  Cod_Far INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Recepcionista;
		
CREATE TABLE Recepcionista (
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Bloque;
		
CREATE TABLE Bloque (
  Numero INTEGER NOT NULL,
  RUC_Hosp INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Urgencias;
		
CREATE TABLE Urgencias (
  Numero INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Hospitalizacion;
		
CREATE TABLE Hospitalizacion (
  Numero INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Pediatria;
		
CREATE TABLE Pediatria (
  Numero INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Consultas;
		
CREATE TABLE Consultas (
  Numero INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Hospital;
		
CREATE TABLE Hospital (
  RUC INTEGER NOT NULL,
  Direccion VARCHAR(255) NOT NULL,
  Pais VARCHAR(255) NOT NULL,
  Gmail VARCHAR(255) NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Entrada;
		
CREATE TABLE Entrada (
  Codigo INTEGER NOT NULL,
  RUC_Hosp INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Ent_Vig;
		
CREATE TABLE Ent_Vig (
  CodigoE INTEGER NOT NULL,
  DNI INTEGER NOT NULL,
  NumSegSoc INTEGER NOT NULL,
  CodigoV INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Ambulancia;
		
CREATE TABLE Ambulancia (
  Placa VARCHAR(255) NOT NULL,
  Capacidad INTEGER NOT NULL,
  RUC_Hosp INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Amb_Con;
		
CREATE TABLE Amb_Con (
  Placa VARCHAR(255) NOT NULL,
  DNI INTEGER NOT NULL,
  NumSegSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Registro_Limpieza;
		
CREATE TABLE Registro_Limpieza (
  Numero INTEGER NOT NULL,
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL,
  Fecha CHAR(10) NOT NULL,
  Hora int NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Amb_Aux;
		
CREATE TABLE Amb_Aux (
  Placa VARCHAR(255) NOT NULL,
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Codigo INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Farmacia;
		
CREATE TABLE Farmacia (
  Codigo INTEGER NOT NULL,
  RUC_Hosp INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Amb_Pac;
		
CREATE TABLE Amb_Pac (
  Placa VARCHAR(255) NOT NULL,
  DNI INTEGER NOT NULL,
  NumSeguSoc INTEGER NOT NULL,
  Num_Historial INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Medicamentos;
		
CREATE TABLE Medicamentos (
  Codigo INTEGER NOT NULL,
  Nombre VARCHAR(255) NOT NULL,
  Precio INTEGER NOT NULL,
  Fecha_Caducidad VARCHAR(255) NOT NULL,
  Cod_Far INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Accion_Medica;
		
CREATE TABLE Accion_Medica (
  Cod_Medi INTEGER NOT NULL,
  Accion VARCHAR(255) NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Laboratorio;
		
CREATE TABLE Laboratorio (
   Codigo INTEGER NOT NULL,
   Direccion VARCHAR(255) NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Medicamento_Lab;
		
CREATE TABLE Medicamento_Lab (
  CodigoM INTEGER NOT NULL,
  CodigoL INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Emp_Proveedora;
		
CREATE TABLE Emp_Proveedora (
  RUC INTEGER NOT NULL,
  Direccion VARCHAR(255) NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Medicamento_EmpPro;
		
CREATE TABLE Medicamento_EmpPro (
  Codigo INTEGER NOT NULL,
  RUC INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Receta;
		
CREATE TABLE Receta (
  DNI INTEGER NOT NULL,
  NumSegSoc INTEGER NOT NULL,
  CodigoMed INTEGER NOT NULL,
  CodigoM INTEGER NOT NULL,
  CodigoD INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Diagnostico;
		
CREATE TABLE Diagnostico (
  Codigo INTEGER NOT NULL,
  Emfermedad VARCHAR(255) NOT NULL,
  Tratamiento VARCHAR(255) NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Cita;
		
CREATE TABLE Cita (
  CodigoD INTEGER NOT NULL,
  DNIM INTEGER NOT NULL,
  NumSegSocM INTEGER NOT NULL,
  CodigoM INTEGER NOT NULL,
  NumeroBC INTEGER NOT NULL,
  DNIR INTEGER NOT NULL,
  NumSegSocR INTEGER NOT NULL,
  CodigoR INTEGER NOT NULL,
  Fecha DATE NULL,
  Tipo VARCHAR(255) NULL,
  Costo DECIMAL NULL,
  NumSegSocP INTEGER NOT NULL,
  DNIP INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Emerg_Pac;
		
CREATE TABLE Emerg_Pac (
  DNI INTEGER NOT NULL,
  NumSegSoc INTEGER NOT NULL,
  Num_Historial INTEGER NOT NULL,
  CodigoE INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Emergencia;
		
CREATE TABLE Emergencia (
  Codigo INTEGER NOT NULL,
  Tipo VARCHAR(255) NOT NULL,
  NumeroBU INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Cuarto_Paciente;
		
CREATE TABLE Cuarto_Paciente (
  DNI INTEGER NOT NULL,
  NumSegSoc INTEGER NOT NULL,
  Num_Historial INTEGER NOT NULL,
  NumeroC INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Cuarto;
		
CREATE TABLE Cuarto (
  Numero INTEGER NOT NULL,
  NumeroBH INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Almacen;
		
CREATE TABLE Almacen (
  Codigo INTEGER NOT NULL,
  RUCH INTEGER NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS Almacen_Medicamentos;
		
CREATE TABLE Almacen_Medicamentos (
  CodigoA INTEGER NOT NULL,
  CodigoM INTEGER NOT NULL
)ENGINE=InnoDB;

ALTER TABLE Persona ADD CONSTRAINT PK_Persona PRIMARY KEY (DNI,NumSeguSoc);
ALTER TABLE Personal ADD CONSTRAINT PK_Personal primary key (DNI,NumSeguSoc,Codigo);
ALTER TABLE Paciente ADD CONSTRAINT PK_Paciente primary key(DNI,NumSeguSoc,Num_Historial);
ALTER TABLE Pac_Sintomas ADD CONSTRAINT PK_Pac primary key (DNI,NumSeguSoc,Num_Historial);
ALTER TABLE Medico ADD CONSTRAINT PK_Medico primary key (DNI,NumSeguSoc,Codigo);
ALTER TABLE Enfermera ADD CONSTRAINT PK_Enfermera primary key (DNI,NumSeguSoc,Codigo);
ALTER TABLE Vigilante ADD CONSTRAINT PK_Vigilante PRIMARY KEY (DNI,NumSeguSoc,Codigo);
ALTER TABLE Conductor ADD CONSTRAINT PK_Conductor primary key (DNI,NumSeguSoc,Codigo);
ALTER TABLE Director ADD CONSTRAINT PK_Director primary key(DNI,NumSeguSoc,Codigo);
ALTER TABLE P_Limpieza ADD CONSTRAINT PK_Limpieza primary key (DNI,NumSeguSoc,Codigo);
ALTER TABLE Auxiliador ADD CONSTRAINT PK_Auxiliador primary key (DNI,NumSeguSoc,Codigo);
ALTER TABLE Farmaceutico ADD CONSTRAINT PK_Farmaceutico primary key (DNI,NumSeguSoc,Codigo);
ALTER TABLE Recepcionista ADD CONSTRAINT PK_Recepcionista primary key (DNI,NumSeguSoc,Codigo);
ALTER TABLE Bloque ADD CONSTRAINT PK_Bloque PRIMARY KEY (Numero,RUC_Hosp);
ALTER TABLE Urgencias ADD CONSTRAINT PK_Urgencias primary key (Numero);
ALTER TABLE Hospitalizacion ADD CONSTRAINT PK_Hospitali primary key(Numero);
ALTER TABLE Pediatria ADD CONSTRAINT PK_Pediatria primary key (Numero);
ALTER TABLE Consultas ADD CONSTRAINT PK_Consultas primary key (Numero);
ALTER TABLE Hospital ADD CONSTRAINT PK_Hospital primary key (RUC);
ALTER TABLE Entrada ADD CONSTRAINT PK_Entrada primary key (Codigo,RUC_Hosp);
ALTER TABLE Ent_Vig ADD CONSTRAINT PK_Ent PRIMARY KEY (CodigoE,DNI,NumSegSoc,CodigoV);
ALTER TABLE Ambulancia ADD CONSTRAINT PK_Ambulancia primary key (Placa);
ALTER TABLE Amb_Con ADD CONSTRAINT PK_Amb primary key(Placa);
ALTER TABLE Registro_limpieza ADD CONSTRAINT PK_Registro primary key (Numero);
ALTER TABLE Amb_Aux ADD CONSTRAINT PK_Aux primary key (Placa);
ALTER TABLE Farmacia ADD CONSTRAINT PK_Farmacia primary key (Codigo,RUC_Hosp);
ALTER TABLE Amb_Pac ADD CONSTRAINT PK_Pacb primary key (DNI,Placa,NumSeguSoc,Num_Historial);
ALTER TABLE Medicamentos ADD CONSTRAINT PK_Medicamentos PRIMARY KEY (Codigo);
ALTER TABLE Accion_Medica ADD CONSTRAINT PK_Accion primary key (Cod_Medi,Accion);
ALTER TABLE Laboratorio ADD CONSTRAINT PK_Laboratorio primary key(Codigo,Direccion);
ALTER TABLE Medicamento_Lab ADD CONSTRAINT PK_Lab primary key (CodigoM,CodigoL);
ALTER TABLE Emp_Proveedora ADD CONSTRAINT PK_Proveedora primary key (RUC,Direccion);
ALTER TABLE Medicamento_EmpPro ADD CONSTRAINT PK_EmpPro primary key (Codigo,RUC);
ALTER TABLE Receta ADD CONSTRAINT PK_Receta primary key (DNI);
ALTER TABLE Diagnostico ADD CONSTRAINT PK_Diagnostisco PRIMARY KEY (Codigo);
ALTER TABLE Cita ADD CONSTRAINT PK_Consulta primary key (CodigoD,DNIP,NumSegSocP,DNIM,NumSegSocM,CodigoM,DNIR,NumSegSocR,CodigoR,NumeroBC);
ALTER TABLE Emerg_Pac ADD CONSTRAINT PK_Emerg primary key(DNI,NumSegSoc,Num_Historial);
ALTER TABLE Emergencia ADD CONSTRAINT PK_Emergencia primary key (Codigo);
ALTER TABLE Cuarto_Paciente ADD CONSTRAINT PK_CuartoPA primary key (DNI,NumSegSoc,Num_Historial);
ALTER TABLE Cuarto ADD CONSTRAINT PK_Cuarto primary key (Numero,NumeroBH);
ALTER TABLE Almacen ADD CONSTRAINT PK_Almacen primary key (Codigo,RUCH);
ALTER TABLE Almacen_Medicamentos ADD CONSTRAINT PK_AlmacenM primary key (CodigoA,CodigoM);




ALTER TABLE Personal ADD FOREIGN KEY (DNI,NumSeguSoc) REFERENCES Persona (DNI,NumSeguSoc);
ALTER TABLE Paciente ADD FOREIGN KEY (DNI,NumSeguSoc) REFERENCES Persona (DNI,NumSeguSoc);
ALTER TABLE Pac_Sintomas ADD FOREIGN KEY (DNI,NumSeguSoc,Num_Historial) REFERENCES Paciente(DNI,NumSeguSoc,Num_Historial);
ALTER TABLE Medico add FOREIGN key (DNI,NumSeguSoc,Codigo) REFERENCES Personal (DNI,NumSeguSoc,Codigo);
ALTER TABLE Enfermera add FOREIGN key (DNI,NumSeguSoc,Codigo) REFERENCES Personal (DNI,NumSeguSoc,Codigo);
ALTER TABLE Vigilante add FOREIGN key (DNI,NumSeguSoc,Codigo) REFERENCES Personal (DNI,NumSeguSoc,Codigo);
ALTER TABLE Conductor add FOREIGN key (DNI,NumSeguSoc,Codigo) REFERENCES Personal (DNI,NumSeguSoc,Codigo);
ALTER TABLE Director add FOREIGN key (DNI,NumSeguSoc,Codigo) REFERENCES Personal (DNI,NumSeguSoc,Codigo);
ALTER TABLE P_Limpieza add FOREIGN key (DNI,NumSeguSoc,Codigo) REFERENCES Personal (DNI,NumSeguSoc,Codigo);
ALTER TABLE Auxiliador add FOREIGN key (DNI,NumSeguSoc,Codigo) REFERENCES Personal (DNI,NumSeguSoc,Codigo);
ALTER TABLE Farmaceutico add FOREIGN key (DNI,NumSeguSoc,Codigo) REFERENCES Personal (DNI,NumSeguSoc,Codigo);
ALTER TABLE Recepcionista add FOREIGN key (DNI,NumSeguSoc,Codigo) REFERENCES Personal (DNI,NumSeguSoc,Codigo);
ALTER TABLE Amb_Pac ADD FOREIGN KEY (DNI,NumSeguSoc,Num_Historial) REFERENCES Paciente (DNI,NumSeguSoc,Num_Historial);
ALTER TABLE Emerg_Pac ADD FOREIGN KEY (DNI,NumSegSoc,Num_Historial) REFERENCES Paciente (DNI,NumSeguSoc,Num_Historial);
ALTER TABLE Cuarto_Paciente ADD FOREIGN KEY (DNI,NumSegSoc,Num_Historial) REFERENCES Paciente (DNI,NumSeguSoc,Num_Historial);
ALTER TABLE Enfermera ADD FOREIGN KEY (Num_Bloq) REFERENCES Bloque (Numero);
ALTER TABLE Farmaceutico ADD FOREIGN KEY (Cod_Far) REFERENCES Farmacia (Codigo);
ALTER TABLE Urgencias ADD FOREIGN KEY (Numero) REFERENCES Bloque (Numero);
ALTER TABLE Hospitalizacion ADD FOREIGN KEY (Numero) REFERENCES Bloque (Numero);
ALTER TABLE Consultas ADD FOREIGN KEY (Numero) REFERENCES Bloque (Numero);
ALTER TABLE Pediatria ADD FOREIGN KEY (Numero) REFERENCES Bloque (Numero);
ALTER TABLE Registro_Limpieza ADD FOREIGN KEY (Numero) REFERENCES Bloque (Numero);
ALTER TABLE Bloque ADD FOREIGN KEY (RUC_Hosp) REFERENCES Hospital (RUC);
ALTER TABLE Entrada ADD FOREIGN KEY (RUC_Hosp) REFERENCES Hospital (RUC);
ALTER TABLE Ent_Vig ADD FOREIGN KEY (CodigoE) REFERENCES Entrada (Codigo);
ALTER TABLE Ent_Vig ADD FOREIGN KEY (DNI,NumSegSoc,CodigoV) REFERENCES Vigilante (DNI,NumSeguSoc,Codigo);
ALTER TABLE Amb_Con ADD FOREIGN KEY (Placa) REFERENCES Ambulancia (Placa);
ALTER TABLE Amb_Aux ADD FOREIGN KEY (Placa) REFERENCES Ambulancia (Placa);
ALTER TABLE Amb_Pac ADD FOREIGN KEY (Placa) REFERENCES Ambulancia (Placa);
ALTER TABLE Registro_Limpieza ADD FOREIGN KEY (DNI,NumSeguSoc,Codigo) REFERENCES P_Limpieza (DNI,NumSeguSoc,Codigo);
ALTER TABLE Amb_Aux ADD FOREIGN KEY (DNI,NumSeguSoc,Codigo) REFERENCES Auxiliador (DNI,NumSeguSoc,Codigo);
ALTER TABLE Farmacia ADD FOREIGN KEY (RUC_Hosp) REFERENCES Hospital (RUC);
ALTER TABLE Amb_Pac ADD FOREIGN KEY (DNI,NumSeguSoc,Num_Historial) REFERENCES Paciente (DNI,NumSeguSoc,Num_Historial);
ALTER TABLE Accion_Medica ADD FOREIGN KEY (Cod_Medi) REFERENCES Medicamentos (Codigo);
ALTER TABLE Medicamento_Lab ADD FOREIGN KEY (CodigoM) REFERENCES Medicamentos (Codigo);
ALTER TABLE Medicamento_EmpPro ADD FOREIGN KEY (Codigo) REFERENCES Medicamentos (Codigo);
ALTER TABLE Receta ADD FOREIGN KEY (CodigoM) REFERENCES Medicamentos (Codigo);
ALTER TABLE Almacen_Medicamentos ADD FOREIGN KEY (CodigoM) REFERENCES Medicamentos (Codigo);
ALTER TABLE Medicamentos ADD FOREIGN KEY (Cod_Far) REFERENCES Farmacia (Codigo);
ALTER TABLE Medicamento_Lab ADD FOREIGN KEY (CodigoL) REFERENCES Laboratorio (Codigo);
ALTER TABLE Medicamento_EmpPro ADD FOREIGN KEY (RUC) REFERENCES Emp_Proveedora (RUC);
ALTER TABLE Receta ADD FOREIGN KEY (DNI,NumSegSoc,CodigoMed) REFERENCES Medico (DNI,NumSeguSoc,Codigo);
ALTER TABLE Receta ADD FOREIGN KEY (CodigoD) REFERENCES Diagnostico (Codigo);
ALTER TABLE Emerg_Pac ADD FOREIGN KEY (CodigoE) REFERENCES Emergencia (Codigo);
ALTER TABLE Emergencia ADD FOREIGN KEY (NumeroBU) REFERENCES Urgencias (Numero);
ALTER TABLE Cuarto_Paciente ADD FOREIGN KEY (NumeroC) REFERENCES Cuarto (Numero);
ALTER TABLE Cuarto ADD FOREIGN KEY (NumeroBH) REFERENCES Hospitalizacion (Numero);
ALTER TABLE Almacen_Medicamentos ADD FOREIGN KEY (CodigoA) REFERENCES Almacen (Codigo);
ALTER TABLE Almacen ADD FOREIGN KEY (RUCH) REFERENCES Hospital (RUC);
ALTER TABLE Cita ADD FOREIGN KEY (CodigoD) REFERENCES Diagnostico (Codigo);
ALTER TABLE Cita ADD FOREIGN KEY (DNIM,NumSegSocM,CodigoM) REFERENCES Medico (DNI,NumSeguSoc,Codigo);
ALTER TABLE Cita ADD FOREIGN KEY (DNIP,NumSegSocP) REFERENCES Paciente (DNI,NumSeguSoc);
ALTER TABLE Cita ADD FOREIGN KEY (NumeroBC) REFERENCES Consultas (Numero);
ALTER TABLE Cita ADD FOREIGN KEY (DNIR,NumSegSocR,CodigoR) REFERENCES Recepcionista (DNI,NumSeguSoc,Codigo);









INSERT into Hospital (RUC ,Direccion ,Pais ,Gmail )
				values(80805523,'Paucarpata','Peru','HospitalGoyeneche@gmail.com');


####    Enferemeros  #############
INSERT into Persona (DNI ,NumSeguSoc ,Telefono ,Direccion ,Fech_Nac ,Nombre ,Prim_Apellido ,Seg_Apellido ,Sexo )
					values(73862400,41200,958989300,'tiabaya','1990-10-12','juana','pilco','sevallos','F');
INSERT into Persona values(73862401,41201,958989301,'Socabaya','1990-04-22','Adriana','Alarcon','Cujar','F');
INSERT into Persona values(73862402,41202,958989302,'Characato','1991-12-20','Alexander','Duarte','Sandoval','M');
INSERT into Persona values(73862403,41203,958989303,'Sachaca','1995-06-19','Ana','Lozano','Santos','F');
INSERT into Persona values(73862404,41204,958989304,'Tiabaya','1995-10-14','Cesar','Ramirez','Laverde','M');
INSERT into Persona values(73862405,41205,958989305,'Cerro Verde','1993-05-12','Claudio','Navarrete','Aragon','M');  
INSERT into Persona values(73862406,41206,958989306,'Hunter','1980-04-30','Paulo','Diaz','Tellez','M');                    
INSERT into Persona values(73862407,41207,958989307,'Yanahuara','2000-09-20','Reinaldo','Valbueno','Carrero','M');  
INSERT into Persona values(73862408,41208,958989308,'Tiabaya','1999-08-19','Rocio','Mora','Rodriguez','F');  
INSERT into Persona values(73862409,41209,958989309,'Cerro Verde','1994-05-15','Ruby','Alfonso','Villamil','F');  
INSERT into Persona values(73862410,41210,958989310,'Cayma','1993-05-11','Liliana','Perez','Flores','F');  
INSERT into Persona values(73862411,41211,958989311,'Paucarpata','1993-02-12','Elmer','Paniura','Sanchez','M');  
INSERT into Persona values(73862412,41212,958989312,'Miraflores','1995-02-13','Andy','Torres','Zambrano','M');  
INSERT into Persona values(73862413,41213,958989313,'Sachaca','1985-05-16','Sandra','Suarez','Amaya','F');  
INSERT into Persona values(73862414,41214,958989314,'Hunter','1989-05-19','Estefani','Cuevas','Mamani','F');  
INSERT into Persona values(73862415,41215,958989315,'Cerro Verde','1995-03-12','Yan','Parillo','Urrea','M');  
 
######   farmaceuticos    ##########

INSERT into Persona (DNI ,NumSeguSoc ,Telefono ,Direccion ,Fech_Nac ,Nombre ,Prim_Apellido ,Seg_Apellido ,Sexo )
					values(73862416,41216,958989316,'tiabaya','1995-12-11','Monica','pilco','Zamora','F');
INSERT into Persona values(73862417,41217,958989317,'Socabaya','1990-04-22','Adriano','Alvarez','Barrios','M');
INSERT into Persona values(73862418,41218,958989318,'Cerro Verde','1994-09-12','Yanela','Parco','Salaverry','F');  
INSERT into Persona values(73862419,41219,958989319,'Sachaca','1999-03-19','Reinaldo','Valvuena','Correa','M');  
INSERT into Persona values(73862420,41220,958989320,'Cayma','2005-06-10','Michael','Maldonado','Mamani','M');  

#######    Medicos
INSERT into Persona values(73862421,41221,958989321,'Paucarpata','1999-11-22','Luz','Suri','Mamani','F');  
INSERT into Persona values(73862422,41222,958989322,'Yura','1995-03-16','Giancarlos','Zambrano','Neira','M');  
INSERT into Persona values(73862423,41223,958989323,'Sachaca','1998-05-12','Marta','Florero','Silva','F');  
INSERT into Persona values(73862424,41224,958989324,'Huaranguillo','1999-06-17','Miguel','Cera','Cordova','M');  
INSERT into Persona values(73862425,41225,958989325,'Fatima','1985-09-12','Nancy','Quintero','Pinilla','F');  
INSERT into Persona values(73862426,41226,958989326,'Cerro Verde','1996-06-11','Nestor','Ramires','Patiño','M');  
INSERT into Persona values(73862427,41227,958989327,'Hunter','1996-09-20','Paola','Diaz','Paez','F');  
INSERT into Persona values(73862428,41228,958989328,'Miraflores','1997-06-12','Rosa','Galvis','Urrea','F');  
INSERT into Persona values(73862429,41229,958989329,'Sachaca','1997-03-16','Mariano','Toro','Higuera','M');  
INSERT into Persona values(73862430,41230,958989330,'Cayma','1995-08-14','Luciano','Gonzales','Maldini','M');  
INSERT into Persona values(73862431,41231,958989331,'Paucarpata','1985-12-12','Gladis','Mamani','Morales','F');  
INSERT into Persona values(73862432,41232,958989332,'Tiabaya','1985-03-18','Denis','Cuno','Carrero','M');  
INSERT into Persona values(73862433,41233,958989333,'Congata','1965-03-14','Daniela','Cabrera','Flores','F');  
INSERT into Persona values(73862434,41234,958989334,'Alto Misti','1975-09-12','jonathan','Leon','Aroquipa','M');  
INSERT into Persona values(73862435,41235,958989335,'Cerro Verde','1985-06-16','Camila','Sanchez','Torres','F');  

#########   P_Limpieza
INSERT into Persona values(73862436,41236,958989336,'Cayma','1998-06-15','Micaela','Salaverry','Quispe','F');  
INSERT into Persona values(73862437,41237,958989337,'Sachaca','1997-04-20','Diego','Maldonado','Mullisaca','M');  
INSERT into Persona values(73862438,41238,958989338,'Huaranguillo','1989-10-11','Frank','Parillo','Cuevas','M');  
INSERT into Persona values(73862439,41239,958989339,'Yura','1990-12-16','Roger','Meza','Mamani','M');  
INSERT into Persona values(73862440,41240,958989340,'Fatima','1999-10-18','Maria','Delgado','Prado','F');  
INSERT into Persona values(73862441,41241,958989341,'Cayma','1998-02-17','Flavio','Aquise','Calderon','M');  
INSERT into Persona values(73862442,41242,958989342,'Miraflores','2000-01-14','Andres','Cuellar','Ramos','M');  
INSERT into Persona values(73862443,41243,958989343,'Paucarpata','1998-04-19','Natalia','Tautiva','Velasquez','F');  
INSERT into Persona values(73862444,41244,958989344,'Cerro Verde','1999-07-19','Norma','Jurado','Giraldo','F');  
INSERT into Persona values(73862445,41245,958989345,'Avelino','2000-06-18','Olga','Diaz','Pinto','F');  
INSERT into Persona values(73862446,41246,958989346,'Yanahuara','1998-11-17','Efrian','Quiñonez','Carreyro','M');  
INSERT into Persona values(73862447,41247,958989347,'Characato','1995-06-16','Armondo','Lupo','Chipana','M');  
INSERT into Persona values(73862448,41248,958989348,'Sabandia','1991-04-14','Fiorela','Mora','Aruro','F');  
INSERT into Persona values(73862449,41249,958989349,'Cayma','1996-09-12','Esteban','Fernandez','Lopez','M');  
INSERT into Persona values(73862450,41250,958989350,'Tiabaya','1995-08-18','Ayde','Ccori','Huamani','M');  

#########    vigilante   ####################

INSERT into Persona values(73862451,41251,958989351,'Cayma','1997-10-19','Jose','Cary','Beleño','M');
INSERT into Persona values(73862452,41252,958989352,'Sachaca','1995-09-14','Nidia','Cera','Silva','F');
INSERT into Persona values(73862453,41253,958989353,'Avelino','1992-11-29','Yudith','Asto','Jara','F');
INSERT into Persona values(73862454,41254,958989354,'Tahuaycani','1990-12-30','Nestor','Pinto','Peña','M');
INSERT into Persona values(73862455,41255,958989355,'Tiabaya','1996-04-11','Pamela','Aguilar','Rodiguez','F');

########   Conductor  #######################

INSERT into Persona values(73862456,41256,958989356,'Congata','1998-07-14','Maribel','Martinez','Rivera','F');
INSERT into Persona values(73862457,41257,958989357,'Sachaca','1997-06-16','Martha','Flores','Perilla','F');
INSERT into Persona values(73862458,41258,958989358,'Hunter','1991-01-15','Milton','Rios','Silva','M');
INSERT into Persona values(73862459,41259,958989359,'Miraflores','1993-04-17','Silvana','Torres','Quispe','F');
INSERT into Persona values(73862460,41260,958989360,'Tunales','1989-06-02','Cinthia','Arco','Mamani','F');

########   Auxiliador    ###########################

INSERT into Persona values(73862461,41261,958989361,'Characato','1997-08-12','Luis','Melo','Lopez','M');
INSERT into Persona values(73862462,41262,958989362,'Cayma','1993-12-13','David','Sanchez','Lemus','F');
INSERT into Persona values(73862463,41263,958989363,'Paucarpata','1991-02-13','Lucila','Lagos','Camacho','F');
INSERT into Persona values(73862464,41264,958989364,'Fatoma','1998-07-11','Pedro','Barajas','Gomez','M');
INSERT into Persona values(73862465,41265,958989365,'Cayma','1997-04-17','Gonzalo','Paredes','Quispe','M');



########   Paciente      ############################
INSERT INTO Persona values(73862466,41266,958989366,'Paucarpata','1997-05-18','Mar','Mela','Sandrez','F');
INSERT INTO Persona values(73862467,41267,958989367,'Cayma','1998-05-18','Ciela','Lopez','Landa','F');
INSERT INTO Persona values(73862468,41268,958989368,'Fatoma','1999-05-18','Diela','Quispe','Lunares','F');
INSERT INTO Persona values(73862469,41269,958989369,'Hunter','2000-05-18','Quinela','Sanri','Mamani','F');
INSERT INTO Persona values(73862470,41270,958989370,'Sachaca','2001-05-18','Dina','Sandra','Lopez','F');
INSERT INTO Persona values(73862471,41271,958989371,'Avelino','2002-05-18','Melissa','Melana','Mirlan','F');
INSERT INTO Persona values(73862472,41272,958989372,'Yanahuara','2003-05-18','Diana','Melin','Mamani','F');
INSERT INTO Persona values(73862473,41273,958989373,'Miraflores','2004-05-18','Jenia','Dinnaiden','Quispe','F');
INSERT INTO Persona values(73862474,41274,958989374,'Tunales','2005-05-18','Delia','Qiom','Tiahuanaco','F');
INSERT INTO Persona values(73862475,41275,958989375,'Ceero Verde','2005-05-18','Liana','Anni','	Mamani','F');
INSERT INTO Persona values(73862476,41276,958989376,'Avelino','2006-05-18','Merlina','Menia','Ginedel','F');
INSERT INTO Persona values(73862477,41277,958989377,'Hunter','2007-05-18','Meriana','Melandez','Londreza','F');
INSERT INTO Persona values(73862478,41278,958989378,'Tiabaya','2008-05-18','Moliana','Mamani','Guiterrez','F');
INSERT INTO Persona values(73862479,41279,958989379,'Miraflores','2009-05-18','Quinera','Quispe','Sandrez','F');


########   Recepcionista      ############################
INSERT INTO Persona values(73862480,41280,958989380,'Paucarpata','2010-05-18','Tima','Mamani','Mamani','F');
INSERT INTO Persona values(73862481,41281,958989381,'Avelino','2011-05-18','Gino','Fernandez','Quispe','M');
INSERT INTO Persona values(73862482,41282,958989382,'Hunter','2012-05-18','Diego','Melandez','Mamani','M');
INSERT INTO Persona values(73862483,41283,958989383,'Tiabaya','2013-05-18','Eduardo','Mamani','Sanchez','M');
INSERT INTO Persona values(73862484,41284,958989384,'Miraflores','2015-05-18','Luan','Quispe','Quispe','M');



INSERT INTO Persona values(73862485,41285,958989385,'Paucarpata','2016-05-18','Timado','Mamani','Mamani','M');


########  director   #####################
INSERT INTO Persona values(73862486,41286,958989386,'Paucarpata','2010-05-18','Edwin','Bengoa','Feria','M');
INSERT into Personal values(73862486,41286,159862,80805523);
INSERT into Director values(73862486,41286,159862);




####    Enferemeros  #############

INSERT into Personal (DNI ,NumSeguSoc ,Codigo ,RUC_Hosp )
					 values(73862400,41200,12500,80805523);
INSERT into Personal values(73862401,41201,12501,80805523);
INSERT into Personal values(73862402,41202,12502,80805523);
INSERT into Personal values(73862403,41203,12503,80805523);
INSERT into Personal values(73862404,41204,12504,80805523);
INSERT into Personal values(73862405,41205,12505,80805523);
INSERT into Personal values(73862406,41206,12506,80805523);
INSERT into Personal values(73862407,41207,12507,80805523);
INSERT into Personal values(73862408,41208,12508,80805523);
INSERT into Personal values(73862409,41209,12509,80805523);
INSERT into Personal values(73862410,41210,12510,80805523);
INSERT into Personal values(73862411,41211,12511,80805523);
INSERT into Personal values(73862412,41212,12512,80805523);
INSERT into Personal values(73862413,41213,12513,80805523);
INSERT into Personal values(73862414,41214,12514,80805523);
INSERT into Personal values(73862415,41215,12515,80805523);
 
######   farmaceuticos    ##########

INSERT into Personal (DNI ,NumSeguSoc ,Codigo ,RUC_Hosp )
					 values(73862416,41216,12516,80805523);
INSERT into Personal values(73862417,41217,12517,80805523);
INSERT into Personal values(73862418,41218,12518,80805523);
INSERT into Personal values(73862419,41219,12519,80805523);
INSERT into Personal values(73862420,41220,12520,80805523);

#######    Medicos
INSERT into Personal (DNI ,NumSeguSoc ,Codigo ,RUC_Hosp )
					 values(73862421,41221,12521,80805523);
INSERT into Personal values(73862422,41222,12522,80805523);
INSERT into Personal values(73862423,41223,12523,80805523);
INSERT into Personal values(73862424,41224,12524,80805523);
INSERT into Personal values(73862425,41225,12525,80805523);
INSERT into Personal values(73862426,41226,12526,80805523);
INSERT into Personal values(73862427,41227,12527,80805523);
INSERT into Personal values(73862428,41228,12528,80805523);
INSERT into Personal values(73862429,41229,12529,80805523);
INSERT into Personal values(73862430,41230,12530,80805523);
INSERT into Personal values(73862431,41231,12531,80805523);
INSERT into Personal values(73862432,41232,12532,80805523);
INSERT into Personal values(73862433,41233,12533,80805523);
INSERT into Personal values(73862434,41234,12534,80805523);
INSERT into Personal values(73862435,41235,12535,80805523);

##########    P_Limpieza   ############333
INSERT into Personal values(73862436,41236,12536,80805523);
INSERT into Personal values(73862437,41237,12537,80805523);
INSERT into Personal values(73862438,41238,12538,80805523);
INSERT into Personal values(73862439,41239,12539,80805523);
INSERT into Personal values(73862440,41240,12540,80805523);
INSERT into Personal values(73862441,41241,12541,80805523);
INSERT into Personal values(73862442,41242,12542,80805523);
INSERT into Personal values(73862443,41243,12543,80805523);
INSERT into Personal values(73862444,41244,12544,80805523);
INSERT into Personal values(73862445,41245,12545,80805523);
INSERT into Personal values(73862446,41246,12546,80805523);
INSERT into Personal values(73862447,41247,12547,80805523);
INSERT into Personal values(73862448,41248,12548,80805523);
INSERT into Personal values(73862449,41249,12549,80805523);
INSERT into Personal values(73862450,41250,12550,80805523);

#########    vigilante   ####################
INSERT into Personal values(73862451,41251,12551,80805523);
INSERT into Personal values(73862452,41252,12552,80805523);
INSERT into Personal values(73862453,41253,12553,80805523);
INSERT into Personal values(73862454,41254,12554,80805523);
INSERT into Personal values(73862455,41255,12555,80805523);

########   Conductor  #######################

INSERT into Personal values(73862456,41256,12556,80805523);
INSERT into Personal values(73862457,41257,12557,80805523);
INSERT into Personal values(73862458,41258,12558,80805523);
INSERT into Personal values(73862459,41259,12559,80805523);
INSERT into Personal values(73862460,41260,12560,80805523);

########   Auxiliador    ###########################

INSERT into Personal values(73862461,41261,12561,80805523);
INSERT into Personal values(73862462,41262,12562,80805523);
INSERT into Personal values(73862463,41263,12563,80805523);
INSERT into Personal values(73862464,41264,12564,80805523);
INSERT into Personal values(73862465,41265,12565,80805523);

########   Recepcionista      ############################
INSERT into Personal values(73862480,41280,12566,80805523);
INSERT into Personal values(73862481,41281,12567,80805523);
INSERT into Personal values(73862482,41282,12568,80805523);
INSERT into Personal values(73862483,41283,12569,80805523);
INSERT into Personal values(73862484,41284,12570,80805523);


INSERT into Bloque (Numero ,RUC_Hosp )
				   values(110, 80805523);
INSERT into Bloque values(111, 80805523);
INSERT into Bloque values(112, 80805523);
INSERT into Bloque values(113, 80805523);




INSERT into enfermera(DNI , NumSeguSoc , Codigo , Num_Bloq)
					  values(73862400, 41200 , 12500 , 110);
INSERT into enfermera values(73862401, 41201 , 12501 , 111);
INSERT into enfermera values(73862402, 41202 , 12502 , 112);
INSERT into enfermera values(73862403, 41203 , 12503 , 113);
INSERT into enfermera values(73862404, 41204 , 12504 , 110);
INSERT into enfermera values(73862405, 41205 , 12505 , 111);
INSERT into enfermera values(73862406, 41206 , 12506 , 112);
INSERT into enfermera values(73862407, 41207 , 12507 , 113);
INSERT into enfermera values(73862408, 41208 , 12508 , 110);
INSERT into enfermera values(73862409, 41209 , 12509 , 111);
INSERT into enfermera values(73862410, 41210 , 12510 , 112);
INSERT into enfermera values(73862411, 41211 , 12511 , 113);
INSERT into enfermera values(73862412, 41212 , 12512 , 110);
INSERT into enfermera values(73862413, 41213 , 12513 , 111);
INSERT into enfermera values(73862414, 41214 , 12514 , 112);
INSERT into enfermera values(73862415, 41215 , 12515 , 113);
	


INSERT into Farmacia (Codigo ,RUC_Hosp )
					 values(1200,80805523);
INSERT into Farmacia values(1201,80805523);
INSERT into Farmacia values(1202,80805523);
INSERT into Farmacia values(1203,80805523);
INSERT into Farmacia values(1204,80805523);


INSERT into Farmaceutico(DNI,NumSeguSoc ,Codigo,Cod_Far)
					  values(73862416, 41216 , 12516 , 1200);
INSERT into Farmaceutico values(73862417, 41217 , 12517 , 1201);
INSERT into Farmaceutico values(73862418, 41218 , 12518 , 1202);
INSERT into Farmaceutico values(73862419, 41219 , 12519 , 1203);
INSERT into Farmaceutico values(73862420, 41220 , 12520 , 1204);


INSERT into Medico (DNI, NumSeguSoc ,Codigo )
				   values(73862421,41221,12521);
INSERT into Medico values(73862422,41222,12522);
INSERT into Medico values(73862423,41223,12523);
INSERT into Medico values(73862424,41224,12524);
INSERT into Medico values(73862425,41225,12525);
INSERT into Medico values(73862426,41226,12526);
INSERT into Medico values(73862427,41227,12527);
INSERT into Medico values(73862428,41228,12528);
INSERT into Medico values(73862429,41229,12529);
INSERT into Medico values(73862430,41230,12530);
INSERT into Medico values(73862431,41231,12531);
INSERT into Medico values(73862432,41232,12532);
INSERT into Medico values(73862433,41233,12533);
INSERT into Medico values(73862434,41234,12534);
INSERT into Medico values(73862435,41235,12535);


INSERT into P_Limpieza (DNI ,NumSeguSoc ,Codigo)
					   values(73862436,41236,12536);
INSERT into P_Limpieza values(73862437,41237,12537);
INSERT into P_Limpieza values(73862438,41238,12538);
INSERT into P_Limpieza values(73862439,41239,12539);
INSERT into P_Limpieza values(73862440,41240,12540);
INSERT into P_Limpieza values(73862441,41241,12541);
INSERT into P_Limpieza values(73862442,41242,12542);
INSERT into P_Limpieza values(73862443,41243,12543);
INSERT into P_Limpieza values(73862444,41244,12544);
INSERT into P_Limpieza values(73862445,41245,12545);
INSERT into P_Limpieza values(73862446,41246,12546);
INSERT into P_Limpieza values(73862447,41247,12547);
INSERT into P_Limpieza values(73862448,41248,12548);
INSERT into P_Limpieza values(73862449,41249,12549);
INSERT into P_Limpieza values(73862450,41250,12550);



INSERT into vigilante values(73862451,41251,12551);
INSERT into vigilante values(73862452,41252,12552);
INSERT into vigilante values(73862453,41253,12553);
INSERT into vigilante values(73862454,41254,12554);
INSERT into vigilante values(73862455,41255,12555);

             

INSERT into auxiliador values(73862456,41256,12556);
INSERT into auxiliador values(73862457,41257,12557);
INSERT into auxiliador values(73862458,41258,12558);
INSERT into auxiliador values(73862459,41259,12559);
INSERT into auxiliador values(73862460,41260,12560);



INSERT into conductor values(73862461,41261,12561);
INSERT into conductor values(73862462,41262,12562);
INSERT into conductor values(73862463,41263,12563);
INSERT into conductor values(73862464,41264,12564);
INSERT into conductor values(73862465,41265,12565);

select*from paciente; 

INSERT into Paciente (DNI ,NumSeguSoc) VALUES(73862466,41266,1);
INSERT into Paciente (DNI ,NumSeguSoc) VALUES(73862467,41267,2);                
INSERT into Paciente (DNI ,NumSeguSoc) VALUES(73862468,41268,3);  
INSERT into Paciente (DNI ,NumSeguSoc) VALUES(73862469,41269,4);  
INSERT into Paciente (DNI ,NumSeguSoc) VALUES(73862470,41270,5);  
INSERT into Paciente (DNI ,NumSeguSoc) VALUES(73862471,41271,6);  
INSERT into Paciente (DNI ,NumSeguSoc) VALUES(73862472,41272,7);  
INSERT into Paciente (DNI ,NumSeguSoc) VALUES(73862473,41273,8);  
INSERT into Paciente (DNI ,NumSeguSoc) VALUES(73862474,41274,9);  
INSERT into Paciente (DNI ,NumSeguSoc) VALUES(73862475,41275,10);  



INSERT into Pac_Sintomas (DNI ,NumSeguSoc ,Num_Historial ,Sintomas)
                         values(73862466,41266, 1,'dolor de cabeza');	
INSERT into Pac_Sintomas values(73862467,41267, 2,'Mareos y Vomitos');
INSERT into Pac_Sintomas values(73862468,41268, 3,'tos');
INSERT into Pac_Sintomas values(73862469,41269, 4,'dificultad respiratoria');
INSERT into Pac_Sintomas values(73862470,41270, 5,'dolor en el pecho');
INSERT into Pac_Sintomas values(73862471,41271, 6,'fiebre');
INSERT into Pac_Sintomas values(73862472,41272, 7,'perdida de cabello');
INSERT into Pac_Sintomas values(73862473,41273, 8,'problemas de audicion');
INSERT into Pac_Sintomas values(73862474,41274, 9,'problemas de los ojos');
INSERT into Pac_Sintomas values(73862475,41275, 10,'resfriados y la gripe');

                    
                    
                    
INSERT into Recepcionista(DNI ,NumSeguSoc ,Codigo)
						  VALUES(73862480,41280,12566);
INSERT into Recepcionista VALUES(73862481,41281,12567);
INSERT into Recepcionista VALUES(73862482,41282,12568);
INSERT into Recepcionista VALUES(73862483,41283,12569);
INSERT into Recepcionista VALUES(73862484,41284,12570);



INSERT into Laboratorio(Codigo ,Direccion)
						VALUES(7564230,'Salaverry');
INSERT into Laboratorio VALUES(7564231,'Paucarpata');
INSERT into Laboratorio VALUES(7564232,'Goyeneche');
INSERT into Laboratorio VALUES(7564233,'Ejercito');


INSERT into Urgencias(Numero)
					  value(110);
INSERT into Urgencias value(111);
INSERT into Urgencias value(112);
INSERT into Urgencias value(113);



INSERT into Hospitalizacion(Numero)
							value(110);
INSERT into Hospitalizacion value(111);
INSERT into Hospitalizacion value(112);
INSERT into Hospitalizacion value(113);



INSERT into Pediatria (Numero)
					  value(110);
INSERT into Pediatria value(111);
INSERT into Pediatria value(112);
INSERT into Pediatria value(113);



INSERT into Consultas (Numero)
					  value(110);
INSERT into Consultas value(111);
INSERT into Consultas value(112);
INSERT into Consultas value(113);


INSERT into Entrada (Codigo ,RUC_Hosp )
					values(78650,80805523);
INSERT into Entrada values(78651,80805523);
INSERT into Entrada values(78652,80805523);
INSERT into Entrada values(78653,80805523);


INSERT into Ent_Vig (CodigoE ,DNI ,NumSegSoc ,CodigoV)
					values(78650,73862451,41251,12551);
INSERT into Ent_Vig values(78651,73862452,41252,12552);
INSERT into Ent_Vig values(78652,73862453,41253,12553);
INSERT into Ent_Vig values(78653,73862454,41254,12554);
INSERT into Ent_Vig values(78653,73862455,41255,12555);



INSERT into Ambulancia (Placa ,Capacidad ,RUC_Hosp)
					   values('V5R-458',15,80805523);
INSERT into Ambulancia values('V8Y-745',13,80805523);
INSERT into Ambulancia values('H7G-412',10,80805523);
INSERT into Ambulancia values('C7T-325',15,80805523);
INSERT into Ambulancia values('V6T-145',12,80805523);


INSERT into Registro_Limpieza (Numero,DNI ,NumSeguSoc ,Codigo ,Fecha ,Hora)
							  values(110,73862436,41236,12536,'2018-10-25',8);
INSERT into Registro_Limpieza values(111,73862440,41240,12540,'2018-06-27',16);
INSERT into Registro_Limpieza values(112,73862443,41243,12543,'2018-11-02',20);
INSERT into Registro_Limpieza values(113,73862447,41247,12547,'2018-10-23',8);
		

INSERT into Amb_Pac (Placa ,DNI ,NumSeguSoc ,Num_Historial)
					values('V5R-458',73862466,41266, 1);
INSERT into Amb_Pac values('V5R-458',73862467,41267, 2); 
INSERT into Amb_Pac values('V5R-458',73862468,41268, 3);            
INSERT into Amb_Pac values('V8Y-745',73862469,41269, 4);            
INSERT into Amb_Pac values('V8Y-745',73862470,41270, 5);            
INSERT into Amb_Pac values('V8Y-745',73862471,41271, 6);            
INSERT into Amb_Pac values('V8Y-745',73862472,41272, 7);            
INSERT into Amb_Pac values('V8Y-745',73862473,41273, 8);            
           
        
INSERT into Amb_Aux (Placa ,DNI ,NumSeguSoc ,Codigo )
				    values('V6T-145',73862456,41256,12556);
INSERT into Amb_Aux values('C7T-325',73862457,41257,12557);
INSERT into Amb_Aux values('H7G-412',73862458,41258,12558);
INSERT into Amb_Aux values('V5R-458',73862459,41259,12559);

                
INSERT into Amb_Con (Placa ,DNI ,NumSegSoc ,Codigo)
					values('V6T-145',73862461,41261,12561);
INSERT into Amb_Con values('C7T-325',73862462,41262,12562);
INSERT into Amb_Con values('H7G-412',73862463,41263,12563);
INSERT into Amb_Con values('V5R-458',73862464,41264,12564);


INSERT into Emergencia (Codigo ,Tipo ,NumeroBU)
					   values(14780,'level',110);
INSERT into Emergencia values(14781,'grave',110);
INSERT into Emergencia values(14782,'muy grave',111);
INSERT into Emergencia values(14783,'intermedio',111);
INSERT into Emergencia values(14784,'grave',112);
INSERT into Emergencia values(14785,'level',112);
INSERT into Emergencia values(14786,'grave',113);
INSERT into Emergencia values(14787,'muy grave',113);
INSERT into Emergencia values(14788,'muy grave',112);
INSERT into Emergencia values(14789,'grave',111);

INSERT into Cuarto(Numero ,NumeroBH)
				   values(1,110);
INSERT into Cuarto values(2,110);
INSERT into Cuarto values(3,110);
INSERT into Cuarto values(4,110);
INSERT into Cuarto values(5,111);
INSERT into Cuarto values(6,112);
INSERT into Cuarto values(7,112);
INSERT into Cuarto values(8,112);
INSERT into Cuarto values(9,112);
INSERT into Cuarto values(10,113);
INSERT into Cuarto values(11,113);
INSERT into Cuarto values(12,113);
INSERT into Cuarto values(13,113);
INSERT into Cuarto values(14,111);
INSERT into Cuarto values(15,111);

		
INSERT into Almacen (Codigo ,RUCH)
					values(78160,80805523);
INSERT into Almacen values(78161,80805523);
INSERT into Almacen values(78162,80805523);
INSERT into Almacen values(78163,80805523);
INSERT into Almacen values(78164,80805523);


INSERT into Emerg_Pac (DNI ,NumSegSoc ,Num_Historial ,CodigoE)
					  values(73862466,41266, 1, 14780);
INSERT into Emerg_Pac values(73862467,41267, 2, 14781);
INSERT into Emerg_Pac values(73862468,41268, 3, 14782);
INSERT into Emerg_Pac values(73862469,41269, 4, 14783);
INSERT into Emerg_Pac values(73862470,41270, 5, 14784);
INSERT into Emerg_Pac values(73862471,41271, 6, 14785);
INSERT into Emerg_Pac values(73862472,41272, 7, 14786);
INSERT into Emerg_Pac values(73862473,41273, 8, 14787);
INSERT into Emerg_Pac values(73862474,41274, 9, 14788);
INSERT into Emerg_Pac values(73862475,41275, 10, 14789);


INSERT into Emp_Proveedora (RUC ,Direccion)
						   values(48579120,'Goyeneche');
INSERT into Emp_Proveedora values(48579121,'Paucarpata');
INSERT into Emp_Proveedora values(48579122,'Ejercito');
INSERT into Emp_Proveedora values(48579123,'Cayma');
INSERT into Emp_Proveedora values(48579124,'Independencia');



INSERT into Diagnostico (Codigo ,Emfermedad ,Tratamiento )
			            values(78400, 'resfrio', 'Parasetamol');
INSERT into Diagnostico values(78401, 'SIDA', 'terapia antirretroviaral');
INSERT into Diagnostico values(78402, 'Diabetes', 'Insulina');
INSERT into Diagnostico values(78403, 'Pulmonia', 'Antibioticos');
INSERT into Diagnostico values(78404, 'Cirrosis', 'Transplantes de higado');
INSERT into Diagnostico values(78405, 'Tuberculosis', 'Antibioticos');
INSERT into Diagnostico values(78406, 'Ebola', 'hospitalaria de soporte');
INSERT into Diagnostico values(78407, 'Cancer', 'radioterapia');
INSERT into Diagnostico values(78408, 'Leucemia', 'level');
INSERT into Diagnostico values(78409, 'Rosacea', 'Antibioticos');


#####CITA######################3
INSERT into Cita(CodigoD ,DNIM ,NumSegSocM ,CodigoM ,NumeroBC ,DNIR ,NumSegSocR ,CodigoR ,Fecha ,Tipo ,Costo ,NumSegSocP ,DNIP)
				 VALUES(78400,73862421,41221,12521,110,73862480,41280,12566,'2018-01-18','Emergencia',200.00,41266,73862466);
INSERT INTO Cita values(78401,73862422,41222,12522,110,73862480,41280,12566,'2018-01-18','Normal',210.00,41267,73862467);
INSERT INTO Cita values(78402,73862423,41223,12523,110,73862481,41281,12567,'2002-01-18','Normal',220.00,41268,73862468);
INSERT INTO Cita values(78403,73862424,41224,12524,111,73862482,41282,12568,'2003-01-18','Emergencia',230.00,41269,73862469);
INSERT INTO Cita values(78404,73862425,41225,12525,111,73862483,41283,12569,'2004-05-18','Normal',240.00,41270,73862470);
INSERT INTO Cita values(78405,73862426,41226,12526,111,73862480,41280,12566,'2005-04-18','Emergencia',250.00,41271,73862471);
INSERT INTO Cita values(78406,73862427,41227,12527,112,73862481,41281,12567,'2006-10-18','Normal',260.00,41272,73862472);
INSERT INTO Cita values(78407,73862428,41228,12528,112,73862482,41282,12568,'2017-06-18','Normal',270.00,41273,73862473);
INSERT INTO Cita values(78408,73862429,41229,12529,113,73862483,41283,12569,'2008-01-18','Emergencia',280.00,41274,73862474);
INSERT INTO Cita values(78409,73862430,41230,12530,113,73862480,41280,12566,'2018-11-18','Normal',290.00,41275,73862475);

INSERT into Cuarto_Paciente (DNI ,NumSegSoc,Num_Historial ,NumeroC )
							values(73862466,41266,1,1);
INSERT INTO Cuarto_Paciente values (73862467,41267,2,2);
INSERT INTO Cuarto_Paciente values (73862468,41268,3,3);
INSERT INTO Cuarto_Paciente values (73862469,41269,4,4);
INSERT INTO Cuarto_Paciente values (73862470,41270,5,5);
INSERT INTO Cuarto_Paciente values (73862471,41271,6,6);
INSERT INTO Cuarto_Paciente values (73862472,41272,7,7);
INSERT INTO Cuarto_Paciente values (73862473,41273,8,8);
INSERT INTO Cuarto_Paciente values (73862474,41274,9,9);
INSERT INTO Cuarto_Paciente values (73862475,41275,10,10);


INSERT into Medicamentos (Codigo ,Nombre ,Precio ,Fecha_Caducidad ,Cod_Far)
						 VALUES(788880,'Paracetamol',15,'Junio 2018',1200);
INSERT INTO Medicamentos values (788881,'Dormina',10,'Agosto 2017',1201);
INSERT INTO Medicamentos values (788882,'Endorfina',12,'Setiembre 2016',1202);
INSERT INTO Medicamentos values (788883,'Minaton',13,'octube 2015',1203);
INSERT INTO Medicamentos values (788884,'Enton',14,'Noviembre 2014',1204);
INSERT INTO Medicamentos values (788885,'Endorfina',10,'Agosto 2017',1200);
INSERT INTO Medicamentos values (788886,'Apomorfina',12,'Setiembre 2016',1201);
INSERT INTO Medicamentos values (788887,'Apraclonidina',13,'octube 2015',1202);
INSERT INTO Medicamentos values (788888,'Argatroban',14,'Noviembre 2014',1203);
INSERT INTO Medicamentos values (788889,'Aripiprazol',10,'Agosto 2017',1204);

INSERT into Accion_Medica (Cod_Medi ,Accion)
					values(788880,'Hospitalizacion');
INSERT INTO Accion_Medica values (788881,'Descanso');
INSERT INTO Accion_Medica values (788882,'Descanso');
INSERT INTO Accion_Medica values (788883,'Hospitalizacion');
INSERT INTO Accion_Medica values (788884,'Ninguna');
INSERT INTO Accion_Medica values (788885,'Ninguna');
INSERT INTO Accion_Medica values (788887,'Descanso');
INSERT INTO Accion_Medica values (788888,'Descanso');
INSERT INTO Accion_Medica values (788889,'Hospitalizacion');


INSERT into Medicamento_Lab (CodigoM ,CodigoL)
	values(788880,7564230);
INSERT INTO Medicamento_Lab values(788881,7564231);
INSERT INTO Medicamento_Lab values(788882,7564232);
INSERT INTO Medicamento_Lab values(788883,7564233);
INSERT INTO Medicamento_Lab values(788884,7564231);
INSERT INTO Medicamento_Lab values(788885,7564232);
INSERT INTO Medicamento_Lab values(788886,7564233);
INSERT INTO Medicamento_Lab values(788887,7564231);
INSERT INTO Medicamento_Lab values(788888,7564232);
INSERT INTO Medicamento_Lab values(788889,7564233);


INSERT into Medicamento_EmpPro (Codigo ,RUC)
	values(788880,48579120);
INSERT INTO Medicamento_EmpPro values(788881,48579121);
INSERT INTO Medicamento_EmpPro values(788882,48579122);
INSERT INTO Medicamento_EmpPro values(788883,48579123);
INSERT INTO Medicamento_EmpPro values(788884,48579124);
INSERT INTO Medicamento_EmpPro values(788885,48579120);
INSERT INTO Medicamento_EmpPro values(788886,48579121);
INSERT INTO Medicamento_EmpPro values(788887,48579122);
INSERT INTO Medicamento_EmpPro values(788888,48579123);
INSERT INTO Medicamento_EmpPro values(788889,48579124);




INSERT into Almacen_Medicamentos (CodigoA ,CodigoM )
								values(78160,788880);
INSERT INTO Almacen_Medicamentos values(78161,788881);
INSERT INTO Almacen_Medicamentos values(78162,788882);
INSERT INTO Almacen_Medicamentos values(78163,788883);
INSERT INTO Almacen_Medicamentos values(78164,788884);
INSERT INTO Almacen_Medicamentos values(78160,788885);
INSERT INTO Almacen_Medicamentos values(78161,788886);
INSERT INTO Almacen_Medicamentos values(78162,788887);
INSERT INTO Almacen_Medicamentos values(78163,788888);
INSERT INTO Almacen_Medicamentos values(78164,788889);


INSERT into Receta (DNI ,NumSegSoc ,CodigoMed ,CodigoM ,CodigoD)
	values(73862421,41221,12521,788880,78400);
INSERT INTO Receta values (73862422,41222,12522,788881,78401);
INSERT INTO Receta values (73862423,41223,12523,788882,78402);
INSERT INTO Receta values (73862424,41224,12524,788883,78403);
INSERT INTO Receta values (73862425,41225,12525,788884,78404);
INSERT INTO Receta values (73862426,41226,12526,788885,78405);
INSERT INTO Receta values (73862427,41227,12527,788886,78406);
INSERT INTO Receta values (73862428,41228,12528,788887,78407);
INSERT INTO Receta values (73862429,41229,12529,788888,78408);
INSERT INTO Receta values (73862430,41230,12530,788889,78409);


