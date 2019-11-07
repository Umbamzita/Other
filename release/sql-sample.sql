/*сумма по заказу*/

select order_id, sum(price) from (
SELECT order_id,price as 'price' FROM sauces INNER join customer_sauces on customer_sauces.sauce = sauces.name
union all
SELECT order_id,price as 'price' FROM drinks join customer_drinks on customer_drinks.drink = drinks.name 
union all
SELECT order_id,price as 'price' FROM sushis join customer_sushis on customer_sushis.sushi = sushis.name
)price group by order_id;

/*количество заказов по районам*/

SELECT district, count(district)
FROM customer_deliveryaddress, orders 
where customer_deliveryaddress.customer_id=orders.customer_id 
group by district;

/*выручка с каждого района*/
SELECT district, sum(total_price)
FROM customer_deliveryaddress, orders 
where customer_deliveryaddress.customer_id=orders.customer_id 
group by district;

/*среднее время изготовления заказа*/
SELECT AVG(TIMESTAMPDIFF(second,created,finished))  from orders;

/*Количество заказов у каждого курьера*/

SELECT deliveryperson.name, count(deliveryperson_id) as 'Count orders'
FROM deliveryperson, orders 
where deliveryperson.id=orders.deliveryperson_id
group by deliveryperson_id
order by count(deliveryperson_id);