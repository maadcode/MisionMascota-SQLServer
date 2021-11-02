# Base de datos para Sistema de Adopcion de Mascotas

Aquí encontrarás el script para crear la base de datos en SQL Server, la cual necesitarás para conectarlo a la aplicación escritorio de [Sistema Mision Mascota en Java](https://github.com/maadcode/SistemaMisionMascota-Java).

Las tablas que se crearán son las siguientes :
* Tabla Usuarios
* Tabla Roles
* Tabla Mascotas
* Tabla Estados
* Tabla Adoptantes
* Tabla Adopciones

Se crearon procedimientos almacenados para listar las mascotas y adopciones en base a unos parámetros de entrada.
Se creó una función para validar que el adoptante registrado sea mayor de edad.
Se creó un Trigger que ejecute la función creada cuando se realice un registro en la tabla de Adoptante. 

Puedes ver más de la aplicación [aquí](https://misionmascota.maadcode.dev/)