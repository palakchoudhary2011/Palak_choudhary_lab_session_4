
create database order_directory;

Use order_directory;

create table supplier(
	SUPP_ID int primary key,
    SUPP_NAME varchar(50)NOT NULL,
    SUPP_CITY varchar(50) NOT NULL,
    SUPP_PHONE varchar(50) NOT NULL
    );
    
    
create table customer(
	CUS_ID int primary key,
	CUS_NAME varchar(20) not null,
    CUS_PHONE varchar(10) not null,
    CUS_CITY varchar(30) not null,
    CUS_GENDER char
);

create table category(
	CAT_ID int primary key,
    CAR_NAME varchar(20) not null
);
    
create table product(
	PRO_ID int primary key, 
    PRO_NAME varchar(20) not null default "Dummy",
    PRO_DESC varchar(60),
    CAT_ID int,
    foreign key (CAT_ID) references category (CAT_ID)
);

create table supplier_pricing(
	PRICING_ID int primary key,
    PRO_ID int not null,
    SUPP_ID int not null,
    foreign key (PRO_ID) references product(PRO_ID),
    foreign key (SUPP_ID) references supplier(SUPP_ID),
    SUPP_PRICE int default 0
);

CREATE TABLE IF NOT EXISTS `order` (
ORD_ID INT NOT NULL,
ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE,
CUS_ID INT NOT NULL,
PRICING_ID INT NOT NULL,
PRIMARY KEY (ORD_ID),
FOREIGN KEY (CUS_ID) REFERENCES CUSTOMER(CUS_ID),
FOREIGN KEY (PRICING_ID) REFERENCES SUPPLIER_PRICING(PRICING_ID)
);

create table rating(
	RAT_ID int primary key,
    ORD_ID int not null,
    RAT_RATSTARs int not null,
    foreign key(ORD_ID) references `order`(ORD_ID)
);

/**Insert data in Supplier **/

insert into supplier values(1,"Rajesh Retails", "Delhi","1234567890");
insert into supplier values(2,"Appario Ltd", "Mumbai","2589631470");
insert into supplier values(3,"Knome products", "Bangalore","9785462315");
insert into supplier values(4,"Bansal Retails", "Kochi","8975463285");
insert into supplier values(5,"Mittal Ltd", "Lucknow","7898456532");    

/** Insert in table Customer **/

insert into customer values(1, "Aakash","9999999999","Delhi", "m");
insert into customer values(2, "Aman","9785463215","Noida", "m");
insert into customer values(3, "Neha","9999999999","Mumbai","f");
insert into customer values(4, "Megha","9994562399","Kolkata","f");
insert into customer values(5, "Pulkit","7895999999","Lucknow","m");

/** Insert in table category**/

insert into category values(1, "Books");
insert into category values(2, "Games");
insert into category values(3, "Groceries");
insert into category values(4, "Electronics");
insert into category values(5, "Clothes");

/** Insert in table product**/

