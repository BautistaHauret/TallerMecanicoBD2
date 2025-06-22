use Taller_Mecanico
go

insert into Cliente (Nombre, Apellido, Telefono, Email, Direccion)
values
('Juan', 'Pérez', '1134567890', 'juan.perez@email.com', 'Av. Corrientes 1234, CABA'),
('María', 'Gonzalez', '1145678901', 'maria.gonzalez@email.com', 'Calle Falsa 123, CABA'),
('Carlos', 'Lopez', '1156789012', 'carlos.lopez@email.com', 'San Martín 45, La Plata'),
('Ana', 'Martinez', '1167890123', 'ana.martinez@email.com', 'Rivadavia 789, Quilmes'),
('Luis', 'Fernandez', '1178901234', 'luis.fernandez@email.com', 'Belgrano 321, Morón'),
('Laura', 'Sanchez', '1189012345', 'laura.sanchez@email.com', 'Alem 678, Vicente López'),
('Pedro', 'Diaz', '1190123456', 'pedro.diaz@email.com', 'Mitre 123, Lanús'),
('Lucía', 'Romero', '1201234567', 'lucia.romero@email.com', 'Pueyrredón 456, Ramos Mejía'),
('Jorge', 'Castro', '1212345678', 'jorge.castro@email.com', 'Cabildo 900, CABA'),
('Sofía', 'Torres', '1223456789', 'sofia.torres@email.com', '9 de Julio 1111, San Justo'),
('Diego', 'Mendez', '1234567890', 'diego.mendez@email.com', 'Alsina 222, Lomas'),
('Valeria', 'Alvarez', '1245678901', 'valeria.alvarez@email.com', 'Catamarca 789, Avellaneda'),
('Fernando', 'Gutierrez', '1256789012', 'fernando.gutierrez@email.com', 'Viamonte 654, CABA'),
('Camila', 'Moreno', '1267890123', 'camila.moreno@email.com', 'Laprida 888, Quilmes'),
('Ricardo', 'Ibarra', '1278901234', 'ricardo.ibarra@email.com', 'Perón 303, Lanús'),
('Julieta', 'Silva', '1289012345', 'julieta.silva@email.com', 'Rosales 101, Palermo'),
('Manuel', 'Ojeda', '1290123456', 'manuel.ojeda@email.com', 'Castelli 1212, Morón'),
('Martina', 'Paz', '1301234567', 'martina.paz@email.com', 'Francia 456, La Plata'),
('Santiago', 'Vega', '1312345678', 'santiago.vega@email.com', 'Italia 909, Tigre'),
('Andrea', 'Campos', '1323456789', 'andrea.campos@email.com', 'Chile 777, Recoleta');
go

insert into Empleado (Nombre, Apellido, Dni, Telefono, Email, FechaIngreso, Cargo, Activo)
values
('Mario', 'Gómez', '30111222', '1144123456', 'mario.gomez@taller.com', '2020-03-01', 'Mecánico', 1),
('Laura', 'Fernández', '32122333', '1144234567', 'laura.fernandez@taller.com', '2021-05-10', 'Recepcionista', 1),
('Carlos', 'Pereyra', '30122334', '1144345678', 'carlos.pereyra@taller.com', '2019-11-15', 'Mecánico', 1),
('Sofía', 'Ríos', '30133445', '1144456789', 'sofia.rios@taller.com', '2023-01-20', 'Administrativa', 1),
('Pedro', 'Suárez', '30144556', '1144567890', 'pedro.suarez@taller.com', '2020-07-18', 'Mecánico', 1),
('Ana', 'López', '30155667', '1144678901', 'ana.lopez@taller.com', '2022-03-22', 'Recepcionista', 0),
('Julián', 'Martínez', '30166778', '1144789012', 'julian.martinez@taller.com', '2021-09-01', 'Supervisor', 1),
('Valeria', 'Díaz', '30177889', '1144890123', 'valeria.diaz@taller.com', '2018-04-30', 'Contadora', 1),
('Gabriel', 'Herrera', '30188990', '1144901234', 'gabriel.herrera@taller.com', '2020-10-05', 'Mecánico', 1),
('Cecilia', 'Mora', '30199001', '1144012345', 'cecilia.mora@taller.com', '2022-12-12', 'Administrativa', 1);
go

