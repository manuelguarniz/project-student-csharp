USE [BDArticulos]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 03/04/2016 01:38:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[RazonSocial] [varchar](50) NULL,
	[RUC] [varchar](11) NULL,
	[direccion] [varchar](50) NULL,
	[Telefono] [varchar](15) NULL,
	[Usuario] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[ConDeuda] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [int] NULL CONSTRAINT [DF_Cliente_Activo]  DEFAULT ((1)),
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DPedido]    Script Date: 03/04/2016 01:38:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DPedido](
	[idProducto] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio] [decimal](18, 5) NULL,
	[idPedido] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Marca]    Script Date: 03/04/2016 01:38:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marca](
	[idMarca] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Activo] [int] NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[idMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 03/04/2016 01:38:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[idPedido] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[idCliente] [int] NULL,
	[Total] [decimal](18, 5) NULL,
	[FechaRegistro] [datetime] NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto]    Script Date: 03/04/2016 01:38:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NULL,
	[Descripcion] [varchar](50) NULL,
	[Precio] [decimal](18, 5) NULL,
	[Stock] [int] NULL,
	[Imagen] [varchar](50) NULL,
	[idMarca] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 03/04/2016 01:38:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (2, N'EMILIO MARQUINA MENDOZA', N'11', N'IGNACIO MERINO N° PALERMO - TRUJILLO', N'0', N'xyz', N'abc', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (79, N'GOURMETS FOODS S.A.', N'000082', N'', N'291069', N'aaa', N'123', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (80, N'SEAGRI S.A.', N'20397440312', N'PANAMERICANA NORTE Nº 528 ALTURA PUERTO MORI', N'0', N'SEAGRI', N'432', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (82, N'TALSA', N'20131565659', N'CARRETERA INDUSTRIAL A LAREDO KM 1.5 - TRUJILLO', N'437332', N'aaa@talsa.com', N'123456', 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (83, N'prueba', N'prueba', N'pruebs', N'34343', N'xyz', N'123', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (84, N'nuevo', N'12345678910', N'trujillo', N'54454', N'nuevo', N'123', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (85, N'prueba01111', N'111111', N'prueba0111', N'22222111', N'prueba0111', N'12311', NULL, CAST(N'2014-06-06 17:10:16.560' AS DateTime), CAST(N'2014-06-06 17:16:57.347' AS DateTime), 1)
GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (86, N'prueba02', N'222222', N'prueba02', N'22222', N'prueba02', N'123', NULL, CAST(N'2014-06-06 17:10:16.560' AS DateTime), NULL, 1)
GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (87, N'prueba03', N'333333', N'prueba03', N'3333333', N'prueba03', N'333', NULL, CAST(N'2014-06-06 17:10:16.560' AS DateTime), CAST(N'2014-06-06 17:16:57.347' AS DateTime), 0)
GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (88, N'3333', N'333333', N'333', N'3333333', N'333', N'333', NULL, CAST(N'2014-06-06 17:12:09.753' AS DateTime), NULL, 1)
GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (89, N'4444', N'444', N'4444', N'44444', N'444', N'444', NULL, CAST(N'2014-06-06 17:12:09.753' AS DateTime), NULL, 1)
GO
INSERT [dbo].[Cliente] ([idCliente], [RazonSocial], [RUC], [direccion], [Telefono], [Usuario], [Password], [ConDeuda], [FechaRegistro], [FechaModificacion], [Estado]) VALUES (90, N'777777', N'77777', N'777777', N'7777', N'7777', N'7777', NULL, CAST(N'2014-06-06 17:16:57.347' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (1, 4, CAST(169.00000 AS Decimal(18, 5)), 1)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (10, 8, CAST(199.00000 AS Decimal(18, 5)), 1)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (18, 2, CAST(173.00000 AS Decimal(18, 5)), 1)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (7, 33, CAST(309.00000 AS Decimal(18, 5)), 2)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (13, 44, CAST(167.00000 AS Decimal(18, 5)), 2)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (1, 1, CAST(169.00000 AS Decimal(18, 5)), 3)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (23, 3, CAST(20.00000 AS Decimal(18, 5)), 3)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (8, 4, CAST(169.00000 AS Decimal(18, 5)), 3)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (1, 1, CAST(169.00000 AS Decimal(18, 5)), 4)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (23, 3, CAST(20.00000 AS Decimal(18, 5)), 4)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (8, 4, CAST(169.00000 AS Decimal(18, 5)), 4)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (1, 1, CAST(169.00000 AS Decimal(18, 5)), 5)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (23, 1, CAST(20.00000 AS Decimal(18, 5)), 5)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (1, 1, CAST(169.00000 AS Decimal(18, 5)), 6)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (23, 1, CAST(20.00000 AS Decimal(18, 5)), 6)
GO
INSERT [dbo].[DPedido] ([idProducto], [Cantidad], [Precio], [idPedido]) VALUES (11, 1, CAST(219.00000 AS Decimal(18, 5)), 6)
GO
SET IDENTITY_INSERT [dbo].[Marca] ON 

GO
INSERT [dbo].[Marca] ([idMarca], [Descripcion], [Activo]) VALUES (1, N'Adidas', NULL)
GO
INSERT [dbo].[Marca] ([idMarca], [Descripcion], [Activo]) VALUES (2, N'Hi Tec', NULL)
GO
INSERT [dbo].[Marca] ([idMarca], [Descripcion], [Activo]) VALUES (3, N'Merrell', NULL)
GO
INSERT [dbo].[Marca] ([idMarca], [Descripcion], [Activo]) VALUES (4, N'Nike', NULL)
GO
INSERT [dbo].[Marca] ([idMarca], [Descripcion], [Activo]) VALUES (5, N'North Face', NULL)
GO
INSERT [dbo].[Marca] ([idMarca], [Descripcion], [Activo]) VALUES (6, N'Puma', NULL)
GO
INSERT [dbo].[Marca] ([idMarca], [Descripcion], [Activo]) VALUES (7, N'Umbro', NULL)
GO
INSERT [dbo].[Marca] ([idMarca], [Descripcion], [Activo]) VALUES (8, N'Converse', NULL)
GO
INSERT [dbo].[Marca] ([idMarca], [Descripcion], [Activo]) VALUES (10, N'Lacoste', NULL)
GO
INSERT [dbo].[Marca] ([idMarca], [Descripcion], [Activo]) VALUES (11, N'Reebok', NULL)
GO
SET IDENTITY_INSERT [dbo].[Marca] OFF
GO
SET IDENTITY_INSERT [dbo].[Pedido] ON 

GO
INSERT [dbo].[Pedido] ([idPedido], [Fecha], [idCliente], [Total], [FechaRegistro]) VALUES (1, CAST(N'2013-11-09' AS Date), 82, CAST(1500.00000 AS Decimal(18, 5)), CAST(N'2013-11-09 12:40:30.307' AS DateTime))
GO
INSERT [dbo].[Pedido] ([idPedido], [Fecha], [idCliente], [Total], [FechaRegistro]) VALUES (2, CAST(N'2013-11-09' AS Date), 2, CAST(1500.00000 AS Decimal(18, 5)), CAST(N'2013-11-09 12:41:53.247' AS DateTime))
GO
INSERT [dbo].[Pedido] ([idPedido], [Fecha], [idCliente], [Total], [FechaRegistro]) VALUES (3, CAST(N'2014-04-11' AS Date), 2, CAST(0.00000 AS Decimal(18, 5)), CAST(N'2014-04-11 17:21:12.577' AS DateTime))
GO
INSERT [dbo].[Pedido] ([idPedido], [Fecha], [idCliente], [Total], [FechaRegistro]) VALUES (4, CAST(N'2014-04-11' AS Date), 2, CAST(0.00000 AS Decimal(18, 5)), CAST(N'2014-04-11 17:22:07.717' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Pedido] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (1, N'13203161', N'Adidas Zapatillas 11 Questra TRX', CAST(169.00000 AS Decimal(18, 5)), 23, N'13203160.jpg', 1)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (2, N'3455567', N'Adidas Zapatillas Deportivas Predito LZ TRX', CAST(169.00000 AS Decimal(18, 5)), 2, N'13203954.jpg', 1)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (3, N'3466556', N'Adidas Zapatillas Deportivas F5 TRX HG Junior Niño', CAST(159.00000 AS Decimal(18, 5)), 4, N'13203912.jpg', 1)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (4, N'3456678', N'Adidas Zapatillas Deportivas Sumbrah 2 Mujer', CAST(269.00000 AS Decimal(18, 5)), 0, N'13311349.jpg', 1)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (5, N'3478999', N'Adidas Zapatillas Deportivas Kundo II Hombre', CAST(249.00000 AS Decimal(18, 5)), 56, N'13237004.jpg', 1)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (6, N'2355466', N'Adidas Zapatillas Deportivas Meteor Hombre', CAST(234.00000 AS Decimal(18, 5)), 5, N'13329386.jpg', 1)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (7, N'5677888', N'Adidas Zapatillas Deportivas CC Freshride Mujer', CAST(309.00000 AS Decimal(18, 5)), 3, N'13203733.jpg', 1)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (8, N'5677876', N'Hi Tec Zapatillas Premilla Life GRW O002341051', CAST(169.00000 AS Decimal(18, 5)), 1, N'13465304.jpg', 2)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (9, N'6545554', N'Hi Tec Zapatillas Urbanas TT Tigon MID WP', CAST(99.00000 AS Decimal(18, 5)), 20, N'13278438.jpg', 2)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (10, N'6544343', N'Hi Tec Zapatillas Grenada DCHC O00226504', CAST(199.00000 AS Decimal(18, 5)), 33, N'13465243.jpg', 2)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (11, N'8756444', N'Hi Tec Zapatillas Sierra Lite Orig NHW O002405031', CAST(219.00000 AS Decimal(18, 5)), 4, N'13465188.jpg', 2)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (12, N'7645455', N'Hi Tec Zapatillas Wyoming WP SLTD O002312042', CAST(279.00000 AS Decimal(18, 5)), 6, N'13465254.jpg', 2)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (13, N'8756666', N'Merrell Zapatilla Urbana Soren Low Bayan', CAST(167.00000 AS Decimal(18, 5)), 4, N'13358613.jpg', 3)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (14, N'3423444', N'Merrell Zapatilla Urbana Soren Low WTPF', CAST(169.00000 AS Decimal(18, 5)), 45, N'13358604.jpg', 3)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (16, N'8677684', N'Nike Zapatillas Deportivas Jr Mercurial Victory I', CAST(139.00000 AS Decimal(18, 5)), 4, N'13420955.jpg', 4)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (17, N'4676878', N'Nike Zapatilla Deportiva Egoli TF', CAST(149.00000 AS Decimal(18, 5)), 2, N'13420975.jpg', 4)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (18, N'4564567', N'Nike Zapatillas Deportivas Air Flex II Hombre', CAST(173.00000 AS Decimal(18, 5)), 2, N'13420996.jpg', 4)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (19, N'4577867', N'Nike Zapatillas Deportivas Lunar Forever Mujer', CAST(188.00000 AS Decimal(18, 5)), 1, N'13420925.jpg', 4)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (21, N'2345544', N'Nike Zapatillas Deportivas Flex Experience RN H', CAST(216.00000 AS Decimal(18, 5)), 5, N'13420882.jpg', 4)
GO
INSERT [dbo].[Producto] ([idProducto], [Codigo], [Descripcion], [Precio], [Stock], [Imagen], [idMarca]) VALUES (22, N'6454544', N'Nike Zapatillas Deportivas 5 Bomba Turf', CAST(229.00000 AS Decimal(18, 5)), 4, N'13420965.jpg', 4)
GO
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

GO
INSERT [dbo].[Usuario] ([idUsuario], [Nombre], [Apellido], [email], [Password]) VALUES (1, N'Juan', N'Perez', N'jperez@upn.edu.pe', N'123')
GO
INSERT [dbo].[Usuario] ([idUsuario], [Nombre], [Apellido], [email], [Password]) VALUES (2, N'Carlos', N'Rodriguez', N'crodriguez@upn.edu.pe', N'321')
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
/****** Object:  StoredProcedure [dbo].[spListarMarcas]    Script Date: 03/04/2016 01:38:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spListarMarcas]
AS
	
	SELECT idMarca, Descripcion
	FROM Marca
	ORDER BY Descripcion

GO
/****** Object:  StoredProcedure [dbo].[spListarProductosxMarca]    Script Date: 03/04/2016 01:38:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spListarProductosxMarca]
@prmintIdMarca int
AS

	SELECT P.idProducto, P.Codigo, P.Descripcion, P.Precio, 
		P.Stock, P.Imagen, P.idMarca, DMarca = M.Descripcion
	FROM Producto P
		INNER JOIN Marca M ON P.idMarca = M.idMarca
	WHERE P.idMarca = @prmintIdMarca
	ORDER BY P.Descripcion
GO
