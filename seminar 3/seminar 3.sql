Задание 1 
1) 
SELECT 
  s.city, 
  s.sname, 
  s.snum, 
  s.comm 
FROM 
  semthree.salespeople as s;

2) 
SELECT 
  c.cname, 
  c.rating 
FROM 
  semthree.customers as c 
where 
  city = 'SanJose';
3) 
SELECT 
  distinct snum 
FROM 
  semthree.orders;
4) 
SELECT 
  c.cname 
FROM 
  semthree.customers as c 
where 
  c.cname like 'G%';
5) 
SELECT 
  * 
FROM 
  semthree.orders 
where 
  amt > 1000;
6) 
SELECT 
  min(amt) as 'Наименьшая сумма заказа' 
FROM 
  semthree.orders 
7) 
SELECT 
  * 
FROM 
  semthree.customers 
where 
  rating > 100 
  and city != 'Rome';


Задание 2 

1) 
SELECT 
  * 
FROM 
  semthree.staff 
order by 
  salary ASC;
SELECT 
  * 
FROM 
  semthree.staff 
order by 
  salary DESC;
2) 
SELECT 
  * 
FROM 
  semthree.staff 
order by 
  salary 
limit 
  7, 
  5;

3) 
SELECT 
  speciality as 'Специальность', 
  sum(salary) as 'Сумма зарплат' 
FROM 
  semthree.staff 
group by 
  speciality 
having 
  sum(salary) > 100000