insert into Repuestos (Nombre, Descripcion, PrecioUnitario, Stock)
values
('Filtro de aceite', 'Filtro compatible con motores 1.6 y 2.0', 1200.00, 50),
('Bujías', 'Juego de 4 bujías NGK', 4500.00, 30),
('Pastillas de freno', 'Delanteras para línea Ford Fiesta', 6800.00, 25),
('Aceite sintético 5W30', 'Bidón 4L Shell Helix Ultra', 10500.00, 40),
('Batería 12V 65Ah', 'Batería Bosch para autos medianos', 29000.00, 15),
('Filtro de aire', 'Filtro rectangular para motor VW 1.6', 1800.00, 35),
('Correa de distribución', 'Correa Gates para Chevrolet Corsa', 7200.00, 12),
('Amortiguador delantero', 'Delantero izquierdo marca Monroe', 13400.00, 10),
('Amortiguador trasero', 'Trasero derecho para Renault Logan', 12900.00, 9),
('Lámpara H4', 'Lámpara halógena para faros principales', 900.00, 100),
('Líquido refrigerante', 'Refrigerante 1L, mezcla al 50%', 1500.00, 45),
('Filtro de combustible', 'Filtro Mahle para motores diesel', 2800.00, 20),
('Espejo retrovisor derecho', 'Para Ford Ecosport 2018', 11200.00, 6),
('Manija de puerta', 'Delantera derecha, VW Gol', 3600.00, 8),
('Kit embrague', 'Completo para Fiat Palio', 24800.00, 5),
('Bobina de encendido', 'Para Peugeot 207', 15700.00, 7),
('Sensor de temperatura', 'Sensor para Chevrolet Aveo', 3100.00, 14),
('Termostato', 'Compatible con Renault Kangoo', 3900.00, 12),
('Fusibles surtidos', 'Caja con 20 unidades', 1200.00, 70),
('Limpiaparabrisas', 'Par de escobillas universales', 2800.00, 30);
go

insert into Servicios (Nombre, Descripcion, Costo)
values
('Cambio de aceite', 'Reemplazo de aceite de motor y revisión de niveles', 5500.00),
('Cambio de filtro de aire', 'Sustitución del filtro de aire del motor', 2000.00),
('Cambio de filtro de combustible', 'Reemplazo del filtro de combustible por uno nuevo', 2800.00),
('Cambio de pastillas de freno', 'Sustitución de pastillas delanteras o traseras', 7500.00),
('Alineación y balanceo', 'Servicio completo de alineación y balanceo de ruedas', 6200.00),
('Revisión general', 'Inspección completa de componentes del vehículo', 4800.00),
('Reemplazo de batería', 'Cambio de batería y prueba de carga', 3000.00),
('Revisión de suspensión', 'Chequeo de amortiguadores y componentes de suspensión', 4500.00),
('Cambio de correa de distribución', 'Reemplazo de la correa de distribución según especificaciones', 12500.00),
('Carga de aire acondicionado', 'Recarga del gas y prueba del sistema', 6400.00),
('Revisión eléctrica', 'Diagnóstico de sistema eléctrico y fusibles', 3800.00),
('Diagnóstico por scanner', 'Análisis computarizado de fallas del motor', 3500.00),
('Cambio de bujías', 'Sustitución de bujías por nuevas', 4000.00),
('Reparación de motor', 'Intervención parcial del motor por fallas menores', 18500.00),
('Lavado de motor', 'Limpieza del motor con productos especiales', 2300.00);
go

insert into Estado_Orden (Descripcion)
values
('Pendiente'),
('En proceso'),
('Esperando repuestos'),
('Listo para entrega'),
('Entregado'),
('Cancelado'),
('En garantía');
go


