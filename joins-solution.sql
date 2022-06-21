-- 1. Get all customers and their addresses.

SELECT customers.first_name, customers.last_name, addresses
FROM customers JOIN addresses ON customers.id = customer_id
GROUP BY customers.first_name, customers.last_name, addresses;

-- 2. Get all orders and their line items (orders, quantity and product).

SELECT quantity, order_id, product_id
FROM line_items JOIN orders ON order_id = orders.id;

-- 3. Which warehouses have cheetos?
SELECT * FROM products
JOIN warehouse_product ON product_id = product_id
WHERE products.description = 'cheetos';

-- 4. Which warehouses have diet pepsi?
SELECT * FROM products 

JOIN warehouse_product ON product_id = product_id
WHERE products.description = 'diet pepsi';

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


-- 6. How many customers do we have?
SELECT count(customers.id)
FROM customers;

-- 7. How many products do we carry?
SELECT count(products.id)
FROM products;

-- 8. What is the total available on-hand quantity of diet pepsi?
