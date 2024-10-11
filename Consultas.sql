-- Obtener todas las atracciones operativas.
USE AmusementPark;

SELECT * FROM `Attraction` WHERE Status = 'Operativa';

-- Listar todos los visitantes que se encuentran en la base de datos.
USE AmusementPark;

SELECT * FROM `Visitor`;

-- Mostrar los eventos programados junto con su precio.
USE AmusementPark;

SELECT `Name` AS Evento,`Price` AS Costo FROM `Event`;

-- Obtener el nombre y fecha de contratación de todos los empleados.
USE AmusementPark;

SELECT  concat(`FirstName`, ' ', `LastName`) AS Empleado, `HireDate` AS fecha_Contratacion  FROM `Employee`;

-- Listar todos los boletos vendidos y su tipo.
USE AmusementPark;

SELECT t.TicketType AS Tipo_Boleto, COUNT(ve.VisitorId) AS Boletos_Vendidos
FROM Ticket t
JOIN VisitorEvent ve ON t.TicketId = ve.TicketId
GROUP BY Tipo_Boleto

-- Obtener el nombre de los visitantes y las atracciones que visitaron.
USE AmusementPark;

SELECT concat(v.FirstName,' ', v.LastName) AS Visitante, a.Name AS Atracción
FROM Visitor v
JOIN Visit vi ON v.VisitorId = vi.VisitorId
JOIN Attraction a ON vi.AttractionId = a.AttractionId

-- Listar los empleados que participaron en eventos, junto con el nombre del evento.
USE AmusementPark;

SELECT concat(e.FirstName, ' ', e.LastName) AS Empleado, ev.Name AS Evento
FROM Employee e
JOIN EmployeeEvent ee ON e.EmployeeId = ee.EmployeeId
JOIN Event ev ON ee.EventId = ev.EventId 

-- Mostrar los detalles de mantenimiento realizados por cada empleado, junto con la atracción.
USE AmusementPark;

SELECT concat(e.FirstName, ' ', e.LastName) AS Empleado, a.Name As Atracción, m.Details AS Detalle_Mantenimiento
FROM Employee e
JOIN Maintenance m ON e.EmployeeId = m.EmployeeId
JOIN Attraction a ON m.AttractionId = a.AttractionId

-- Obtener el nombre del visitante y la atracción que calificó junto con la puntuación.
USE AmusementPark;

SELECT concat(v.FirstName, ' ', v.LastName) AS Visitante, a.Name As Atracción, vi.Rating As Puntuación
FROM Visitor v
JOIN Visit vi ON v.VisitorId = vi.VisitorId
JOIN Attraction a ON vi.AttractionId = a.AttractionId

-- Listar los visitantes que asistieron a eventos, con el nombre del evento.
USE AmusementPark;

SELECT concat(v.FirstName, ' ', v.LastName) AS Visitante, ev.Name AS Evento
FROM Visitor v
JOIN VisitorEvent ve ON v.VisitorId = ve.VisitorId
JOIN Event ev ON ve.EventId = ev.EventId

-- Contar cuántas visitas ha tenido cada atracción.
USE AmusementPark;

SELECT a.Name As Atracción, Count(vi.VisitorId) As Cantidad_Visitas
FROM Attraction a 
JOIN Visit vi ON a.AttractionId = vi.AttractionId
GROUP BY Atracción;

-- Obtener el precio promedio de los tickets vendidos por tipo.
USE AmusementPark;

SELECT t.TicketType AS Tipo_Boleto, AVG(count(vi.VisitorId) * t.Price) AS Precio_Promedio 
FROM Ticket t
JOIN VisitorEvent vi ON t.TicketId = vi.TicketId

-- Contar cuántos empleados hay en cada ciudad.
USE AmusementPark;

SELECT City As Ciudad, count(EmployeeId) AS Empleados FROM Employee GROUP BY Ciudad;

-- Listar el total de visitantes por país.
USE AmusementPark;

SELECT Country As País, count(VisitorId) AS Total_Visitantes FROM Visitor GROUP BY País;

-- Obtener el número total de eventos y su precio promedio.
USE AmusementPark;

SELECT count(ev.)