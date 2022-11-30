drop schema Ecommerce;
drop database order_directory;
create schema Ecommerce;
create database order_directory;
use order_directory;
create table supplier(SUPP_ID int NOT NULL, SUPP_NAME varchar(50) NOT NULL, SUPP_CITY varchar(50) NOT NULL, SUPP_PHONE varchar(50) NOT NULL, PRIMARY KEY (SUPP_ID));
create table customer(CUS_ID int NOT NULL, CUS_NAME varchar(20) NOT NULL, CUS_PHONE varchar(10) NOT NULL, CUS_CITY varchar(30) NOT NULL, CUS_GENDER char, PRIMARY KEY (CUS_ID));
create table category(CAT_ID int NOT NULL, CAT_NAME varchar(50) NOT NULL, PRIMARY KEY(CAT_ID));
create table product(PROD_ID int NOT NULL, PROD_NAME varchar(20) NOT NULL DEFAULT "Dummay", PROD_DESC VARCHAR(60), CAT_ID INT NOT NULL, PRIMARY KEY(PROD_ID), FOREIGN KEY(CAT_ID) REFERENCES category(CAT_ID));
create table supplier_pricing(PRICING_ID int NOT NULL, PROD_ID int NOT NULL, SUPP_ID int NOT NULL, SUPP_PRICE  int DEFAULT 0, PRIMARY KEY(PRICING_ID), FOREIGN KEY(PROD_ID) REFERENCES product(PROD_ID) ,FOREIGN KEY(SUPP_ID) REFERENCES supplier(SUPP_ID)  );
create table if not exists `order`(ORD_ID int NOT NULL, ORD_AMOUNT int NOT NULL, ORD_DATE DATE, CUS_ID int NOT NULL, PRICING_ID int NOT NULL, PRIMARY KEY(ORD_ID), FOREIGN KEY(CUS_ID) REFERENCES customer(CUS_ID), FOREIGN KEY (PRICING_ID) REFERENCES SUPPLIER_PRICING(PRICING_ID));
create table rating (RAT_ID int NOT NULL,ORD_ID int NOT NULL,RAT_RATSTARS int NOT NULL,PRIMARY KEY (RAT_ID),FOREIGN KEY (ORD_ID) REFERENCES `order`(ORD_ID));

insert into supplier values(1,"Rajesh Retails","Delhi",'1234567890');
insert into supplier values(2,"Appario Ltd.","Mumbai",'2589631470');
insert into supplier values(3,"Knome products","Banglore",'9785462315');
insert into supplier values(4,"Bansal Retails","Kochi",'8975463285');
insert into supplier values(5,"Mittal Ltd.","Lucknow",'7898456532');

insert into customer values(1,"AAKASH",'9999999999',"DELHI",'M');
insert into customer values(2,"AMAN",'9785463215',"NOIDA",'M');
insert into customer values(3,"NEHA",'9999999999',"MUMBAI",'F');
insert into customer values(4,"MEGHA",'9994562399',"KOLKATA",'F');
insert into customer values(5,"PULKIT",'7895999999',"LUCKNOW",'M');

insert into CATEGORY values( 1,"BOOKS");
insert into CATEGORY values(2,"GAMES");
insert into CATEGORY values(3,"GROCERIES");
insert into CATEGORY values(4,"ELECTRONICS");
insert into CATEGORY values(5,"CLOTHES");

