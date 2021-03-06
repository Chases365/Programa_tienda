USE [bdventas]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 04/12/2018 06:16:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[idcategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre_categoria] [varchar](50) NOT NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[idcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 04/12/2018 06:16:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[idcliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[telefono] [varchar](10) NOT NULL,
	[rfc] [varchar](13) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 04/12/2018 06:16:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_venta](
	[iddetalle_venta] [int] IDENTITY(1,1) NOT NULL,
	[idventa] [int] NOT NULL,
	[idproducto] [int] NOT NULL,
	[cantidad] [decimal](18, 2) NOT NULL,
	[precio_unitario] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_detalle_venta] PRIMARY KEY CLUSTERED 
(
	[iddetalle_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 04/12/2018 06:16:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[idproducto] [int] IDENTITY(1,1) NOT NULL,
	[idcategoria] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](250) NOT NULL,
	[stock] [decimal](18, 2) NOT NULL,
	[precio_compra] [decimal](18, 2) NOT NULL,
	[precio_venta] [decimal](18, 2) NOT NULL,
	[fecha_vencimiento] [date] NULL,
	[imagen] [image] NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[idproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 04/12/2018 06:16:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[curp] [varchar](18) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[telefono] [varchar](10) NOT NULL,
	[login] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[acceso] [varchar](1) NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 04/12/2018 06:16:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[idventa] [int] IDENTITY(1,1) NOT NULL,
	[idcliente] [int] NOT NULL,
	[fecha_venta] [date] NOT NULL,
	[tipo_documento] [varchar](50) NOT NULL,
	[num_documento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ventas] PRIMARY KEY CLUSTERED 
(
	[idventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[categoria] ON 

INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (1, N'Bebidas')
INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (6, N'Abarrotes')
INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (7, N'Enlatados')
INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (8, N'Lácteos')
INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (9, N'Botanas')
INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (10, N'Dulcería')
INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (11, N'Harinas')
INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (13, N'Bebidas Alcohólicas')
INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (14, N'Higiene Personal')
INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (15, N'Uso Domestico')
INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (17, N'Embutidos')
INSERT [dbo].[categoria] ([idcategoria], [nombre_categoria]) VALUES (18, N'Bebes')
SET IDENTITY_INSERT [dbo].[categoria] OFF
SET IDENTITY_INSERT [dbo].[cliente] ON 

INSERT [dbo].[cliente] ([idcliente], [nombre], [apellidos], [direccion], [telefono], [rfc]) VALUES (1004, N'Alfredo', N'Talavera Diaz', N'Mesones132 Colonia Centro', N'5521541290', N'TADA8209181HO')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellidos], [direccion], [telefono], [rfc]) VALUES (1005, N'Ana', N'Flores Perez', N'Del moral 08 Delegación Iztacalco', N'5512095434', N'FLPA9005042FO')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellidos], [direccion], [telefono], [rfc]) VALUES (1007, N'Gema Daniela', N'Garcia Noriega', N'Calle 25 Zapopan, Jalisco', N'8873120945', N'GANG16069')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellidos], [direccion], [telefono], [rfc]) VALUES (1008, N'Gael', N'Garcia Bernal Garcia', N'Calle 23 esquina sur 120 Del. Iztacalco', N'5326731812', N'GABG78113')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellidos], [direccion], [telefono], [rfc]) VALUES (1009, N'Diego Dionisio', N'Luna Alexander', N'Calle de las estrellas 202 entre esquina 3 Los Angeles', N'5051234782', N'LUAD7912292VZ')
SET IDENTITY_INSERT [dbo].[cliente] OFF
SET IDENTITY_INSERT [dbo].[detalle_venta] ON 

