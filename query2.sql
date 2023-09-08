/*Retrieve a list of films that are currently available for rent, 
including their titles and the number of copies in stock.*/

select f.title as film_title,
       count (i.inventory_id) as copies_in_stock
from film f
inner join inventory i on f.film_id = i.film_id---- only films with corresponding inventory records are included in the result
left join rental r on i.inventory_id= r.inventory_id---- left join is used to ensure that all films are considered, including those with no rental records
where
      r.rental_id is null
group by 
      f.film_id,f.title
having 
    count (i.inventory_id) >0;