insert into Vehiculo (idCliente, Marca, Modelo, Año, Patente)
values
(1, 'Toyota', 'Corolla', 2018, 'AB123CD'),
(2, 'Ford', 'Focus', 2016, 'AC234EF'),
(3, 'Chevrolet', 'Cruze', 2020, 'AD345GH'),
(4, 'Volkswagen', 'Gol', 2015, 'AE456IJ'),
(5, 'Peugeot', '208', 2019, 'AF567KL'),
(6, 'Renault', 'Sandero', 2017, 'AG678MN'),
(7, 'Honda', 'Civic', 2021, 'AH789OP'),
(8, 'Fiat', 'Cronos', 2020, 'AI890QR'),
(9, 'Nissan', 'Versa', 2016, 'AJ901ST'),
(10, 'Hyundai', 'i10', 2014, 'AK012UV'),
(11, 'Chevrolet', 'Onix', 2022, 'AL123WX'),
(12, 'Ford', 'Ka', 2013, 'AM234YZ'),
(13, 'Toyota', 'Yaris', 2021, 'AN345AB'),
(14, 'Peugeot', '308', 2017, 'AO456CD'),
(15, 'Volkswagen', 'Vento', 2019, 'AP567EF'),
(16, 'Renault', 'Duster', 2018, 'AQ678GH'),
(17, 'Fiat', 'Palio', 2015, 'AR789IJ'),
(18, 'Nissan', 'Sentra', 2020, 'AS890KL'),
(19, 'Hyundai', 'Accent', 2017, 'AT901MN'),
(20, 'Honda', 'Fit', 2016, 'AU012OP');
go

set dateformat ymd;
go

insert into Orden_Trabajo (idVehiculo, idCliente, FechaIngreso, Diagnostico, idEstado)
values
(1, 1, '2024-05-10 08:30:00', 'Cambio de frenos delanteros', 1),
(2, 2, '2024-05-11 09:00:00', 'Revisión general', 2),
(3, 3, '2024-05-12 10:15:00', 'Cambio de aceite y filtro', 3),
(4, 4, '2024-05-13 11:45:00', 'Falla en el sistema eléctrico', 1),
(5, 5, '2024-05-14 08:00:00', 'Cambio de batería', 2),
(6, 6, '2024-05-15 14:30:00', 'Reparación de motor', 3),
(7, 7, '2024-05-16 13:00:00', 'Reemplazo de correa de distribución', 4),
(8, 8, '2024-05-17 15:00:00', 'Cambio de amortiguadores', 5),
(9, 9, '2024-05-18 09:30:00', 'Diagnóstico de ruidos en suspensión', 1),
(10, 10, '2024-05-19 10:45:00', 'Alineación y balanceo', 2),
(11, 11, '2024-05-20 08:15:00', 'Cambio de bujías', 3),
(12, 12, '2024-05-21 12:00:00', 'Problemas en el sistema de escape', 4),
(13, 13, '2024-05-22 16:45:00', 'Cambio de pastillas de freno', 5),
(14, 14, '2024-05-23 09:20:00', 'Falla intermitente en tablero', 1),
(15, 15, '2024-05-24 11:10:00', 'Revisión de sistema de refrigeración', 2),
(16, 16, '2024-05-25 13:50:00', 'No arranca', 3),
(17, 17, '2024-05-26 08:00:00', 'Cambio de filtro de aire', 4),
(18, 18, '2024-05-27 10:00:00', 'Ruido en dirección hidráulica', 5),
(19, 19, '2024-05-28 14:00:00', 'Problemas en transmisión automática', 1),
(20, 20, '2024-05-29 15:30:00', 'Revisión completa por viaje', 2);
go



