/****** Object:  Table [dbo].[Tbl_Cargo]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cargo](
	[IdCargo] [int] IDENTITY(1,1) NOT NULL,
	[NombreCargo] [varchar](15) NOT NULL,
	[RolCargo] [varchar](5) NOT NULL,
 CONSTRAINT [PK__Tbl_Carg__6C985625B8C6016C] PRIMARY KEY CLUSTERED 
(
	[IdCargo] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Cliente]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[DniCliente] [varchar](8) NOT NULL,
	[DatosCliente] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_DetallePedido]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_DetallePedido](
	[IdDetallePed] [int] IDENTITY(1,1) NOT NULL,
	[IdPedido] [int] NOT NULL,
	[IdProd] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Observacion] [varchar](150) NULL,
 CONSTRAINT [PK_Tbl_DetallePedido] PRIMARY KEY CLUSTERED 
(
	[IdDetallePed] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Empleado]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Empleado](
	[IdEmp] [int] IDENTITY(1,1) NOT NULL,
	[IdCargo] [int] NOT NULL,
	[DniEmp] [varchar](8) NOT NULL,
	[ApellidoEmp] [varchar](50) NOT NULL,
	[NombreEmp] [varchar](50) NOT NULL,
	[TelefonoEmp] [varchar](9) NOT NULL,
	[InicioContratoEmp] [date] NOT NULL,
	[SueldoEmp] [decimal](16, 0) NOT NULL,
	[ActivoEmp] [bit] NULL,
 CONSTRAINT [PK__Tbl_Empl__0F23D6472D6DA3B6] PRIMARY KEY CLUSTERED 
(
	[IdEmp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Tbl_Empl__44DED556A2EA85BA] UNIQUE NONCLUSTERED 
(
	[DniEmp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Pedido]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Pedido](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[MesaPedido] [varchar](4) NOT NULL,
	[FechaPedido] [date] NOT NULL,
	[Pendiente] [bit] NOT NULL,
 CONSTRAINT [PK_Tbl_Pedido] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Producto]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Producto](
	[IdProd] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoProd] [int] NOT NULL,
	[NombreProd] [varchar](20) NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Tbl_Producto] PRIMARY KEY CLUSTERED 
(
	[IdProd] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_TipoProducto]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_TipoProducto](
	[IdTipoProd] [int] IDENTITY(1,1) NOT NULL,
	[NombreTipoProd] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Tbl_TipoProducto] PRIMARY KEY CLUSTERED 
(
	[IdTipoProd] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Usuario]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdEmp] [int] NOT NULL,
	[NombreUsuario] [varchar](10) NULL,
	[ClaveUsuario] [varchar](100) NOT NULL,
 CONSTRAINT [PK__Tbl_Usua__5B65BF97A54BD64B] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Tbl_Usua__44DED5566A525C46] UNIQUE NONCLUSTERED 
(
	[IdEmp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Ventas]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ventas](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdPedido] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[PrecioBase] [decimal](18, 2) NOT NULL,
	[PrecioIgv] [decimal](18, 2) NOT NULL,
	[PrecioTotal] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Tbl_Ventas] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_Empleado] ADD  CONSTRAINT [DF__Tbl_Emple__Activ__2D27B809]  DEFAULT ((1)) FOR [ActivoEmp]
GO
ALTER TABLE [dbo].[Tbl_DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DetallePedido_Tbl_Pedido] FOREIGN KEY([IdPedido])
REFERENCES [dbo].[Tbl_Pedido] ([IdPedido])
GO
ALTER TABLE [dbo].[Tbl_DetallePedido] CHECK CONSTRAINT [FK_Tbl_DetallePedido_Tbl_Pedido]
GO
ALTER TABLE [dbo].[Tbl_DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DetallePedido_Tbl_Producto] FOREIGN KEY([IdProd])
REFERENCES [dbo].[Tbl_Producto] ([IdProd])
GO
ALTER TABLE [dbo].[Tbl_DetallePedido] CHECK CONSTRAINT [FK_Tbl_DetallePedido_Tbl_Producto]
GO
ALTER TABLE [dbo].[Tbl_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Empleado_Tbl_Cargo] FOREIGN KEY([IdCargo])
REFERENCES [dbo].[Tbl_Cargo] ([IdCargo])
GO
ALTER TABLE [dbo].[Tbl_Empleado] CHECK CONSTRAINT [FK_Tbl_Empleado_Tbl_Cargo]
GO
ALTER TABLE [dbo].[Tbl_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Pedido_Tbl_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Tbl_Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Tbl_Pedido] CHECK CONSTRAINT [FK_Tbl_Pedido_Tbl_Usuario]
GO
ALTER TABLE [dbo].[Tbl_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Producto_Tbl_TipoProducto] FOREIGN KEY([IdTipoProd])
REFERENCES [dbo].[Tbl_TipoProducto] ([IdTipoProd])
GO
ALTER TABLE [dbo].[Tbl_Producto] CHECK CONSTRAINT [FK_Tbl_Producto_Tbl_TipoProducto]
GO
ALTER TABLE [dbo].[Tbl_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Usuario_Tbl_Empleado] FOREIGN KEY([IdEmp])
REFERENCES [dbo].[Tbl_Empleado] ([IdEmp])
GO
ALTER TABLE [dbo].[Tbl_Usuario] CHECK CONSTRAINT [FK_Tbl_Usuario_Tbl_Empleado]
GO
ALTER TABLE [dbo].[Tbl_Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Ventas_Tbl_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Tbl_Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Tbl_Ventas] CHECK CONSTRAINT [FK_Tbl_Ventas_Tbl_Usuario]
GO
ALTER TABLE [dbo].[Tbl_Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Ventas_Tbl_Ventas] FOREIGN KEY([IdPedido])
REFERENCES [dbo].[Tbl_Pedido] ([IdPedido])
GO
ALTER TABLE [dbo].[Tbl_Ventas] CHECK CONSTRAINT [FK_Tbl_Ventas_Tbl_Ventas]
GO
ALTER TABLE [dbo].[Tbl_Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Ventas_Tbl_Ventas1] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Tbl_Ventas] ([IdVenta])
GO
ALTER TABLE [dbo].[Tbl_Ventas] CHECK CONSTRAINT [FK_Tbl_Ventas_Tbl_Ventas1]
GO
/****** Object:  StoredProcedure [dbo].[spCargo]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCargo]
	@IdCargo int = 0,
	@NombreCargo varchar(20) = '',
	@RolCargo varchar(5) = '',
	@Opcion tinyint
AS
BEGIN
	SET NOCOUNT ON;
	--Lista Todos los cargos
	if @Opcion = 1
	begin
		Select * from Tbl_Cargo
	end

	--Lista un cargo filtrado por el IdCargo
	if @Opcion = 2
	begin
		Select * from Tbl_Cargo Where IdCargo = @IdCargo
	end

	--Insertar cargo
	if @Opcion = 3
	begin
		Insert into Tbl_Cargo(NombreCargo,RolCargo)
		Values(@NombreCargo,@RolCargo)
	end

	--Actualiza datos del cargo por el IdCargo
	if @Opcion = 4
	begin
		Update Tbl_Cargo Set NombreCargo = @NombreCargo, RolCargo = @RolCargo
		where IdCargo = @IdCargo
	end

	--Eliminar cargo por el IdCargo
	if @Opcion = 5
	begin
		Delete From Tbl_Cargo Where IdCargo = @IdCargo
	end
END
GO
/****** Object:  StoredProcedure [dbo].[spDetallePedido]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDetallePedido]
	@IdDetallePed int = 0,
	@IdPedido int = 0,
	@IdProd int = 0,
	@Cantidad int = 0,
	@Observacion varchar(255) = '',
	@Opcion tinyint
AS
BEGIN
	SET NOCOUNT ON;
	--Lista Todos los DetallePedidos
	if @Opcion = 1
	begin
		Select d.*,p.NombreProd from Tbl_DetallePedido d Inner join Tbl_Producto p on p.IdProd = d.IdProd
	end

	--Lista un DetallePedido filtrado por el IdDetallePed
	if @Opcion = 2
	begin
		Select d.*,p.NombreProd from Tbl_DetallePedido d Inner join Tbl_Producto p on p.IdProd = d.IdProd Where IdDetallePed = @IdDetallePed
	end

	--Insertar DetallePedido
	if @Opcion = 3
	begin
		Insert into Tbl_DetallePedido(IdPedido,IdProd,Cantidad,Observacion)
		Values(@IdPedido,@IdProd,@Cantidad,@Observacion)
	end

	--Actualiza datos del DetallePedido por el IdDetallePed
	if @Opcion = 4
	begin
		Update Tbl_DetallePedido Set IdPedido = @IdPedido,IdProd = @IdProd,Cantidad = @Cantidad,Observacion = @Observacion
		where IdDetallePed = @IdDetallePed
	end

	--Eliminar DetallePedido por el IdDetallePed
	if @Opcion = 5
	begin
		Delete From Tbl_DetallePedido Where IdDetallePed = @IdDetallePed
	end

	--Lista Todos los DetallePedidos por IdPedido
	if @Opcion = 6
	begin
		Select d.*,p.NombreProd from Tbl_DetallePedido d Inner join Tbl_Producto p on p.IdProd = d.IdProd Where IdPedido = @IdPedido
	end
END
GO
/****** Object:  StoredProcedure [dbo].[spEmpleado]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEmpleado]
	@IdEmp INT = 0,
	@IdCargo INT = 0,
	@DniEmp VARCHAR(8) = '',
	@ApellidoEmp VARCHAR(50)  = '',
	@NombreEmp VARCHAR(50)  = '',
	@Telefono VARCHAR(9)  = '',
	@InicioContrato DATE  = '',
	@SueldoEmp DECIMAL(16,0) = 0,
	@Opcion tinyint
AS
BEGIN
	SET NOCOUNT ON;
	--Lista Todos los Empleados
	if @Opcion = 1
	begin
		SELECT e.*,c.NombreCargo FROM Tbl_Empleado e
		inner join Tbl_Cargo c on e.IdCargo = c.IdCargo
	end

	--Lista un Empleado filtrado por el IdEmp
	if @Opcion = 2
	begin
		SELECT e.*,c.NombreCargo FROM Tbl_Empleado e
		inner join Tbl_Cargo c on e.IdCargo = c.IdCargo
		Where e.IdEmp = @IdEmp;
	end

	--Insertar Empleado
	if @Opcion = 3
	begin
		INSERT INTO Tbl_Empleado(IdCargo,DniEmp, ApellidoEmp, NombreEmp, TelefonoEmp, InicioContratoEmp, SueldoEmp) 
		VALUES (@IdCargo,@DniEmp, @ApellidoEmp, @NombreEmp, @Telefono, @InicioContrato, @SueldoEmp)
	end

	--Actualiza datos del Empleado por el IdEmp
	if @Opcion = 4
	begin
		UPDATE Tbl_Empleado SET
		DniEmp = @DniEmp,
		ApellidoEmp = @ApellidoEmp,
		NombreEmp = @NombreEmp,
		TelefonoEmp = @Telefono,
		InicioContratoEmp = @InicioContrato,
		SueldoEmp = @SueldoEmp,
		IdCargo = @IdCargo
		WHERE ActivoEmp = 1 
			AND IdEmp = @IdEmp;
	end

	--Eliminar Empleado por el IdEmp
	if @Opcion = 5
	begin
		DELETE u
       	FROM Tbl_Usuario u 
		INNER JOIN Tbl_Empleado e ON u.idEmp=e.idEmp
       	WHERE e.IdEmp=@IdEmp

		DELETE FROM Tbl_Empleado WHERE IdEmp = @IdEmp;
	end
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertarUsuario]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarUsuario]
	@DniEmp VARCHAR(8),
	@NombreUsuario VARCHAR(20),
	@ClaveUsuario VARCHAR(100),
	@Registrado BIT OUTPUT,
	@Mensaje VARCHAR(100) OUTPUT
AS
BEGIN
	DECLARE @IdEmp INT
	IF EXISTS(SELECT * FROM Tbl_Empleado WHERE DniEmp = @DniEmp)
	BEGIN
		IF EXISTS(SELECT * FROM Tbl_Usuario u INNER JOIN Tbl_Empleado e ON u.IdEmp=e.IdEmp WHERE DniEmp = @DniEmp)
		BEGIN
			SET @Registrado = 0
			SET @Mensaje = 'Usuario ya existe'
		END
		ELSE
		BEGIN
			SELECT @IdEmp=IdEmp FROM Tbl_Empleado WHERE DniEmp = @DniEmp
			INSERT INTO Tbl_Usuario(IdEmp, NombreUsuario, ClaveUsuario) 
			VALUES (@IdEmp, @NombreUsuario, @ClaveUsuario)
			SET @Registrado = 1
			SET @Mensaje = 'Usuario Registrado'
		END
	END
	ELSE
	BEGIN
		SET @Registrado = 0
		SET @Mensaje = 'Empleado no existe'
	END
END;
GO
/****** Object:  StoredProcedure [dbo].[spListarUsuario]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarUsuario] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT IdUsuario,u.IdEmp,NombreUsuario,RolCargo,DniEmp FROM Tbl_Usuario u
	INNER JOIN Tbl_Empleado e on e.IdEmp=u.IdEmp
	INNER JOIN Tbl_Cargo c on c.IdCargo=e.IdCargo
END
GO
/****** Object:  StoredProcedure [dbo].[spPedido]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spPedido]
	@IdPedido int = 0,
	@IdUsuario int = 0,
	@MesaPedido varchar(20) = '',
	@FechaPedido date = '',
	@Opcion tinyint
AS
BEGIN
	SET NOCOUNT ON;
	--Lista Todos los Pedidos
	if @Opcion = 1
	begin
		Select * from Tbl_Pedido
	end

	--Lista un Pedido filtrado por el IdPedido
	if @Opcion = 2
	begin
		Select * from Tbl_Pedido Where IdPedido = @IdPedido
	end

	--Insertar Pedido
	if @Opcion = 3
	begin
		Insert into Tbl_Pedido(IdUsuario,MesaPedido,FechaPedido,Pendiente)
		Values(@IdUsuario,@MesaPedido,@FechaPedido,1)
	end

	--Actualiza datos del Pedido por el IdPedido
	if @Opcion = 4
	begin
		Update Tbl_Pedido Set IdUsuario = @IdUsuario, MesaPedido = @MesaPedido,FechaPedido = @FechaPedido
		where IdPedido = @IdPedido
	end

	--Eliminar Pedido por el IdPedido
	if @Opcion = 5
	begin
		Delete From Tbl_Pedido Where IdPedido = @IdPedido
	end

	--Lista Todos los Pedidos por IdUsuario
	if @Opcion = 6
	begin
		Select * from Tbl_Pedido Where IdUsuario = @IdUsuario
	end
END
GO
/****** Object:  StoredProcedure [dbo].[spProducto]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spProducto]
	@IdProd int = 0,@IdTipoProd int = 0,@NombreProd varchar(20) = '',@Precio decimal(18,2) = 0,@Opcion tinyint
AS
BEGIN
	SET NOCOUNT ON;
	--Lista Todos los productos
	if @Opcion = 1
	begin
		Select p.*,tp.NombreTipoProd from Tbl_Producto p inner join Tbl_TipoProducto tp on p.IdTipoProd = tp.IdTipoProd
	end

	--Lista un producto filtrado por el IdProd
	if @Opcion = 2
	begin
		Select p.*,tp.NombreTipoProd from Tbl_Producto p inner join Tbl_TipoProducto tp on p.IdTipoProd = tp.IdTipoProd Where IdProd = @IdProd
	end

	--Insertar Producto
	if @Opcion = 3
	begin
		Insert into Tbl_Producto(IdTipoProd,NombreProd,Precio)
		Values(@IdTipoProd,@NombreProd,@Precio)
	end

	--Actualiza datos del producto por el IdProd
	if @Opcion = 4
	begin
		Update Tbl_Producto Set IdTipoProd = @IdTipoProd, NombreProd = @NombreProd, Precio = @Precio
		where IdProd = @IdProd
	end

	--Eliminar producto por el IdProd
	if @Opcion = 5
	begin
		Delete From Tbl_Producto Where IdProd = @IdProd
	end
END
GO
/****** Object:  StoredProcedure [dbo].[spTipoProducto]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTipoProducto]
	@IdTipoProd int = 0,
	@NombreTipoProd varchar(20) = '',
	@Opcion tinyint
AS
BEGIN
	SET NOCOUNT ON;
	--Lista Todos los tipoProductos
	if @Opcion = 1
	begin
		Select * from Tbl_TipoProducto
	end

	--Lista un tipoProducto filtrado por el IdTipoProducto
	if @Opcion = 2
	begin
		Select * from Tbl_TipoProducto Where IdTipoProd = @IdTipoProd
	end

	--Insertar TipoProducto
	if @Opcion = 3
	begin
		Insert into Tbl_TipoProducto(NombreTipoProd)
		Values(@NombreTipoProd)
	end

	--Actualiza datos del TipoProducto por el IdTipoProducto
	if @Opcion = 4
	begin
		Update Tbl_TipoProducto Set NombreTipoProd = @NombreTipoProd
		where IdTipoProd = @IdTipoProd
	end

	--Eliminar TipoProducto por el IdTipoProducto
	if @Opcion = 5
	begin
		Delete From Tbl_TipoProducto Where IdTipoProd = @IdTipoProd
	end
END
GO
/****** Object:  StoredProcedure [dbo].[spValidarUsuario]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spValidarUsuario](
	@NombreUsuario VARCHAR(20),
	@ClaveUsuario VARCHAR(100)
)
AS
BEGIN
	IF(EXISTS(SELECT *FROM Tbl_Usuario WHERE NombreUsuario = @NombreUsuario AND ClaveUsuario = @ClaveUsuario))
		SELECT IdUsuario,u.IdEmp,NombreUsuario,RolCargo FROM Tbl_Usuario u
		INNER JOIN Tbl_Empleado e on e.IdEmp=u.IdEmp
		INNER JOIN Tbl_Cargo c on c.IdCargo=e.IdCargo 
		WHERE NombreUsuario = @NombreUsuario AND ClaveUsuario = @ClaveUsuario
	ELSE
	SELECT 0 IdUsuario, 0 IdEmp, '' NombreUsuario, '' RolCargo
END
GO
/****** Object:  StoredProcedure [dbo].[spVenta]    Script Date: 7/2/2022 5:19:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spVenta]
	@IdVenta int = 0,
    @IdPedido int = 0,
    @IdUsuario int = 0,
    @PrecioIgv decimal(18,2) = 0,
    @PrecioBase decimal(18,2) = 0,
    @PrecioTotal decimal(18,2) = 0,
    @DniCliente varchar(8) = '',
    @DatosCliente varchar(50) = '',
	@Opcion tinyint
AS
BEGIN
	SET NOCOUNT ON;
	Declare @IdCliente int
	--Lista Todos los Ventas
	if @Opcion = 1
	begin
		Select v.*,c.DniCliente,c.DatosCliente from Tbl_Ventas v Inner Join Tbl_Cliente c on c.IdCliente = v.IdCliente
	end

	--Lista un Ventas filtrado por el IdVenta
	if @Opcion = 2
	begin
		select v.*,c.DniCliente,c.DatosCliente from Tbl_Ventas v Inner Join Tbl_Cliente c on c.IdCliente = v.IdCliente Where IdVenta = @IdVenta
	end

	--Insertar Ventas
	if @Opcion = 3
	begin
		if not exists(Select * from Tbl_Cliente where DniCliente = @DniCliente)
		begin
			Insert Into Tbl_Cliente(DniCliente,DatosCliente) values(@DniCliente,@DatosCliente)
		end
		Select @IdCliente = IdCliente from Tbl_Cliente where DniCliente = @DniCliente

		Insert into Tbl_Ventas(IdCliente,IdPedido,IdUsuario,PrecioIgv,PrecioBase,PrecioTotal)
		Values(@IdCliente,@IdPedido,@IdUsuario,@PrecioIgv,@PrecioBase,@PrecioTotal)

		Update Tbl_Pedido Set Pendiente = 0 Where IdPedido = @IdPedido
	end

	--Actualiza Ventas del cargo por el IdVenta
	if @Opcion = 4
	begin
		if not exists(Select * from Tbl_Cliente where DniCliente = @DniCliente)
		begin
			Insert Into Tbl_Cliente(DniCliente,DatosCliente) values(@DniCliente,@DatosCliente)
		end
		Select @IdCliente = IdCliente from Tbl_Cliente where DniCliente = @DniCliente

		Update Tbl_Ventas Set IdCliente=@IdCliente,IdPedido=@IdPedido,IdUsuario=@IdUsuario,
		PrecioIgv=@PrecioIgv,PrecioBase=@PrecioBase,PrecioTotal=@PrecioTotal
		Where IdVenta = @IdVenta
	end

	--Eliminar Ventas por el IdVenta
	if @Opcion = 5
	begin
		Delete From Tbl_Ventas Where IdVenta = @IdVenta
	end
END
GO