insert into PRODUCT values(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
insert into PRODUCT values(2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
insert into PRODUCT values(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
insert into PRODUCT values(4,"OATS","Highly Nutritious from Nestle",3);
insert into PRODUCT values(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
insert into PRODUCT values(6,"MILK","1L Toned MIlk",3);
insert into PRODUCT values(7,"Boat EarPhones","1.5Meter long Dolby Atmos",4);
insert into PRODUCT values(8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
insert into PRODUCT values(9,"Project IGI","compatible with windows 7 and above",2);
insert into PRODUCT values(10,"Hoodie","Black GUCCI for 13 yrs and above",5);
insert into PRODUCT values(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
insert into PRODUCT values(12,"Train Your Brain","By Shireen Stephen",1);

insert into SUPPLIER_PRICING values(1,1,2,1500);
insert into SUPPLIER_PRICING values(2,3,5,30000);
insert into SUPPLIER_PRICING values(3,5,1,3000);
insert into SUPPLIER_PRICING values(4,2,3,2500);
insert into SUPPLIER_PRICING values(5,4,1,1000);
insert into SUPPLIER_PRICING values(6,12,2,780);
insert into SUPPLIER_PRICING values(7,12,4,789);
insert into SUPPLIER_PRICING values(8,3,1,31000);
insert into SUPPLIER_PRICING values(9,1,5,1450);
insert into SUPPLIER_PRICING values(10,4,2,999);
insert into SUPPLIER_PRICING values(11,7,3,549);
insert into SUPPLIER_PRICING values(12,7,4,529);
insert into SUPPLIER_PRICING values(13,6,2,105);
insert into SUPPLIER_PRICING values(14,6,1,99);
insert into SUPPLIER_PRICING values(15,2,5,2999);
insert into SUPPLIER_PRICING values(16,5,2,2999);

insert into `ORDER` values(101,1500,"2021-10-06",2,1);
insert into `ORDER` values(102,1000,"2021-10-12",3,5);
insert into `ORDER` values(103,30000,"2021-09-16",5,2);
insert into `ORDER` values(104,1500,"2021-10-05",1,1);
insert into `ORDER` values(105,3000,"2021-08-16",4,3);
insert into `ORDER` values(106,1450,"2021-08-18",1,9);
insert into `ORDER` values(107,789,"2021-09-01",3,7);
insert into `ORDER` values(108,780,"2021-09-07",5,6);
insert into `ORDER` values(109,3000,"2021-09-10",5,3);
insert into `ORDER` values(110,2500,"2021-09-10",2,4);
insert into `ORDER` values(111,1000,"2021-09-15",4,5);
insert into `ORDER` values(112,789,"2021-09-16",4,7);
insert into `ORDER` values(113,31000,"2021-09-16",1,8);
insert into `ORDER` values(114,1000,"2021-09-16",3,5);
insert into `ORDER` values(115,3000,"2021-09-16",5,3);
insert into `ORDER` values(116,99,"2021-09-17",2,14);

insert into RATING values(1,101,4);
insert into RATING values(2,102,3);
insert into RATING values(3,103,1);
insert into RATING values(4,104,2);
insert into RATING values(5,105,4);
insert into RATING values(6,106,3);
insert into RATING values(7,107,4);
insert into RATING values(8,108,4);
insert into RATING values(9,109,3);
insert into RATING values(10,110,5);
insert into RATING values(11,111,3);
insert into RATING values(12,112,4);
insert into RATING values(13,113,2);
insert into RATING values(14,114,1);
insert into RATING values(15,115,1);
insert into RATING values(16,116,0);



use `order-directory`;
select customer.cus_gender, count(customer.cus_gender) as totalnumberofcustomers
from customer
inner join `order`
on customer.cus_id = `order`.cus_id
where `order`.ord_amount >=3000
group by customer.cus_gender;



select product.prod_name, `order`.* from `order`, supplier_pricing,
product where `order`.cus_id=2 and 
`order`.pricing_id = supplier_pricing.pricing_id and supplier_pricing.prod_id = product.prod_id;



select supplier.* from supplier where supplier.supp_id in
(select supp_id from supplier_pricing group by supp_id having
count(supp_id)>1)
group by supplier.supp_id;



select category.cat_id, category.cat_name, min(t3.min_price) as Min_price from category inner join
(select product.cat_id, product.prod_name, t2.* from product inner join
(select prod_id, min(supp_price) as Min_price from supplier_pricing group by prod_id)
as t2 where t2.prod_id = product.prod_id)
as t3 where t3.cat_id = category.cat_id group by t3.cat_id;



select product.prod_id, product.prod_name from `order` inner join supplier_pricing on
supplier_pricing.pricing_id = `order`.pricing_id inner join product on
product.prod_id = supplier_pricing.prod_id where `order`.ord_date>"2021-10-05";



select report.supp_id, report.supp_name, report.Average,
CASE
WHEN report.Average=5 THEN 'Excellent Service'
WHEN report.Average>4 THEN 'Good Service'
WHEN report.Average>2 THEN 'Average Service'
ELSE 'Poor Service'
END AS Type_of_Service from 
(select final.supp_id, supplier.supp_name, final.Average from
(select test2.supp_id, sum(test2.rat_ratstars)/count(test2.rat_ratstars) as Average from
(select supplier_pricing.supp_id, test.ORD_ID, test.RAT_RATSTARS from supplier_pricing inner join
(select `order`.pricing_id, rating.ORD_ID, rating.RAT_RATSTARS from `order` inner join rating on rating.`ord_id` = `order`.ord_id) as test
on test.pricing_id = supplier_pricing.pricing_id)
as test2 group by supplier_pricing.supp_id)
as final inner join supplier where final.supp_id = supplier.supp_id) as report;





