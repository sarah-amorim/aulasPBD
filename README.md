## JOIN
* INNER JOIN

Retorna apenas as linhas com correspondências em ambas as tabelas.

```
SELECT Clientes.Nome, Pedidos.id, Pedidos.Valor 
FROM Clientes 
INNER JOIN
Pedidos ON Clientes.id = Pedidos.id_clientes;
```

Este script retorna uma lista de clientes e seus pedidos correspondentes, mostrando:

    Nome do cliente
    ID do pedido
    Valor do pedido

Cenário:

Se um cliente tem mais de um pedido, ele aparecerá várias vezes na lista (uma vez para cada pedido).
Se um cliente não tem pedidos, ele não aparecerá no resultado (porque é um INNER JOIN).

* LEFT JOIN ou LEFT OUTER JOIN

Retorna todas as linhas da tabela à esquerda, e as correspondências da tabela à direita.

Todos os clientes, mesmo sem pedidos.

```
SELECT Clientes.Nome, Pedidos.id, Pedidos.Valor 
FROM Clientes 
LEFT JOIN Pedidos 
ON Clientes.id = Pedidos.id_clientes;
```

Este script retorna todos os clientes, independentemente de eles terem ou não pedidos.

    Clientes com pedidos: Mostrarão o nome, o ID do pedido e o valor do pedido.
    Clientes sem pedidos: Mostrarão o nome do cliente, mas as colunas Pedidos.id e Pedidos.Valor terão NULL.

* RIGHT JOIN ou RIGHT OUTER JOIN

Retorna todas as linhas da tabela à direita, e as correspondências da tabela à esquerda.

Todos os pedidos, mesmo sem clientes.
```
SELECT Clientes.Nome, Pedidos.id, Pedidos.Valor
FROM Clientes
RIGHT JOIN Pedidos
ON Clientes.id = Pedidos.id_clientes;
```

* FULL JOIN ou FULL OUTER JOIN

Retorna todas as linhas quando há uma correspondência em uma das tabelas.

```
SELECT Clientes.Nome, Pedidos.PedidoID, Pedidos.Valor
FROM Clientes 
FULL OUTER JOIN
Pedidos ON Clientes.id = Pedidos.id_clientes;
```

* CROSS JOIN

Retorna o produto cartesiano entre as tabelas, todas as combinações possíveis.

```
SELECT Clientes.Nome, Pedidos.id 
FROM Clientes 
CROSS JOIN Pedidos;
```
