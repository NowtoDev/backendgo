-- คำสั่งลบ
DROP VIEW v_product_categories;

-- สร้าง tbl_employee ข้อ 1
CREATE VIEW v_tbl_employee AS SELECT * FROM tbl_employee;

-- สร้าง v_customer_orders ข้อ 2
CREATE VIEW v_customer_orders AS SELECT tbl_customer.cus_id, tbl_customer.cus_firstname, tbl_customer.cus_lastname, tbl_orders.order_id, tbl_orders.order_date, tbl_orders.order_total FROM tbl_customer
JOIN tbl_orders ON tbl_customer.cus_id = tbl_orders.cus_id;

-- สร้าง v_high_salary_employees ข้อ 3
CREATE VIEW v_high_salary_employees AS SELECT * FROM tbl_employee WHERE emp_salary > 50000;

-- สร้าง v_department_salary ข้อ 4
CREATE VIEW v_department_salary AS SELECT emp_department, emp_salary FROM tbl_employee;

-- สร้าง v_product_categories ข้อ 5 
CREATE VIEW v_product_categories AS SELECT 
tbl_products.products_id AS products_id,
tbl_products.products_name AS products_name,
tbl_categories.category_name 
FROM tbl_products 
JOIN tbl_categories 
ON tbl_products.category_id = tbl_categories.category_id;

-- สร้าง v_customer_order_products ข้อ 6
CREATE VIEW v_customer_order_products AS
SELECT 
    tbl_customer.cus_firstname,
    tbl_customer.cus_lastname,
    tbl_orders.order_id,
    tbl_products.product_name,
    tbl_orders.order_total
FROM 
    tbl_customer
JOIN 
    tbl_orders
ON 
    tbl_customer.cus_id = tbl_orders.cus_id
JOIN 
    tbl_products
ON 
    tbl_orders.order_id = tbl_products.product_name;

-- สร้าง v_employee_department_salary ข้อ 9
CREATE VIEW v_employee_department_salary 
AS SELECT emp_firstname, emp_lastname, emp_department, emp_salary 
FROM tbl_employee;