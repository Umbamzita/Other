insert into status_order values(1,'new', 'green');
insert into status_order values(2,'in work', 'yellow');
insert into status_order values(3,'delivery', 'red');
insert into status_order values(4,'completed', 'brown');
insert into status_order values(5,'cancel', 'pink');

insert into sauces(name, price) values ('Imbir', 0.45);
insert into sauces(name, price) values ('kunzhutnyij-sous', 1.20);
insert into sauces(name, price) values ('soevyij-sous', 0.35);
insert into sauces(name, price) values ('sous-spajsi', 0.8);
insert into sauces(name, price) values ('Vasabi', 0.3);
insert into sauces(name, price) values ('teriyaki', 2);

insert into drinks(name, price) values ('Sprite', 1.7);
insert into drinks(name, price) values ('Fanta', 1.7);
insert into drinks(name, price) values ('Coca-Cola', 1.7);
insert into drinks(name, price) values ('Juice', 2);
insert into drinks(name, price) values ('BonAqua', 1.1);

insert into customer values('1', 'Ivanov Ivan', '375291238956', 'hello@gmail.com');
insert into customer values('2', 'Romanov Roman', '375334557788', 'gomelpeople@gmail.com');
insert into customer values('3', 'Grigoriy Ivanov Nikolaevich', '375441112233', 'Belarus@list.ru');
insert into customer values('4', 'Masha and Alisa', '375295975911', 'couplegirls@mail.ru');
insert into customer values('5', 'Alexey', '375336341223', null);
insert into customer values('6', 'Polina', '375291111122', null);
insert into customer values('7', 'Alina', '375291214522', 'chika@mail.ru');

insert into customer_deliveryaddress values('1', 'Gomel', 'sovetskiy', 'Kosareva', NULL, '5', NULL);
insert into customer_deliveryaddress values('2', 'Gomel', 'centralniy', 'pobeda', NULL, '9', '43');
insert into customer_deliveryaddress values('3', 'Gomel', 'centralniy', 'international', NULL, '29', '16');
insert into customer_deliveryaddress values('4', 'Gomel', 'novobelitskiy', 'ilicha', NULL, '21', '53');
insert into customer_deliveryaddress values('5', 'Gomel', 'sovetskiy', 'Rechitsky avenue', NULL, '15', 30);
insert into customer_deliveryaddress values('6', 'Gomel', 'centralniy', 'kojara', NULL, '91', '39');
insert into customer_deliveryaddress values('7', 'Gomel', 'centralniy', 'kirova', NULL, '7', '48');

insert into sushis values('Futomaki kolorado', '7.30', NULL);
insert into sushis values('Futomaki tokio', '9.00', NULL);
insert into sushis values('Futomaki tuna', '4.00', NULL);
insert into sushis values('Futomaki vegas', '8.00', NULL);
insert into sushis values('Futomaki with onion', '3.00', NULL);
insert into sushis values('Nigiri forel', '2.50', NULL);
insert into sushis values('Nigiri tuna', '2.50', NULL);
insert into sushis values('Unagi fresh', '2.20', NULL);
insert into sushis values('Uramaki afrika', '8.90', NULL);
insert into sushis values('Uramaki chiken fresh', '7.30', NULL);
insert into sushis values('Uramaki green dragon', '8.10', NULL);
insert into sushis values('Osaka maki', 11,NULL);

insert into deliveryperson values('1', 'Medvedev Andrey', '375441113490', '2018-05-22 00:00:00');
insert into deliveryperson values('2', 'Bedric Roma', '375297879967', '2019-01-12 00:00:00');
insert into deliveryperson values('3', 'Pashkova Olya', '375335126245', '2019-10-20 00:00:00');
insert into deliveryperson values('4', 'Rudko Daria', '375295893211', '2019-03-08 00:00:00');

insert into orders values('1', '1', 'apartment 4', '1', '7.55', '1', '2019-10-29 10:22:01', '2019-10-29 10:25:11');
insert into orders values('2', '1', 'please fast', '1', '27.10', '1', '2019-10-29 10:23:01', '2019-10-29 10:30:21');
insert into orders values('3', '2', NULL, '2', '10.35', '3', '2019-10-29 10:24:01', '2019-10-29 10:25:21');
insert into orders values('4', '3', NULL, '3', '10.30', '3', '2019-10-29 10:24:01', '2019-10-29 10:25:21');
insert into orders values('5', '4', NULL, '4', '20.00', '3', '2019-10-29 10:25:01', '2019-10-29 10:27:21');
insert into orders values('6', '3', "i'll pay cart", '4', '17.70', '4', '2019-10-30 10:22:01', '2019-10-30 10:25:11');
insert into orders values('7', '2', 'please fast', '2', '18.65', '2', '2019-10-30 10:23:01', '2019-10-30 10:30:21');
insert into orders values('8', '3', NULL, '2', '10.00', '3', '2019-10-30 10:21:01', '2019-10-30 10:25:21');
insert into orders values('9', '3', NULL, '3', '8.10', '3', '2019-10-30 10:24:01', '2019-10-30 10:25:21');
insert into orders values('10', '5', NULL, '4', '7.30', '3', '2019-10-30 10:25:01', '2019-10-30 10:27:21');

insert into customer_drinks values('5', 'Fanta');
insert into customer_drinks values('5', 'Juice');
insert into customer_drinks values('4', 'Fanta');
insert into customer_drinks values('4', 'Juice');

insert into customer_sauces values('1', 'Imbir');
insert into customer_sauces values('2', 'vasabi');
insert into customer_sauces values('3', 'Imbir');
insert into customer_sauces values('2', 'vasabi');
insert into customer_sauces values('2', 'vasabi');
insert into customer_sauces values('6', 'Imbir');
insert into customer_sauces values('1', 'vasabi');
insert into customer_sauces values('3', 'Imbir');
insert into customer_sauces values('1', 'vasabi');
insert into customer_sauces values('2', 'vasabi');
insert into customer_sauces values('6', 'kunzhutnyij-sous');
insert into customer_sauces values('7', 'soevyij-sous');
insert into customer_sauces values('8', 'teriyaki');

insert into customer_sushis values('1', 'Futomaki tuna');
insert into customer_sushis values('1', 'Nigiri tuna');
insert into customer_sushis values('2', 'Futomaki vegas');
insert into customer_sushis values('2', 'Uramaki afrika');
insert into customer_sushis values('3', 'Futomaki tokio');
insert into customer_sushis values('4', 'unagi fresh');
insert into customer_sushis values('4', 'unagi fresh');
insert into customer_sushis values('4', 'unagi fresh');
insert into customer_sushis values('5', 'Uramaki chiken fresh');

insert into customer_sushis values('6', 'Futomaki tuna');
insert into customer_sushis values('6', 'Nigiri forel');
insert into customer_sushis values('6', 'Nigiri forel');
insert into customer_sushis values('6', 'Nigiri forel');
insert into customer_sushis values('6', 'Nigiri forel');
insert into customer_sushis values('6', 'Nigiri tuna');
insert into customer_sushis values('8', 'Futomaki vegas');
insert into customer_sushis values('9', 'Uramaki green dragon');
insert into customer_sushis values('10', 'Futomaki kolorado');
insert into customer_sushis values('7', 'Futomaki kolorado');
insert into customer_sushis values('5', 'Futomaki tokio');
insert into customer_sushis values('2', 'Futomaki tokio');
insert into customer_sushis values('7', 'Osaka maki');

