/* insertar estado*/
insert into estado values(1,'Continuan trabajando');
insert into estado values(2,'Retirado');

/* insertar sucursal*/

insert into sucursales values(1,'Manta calle 13 AV 16','0984568210');
insert into sucursales values(2,'Manta-Los Esteros','0984756456');
insert into sucursales values(3,'Montecristi- Calle Metropolitana','0985674895');
insert into sucursales values(4,'Montecristi-Los Bajos','0989845632');

/* insertar vendedor*/
insert into vendedor values(1,1,1,'Jose Mauricio','Alvia Parrales','25/10/2000','20/08/2018');
insert into vendedor values(2,2,1,'Andres Alejandro','Moncayo Zambrano','30/03/2001','10/09/2019');
insert into vendedor values(3,3,1,'Yandry Javier','Alvia Parrales','04/01/1999','21/09/2019');
insert into vendedor values(4,4,1,'Leonel Armando','Anchundia Lucas','10/02/2000','10/07/2020');
insert into vendedor values(5,1,1,'Jonathan Leopoldo','Mendoza Pilligua','10/08/2000','05/10/2020');
insert into vendedor values(6,2,1,'Anthony Andres','Arteaga','15/05/2000','10/05/2020');
insert into vendedor values(7,3,1,'Eddy Josue','Espinoza Lopez','25/05/2000','08/09/2019');
insert into vendedor values(8,4,1,'Darwin Ricardo','Alvia Lucas','20/06/2000','10/02/2020');
insert into vendedor values(9,1,2,'Brando Rafael','Mero Cepeda','07/08/1999','25/11/2020');

/*insetar proveedor*/
insert into proveedores values(1,'Quito','052389546','Distribuidora Difarmes');
insert into proveedores values(2,'Guayaquil','04 239-9683','Distribuidora Farmaceutica El punto Verde');
insert into proveedores values(3,'Guayaquil','02373-1390','Distribuidora Farmaceutica Disfor S.A');
insert into proveedores values(4,'Quito','02256-0170','Cedimed Cia Ltda ');


/* insertar sucursal proveedor*/
insert into sucursal_proveedor values(1,1,1);
insert into sucursal_proveedor values(1,2,2);
insert into sucursal_proveedor values(2,3,3);
insert into sucursal_proveedor values(2,4,4);
insert into sucursal_proveedor values(3,1,5);
insert into sucursal_proveedor values(3,4,6);
insert into sucursal_proveedor values(4,3,7);
insert into sucursal_proveedor values(4,2,8);


/*insertar productos*/
insert into productos values(1,1,'Aciclovir',30,0.50,'10/08/2022',60);
insert into productos values(2,1,'Acido Fusidico',26.65,0.49,'18/10/2022',55);
insert into productos values(3,1,'Tramadol',28.80,0.48,'10/08/2022',60);
insert into productos values(4,1,'Ibuprofeno-liquido oral',31.50,0.45,'11/10/2023',70);
insert into productos values(5,1,'Paracetamol',13.00,0.20,'10/08/2022',65);
insert into productos values(6,2,'Aciclovir',30,0.50,'10/08/2022',60);
insert into productos values(7,2,'Acido Fusidico',26.65,0.49,'18/10/2022',55);
insert into productos values(8,2,'Tramadol',28.80,0.48,'10/08/2022',60);
insert into productos values(9,2,'Ibuprofeno-liquido oral',31.50,0.45,'11/10/2023',70);
insert into productos values(10,2,'Paracetamol',13.00,0.20,'10/08/2022',50);

insert into productos values(11,2,'Aciclovir','30.00','0.50','10/08/2022',70);
insert into productos values(12,3,'Acido Fusidico',26.65,0.49,'18/10/2022',55);
insert into productos values(13,3,'Tramadol',28.80,0.48,'10/08/2022',60);
insert into productos values(14,3,'Ibuprofeno-liquido oral',31.50,0.45,'11/10/2023',70);
insert into productos values(15,3,'Paracetamol',13.00,0.20,'10/08/2022',50);


insert into productos VALUES(16,4,'Aciclovir',30,0.50,'10/08/2022',60);
insert into productos VALUES(17,4,'Tramadol',28.80,0.48,'10/08/2022',60);
insert into productos values(18,4,'Ibuprofeno-liquido oral',31.50,0.45,'11/10/2023',70);
insert into productos values(19,4,'Paracetamol',13.00,0.20,'10/08/2022',65);
insert into productos values(20,4,'Aciclovir','30.00','0.50','10/08/2022',60)


