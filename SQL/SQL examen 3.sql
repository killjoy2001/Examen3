create database vehiculos

create table Placa
(
  IdPlaca int identity (1,1) primary key,
  NumPlaca varchar(6) unique, -- constraint  
  IdUsuario int,
  Monto money default 0

  constraint FK_IdUsuario foreign key(IdUsuario) references Usuarios(IdUsuarioU)
)

create table Usuarios
(
  IdUsuarioU int identity (1,1) primary key,
  Usuario varchar(50) unique,
  Clave varchar(30),
  Nombre varchar(50),
  Apellido varchar (50),
)


-- usuarios 

use vehiculos
go
create procedure agregar_usuario (@usuario varchar(50), @clave varchar(50), @nombre varchar(50), @apellido varchar(50))
as
begin
   insert into Usuarios (Usuario, Clave, Nombre, Apellido)
   values (@usuario, @clave, @nombre, @apellido)
end
go 

create procedure editar_usuario (@usuario varchar(50), @clave varchar(50), @nombre varchar(50), @apellido varchar(50), @idusuario int)
as
begin
  update Usuarios
  set Usuario=@usuario, Nombre=@nombre, Apellido=@apellido
  where Clave=@clave
end
go

create procedure eliminar_usuario (@clave varchar(50))
as
begin
  delete from Usuarios where Clave=@clave
end
go

-- placas

create procedure agregar_placa (@numeroplaca varchar(6), @usuario int, @monto money)
as
begin
  insert into Placa (NumPlaca, IdUsuario, Monto)
  values (@numeroplaca, @usuario, @monto)
end
go

create procedure editar_placa (@numeroplaca varchar(6), @usuario int, @monto money, @idplaca int)
as
begin
  update Placa
  set NumPlaca=@numeroplaca, IdUsuario=@usuario, Monto=@monto
  where IdPlaca=@idplaca
end
go

create procedure eliminar_placa (@idplaca int)
as
begin
  delete Placa where IdPlaca=@idplaca
end
go


-- reportes de placas
create procedure consultar_placa (@placa varchar(6)) 
as
begin
   select * from Placa where NumPlaca = @placa
end
go

-- calculo de iva
create procedure calculo_iva (@monto money, @resultado money) 
as
begin
   select @resultado = (100 / @monto)*13 
end
go