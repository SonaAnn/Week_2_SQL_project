/*Determine the top 3 films with the highest average rental durations. 
List the film titles along with their average rental durations, ordered by average duration in descending order*/
 select title, cast(avg( rental_duration) as int) as averageduration
 from film
 group by title
 order by averageduration desc
 limit 3;
 

   