begin;
insert into clientes values(1,'Daniel Delgado Lucas','Montecristi-Los Bajos',098534578 );
insert into ventas values(1,4,1,'10%');
insert into detalle_venta values(15,1,10,0.20,1,0.0,'20/10/2020');
update detalle_venta set total_detalle=cantidad_producto*precio_producto where id_detalle_venta=1;
update productos set stock_producto=stock_producto-10 where codigo_producto=15;
commit;


begin;
insert into clientes values(2,'Andres Anchundia Alvia','Montecristi-Calle Eloy Alfaro','0989987562');
insert into ventas values(2,8,2,'0%');
insert into detalle_venta values(8,1,7,0.48,2,0.0,'25/11/2020');
update detalle_venta set total_detalle=cantidad_producto*precio_producto where id_detalle_venta=2;
update productos set stock_producto=stock_producto-7 where codigo_producto=8;
commit;

begin;
insert into clientes values(4,'Eduardo Lopez Delgado','Manta calle 13 Av 12','098896354');
insert into ventas values(4,5,4,'0%');
insert into detalle_venta values(5,4,8,0.20,4,0.0,'26/11/2020');
update detalle_venta set total_detalle=cantidad_producto*precio_producto where id_detalle_venta=4;
update productos set stock_producto=stock_producto-8 where codigo_producto=5;
commit;

begin;
insert into clientes values(5,'David Lucas','Manta calle 13 Av 12','098847354');
insert into ventas values(5,2,5,'0%');
insert into detalle_venta values(13,5,4,0.48,5,0.0,'30/11/2020');
update detalle_venta set total_detalle=cantidad_producto*precio_producto where id_detalle_venta=5;
update productos set stock_producto=stock_producto-4 where codigo_producto=13;
commit;

begin;
insert into clientes values(6,'Oscar Delgado','Los Bajos','0985456354');
insert into ventas values(6,6,6,'0%');
insert into detalle_venta values(16,6,7,0.50,6,0.0,'10/12/2020');
update detalle_venta set total_detalle=cantidad_producto*precio_producto where id_detalle_venta=6;
update productos set stock_producto=stock_producto-7 where codigo_producto=16;
commit;

begin;
insert into clientes values(7,'Maria Anchundia','Montecristi','098896400');
insert into ventas values(7,3,7,'0%');
insert into detalle_venta values(1,7,6,0.50,7,0.0,'5/12/2020');
update detalle_venta set total_detalle=cantidad_producto*precio_producto where id_detalle_venta=7;
update productos set stock_producto=stock_producto-1 where codigo_producto=1;
commit;

begin;
insert into clientes values(8,'Jorge Alvia','Manta','098776354');
insert into ventas values(8,7,8,'0%');
insert into detalle_venta values(4,8,7,0.45,8,0.0);
update detalle_venta set total_detalle=cantidad_producto*precio_producto where id_detalle_venta=8;
update productos set stock_producto=stock_producto-7 where codigo_producto=4;
commit;

begin;
insert into clientes values(9,'Nancy lucas','Montecristi','098776354');
insert into ventas values(9,4,9,'5%');
insert into detalle_venta values(12,9,20,0.49,9,0.0,'10/12/2020');
update detalle_venta set total_detalle=cantidad_producto*precio_producto where id_detalle_venta=9;
update productos set stock_producto=stock_producto-20 where codigo_producto=12;
commit;




/*vendedor con mayor experiencia en sucursal 1*/
select vendedor.f_ingreso_laboral,
max(nombres_vendedor) from sucursales inner join vendedor on sucursales.codigo_sucursal=vendedor.codigo_sucursal 
where sucursales.codigo_sucursal=1
group by f_ingreso_laboral
limit 1;

/*vendedor con mayor experiencia en sucursal 2*/

select vendedor.f_ingreso_laboral,
max(nombres_vendedor) from sucursales inner join vendedor on sucursales.codigo_sucursal=vendedor.codigo_sucursal 
where sucursales.codigo_sucursal=2
group by f_ingreso_laboral
limit 1; 


/*vendedor con mayor experiencia en sucursal 3*/

select vendedor.f_ingreso_laboral,
max(nombres_vendedor) from sucursales inner join vendedor on sucursales.codigo_sucursal=vendedor.codigo_sucursal 
where sucursales.codigo_sucursal=3
group by f_ingreso_laboral
limit 1;


