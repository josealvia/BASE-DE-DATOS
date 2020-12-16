
/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   CODIGO_CLIENTE       INT4                 not null,
   NOMBRE_CLIENTE       CHAR(30),
   DIRECCION_CLIENTE    CHAR(30),
   TELEFONO_CLIENTE     CHAR(30),
   constraint PK_CLIENTE primary key (CODIGO_CLIENTE)
);

/*==============================================================*/
/* Table: DETALLE_VENTA                                         */
/*==============================================================*/
create table DETALLE_VENTA (
   CODIGO_PRODUCTO      INT4                 not null,
   ID_VENTA             INT4                 not null,
   CANTIDAD_PRODUCTO    INT4,
   PRECIO_PRODUCTO      FLOAT8,
   ID_DETALLE_VENTA     INT4                 not null,
   TOTAL_DETALLE        FLOAT8,
   FECHA_VENTA          DATE,
   constraint PK_DETALLE_VENTA primary key (ID_DETALLE_VENTA)
);

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
   ID_ESTADO            INT4                 not null,
   NOMBRE_ESTADO        CHAR(20),
   constraint PK_ESTADO primary key (ID_ESTADO)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   CODIGO_PRODUCTO      INT4                 not null,
   CODIGO_PROVEEDOR     INT4                 not null,
   NOMBRE_PRODUCTO      CHAR(30),
   COSTO_PRODUCTO       FLOAT8,
   PRECIO_PRODUCTO      FLOAT8,
   F_VENCIMIENTO_PRODUCTO DATE,
   STOCK_PRODUCTO       INT4,
   constraint PK_PRODUCTO primary key (CODIGO_PRODUCTO)
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   CODIGO_PROVEEDOR     INT4                 not null,
   NOMBRE_PROVEEDOR     CHAR(50),
   DIRECCION_PROVEEDOR  CHAR(40),
   TELEFONO_PROVEEDOR   CHAR(20),
   constraint PK_PROVEEDOR primary key (CODIGO_PROVEEDOR)
);

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   CODIGO_SUCURSAL      INT4                 not null,
   DIRECCION_SUCURSAL   CHAR(40),
   TELEFONO_SUCURSAL    CHAR(20),
   constraint PK_SUCURSAL primary key (CODIGO_SUCURSAL)
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
   NOMBRES_VENDEDOR     CHAR(30),
   APELLIDOS_VENDEDOR   CHAR(30),
   F_NACIMIENTO_VENDEDOR DATE,
   F_INGRESO_LABORAL    DATE,
   TELF_VENDEDOR        FLOAT,
   constraint PK_VENDEDOR primary key (CODIGO_VENDEDOR)
);

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA (
   ID_VENTA             INT4                 not null,
   CODIGO_VENDEDOR      INT4                 not null,
   CODIGO_CLIENTE       INT4                 not null,
   DESCUENTO_VENTA      CHAR(10),
   constraint PK_VENTA primary key (ID_VENTA)
);

alter table DETALLE_VENTA
   add constraint FK_DETALLE__RELATIONS_VENTA foreign key (ID_VENTA)
      references VENTA (ID_VENTA)
      on delete restrict on update restrict;

alter table DETALLE_VENTA
   add constraint FK_DETALLE__RELATIONS_PRODUCTO foreign key (CODIGO_PRODUCTO)
      references PRODUCTO (CODIGO_PRODUCTO)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_RELATIONS_PROVEEDO foreign key (CODIGO_PROVEEDOR)
      references PROVEEDOR (CODIGO_PROVEEDOR)
      on delete restrict on update restrict;

alter table SUCURSAL_PROVEEDOR
   add constraint FK_SUCURSAL_COMPRA_SUCURSAL foreign key (CODIGO_SUCURSAL)
      references SUCURSAL (CODIGO_SUCURSAL)
      on delete restrict on update restrict;

alter table SUCURSAL_PROVEEDOR
   add constraint FK_SUCURSAL_COMPRA2_PROVEEDO foreign key (CODIGO_PROVEEDOR)
      references PROVEEDOR (CODIGO_PROVEEDOR)
      on delete restrict on update restrict;

alter table VENDEDOR
   add constraint FK_VENDEDOR_RELATIONS_ESTADO foreign key (ID_ESTADO)
      references ESTADO (ID_ESTADO)
      on delete restrict on update restrict;

alter table VENDEDOR
   add constraint FK_VENDEDOR_TIENE_SUCURSAL foreign key (CODIGO_SUCURSAL)
      references SUCURSAL (CODIGO_SUCURSAL)
      on delete restrict on update restrict;

alter table VENTA
   add constraint FK_VENTA_RELATIONS_CLIENTE foreign key (CODIGO_CLIENTE)
      references CLIENTE (CODIGO_CLIENTE)
      on delete restrict on update restrict;

alter table VENTA
   add constraint FK_VENTA_VENDE_VENDEDOR foreign key (CODIGO_VENDEDOR)
      references VENDEDOR (CODIGO_VENDEDOR)
      on delete restrict on update restrict;