insert into product values(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
insert into product values(2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
insert into product values(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
insert into product values(4,"OATS","Highly Nutritious from Nestle",3);
insert into product values(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
insert into product values(6,"MILK","1L Toned MIlk",3);
insert into product values(7,"Boat Earphones","1.5Meter long Dolby Atmos",4);
insert into product values(8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
insert into product values(9,"Project IGI","compatible with windows 7 and above",2);
insert into product values(10,"Hoodie","Black GUCCI for 13 yrs and above",5);
insert into product values(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
insert into product values(12,"Train Your Brain","By Shireen Stephen",1);

/** Insert in table supplier_pricing **/

insert into supplier_pricing values(1, 1, 2,1500);
insert into supplier_pricing values(2, 3, 5,30000);
insert into supplier_pricing values(3, 5, 1,3000);
insert into supplier_pricing values(4, 2, 3,2500);
insert into supplier_pricing values(5, 4, 1,1000);
INSERT INTO supplier_pricing values(6,12,2,780);
INSERT INTO supplier_pricing values(7,12,4,789);
INSERT INTO supplier_pricing values(8,3,1,31000);
INSERT INTO supplier_pricing values(9,1,5,1450);
INSERT INTO supplier_pricing values(10,4,2,999);
INSERT INTO supplier_pricing values(11,7,3,549);
INSERT INTO supplier_pricing values(12,7,4,529);
INSERT INTO supplier_pricing values(13,6,2,105);
INSERT INTO supplier_pricing values(14,6,1,99);
INSERT INTO supplier_pricing values(15,2,5,2999);
INSERT INTO supplier_pricing values(16,5,2,2999);

/** insert in table orders	 **/
INSERT INTO `ORDER` VALUES (101,1500,"2021-10-06",2,1);
INSERT INTO `ORDER` VALUES(102,1000,"2021-10-12",3,5);
INSERT INTO `ORDER` VALUES(103,30000,"2021-09-16",5,2);
INSERT INTO `ORDER` VALUES(104,1500,"2021-10-05",1,1);
INSERT INTO `ORDER` VALUES(105,3000,"2021-08-16",4,3);
INSERT INTO `ORDER` VALUES(106,1450,"2021-08-18",1,9);
INSERT INTO `ORDER` VALUES(107,789,"2021-09-01",3,7);
INSERT INTO `ORDER` VALUES(108,780,"2021-09-07",5,6);
INSERT INTO `ORDER` VALUES(109,3000,"2021-09-10",5,3);
INSERT INTO `ORDER` VALUES(110,2500,"2021-09-10",2,4);
INSERT INTO `ORDER` VALUES(111,1000,"2021-09-15",4,5);
INSERT INTO `ORDER` VALUES(112,789,"2021-09-16",4,7);
INSERT INTO `ORDER` VALUES(113,31000,"2021-09-16",1,8);
INSERT INTO `ORDER` VALUES(114,1000,"2021-09-16",3,5);
INSERT INTO `ORDER` VALUES(115,3000,"2021-09-16",5,3);
INSERT INTO `ORDER` VALUES(116,99,"2021-09-17",2,14);


/** Insert in table Rating**/

insert into rating values(1, 101, 4);
insert into rating values(2, 102, 3);
insert into rating values(3, 103, 1);
insert into rating values(4, 104, 2);
insert into rating values(5, 105, 4);
insert into rating values(6, 106, 3);
insert into rating values(7, 107, 4);
insert into rating values(8, 108, 4);
insert into rating values(9, 109, 3);
insert into rating values(10, 110, 5);
insert into rating values(11, 111, 3);
insert into rating values(12, 112, 4);
insert into rating values(13, 113, 2);
insert into rating values(14, 114, 1);
insert into rating values(15, 115, 1);
insert into rating values(16, 116, 0);


/**QUERIES**/
/**3)	Display the total number of customers based on gender 
who have placed orders of worth at least Rs.3000.**/

select count(t2.CUS_GENDER) as NoOfCustomer, t2.CUS_GENDER from
(select  t1.CUS_ID, t1.CUS_NAME, t1.CUS_GENDER from
(select  CUSTOMER.CUS_ID, CUSTOMER.CUS_NAME, CUSTOMER.CUS_GENDER, `order`.ORD_AMOUNT
   from `order`
   inner join  CUSTOMER
   on `order`.CUS_ID = CUSTOMER.CUS_ID 
   having `order`.ORD_AMOUNT >= 3000)
as t1   
group by t1.CUS_ID)
as t2 
group by t2.CUS_GENDER;

/**4)	Display all the orders along with 
product name ordered by a customer having Customer_Id=2**/

select  `order`.CUS_ID, product.PRO_NAME
   from `order`
   inner join supplier_pricing 
   on `order`.PRICING_ID = supplier_pricing.PRICING_ID
   inner join product
   on product.PRO_ID = supplier_pricing.PRO_ID
   Where `order`.CUS_ID = 2;
   
/**5)	Display the Supplier details who can supply more than one product.**/

select supplier.* from supplier where supplier.SUPP_ID in
(select SUPP_ID from supplier_pricing
group by SUPP_ID 
having count(SUPP_ID) > 1);

/**6)	Find the least expensive product from each category and print the table with category id, name, product name and price of the product**/
select  t1.CAT_ID, t1.PRO_NAME, min(t1.SUPP_PRICE), category.CAR_NAME from
(select product.PRO_NAME, product.CAT_ID, supplier_pricing.SUPP_PRICE from product
inner join supplier_pricing
on supplier_pricing.PRO_ID = product.PRO_ID ) as t1
inner join category 
on t1.CAT_ID = category.CAT_ID 
group by category.CAT_ID;


/**7)	Display the Id and Name of the Product ordered after “2021-10-05”.**/
select product.PRO_ID, product.PRO_NAME from product where product.PRO_ID in 
(select supplier_pricing.PRO_ID  from supplier_pricing
inner join `order`
on supplier_pricing.PRICING_ID = `order`.PRICING_ID
where `order`.ORD_DATE > "2021-10-05");


/**8)	Display customer name and gender whose names start or end with character 'A'.**/

 SELECT CUS_NAME, CUS_GENDER FROM customer WHERE CUS_NAME LIKE 'A%' OR CUS_NAME LIKE '%A';
 
 /**9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service. 
 For Type_of_Service, 
 If rating =5, print “Excellent Service”,
 If rating >4 print “Good Service”, 
 If rating >2 print “Average Service” 
 else print “Poor Service”.**/
 
select *,
CASE 
when reports.rating =5 then 'Excellent Service'
when reports.rating >4 then 'Good Service'
when reports.rating >2 then 'Average Service'
Else 'Poor Service'
End as Type_of_service from 
(select t3.SUPP_ID, t3.SUPP_NAME, t3.rating from
(select supplier.SUPP_ID, supplier.SUPP_NAME, AVG(t2.RAT_RATSTARs) as rating  from supplier inner join
(select t1.ORD_ID, t1.RAT_RATSTARs, supplier_pricing.SUPP_ID from 
(select `order`.ORD_ID, rating.RAT_RATSTARs, `order`.PRICING_ID from `order`
inner join rating
on `order`.ORD_ID = rating.ORD_ID) as t1 
inner join supplier_pricing
on supplier_pricing.PRICING_ID = t1.PRICING_ID) as t2
on supplier.SUPP_ID = t2.SUPP_ID 
group by supplier.SUPP_ID) as t3) as reports

