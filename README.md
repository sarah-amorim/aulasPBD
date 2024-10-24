## JOIN
* INNER JOIN

Retorna apenas as linhas com correspondências em ambas as tabelas.

```
SELECT Clientes.Nome, Pedidos.PedidoID, Pedidos.Valor 
FROM Clientes 
INNER JOIN
Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;
```

* LEFT JOIN ou LEFT OUTER JOIN

Retorna todas as linhas da tabela à esquerda, e as correspondências da tabela à direita.

```
SELECT Clientes.Nome, Pedidos.PedidoID, Pedidos.Valor 
FROM Clientes 
LEFT JOIN Pedidos 
ON Clientes.ClienteID = Pedidos.ClienteID;
```

* RIGHT JOIN ou RIGHT OUTER JOIN

Retorna todas as linhas da tabela à direita, e as correspondências da tabela à esquerda.

```
SELECT Clientes.Nome, Pedidos.PedidoID, Pedidos.Valor
FROM Clientes
RIGHT JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID;
```

* FULL JOIN ou FULL OUTER JOIN

Retorna todas as linhas quando há uma correspondência em uma das tabelas.

```
SELECT Clientes.Nome, Pedidos.PedidoID, Pedidos.Valor
FROM Clientes 
FULL OUTER JOIN
Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;
```

* CROSS JOIN

Retorna o produto cartesiano entre as tabelas, todas as combinações possíveis.

```
SELECT Clientes.Nome, Pedidos.PedidoID 
FROM Clientes 
CROSS JOIN Pedidos;
```