insert into Orden_Empleado (idOrden, idEmpleado)
values
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 1),
(11, 2),
(12, 3),
(13, 4),
(14, 5),
(15, 6),
(16, 7),
(17, 8),
(18, 9),
(19, 10),
(2, 2),
(4, 3),
(6, 4),
(8, 5),
(10, 6),
(12, 7),
(14, 8),
(16, 9),
(18, 10);
go


	
insert into Orden_Repuestos (IdOrden, IdRepuesto, Cantidad, PrecioUnitario)
values
(1, 1, 2, 2500.00),
(1, 2, 1, 3000.00),
(2, 3, 1, 1200.00),
(3, 4, 2, 1500.00),
(4, 5, 1, 800.00),
(5, 6, 3, 2000.00),
(6, 7, 1, 1700.00),
(7, 8, 2, 900.00),
(8, 9, 1, 1800.00),
(9, 10, 1, 1100.00),
(10, 11, 1, 500.00),
(11, 12, 2, 2200.00),
(12, 13, 1, 1000.00),
(13, 14, 1, 750.00),
(14, 15, 1, 1300.00),
(15, 16, 2, 1800.00),
(16, 17, 1, 950.00),
(17, 18, 2, 1600.00),
(18, 19, 1, 1400.00),
(19, 20, 2, 2100.00),
(20, 1, 1, 2500.00),
(3, 2, 2, 3000.00),
(6, 5, 1, 800.00),
(10, 8, 1, 900.00),
(15, 12, 2, 2200.00),
(17, 7, 1, 1700.00),
(18, 3, 1, 1200.00),
(19, 14, 1, 750.00),
(20, 10, 2, 1100.00),
(2, 6, 1, 2000.00);
go


insert into Orden_Servicio (IdOrden, IdServicio)
values
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 15),
(15, 1),
(16, 2),
(17, 3),
(18, 4),
(19, 5),
(20, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10),
(6, 11),
(7, 12),
(8, 13),
(9, 14),
(10, 15);
go


insert into Facturas (Fecha, Total, IdOrden)
values
('2024-05-01', 25000.00, 1),
('2024-05-01', 18500.50, 2),
('2024-05-02', 32750.00, 3),
('2024-05-03', 41000.75, 4),
('2024-05-03', 29800.00, 5),
('2024-05-04', 15000.00, 6),
('2024-05-05', 22500.50, 7),
('2024-05-05', 33000.00, 8),
('2024-05-06', 19900.00, 9),
('2024-05-06', 17800.00, 10),
('2024-05-07', 31000.00, 11),
('2024-05-08', 22000.00, 12),
('2024-05-08', 24500.00, 13),
('2024-05-09', 27500.00, 14),
('2024-05-10', 30500.00, 15),
('2024-05-10', 19500.00, 16),
('2024-05-11', 16000.00, 17),
('2024-05-11', 28500.00, 18),
('2024-05-12', 19000.00, 19),
('2024-05-13', 26500.00, 20);
go



select * from Empleado
select * from Cliente
select * from  Estado_Orden
select * from Facturas
select * from Orden_Empleado
select * from Orden_Repuestos
select * from Orden_Servicio
select * from Orden_Trabajo
select * from Repuestos
select * from Servicios
select * from Vehiculo 


-- Verifica que todas las órdenes tienen un cliente y un vehículo relacionado:
select OT.idOrden, C.Nombre + ' ' + C.Apellido as Cliente, V.Marca + ' ' + V.Modelo as Vehiculo
from Orden_Trabajo OT
inner join Cliente C on OT.idCliente = C.idCliente
inner join Vehiculo V on OT.idVehiculo = V.idVehiculo;

 -- Verifica que las facturas correspondan a órdenes existentes:
select F.idFactura, F.IdOrden
from Facturas F
left join Orden_Trabajo OT on F.IdOrden = OT.idOrden
where OT.idOrden is null;  -- Si devuelve filas, hay facturas sin orden válida


-- Verifica si hay servicios asignados a órdenes inexistentes:
select OS.IdOrden, OS.IdServicio
from Orden_Servicio OS
left join Orden_Trabajo OT on OS.IdOrden = OT.idOrden
where OT.idOrden is null;