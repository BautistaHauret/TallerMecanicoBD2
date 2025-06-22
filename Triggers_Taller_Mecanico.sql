USE Taller_Mecanico
GO


-- 1) TRIGGER PARA ACTUALIZAR EL STOCK DE REPUESTOS AL AGREGAR UNA ORDEN.
CREATE TRIGGER tr_ActualizarStockRepuestos
ON Orden_Repuestos
AFTER INSERT
AS
BEGIN
    UPDATE Repuestos
    SET Stock = Stock - i.Cantidad
    FROM Repuestos r
    INNER JOIN inserted i ON r.idRepuesto = i.IdRepuesto;
END;
GO
-- 2) TRIGGER PARA ACTUALIZAR EL ESTADO DE UNA ORDEN AL AGREGAR UNA FACTURA.
CREATE TRIGGER tr_CambiarEstadoOrden
ON Facturas
AFTER INSERT
AS
BEGIN
    UPDATE Orden_Trabajo
    SET idEstado = (SELECT idEstado FROM Estado_Orden WHERE Descripcion = 'Entregado')
    WHERE idOrden IN (SELECT IdOrden FROM inserted);
END;
GO



-- 3) TRIGGER PARA LIMITAR LA CANTIDAD DE VEHICULOS POR CLIENTE (5 VEHICULOS POR CLIENTE).
CREATE TRIGGER tr_LimitarVehiculosCliente
ON Vehiculo
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted i
        GROUP BY i.idCliente
        HAVING (SELECT COUNT(*) FROM Vehiculo v WHERE v.idCliente = i.idCliente) > 5
    )
    BEGIN;
        THROW 50003, 'Cada cliente puede registrar hasta 5 vehículos.', 1;
    END;
END;
GO


-- 4) TRIGGER PARA BLOQUEAR ELIMINACIONES DE FACTURAS YA CONTABILIZADAS
CREATE TRIGGER tr_BloquearEliminacionFacturas
ON Facturas
INSTEAD OF DELETE
AS
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM deleted 
        WHERE DATEDIFF(DAY, Fecha, GETDATE()) > 30
    )
    BEGIN;
        THROW 50006, 'No se pueden eliminar facturas con más de 30 días de antigüedad.', 1;
    END;

    DELETE FROM Facturas 
    WHERE idFactura IN (SELECT idFactura FROM deleted);
END;
GO