INSERT [dbo].[detalle_venta] ([iddetalle_venta], [idventa], [idproducto], [cantidad], [precio_unitario]) VALUES (4, 7, 1, CAST(4.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(18, 2)))
INSERT [dbo].[detalle_venta] ([iddetalle_venta], [idventa], [idproducto], [cantidad], [precio_unitario]) VALUES (5, 8, 1, CAST(4.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(18, 2)))
INSERT [dbo].[detalle_venta] ([iddetalle_venta], [idventa], [idproducto], [cantidad], [precio_unitario]) VALUES (6, 9, 6, CAST(1.00 AS Decimal(18, 2)), CAST(9.00 AS Decimal(18, 2)))
INSERT [dbo].[detalle_venta] ([iddetalle_venta], [idventa], [idproducto], [cantidad], [precio_unitario]) VALUES (7, 9, 4, CAST(2.00 AS Decimal(18, 2)), CAST(22.50 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[detalle_venta] OFF
SET IDENTITY_INSERT [dbo].[producto] ON 

INSERT [dbo].[producto] ([idproducto], [idcategoria], [nombre], [descripcion], [stock], [precio_compra], [precio_venta], [fecha_vencimiento], [imagen]) VALUES (1, 1, N'Coca Cola 600ml', N'Bebida coca cola en presentación 600ml', CAST(62.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(18, 2)), CAST(N'2018-06-21' AS Date),
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidos], [curp], [direccion], [telefono], [login], [password], [acceso]) VALUES (4, N'juan', N'santana', N'hbghjgdgf', N'hbghjgdgf', N'986856', N'juan', N'1234', N'1')
SET IDENTITY_INSERT [dbo].[usuario] OFF
SET IDENTITY_INSERT [dbo].[ventas] ON 

INSERT [dbo].[ventas] ([idventa], [idcliente], [fecha_venta], [tipo_documento], [num_documento]) VALUES (1, 1005, CAST(N'2018-06-02' AS Date), N'Factura', N'101-12345')
INSERT [dbo].[ventas] ([idventa], [idcliente], [fecha_venta], [tipo_documento], [num_documento]) VALUES (2, 1004, CAST(N'2018-06-02' AS Date), N'Factura', N'102-12345')
INSERT [dbo].[ventas] ([idventa], [idcliente], [fecha_venta], [tipo_documento], [num_documento]) VALUES (3, 1005, CAST(N'2018-06-02' AS Date), N'Factura', N'103-12345')
INSERT [dbo].[ventas] ([idventa], [idcliente], [fecha_venta], [tipo_documento], [num_documento]) VALUES (4, 1005, CAST(N'2018-06-02' AS Date), N'Factura', N'104-12345')
INSERT [dbo].[ventas] ([idventa], [idcliente], [fecha_venta], [tipo_documento], [num_documento]) VALUES (5, 1004, CAST(N'2018-06-02' AS Date), N'Factura', N'105-12345')
INSERT [dbo].[ventas] ([idventa], [idcliente], [fecha_venta], [tipo_documento], [num_documento]) VALUES (6, 1005, CAST(N'2018-06-02' AS Date), N'Factura', N'106-12345')
INSERT [dbo].[ventas] ([idventa], [idcliente], [fecha_venta], [tipo_documento], [num_documento]) VALUES (7, 1007, CAST(N'2018-06-02' AS Date), N'Factura', N'107-12345')
INSERT [dbo].[ventas] ([idventa], [idcliente], [fecha_venta], [tipo_documento], [num_documento]) VALUES (8, 1005, CAST(N'2018-06-03' AS Date), N'Factura', N'108-12345')
INSERT [dbo].[ventas] ([idventa], [idcliente], [fecha_venta], [tipo_documento], [num_documento]) VALUES (9, 1008, CAST(N'2018-06-06' AS Date), N'Factura', N'109-12345')
SET IDENTITY_INSERT [dbo].[ventas] OFF
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [FK_detalle_venta_producto] FOREIGN KEY([idproducto])
REFERENCES [dbo].[producto] ([idproducto])
GO
ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [FK_detalle_venta_producto]
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [FK_detalle_venta_ventas] FOREIGN KEY([idventa])
REFERENCES [dbo].[ventas] ([idventa])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [FK_detalle_venta_ventas]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_categoria] FOREIGN KEY([idcategoria])
REFERENCES [dbo].[categoria] ([idcategoria])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_categoria]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_cliente] FOREIGN KEY([idcliente])
REFERENCES [dbo].[cliente] ([idcliente])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_cliente]
GO
/****** Object:  StoredProcedure [dbo].[aumentar_stock]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aumentar_stock]
@idproducto as integer,
@cantidad as decimal (18,2)
as
update producto set stock=stock+@cantidad where idproducto=@idproducto
GO
/****** Object:  StoredProcedure [dbo].[backup_base]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[backup_base]
as
BACKUP DATABASE [bdventas]
TO DISK =N'C:\Sisventas\BaseDatos\bdventas.bak'
WITH DESCRIPTION=N'Respaldo de la base de datos del Sistema de Ventas',
NOFORMAT,
INIT,
NAME=N'bdventas',
SKIP,
NOREWIND,
NOUNLOAD,
STATS=10,
CHECKSUM
GO
/****** Object:  StoredProcedure [dbo].[disminuir_stock]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[disminuir_stock]
@idproducto as integer,
@cantidad as decimal (18,2)
as
update producto set stock=stock-@cantidad where idproducto=@idproducto
GO
/****** Object:  StoredProcedure [dbo].[editar_categoria]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_categoria]
@idcategoria integer,
@nombre_categoria varchar(50)
as
update categoria set nombre_categoria=@nombre_categoria
where idcategoria=@idcategoria
GO
/****** Object:  StoredProcedure [dbo].[editar_cliente]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_cliente]
@idcliente integer,
@nombre varchar (50),
@apellidos varchar(50),
@direccion varchar (100),
@telefono varchar (10),
@rfc varchar (9)
as
update cliente set nombre=@nombre,apellidos=@apellidos,direccion=@direccion,telefono=@telefono,rfc=@rfc
where idcliente=@idcliente
GO
/****** Object:  StoredProcedure [dbo].[editar_detalle_venta]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_detalle_venta]
@iddetalle_venta as integer,
@idventa as integer,
@idproducto as integer,
@cantidad as decimal (18,2),
@precio_unitario as decimal (18,2)
as
update detalle_venta set idventa=@idventa,idproducto=@idproducto,cantidad=@cantidad,precio_unitario=@precio_unitario
where iddetalle_venta=@iddetalle_venta
GO
/****** Object:  StoredProcedure [dbo].[editar_producto]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_producto]
@idproducto integer,
@idcategoria integer,
@nombre varchar (50),
@descripcion varchar (200),
@stock decimal (18,2),
@precio_compra decimal (18,2),
@precio_venta decimal (18,2),
@fecha_vencimiento date,
@imagen image
as
update producto set idcategoria=@idcategoria,nombre=@nombre,descripcion=@descripcion,
stock=@stock,precio_compra=@precio_compra,precio_venta=@precio_venta,fecha_vencimiento=@fecha_vencimiento,imagen=@imagen
where idproducto=@idproducto
GO
/****** Object:  StoredProcedure [dbo].[editar_usuario]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_usuario]
@idusuario integer,
@nombre varchar (50),
@apellidos varchar (50),
@curp varchar (18),
@direccion varchar (100),
@telefono varchar (10),
@login varchar (50),
@password varchar (50),
@acceso varchar (1)
as
update usuario set nombre=@nombre,apellidos=@apellidos,curp=@curp,direccion=@direccion,@telefono=@telefono,
login=@login,password=@password,acceso=@acceso
where idusuario=@idusuario
GO
/****** Object:  StoredProcedure [dbo].[editar_venta]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_venta]
@idventa as integer,
@idcliente as integer,
@fecha_venta as date,
@tipo_documento as varchar (50),
@num_documento as varchar (50)
as
update ventas set idcliente=@idcliente,fecha_venta=@fecha_venta,tipo_documento=@tipo_documento,num_documento=@num_documento
where idventa=@idventa
GO
/****** Object:  StoredProcedure [dbo].[eliminar_categoria]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_categoria]
@idcategoria integer
as
delete from categoria where idcategoria=@idcategoria
GO
/****** Object:  StoredProcedure [dbo].[eliminar_cliente]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_cliente]
@idcliente integer
as
delete from cliente where idcliente=@idcliente
GO
/****** Object:  StoredProcedure [dbo].[eliminar_detalle_venta]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_detalle_venta]
@iddetalle_venta as integer
as
delete from detalle_venta where iddetalle_venta=@iddetalle_venta
GO
/****** Object:  StoredProcedure [dbo].[eliminar_producto]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_producto]
@idproducto integer
as
delete from producto where idproducto=@idproducto
GO
/****** Object:  StoredProcedure [dbo].[eliminar_usuario]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_usuario]
@idusuario as integer
as
delete from usuario where idusuario=@idusuario
GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_venta]
@idventa as integer
as
delete from ventas where idventa=@idventa
GO
/****** Object:  StoredProcedure [dbo].[generar_comprobante]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[generar_comprobante]
@idventa int
as
SELECT        dbo.ventas.idventa, dbo.cliente.nombre, dbo.cliente.apellidos, dbo.cliente.rfc, dbo.ventas.fecha_venta, dbo.ventas.tipo_documento, dbo.ventas.num_documento, dbo.producto.nombre AS descripcion, dbo.detalle_venta.cantidad,
                          dbo.detalle_venta.precio_unitario, dbo.detalle_venta.cantidad * dbo.detalle_venta.precio_unitario AS total_parcial
FROM            dbo.detalle_venta INNER JOIN
                         dbo.producto ON dbo.detalle_venta.idproducto = dbo.producto.idproducto INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa INNER JOIN
                         dbo.cliente ON dbo.ventas.idcliente = dbo.cliente.idcliente

						 where dbo.ventas.idventa=@idventa
GO
/****** Object:  StoredProcedure [dbo].[insertar_categoria]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_categoria]
@nombre_categoria varchar(50)
as
insert into categoria (nombre_categoria) values (@nombre_categoria)
GO
/****** Object:  StoredProcedure [dbo].[insertar_cliente]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_cliente]
@nombre varchar (50),
@apellidos varchar (50),
@direccion varchar (100),
@telefono varchar (10),
@rfc varchar (13)
as
insert into cliente (nombre,apellidos,direccion,telefono,rfc) values (@nombre,@apellidos,@direccion,@telefono,@rfc)
GO
/****** Object:  StoredProcedure [dbo].[insertar_detalle_venta]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_detalle_venta]
@idventa as integer,
@idproducto as integer,
@cantidad as decimal (18,2),
@precio_unitario as decimal (18,2)
as
insert into detalle_venta (idventa,idproducto,cantidad,precio_unitario)
values (@idventa,@idproducto,@cantidad,@precio_unitario)
GO
/****** Object:  StoredProcedure [dbo].[insertar_producto]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_producto]
@idcategoria integer,
@nombre varchar (50),
@descripcion varchar (200),
@stock decimal (18,2),
@precio_compra decimal (18,2),
@precio_venta decimal (18,2),
@fecha_vencimiento date,
@imagen image
as
insert into producto (idcategoria,nombre,descripcion,stock,precio_compra,precio_venta,fecha_vencimiento,imagen)
values (@idcategoria,@nombre,@descripcion,@stock,@precio_compra,@precio_venta,@fecha_vencimiento,@imagen)
GO
/****** Object:  StoredProcedure [dbo].[insertar_usuario]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_usuario]
@nombre varchar (50),
@apellidos varchar (50),
@curp varchar (18),
@direccion varchar (100),
@telefono varchar (10),
@login varchar (50),
@password varchar (50),
@acceso varchar (1)
as
insert into usuario (nombre,apellidos,curp,direccion,telefono,login,password,acceso) values (@nombre,@apellidos,@curp,@direccion,@telefono,@login,@password,@acceso)
GO
/****** Object:  StoredProcedure [dbo].[insertar_venta]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_venta]
@idcliente as integer,
@fecha_venta as date,
@tipo_documento as varchar (50),
@num_documento as varchar (50)
as
insert into ventas (idcliente,fecha_venta,tipo_documento,num_documento)
values (@idcliente,@fecha_venta,@tipo_documento,@num_documento)
GO
/****** Object:  StoredProcedure [dbo].[mostrar_categoria]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_categoria]
as
select * from categoria order by idcategoria desc
GO
/****** Object:  StoredProcedure [dbo].[mostrar_cliente]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_cliente]
as
select * from cliente order by idcliente desc
GO
/****** Object:  StoredProcedure [dbo].[mostrar_detalle_venta]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_detalle_venta]
as
SELECT        dbo.detalle_venta.iddetalle_venta, dbo.detalle_venta.idventa, dbo.detalle_venta.idproducto, dbo.producto.nombre, dbo.detalle_venta.cantidad, dbo.detalle_venta.precio_unitario
FROM            dbo.detalle_venta INNER JOIN
                         dbo.producto ON dbo.detalle_venta.idproducto = dbo.producto.idproducto
						 order by dbo.detalle_venta.iddetalle_venta desc
GO
/****** Object:  StoredProcedure [dbo].[mostrar_producto]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_producto]
as
select producto.idproducto,producto.idcategoria,categoria.nombre_categoria,producto.nombre,
producto.descripcion,producto.stock,producto.precio_compra,producto.precio_venta,producto.fecha_vencimiento,
producto.imagen
from producto inner join categoria on producto.idcategoria=categoria.idcategoria
order by producto.idproducto desc
GO
/****** Object:  StoredProcedure [dbo].[mostrar_usuario]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_usuario]
as
select * from usuario order by idusuario desc
GO
/****** Object:  StoredProcedure [dbo].[mostrar_venta]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_venta]
as
SELECT        dbo.ventas.idventa, dbo.ventas.idcliente, dbo.cliente.apellidos, dbo.cliente.rfc, dbo.ventas.fecha_venta, dbo.ventas.tipo_documento, dbo.ventas.num_documento
FROM            dbo.cliente INNER JOIN
                         dbo.ventas ON dbo.cliente.idcliente = dbo.ventas.idcliente
						 order by dbo.ventas.idventa desc
GO
/****** Object:  StoredProcedure [dbo].[validar_usuario]    Script Date: 04/12/2018 06:16:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[validar_usuario]
@login varchar(50),
@password varchar(50)
as
select * from usuario
where login=@login and password=@password and acceso='1'
GO
