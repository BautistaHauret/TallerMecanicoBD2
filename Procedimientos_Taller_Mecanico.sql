use Taller_Mecanico
go

-- Procedimiento para ver el total gastado y servicios utilizados por el cliente.
create procedure sp_ResumenGastosCliente
    @idCliente int
as
begin
    select 
        C.Nombre + ' ' + C.Apellido as Cliente,
        count(S.idServicio) as [Servicios Realizados],
        sum(S.Costo) as [Total Gastado]
    from Orden_Trabajo OT
    join Cliente C on OT.idCliente = C.idCliente
    join Orden_Servicio OS on OT.idOrden = OS.idOrden
    join Servicios S on OS.idServicio = S.idServicio
    where C.idCliente = @idCliente
    group by C.Nombre, C.Apellido;
end;
go

exec sp_ResumenGastosCliente @idCliente = 10;
go


-- Procedimiento para asignar un empleado activo a una Orden
create procedure sp_AsignarEmpleadoAOrden
    @idOrden int,
    @idEmpleado int
as
begin
    begin try
        -- Valida si el empleado está activo
        if not exists (
            select 1
            from Empleado
            where idEmpleado = @idEmpleado and Activo = 1
        )
        begin
            print 'El empleado no está activo o no existe.';
            return;
        end;

        -- Valida si ya está asignado
        if exists (
            select 1
            from Orden_Empleado
            where idOrden = @idOrden and idEmpleado = @idEmpleado
        )
        begin
            print 'El empleado ya está asignado a esta orden.';
            return;
        end;

        -- Hace el insert y asigna el empleado a la orden
        insert into Orden_Empleado (idOrden, idEmpleado)
        values (@idOrden, @idEmpleado);

        print 'Empleado asignado correctamente.';
    end try
    begin catch
        print 'Error al asignar empleado: ' + error_message();
    end catch
end;
go

SELECT TOP 5 idEmpleado, Nombre, Apellido, Activo FROM Empleado WHERE Activo = 1;

EXEC sp_AsignarEmpleadoAOrden @idOrden = 101, @idEmpleado = 5; -- Reemplaza 101 y 5 con los IDs correspondientes a la orden y el empleado
GO



-- Procedimiento para actualizar el estado de una orden
create procedure sp_ActualizarEstadoOrden
    @idOrden int,
    @NuevoEstado varchar(50)
as
begin
    declare @idEstado int;

    select @idEstado = idEstado from Estado_Orden
    where Descripcion = @NuevoEstado;

    if @idEstado is not null
    begin
        update Orden_Trabajo
        set idEstado = @idEstado
        where idOrden = @idOrden;
    end
    else
    begin
        print 'Estado no válido.';
    end
end;
go

EXEC sp_ActualizarEstadoOrden
    @idOrden = 20,                  -- Reemplaza '20' con un ID de orden existente
    @NuevoEstado = 'Completado';    -- Reemplaza con una descripción de estado válida de Estado_Orden
GO


-- Procedimiento para agregar una nueva factura
create procedure sp_AgregarFactura
    @Fecha date,
    @Total decimal(10,2),
    @idOrden int
as
begin
    insert into Facturas (Fecha, Total, idOrden)
    values (@Fecha, @Total, @idOrden);
end;
go

EXEC sp_AgregarFactura
    @Fecha = '2025-06-15',       -- La fecha actual de la factura
    @Total = 5000,             -- El monto total de la factura
    @idOrden = 20;               -- Se remplazaz el idOrden con una orden existente
GO	