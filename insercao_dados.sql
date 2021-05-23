INSERT INTO cidades (nome, estado)
VALUES 
('Santos', 'SP'),
('Curitiba', 'PR'),
('São Paulo', 'SP'),
('Campo Grande', 'MS'),
('Natal', 'RN');

INSERT INTO bairros (nome)
VALUES
('Vila Alba'),
('Ponta da Praia'),
('Embaré'),
('Centro'),
('Vila Mariana'),
('Conceição');

INSERT INTO enderecos (tipoLogradouro, logradouro, numero, complemento, cep, idBairro, idCidade, idCliente)
VALUES
('Rua', 'Dona Euclidia', '80', 'apto 20', '1100000', '2', '1', '1'),
('Av','Rubens', '30', 'casa 3', '23000000', '1', '1', '2'),
('Rua','Maria','2','apto 20', '12345678', '3', '5', '3'),
('Travessa','Doutor Jose', '23','apto 120', '14785236', '2', '1', '4'),
('Rua','Joseana', '26','apto 56', '12345678', '6', '4', '5'),
('Rua','Andre Rebouças','1965','bloco B', '12345678', '4', '3', '6'),
('Rua','Pedro', '89','apto 220', '12345678', '3', '1', '7'),
('Rua','Mara', '100','apto 450', '12345678', '3', '1', '8');

INSERT INTO clientes (nome, email, whatsapp)
VALUES
('Lara Fabiano', 'laraifabiano@gmail.com', '129999-9999'),
('Marcos V Alves', 'marcos@gmail.com', '129988-9999'),
('Victoria Pimenta', 'vicpimenta@gmail.com', '129779-9999'),
('Marcellus Cesario', 'marcellus@gmail.com', '129969-9999'),
('Lutiero Pedroso Fabri', 'lutiero@gmail.com', '129959-9999'),
('Maeli Aguilera', 'maeli@gmail.com', '129949-9999'),
('Ariel Fabiano', 'arielfabiano@gmail.com', '129939-9999'),
('Beatriz Salle', 'biasallee@gmail.com', '129999-9969');


INSERT INTO departamentos (nomeDeptos)
VALUES
('celulares'),
('adaptadores'),
('acessorios'),
('higiene'),
('papelaria');

INSERT INTO produtos (descricao, preco, qtdEstoque, disponivel, emDestaque, idDepto)
VALUES
('iPhone 10', '4000', '50', 'SIM', 'NAO', '1'),
('Samsung S21', '4499.99', '20', 'SIM', 'SIM', '1'),
('Redmi Note 8', '2000.99', '10', 'SIM', 'NAO', '1'),
('Mi8 Lite', '999.86', '32', 'SIM', 'SIM', '1'),
('adaptador tipo C', '12.80', '40', 'SIM', 'NAO', '2'),
('adaptador USB', '5', '0', 'NAO', 'NAO', '2'),
('adaptador p3', '8.99', '32', 'SIM', 'NAO', '2'),
('capinha iPhone', '60.60', '50', 'SIM', 'SIM', '3'),
('fone de ouvido', '15', '15', 'SIM', 'NAO', '3'),
('Xiaomi airdot', '180', '9', 'SIM', 'NAO', '3'),
('smartwatch', '1200', '20', 'SIM', 'SIM', '3'),
('shampoo', '20', '14', 'SIM', 'NAO', '4'),
('sabonete', '3', '20', 'SIM', 'NAO', '4'),
('escova de dente', '12', '10', 'SIM', 'NAO', '4'),
('caderno', '25', '60', 'SIM', 'NAO', '5'),
('caneta', '2', '30', 'SIM', 'NAO', '5'),
('borracha', '2.5', '70', 'SIM', 'NAO', '5'),
('estojo', '15.75', '20', 'SIM', 'NAO', '5'),
('lapis', '1.99', '90', 'SIM', 'NAO', '5'),
('marca texto', '6.50', '90', 'SIM', 'NAO', '5');

INSERT INTO status_pedidos (status)
VALUES
('novo pedido'),
('cancelado'),
('aguardando pagamento'),
('pagamento autorizado'),
('pagamento negado'),
('em separação'),
('em transporte'),
('entregue');

INSERT INTO pedidos (valorTotal, data, status, cliente)
VALUES
('2000.99', '2020-12-10','7','2'), #1
('48', '2021-02-10','3','2'),#2
('121.2', '2020-01-20','4','2'),#3
('999.86', '2021-03-12','8','1'),#4
('15.92', '2020-10-10','7','3'),#5
('15', '2020-11-10','5','6'),#6
('50', '2021-08-02','1','1'),#7
('12', '2021-02-13','4','5');#8

INSERT INTO itens_pedido (preco_individual, descricao, quantidade, valor_total, idpedido, id_produto)
VALUES
('2000.99', 'iPhone', '1', '2000.99', '17', '1'),
('12', 'escova', '4', '48', '18', '14'),
('60.6', 'capinha', '2', '121.2', '19', '8'),
('999.86', 'mi8Lite', '1', '2000.99', '20', '4'),
('1.99', 'lapis', '8', '15.92', '21', '19'),
('15', 'fone', '1', '15', '22', '9'),
('25', 'caderno', '2', '50', '23', '15'),
('3', 'sabonete', '4', '12', '24', '13');

