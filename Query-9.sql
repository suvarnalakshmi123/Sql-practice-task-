9. Show the ProductName, CompanyName, CategoryName from the products, suppliers, and categories table
select product_name, company_name, category_name from products
 join 
Suppliers ON Products.supplier_id = Suppliers.supplier_id
 JOIN 
Categories ON Products.category_id= Categories.category_id;
