-- QUANTIDADE TODAL DE PROCUTOS EM ESTOQUE --
SELECT SUM(qtdEstoque) as estoque_total from produtos;

-- CONSULTA DE PRODUTOS DISPONIVEIS E SEU DEPARTAMENTO--
SELECT produtos.idProdutos, produtos.descricao, produtos.preco, produtos.qtdEstoque, produtos.disponivel, produtos.emDestaque, departamentos.nomeDeptos from produtos
inner join departamentos on produtos.idDepto = departamentos.idDeptos
where produtos.disponivel = 'SIM';

-- CONSULTA DE CLIENTE E ENDEREÇO--

SELECT clientes.idCliente, clientes.nome, clientes.email, clientes.whatsapp, enderecos.tipoLogradouro, enderecos.logradouro, enderecos.numero, enderecos.complemento, enderecos.cep, cidades.nome, cidades.estado, bairros.nome from clientes
inner join enderecos on enderecos.idCliente = clientes.idCliente
inner join cidades on cidades.idCidades = enderecos.idCidade
inner join bairros on bairros.id = enderecos.idBairro;


-- CONSULTA DE QUANTIDADE VENDIDA DE CADA PRODUTO --

SELECT itens_pedido.id_produto, sum(quantidade) as quantidade_vendida FROM itens_pedido
inner join pedidos on pedidos.id = itens_pedido.idpedido
group by id_produto;

-- CONSULTA DE VALOR TOTAL GASTO POR CLIENTE  --
 
SELECT pedidos.id, clientes.nome, sum(itens_pedido.valor_total) as total_gasto FROM itens_pedido
inner join pedidos on itens_pedido.idpedido = pedidos.id
inner join clientes on clientes.idCliente = pedidos.cliente
group by clientes.idCliente