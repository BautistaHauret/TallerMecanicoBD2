-- create database Taller_Mecanico
use Taller_Mecanico
go

-- 1) Cliente
create table Cliente (
    idCliente int identity(1,1) not null primary key,
    Nombre varchar (50) not null,
    Apellido varchar (50) not null,
    Telefono varchar (50) null,
    Email varchar (100) not null  constraint UQ_Cliente_Email unique,
    Direccion varchar  (200) null
);
go

-- 2) Empleado
create table Empleado (
    IdEmpleado int identity(1,1) not null primary key,
    Nombre varchar(50) not null,
    Apellido varchar(50) not null,
    Dni varchar(20) not null unique,
    Telefono varchar(20),
    Email varchar(100) not null unique,
    FechaIngreso date not null,
    Cargo varchar(50) not null,
    Activo bit not null
);
go

-- 3) Repuestos
create table Repuestos (
    IdRepuesto int identity(1,1) not null primary key,
    Nombre varchar(50) not null,
    Descripcion varchar(200),
    PrecioUnitario decimal(10,2),
    Stock int not null
);
go

-- 4) Servicios
create table Servicios (
    IdServicio int identity(1,1) not null primary key,
    Nombre varchar(50) not null,
    Descripcion varchar(300) not null,
    Costo decimal(10,2) not null
);
go

-- 5) Estado_Orden
create table Estado_Orden (
    IdEstado int identity(1,1) not null primary key,
    Descripcion varchar(200) not null
);
go

-- 6) Vehiculo
create table Vehiculo (
    idVehiculo int identity(1,1) not null primary key,
    idCliente int not null,
    Marca varchar(30) not null,
    Modelo varchar(30) not null,
    Año int not null,
    Patente varchar(20) not null unique,
    foreign key (idCliente) references Cliente(idCliente)
);
go

-- 7) Orden_Trabajo
create table Orden_Trabajo (
    idOrden int identity(1,1) not null primary key,
    idVehiculo int not null,
    idCliente int not null,
    FechaIngreso datetime not null,
    Diagnostico varchar(200) not null,
    idEstado int not null,
    foreign key (idVehiculo) references Vehiculo(idVehiculo),
    foreign key (idCliente) references Cliente(idCliente),
    foreign key (idEstado) references Estado_Orden(IdEstado)
);
go

-- 8) Orden_Empleado
create table Orden_Empleado (
    idOrden int not null,
    idEmpleado int not null,
    primary key (idOrden, idEmpleado),
    foreign key (idOrden) references Orden_Trabajo(idOrden),
    foreign key (idEmpleado) references Empleado(IdEmpleado)
);
go

-- 9) Orden_Repuestos
create table Orden_Repuestos (
    IdOrden int not null,
    IdRepuesto int not null,
    Cantidad int not null,
    PrecioUnitario decimal(10,2) not null,
    primary key (IdOrden, IdRepuesto),
    foreign key (IdOrden) references Orden_Trabajo(idOrden),
    foreign key (IdRepuesto) references Repuestos(IdRepuesto)
);
go

-- 10) Orden_Servicio
create table Orden_Servicio (
    IdOrden int not null,
    IdServicio int not null,
    primary key (IdOrden, IdServicio),
    foreign key (IdOrden) references Orden_Trabajo(idOrden),
    foreign key (IdServicio) references Servicios(IdServicio)
);
go

-- 11) Facturas
create table Facturas (
    IdFactura int identity(1,1) not null primary key,
    Fecha date not null,
    Total decimal(10,2) not null,
    IdOrden int not null,
    foreign key (IdOrden) references Orden_Trabajo(idOrden)
);
go

