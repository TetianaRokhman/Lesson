select * from Lesson_22.orders;
select * from Lesson_22.user;

select * from Lesson_22.user
join Lesson_22.orders on user.id = orders.userid
order by user.id;

select user.username, user.email, orders.product from Lesson_22.user
join Lesson_22.orders on user.id = orders.userid
where orders.product = "Laptop"
order by user.id;


insert into Lesson_22.LaptopType (type,price)
values ('MacBook', 20000),
('Dell', 15000);

select * from Lesson_22.LaptopeType;

select user.username, user.email, orders.product from Lesson_22.user
left join Lesson_22.orders on user.id = orders.userid
where price  = (select price from Lesson_22.LaptopType where type = 'MacBook')
order by id;


