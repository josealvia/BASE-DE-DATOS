/*==============================================================*/
/* Table: CLIENTES                                              */
/*==============================================================*/
create table CLIENTES (
   CODIGO_CLIENTE       INT4                 not null,
   NOMBRE_CLIENTE       CHAR(30)             null,
   DIRECCION_CLIENTE    CHAR(30)             null,
   TELEFONO_CLIENTE     CHAR(30)             null,
   constraint PK_CLIENTES primary key (CODIGO_CLIENTE)
);

/*==============================================================*/
/* Table: COMPRA_INSUMO                                         */
/*==============================================================*/
create table COMPRA_INSUMO (
   ID_COMPRA_INSUMO     INT4                 not null,
   CODIGO_SUCURSAL      INT4                 not null,
   constraint PK_COMPRA_INSUMO primary key (ID_COMPRA_INSUMO)
);

/*==============================================================*/
/* Table: DETALLE_VENTA                                         */
/*==============================================================*/
create table DETALLE_VENTA (
   CODIGO_PRODUCTO      INT4                 not null,
   ID_VENTAS            INT4                 not null,
   CANTIDAD_PRODUCTO    INT4                 null,
   PRECIO_PRODUCTO      FLOAT8               null,
   ID_DETALLE_VENTA     INT4                 not null,
   TOTAL_DETALLE        FLOAT8               null,
   constraint PK_DETALLE_VENTA primary key (ID_DETALLE_VENTA)
);

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
   ID_ESTADO            INT4                 not null,
   NOMBRE_ESTADO        CHAR(20)             null,
   constraint PK_ESTADO primary key (ID_ESTADO)
);

/*==============================================================*/
/* Table: PRODUCTOS                                             */
/*==============================================================*/
create table PRODUCTOS (
   CODIGO_PRODUCTO      INT4                 not null,
   CODIGO_PROVEEDOR     INT4                 not null,
   NOMBRE_PRODUCTO      CHAR(30)             null,
   COSTO_PRODUCTO       FLOAT8               null,
   PRECIO_PRODUCTO      FLOAT8               null,
   F_VENCIMIENTO_PRODUCTO DATE                 null,
   STOCK_PRODUCTO       INT4                 null,
   constraint PK_PRODUCTOS primary key (CODIGO_PRODUCTO)
);

/*==============================================================*/
/* Table: PROVEEDORES                                           */
/*==============================================================*/
create table PROVEEDORES (
   CODIGO_PROVEEDOR     INT4                 not null,
   NOMBRE_PROVEEDOR     CHAR(30)             null,
   DIRECCION_PROVEEDOR  CHAR(40)             null,
   TELEFONO_PROVEEDOR   CHAR(20)             null,
   constraint PK_PROVEEDORES primary key (CODIGO_PROVEEDOR)
);

/*==============================================================*/
/* Table: SUCURSALES                                            */
/*==============================================================*/
create table SUCURSALES (
   CODIGO_SUCURSAL      INT4                 not null,
   DIRECCION_SUCURSAL   CHAR(40)             null,
   TELEFONO_SUCURSAL    CHAR(20)             null,
   constraint PK_SUCURSALES primary key (CODIGO_SUCURSAL)
);

/*==============================================================*/
/* Table: SUCURSAL_PROVEEDOR                                    */
/*==============================================================*/
create table SUCURSAL_PROVEEDOR (
   CODIGO_SUCURSAL      INT4                 not null,
   CODIGO_PROVEEDOR     INT4                 not null,
   ID_SUCURSAL_PROVEEDOR CHAR(10)             not null,
   constraint PK_SUCURSAL_PROVEEDOR primary key (ID_SUCURSAL_PROVEEDOR)
);

/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
   CODIGO_VENDEDOR      INT4                 not null,
   CODIGO_SUCURSAL      INT4                 not null,
   ID_ESTADO            INT4                 not null,
   NOMBRES_VENDEDOR     CHAR(30)             null,
   APELLIDOS_VENDEDOR   CHAR(30)             null,
   F_NACIMIENTO_VENDEDOR DATE                 null,
   F_INGRESO_LABORAL    DATE                 null,
   constraint PK_VENDEDOR primary key (CODIGO_VENDEDOR)
);

/*==============================================================*/
/* Table: VENTAS                                                */
/*==============================================================*/
create table VENTAS (
   ID_VENTAS            INT4                 not null,
   CODIGO_VENDEDOR      INT4                 not null,
   CODIGO_CLIENTE       INT4                 not null,
   DESCUENTO_VENTAS     CHAR(10)             null,
   constraint PK_VENTAS primary key (ID_VENTAS)
);

alter table COMPRA_INSUMO
   add constraint FK_COMPRA_I_RELATIONS_SUCURSAL foreign key (CODIGO_SUCURSAL)
      references SUCURSALES (CODIGO_SUCURSAL)
      on delete restrict on update restrict;

alter table DETALLE_VENTA
   add constraint FK_DETALLE__RELATIONS_VENTAS foreign key (ID_VENTAS)
      references VENTAS (ID_VENTAS)
      on delete restrict on update restrict;

alter table DETALLE_VENTA
   add constraint FK_DETALLE__RELATIONS_PRODUCTO foreign key (CODIGO_PRODUCTO)
      references PRODUCTOS (CODIGO_PRODUCTO)
      on delete restrict on update restrict;

alter table PRODUCTOS
   add constraint FK_PRODUCTO_RELATIONS_PROVEEDO foreign key (CODIGO_PROVEEDOR)
      references PROVEEDORES (CODIGO_PROVEEDOR)
      on delete restrict on update restrict;

alter table SUCURSAL_PROVEEDOR
   add constraint FK_SUCURSAL_COMPRA_SUCURSAL foreign key (CODIGO_SUCURSAL)
      references SUCURSALES (CODIGO_SUCURSAL)
      on delete restrict on update restrict;

alter table SUCURSAL_PROVEEDOR
   add constraint FK_SUCURSAL_COMPRA2_PROVEEDO foreign key (CODIGO_PROVEEDOR)
      references PROVEEDORES (CODIGO_PROVEEDOR)
      on delete restrict on update restrict;

alter table VENDEDOR
   add constraint FK_VENDEDOR_RELATIONS_ESTADO foreign key (ID_ESTADO)
      references ESTADO (ID_ESTADO)
      on delete restrict on update restrict;

alter table VENDEDOR
   add constraint FK_VENDEDOR_TIENE_SUCURSAL foreign key (CODIGO_SUCURSAL)
      references SUCURSALES (CODIGO_SUCURSAL)
      on delete restrict on update restrict;

alter table VENTAS
   add constraint FK_VENTAS_RELATIONS_CLIENTES foreign key (CODIGO_CLIENTE)
      references CLIENTES (CODIGO_CLIENTE)
      on delete restrict on update restrict;

alter table VENTAS
   add constraint FK_VENTAS_VENDE_VENDEDOR foreign key (CODIGO_VENDEDOR)
      references VENDEDOR (CODIGO_VENDEDOR)
      on delete restrict on update restrict;

