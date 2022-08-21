CREATE DEFINER=`root`@`localhost` PROCEDURE `prc1`()
BEGIN
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
group by supplier.SUPP_ID) as t3) as reports;
END