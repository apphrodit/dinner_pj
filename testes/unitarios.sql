-- Popular o banco de dados
-- =================================================================

insert into cliente values
(default, "930.603.098-33", "Jah Pod Al-mossa", "19-9999-9999", "19541-416", "333", "Fundos"),
(default, "999.426.898-85", "Faroh Fah", "21-9921-8999", "19541-412", "011", "Frente"),
(default, "644.330.538-80", "Feij aoh", "19-8888-9939", "19541-400", "222", "Casa B"),
(default, "191.656.418-68", "Mac Air ao", "19-9429-9119", "19541-406", "111", "AP156");
(default, "000.000.000-00", "Comer no Local", "19-9999-9999", "11111-111", "0", "AAAAA");

insert into motoboy values
(default, "Pedrin Pai", "JTT-3902", "CG TITAN KS 150 HONDA"),
(default, "Pedrin Junior", "CVT-4002", "YAMAHA FAZER 250"),
(default, "Pedrin Filho", "OAP-2202", "CHINERAE");
(default, "Sem entrga", "xxx-xxx", "Sem Veiculo");

insert into cardapio values
(default, "Hot Dog Imenso", "Pão, 4 Salsichas, Purê de Batata, Batata Palha, Maionese, Ketchup, Ervilha, Milho, Cheddar", 45.00),
(default, "Pastel dos cabras", "Queijo, Presunto, Frango com Catupiry, Cheddar, Bacon. Acompanhado de Caldo de Cana à vontade.", 20.00),
(default, "X-Tudo", "Pão, 3 Carnes, Ovo, Queijo, Presunto, Alface, Tomate. Acompanhado de 1 Porção Grande de Batata Frita com Cheddar e Bacon e bebida a sua escolha.", 35.00);

insert into pedido values
(default, 5, 4, curtime(), null, null, 0, 0 );

insert into itens values
(default ,1, 3, 1, (select preco from cardapio where id = 3))
(default ,1, 2, 1, (select preco from cardapio where id = 2))

insert into pedido values
(default, 1, 1, curtime(), DATE_ADD(curtime(), INTERVAL 10 minute), DATE_ADD(curtime(), INTERVAL 25 minute), 0, 5),
(default, 2, 2, curtime(), DATE_ADD(curtime(), INTERVAL 15 minute), null, 0, 5);

update pedido set dataCozinha = curtime(), dataEntrega = curtime() where id = 1;
update pedido set valorPedido = (select sum(valor) from itens where pedidoId = 1) where id = 1;