/*vendedor con mayor experiencia en sucursal 4*/
select vendedor.f_ingreso_laboral,
max(nombres_vendedor) from sucursales inner join vendedor on sucursales.codigo_sucursal=vendedor.codigo_sucursal 
where sucursales.codigo_sucursal=4
group by f_ingreso_laboral
limit 1;


/*cantidad de personas que siguen trabajando*/

select estado.nombre_estado,
count(vendedor.nombres_vendedor)
from estado inner join vendedor on estado.id_estado=vendedor.id_estado where estado.id_estado=1
group by nombre_estado



/* cantidad de personas que han sido retirados*/

select estado.nombre_estado,
count(estado.id_estado)
from estado inner join vendedor on estado.id_estado=vendedor.id_estado 
where estado.id_estado=2
group by nombre_estado



select vendedor.nombres_vendedor, vendedor.apellidos_vendedor, sucursales.direccion_sucursal, 
count(vendedor.nombres_vendedor)
from estado inner join vendedor on estado.id_estado=vendedor.id_estado
inner join sucursales on sucursales.codigo_sucursal= vendedor.codigo_sucursal
where vendedor.apellidos_vendedor='Alvia Parrales' 
group by nombres_vendedor, apellidos_vendedor, direccion_sucursal



/* producto que mas se vende en la sucursal 1*/

select productos.nombre_producto, detalle_venta.cantidad_producto, count(detalle_venta.cantidad_producto) from ventas 
inner join detalle_venta on ventas.id_ventas=detalle_venta.id_ventas
inner join productos on productos.codigo_producto=detalle_venta.codigo_producto 
inner join vendedor on vendedor.codigo_vendedor = ventas.codigo_vendedor
inner join sucursales on sucursales.codigo_sucursal = vendedor.codigo_sucursal
where sucursales.codigo_sucursal=1
group by productos.nombre_producto , detalle_venta.cantidad_producto
order by detalle_venta.cantidad_producto desc
limit 1;


/* producto que mas se vende en la sucursal 2*/

select productos.nombre_producto, detalle_venta.cantidad_producto, count(detalle_venta.cantidad_producto) from ventas
inner join detalle_venta on ventas.id_ventas=detalle_venta.id_ventas
inner join productos on productos.codigo_producto=detalle_venta.codigo_producto 
inner join vendedor on vendedor.codigo_vendedor = ventas.codigo_vendedor
inner join sucursales on sucursales.codigo_sucursal = vendedor.codigo_sucursal
where sucursales.codigo_sucursal=2
group by productos.nombre_producto , detalle_venta.cantidad_producto
order by detalle_venta.cantidad_producto desc
limit 1;

/* producto que mas se vende en la sucursal 3*/

select productos.nombre_producto, detalle_venta.cantidad_producto, count(detalle_venta.cantidad_producto) from ventas inner join detalle_venta on ventas.id_ventas=detalle_venta.id_ventas
inner join productos on productos.codigo_producto=detalle_venta.codigo_producto 
inner join vendedor on vendedor.codigo_vendedor = ventas.codigo_vendedor
inner join sucursales on sucursales.codigo_sucursal = vendedor.codigo_sucursal
where sucursales.codigo_sucursal=3
group by productos.nombre_producto , detalle_venta.cantidad_producto
order by detalle_venta.cantidad_producto desc
limit 1;

/* producto que mas se vende en la sucursal 4*/

select productos.nombre_producto, detalle_venta.cantidad_producto, count(detalle_venta.cantidad_producto) from ventas 
inner join detalle_venta on ventas.id_ventas=detalle_venta.id_ventas
inner join productos on productos.codigo_producto=detalle_venta.codigo_producto 
inner join vendedor on vendedor.codigo_vendedor = ventas.codigo_vendedor
inner join sucursales on sucursales.codigo_sucursal = vendedor.codigo_sucursal
where sucursales.codigo_sucursal=4
group by productos.nombre_producto , detalle_venta.cantidad_producto
order by detalle_venta.cantidad_producto desc
limit 1;

/* producto que mas se vende */

select productos.nombre_producto, detalle_venta.cantidad_producto, count(detalle_venta.cantidad_producto) from ventas 
inner join detalle_venta on ventas.id_ventas=detalle_venta.id_ventas
inner join productos on productos.codigo_producto=detalle_venta.codigo_producto 
inner join vendedor on vendedor.codigo_vendedor = ventas.codigo_vendedor
inner join sucursales on sucursales.codigo_sucursal = vendedor.codigo_sucursal
group by productos.nombre_producto , detalle_venta.cantidad_producto
order by detalle_venta.cantidad_producto desc
limit 1;


