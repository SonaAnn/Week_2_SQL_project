/* Determine the top film category with the most rentals, and 
display the category name along with the total number of rentals.*/
with Categoryrentalcount as 
   ( select
	      c.name as categoryname, count (rental_id) as rentalcount
	      from 
	      category c 
	      left join 
	      film_category fc on c.category_id=fc.category_id
	      left join
	      film f on fc.film_id = f.film_id
	      left join
	      inventory i on f.film_id = i.film_id
	      left join 
	      rental r on i.inventory_id= r.inventory_id
	      group by categoryname
	)
select categoryname, rentalcount 
from categoryrentalcount
order by rentalcount 
desc limit 1;














	
	
	      
	
	
	
