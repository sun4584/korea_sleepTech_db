USE example;  

CREATE TABLE IF NOT EXISTS product_info (
    product_id int auto_increment primary key,  
    product_name varchar(100),                  
    category char(10),                         
    price decimal(10, 2),                     
    in_stock boolean,                          
    release_date date,                        
    color enum('red', 'green', 'blue')    
);

INSERT INTO product_info (product_name, category, price, in_stock, release_date, color)
values ('Galaxy Watch', 'Device', 299.99, true, '2024-06-01', 'green');

