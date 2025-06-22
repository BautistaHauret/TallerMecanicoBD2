use Taller_Mecanico
go


-- Vista: Servicios solicitados por Cliente
create view vw_ServiciosPorCliente as
select 
    c.Nombre + ' ' + c.Apellido AS Cliente,
    v.Marca + ' ' + v.Modelo AS Vehiculo,
    v.Patente AS Patente, 
    ot.idOrden AS [N° Orden],
    ot.FechaIngreso AS [Fecha de Ingreso],
    s.Nombre AS Servicio,
    s.Costo
from Orden_Trabajo ot
inner join Cliente c on ot.idCliente = c.idCliente
inner join Vehiculo v on ot.idVehiculo = v.idVehiculo
inner join  Orden_Servicio os on ot.idOrden = os.idOrden
inner join Servicios s on os.idServicio = s.idServicio;
go


-- Vista: Resumen de Servicios por Cliente 
create view vw_ResumenServiciosPorCliente as
select 
    c.Nombre + ' ' + c.Apellido as Cliente,
    count(s.idServicio) as [Cantidad de Servicios],
    sum(s.Costo) as [Total Gastado]
from Orden_Trabajo ot
inner join Cliente c on ot.idCliente = c.idCliente
inner join Orden_Servicio os on ot.idOrden = os.idOrden
inner join Servicios s on os.idServicio = s.idServicio
group by c.Nombre, c.Apellido;
go


-- Vista: Órdenes Finalizadas
create view vw_OrdenesFinalizadas as
select 
    ot.idOrden as [N° Orden],
    c.Nombre + ' ' + c.Apellido as Cliente,
    v.Marca + ' ' + v.Modelo as Vehiculo,
    ot.FechaIngreso as [Fecha de Ingreso],
    eo.Descripcion as Estado,
    ot.Diagnostico
from Orden_Trabajo ot
inner join Cliente c on ot.idCliente = c.idCliente
inner join Vehiculo v on ot.idVehiculo = v.idVehiculo
inner join Estado_Orden eo on ot.idEstado = eo.idEstado
where eo.Descripcion = 'Entregado';
go


-- Vista: Repuestos utilizados por cada orden 
create view vw_RepuestosPorOrden as
select 
    ot.idOrden as [N° Orden],
    c.Nombre + ' ' + c.Apellido as Cliente,
    r.Nombre as Repuesto,
    orp.Cantidad,
    orp.PrecioUnitario,
    (orp.Cantidad * orp.PrecioUnitario) as TotalRepuesto
from Orden_Repuestos orp
inner join Orden_Trabajo ot on orp.IdOrden = ot.idOrden
inner join Cliente c on ot.idCliente = c.idCliente
inner join Repuestos r on orp.IdRepuesto = r.IdRepuesto;
go


-- Vista: Stock Disponible
create view vw_StockActualRepuestos as
select 
    IdRepuesto as [Código],
    Nombre as Repuesto,
    Stock as [Stock Disponible],
    PrecioUnitario as [Precio Unitario]
from Repuestos;
go


-- Vista: Recaudacion Anual 
create view vw_RecaudacionAnual as
select 
    format(Fecha, 'yyyy') as [Año],
    sum(Total) as RecaudacionTotal
from Facturas
group by format(Fecha, 'yyyy');
go


-- Vista: Órdenes por Empleado
create view vw_OrdenesPorEmpleado as
select 
    E.IdEmpleado as [N° Empleado],
    E.Nombre + ' ' + E.Apellido as Empleado,
    count(OE.idOrden) as [Trabajos Asignados]
from Empleado E
join Orden_Empleado OE on E.IdEmpleado = OE.idEmpleado
group by E.IdEmpleado, E.Nombre, E.Apellido;
go


-- Vista: Órdenes Pendientes
create view vw_OrdenesPendientes as
select 
    OT.idOrden as [N° Orden],
    C.Nombre + ' ' + C.Apellido as Cliente,
    V.Patente,
    OT.FechaIngreso,
    OT.Diagnostico,
    EO.Descripcion as Estado
from Orden_Trabajo OT
join Cliente C on OT.idCliente = C.idCliente
join Vehiculo V on OT.idVehiculo = V.idVehiculo
join Estado_Orden EO on OT.idEstado = EO.idEstado
where EO.Descripcion not in ('Entregado', 'Cancelado');
go


-- Vista: Servicios solicitados por Cliente
select * from vw_ServiciosPorCliente

-- Vista: Resumen de Servicios por Cliente 
select * from vw_ResumenServiciosPorCliente

-- Vista: Repuestos utilizados por cada orden 
select * from vw_RepuestosPorOrden

-- Vista: Recaudacion Anual
select * from vw_RecaudacionAnual

-- Vista: Órdenes por Empleado
select * from vw_OrdenesPorEmpleado

-- Vista: Órdenes Pendientes
select * from vw_OrdenesPendientes

-- Vista: Stock Disponible
select * from vw_StockActualRepuestos
order by [Stock Disponible] asc;
go

-- Vista: Ordenes Finalizadas
select * from vw_OrdenesFinalizadas
