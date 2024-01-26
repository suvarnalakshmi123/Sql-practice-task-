10. Show the category_name and the average product unit price for each category rounded to 2 decimal places.
SELECT 
    Categories.category_name,
    ROUND(AVG(Products.unit_price), 2) AS average_unit_price
FROM 
    Products
JOIN 
    Categories ON Products.category_id = Categories.category_id
GROUP BY 
    Categories.category_name;