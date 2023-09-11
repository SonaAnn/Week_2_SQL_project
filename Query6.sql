/*Customer Loyalty: Calculate the total amount spent by each customer 
and list the top 10 customers with the highest total spending.*/
with customer_loyal as
                ( select concat (c.first_name, '' , c.last_name) as customer_name, sum(p.amount) as totalpay
				 from customer c
				 join payment p
				 on c.customer_id= p.customer_id 
				 group by concat (c.first_name, '' , c.last_name)
				 order by totalpay desc
				 limit 10)
select * from customer_loyal ;

 


