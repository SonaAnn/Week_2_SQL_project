/* Find the top 5 customers with the highest total rental spending, along with their names and total spending.*/
select concat( c.first_name, '' ,c.last_name) as customer_name,
 sum( amount) as totalspending from customer c
 left join payment p on c.customer_id= p.customer_id
 group by customer_name
 order by totalspending desc
 limit 5;

