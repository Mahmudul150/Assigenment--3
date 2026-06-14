-- Quary ---1
select
  match_id ,
   fixture ,
    round(base_ticket_price)
  from matches
  where tournament_category = 'Champions League'
  and match_status = 'Available'


--   Quary--2
select
 user_id ,
  full_name,
   email 
 from users 
 where full_name ilike  'Tanvir%' 
 or full_name ilike '%Haque'


-- Quary--3
select 
booking_id ,
 user_id ,
  match_id , 
coalesce(payment_status,'Action Required') as systematic_status 
from bookings
where payment_status is null

-- quary--4
select
 booking_id ,
  users.full_name , 
  matches.fixture , 
  total_cost
   from bookings
  inner join users using(user_id)
inner join matches using(match_id)

-- Quary--5
select 
user_id , 
full_name,
 bookings.booking_id 
from users 
left join bookings using(user_id)


-- Quary--6
select
 booking_id,
 match_id,
 total_cost
  from  bookings
where  total_cost > (
 select 
 round(avg(total_cost))
  from bookings
)



-- Quary--7
SELECT 
match_id ,
 fixture ,
  base_ticket_price
FROM matches
ORDER BY 
base_ticket_price DESC
LIMIT 2
OFFSET 1