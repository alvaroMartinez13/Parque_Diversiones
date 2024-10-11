# 🎟️ Parque atracciones 🎟️

Este proyecto se centra en el desarrollo de unas consultas, procedimientos, funciones y eventos según establecidos en los requerimientos. Se desea en primera instancia desarrollar lo anterior mencionado para ver el funcionamiento y el cumplimiento de la Base de Datos desarrollada.

## 🏁 Requerimientos

- Consultas
   - Obtener todas las atracciones operativas.
   - Listar todos los visitantes que se encuentran en la base de datos.
   - Mostrar los eventos programados junto con su precio.
   - Obtener el nombre y fecha de contratación de todos los empleados.
   - Listar todos los boletos vendidos y su tipo.
   - Obtener el nombre de los visitantes y las atracciones que visitaron.
   - Listar los empleados que participaron en eventos, junto con el nombre del evento.
   - Mostrar los detalles de mantenimiento realizados por cada empleado, junto con la atracción.
   - Obtener el nombre del visitante y la atracción que calificó junto con la puntuación.
   - Listar los visitantes que asistieron a eventos, con el nombre del evento.
   - Contar cuántas visitas ha tenido cada atracción.
   - Obtener el precio promedio de los tickets vendidos por tipo.
   - Contar cuántos empleados hay en cada ciudad.
   - Listar el total de visitantes por país.
   - Obtener el número total de eventos y su precio promedio.
   - Obtener el nombre de las atracciones que tienen una capacidad máxima mayor que el promedio.
   - Listar los empleados que han trabajado en más de un evento.
   - Obtener las atracciones que no han sido visitadas en la última semana.
   - Listar los visitantes que compraron un boleto VIP.
   - Mostrar los empleados cuyo salario (de la tabla EmployeeSalary) es mayor al salario promedio.
   - Actualizar el estado de una atracción a 'En Mantenimiento'.
   - Eliminar visitantes que no han realizado ninguna visita.
   - Insertar un nuevo evento en la base de datos.
   - Aumentar el precio de los tickets VIP en un 10%.
   - Cambiar la ciudad de todos los empleados en Bogotá a Medellín.

- Procedimientos Almacenados
  - Agregar un nuevo visitante.
  - Registrar un nuevo mantenimiento para una atracción.
  - Actualizar el precio de los tickets de un tipo específico.
  - Eliminar un visitante por su ID.
  - Registrar una nueva visita de un visitante a una atracción.

- Funciones
  - Calcular el total de visitas a una atracción específica.
  - Calcular el número de días desde el último mantenimiento de una atracción.
  - Obtener la capacidad total del parque (suma de las capacidades de todas las atracciones).
  - Calcular el ingreso total generado por los tickets vendidos en un evento.
  - Obtener el número total de empleados contratados en un año específico.

- Eventos Programados
    - Evento para realizar un chequeo de mantenimiento semanal de una atracción.
    - Evento para actualizar los precios de los tickets VIP en un 5% al inicio de cada mes.
    - Evento para eliminar a los visitantes que no han hecho ninguna visita en los últimos 2 años.
    - Evento para enviar un reporte semanal del número de visitantes.
    - Evento para realizar un mantenimiento automático a las atracciones más visitadas cada trimestre.

 ## 👩‍🔧 Desarrollo 👨‍🔧

Para el desarrollo de las consultas, se suminstra el UML ER donde se puede detallar las entidades, relaciones y tablas que se desarrollaron según lo propuesto en el desarrollo inicial de la BD. En este caso, la funicón es desarrollar los requerimientos solicitados en este instante.
A continuación se presenta lo solicitado.

## UML ER
Según el UML ER gestionado para el desarrollo de las consultas, los procedimientos, funciones y eventos programados; se detalla como fue su desarrollo y como se puede basar para el desarrollo de los requisitos
![Diagrama_ER](https://github.com/alvaroMartinez13/Parque_Diversiones/blob/main/ParqueDeDiversiones.png)


## Consultas
# 1. Obtener todas las atracciones operativas.
```
USE AmusementPark;

SELECT * FROM `Attraction` WHERE Status = 'Operativa';
```

## 🚀 Tecnologias utilizadas

 Las tecnologías que se utilizaron para este proyecto fueron MySQL como la base de datos relacional, Drawio.io para la realización de diagramas y MySQL Workbench como entorno de desarrollo. 🌟
 

## ✍️ Autor
- [Alvaro Martinez 🐈🔮](https://github.com/alvaroMartinez13)
