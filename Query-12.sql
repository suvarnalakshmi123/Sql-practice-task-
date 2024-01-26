12. Show the employee's first_name and last_name, a "num_orders" column with a count of the orders taken, and a column called "Shipped" that displays "On Time" if the order shipped_date is less or equal to the required_date, "Late" if the order shipped late.
Order by employee last_name, then by first_name, and then descending by number of orders.
SELECT
employees.first_name,
employees.last_name,
COUNT(orders.order_id) AS num_orders,
CASE
WHEN orders.shipped_date <= orders.required_date THEN 'On time'
ELSE 'Late'
END AS order_status
FROM employees
JOIN orders ON orders.employee_id = employees.employee_id
GROUP BY employees.first_name, employees.last_name, order_status
ORDER BY employees.last_name, employees.first_name, num_orders desc;
