/*To rank staff members by the number of rentals they have processed and show their names along with rental counts*/


select concat(s.first_name, ' ' , s.last_name) as staff_name ,
count(r.rental_id) as rental_count
from staff s
left join rental r on s.staff_id = r.staff_id
group by staff_name
order by count(r.rental_id)
desc;


