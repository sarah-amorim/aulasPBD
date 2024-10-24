create table pedidos(
  id serial primary key,
  data_pedido date not null,
  valor numeric not null,
  id_clientes int,
  foreign key (id_clientes) references clientes(id)
  );
