CREATE DATABASE Neverland;

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Pago (
    id_pago INT PRIMARY KEY AUTO_INCREMENT,
    importe DECIMAL(10,2) NOT NULL,
    estado ENUM('pagado', 'pendiente', 'cancelado') DEFAULT 'pendiente' NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Reserva (
   id_reserva INT PRIMARY KEY AUTO_INCREMENT,
   fecha_reserva DATE NOT NULL,
   id_pago INT NOT NULL,
   FOREIGN KEY (id_pago) REFERENCES Pago(id_pago)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Evento (
   id_evento INT PRIMARY KEY AUTO_INCREMENT,
   fecha_evento DATE NOT NULL,
   turno ENUM('mañana', 'tarde', 'día completo') NOT NULL,
   tipo_tarifa ENUM('laborable', 'festivo') NOT NULL,
   tipo VARCHAR(50) NOT NULL,
   limpieza BOOLEAN NOT NULL,
   id_reserva INT UNIQUE NOT NULL,
   FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva)
    ON DELETE CASCADE ON UPDATE CASCADE
);