

Conversaciones
5,34 GB (35%) ocupados de 15 GB
Administrar
Condiciones · Privacidad · Política del programa
Última actividad de la cuenta: hace 28 minutos
Detalles

/*
-- Creando el Esquema de : 'CafeteriaMexicana'
--UNAM - IIMAS
--Maestría en Ciencias e Ingeniería en Computación
--
*/
DROP DATABASE cafeteria;
CREATE DATABASE IF NOT EXISTS cafeteria;
USE cafeteria;



--
-- DEFINITION OF TABLE USUARIOS
--

DROP TABLE IF EXISTS Usuarios;
CREATE TABLE Usuarios 
(
  idUsuario INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  usuario varchar(30) NOT NULL  ,
  nombre VARCHAR(90)   NOT NULL ,
  apeMat VARCHAR(50)    ,
  apePat VARCHAR(50)    ,
  password varchar(18) NOT NULL,
  tipoUsuario varchar(100) NOT NULL,
  fechaAlta timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,   
  PRIMARY KEY  (idUsuario)
)
 ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;





--
-- DEFINITION OF TABLE PRODUCTOS
--

DROP TABLE IF EXISTS Productos;
CREATE TABLE Productos 
(
  idProducto INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  nombreProducto VARCHAR(100) NOT NULL  ,
  cantidadDisponible INT(10)     NULL ,
  precioUnitarioProducto INT(10)    ,
  caducidad DATE   NULL    , 
  estatus TINYINT(1) DEFAULT NULL, 
  PRIMARY KEY  (idProducto)
)
 ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=LATIN1;



--
-- DEFINITION OF TABLE TICKETS
--

DROP TABLE IF EXISTS Tickets;
CREATE TABLE Tickets 
(
  idTicket INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,   
  idUsuario INT(10)  UNSIGNED  NOT NULL , 
  fechaTicket DATE        ,  
  montoTotal INT (10)    NULL,  
  PRIMARY KEY  (idTicket),  
  FOREIGN KEY (idUsuario) REFERENCES Usuarios (idUsuario)
) 
ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=LATIN1;
 
 
 
--
-- DEFINITION OF TABLE VENTAS
--

DROP TABLE IF EXISTS Tickets_has_Productos;
CREATE TABLE Tickets_has_Productos 
(
  idTicketProducto INT (12) UNSIGNED NOT NULL,
  idTicket INT(10) UNSIGNED   NULL ,
  idProducto INT(10) UNSIGNED   NULL  ,  
  PRIMARY KEY  (idTicketProducto),
  FOREIGN KEY (idProducto) REFERENCES Productos (idProducto),  
  FOREIGN KEY (idTicket) REFERENCES Tickets (idTicket)
) 
ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=LATIN1;
 
 
 
 
 
/*!40000 ALTER TABLE Usuarios DISABLE KEYS */;
INSERT INTO Usuarios (idUsuario,usuario,nombre,apeMat,apePat,password,tipoUsuario,fechaAlta) VALUES 
 (1,'ADMINISTRADOR','JOSEFA','DOMINGUEZ','REYES','admin123',1,'2019-05-30 12:02:26' ),
 (2,'VENDEDORA1','LUISA','ALVAREZ','GÓMEZ','ventas123',2,'2019-05-30 12:02:26' ) ;
