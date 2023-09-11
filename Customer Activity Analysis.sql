--- Find the total number of rentals made by each customer, along with their names, and display the results in descending order.

    with customerRentalcounts As (
                           select c.customer_id, concat (c.first_name, '', c.last_name) as customer_name, count (r.rental_id) 
	                       as rental_count
	                       from customer c
	                       join rental r on c.customer_id = r.customer_id
	                       group by c.customer_id,customer_name
	                        )
     select customer_name, rental_count 
                         from customerRentalcounts
						 order by rental_count desc;
						 
						 
							
	  
	  
	
  
