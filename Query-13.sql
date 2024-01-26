13. Show how much money the company lost due to giving discounts each year, order the years from most recent to least recent. Round to 2 decimal places
SELECT
  YEAR(order_date) AS year,
  ROUND(sum(order_details.discount * products.unit_price * order_details.quantity), 2) AS discount_amount
FROM orders
join order_details on orders.order_id= order_details.order_id
join products on order_details.product_id= products.product_id
GROUP BY YEAR(order_date)
ORDER BY year DESC;