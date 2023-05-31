1) 
SELECT 
  mark as 'Марка', 
  color as 'Цвет', 
  count(color) as 'Кол-во авто по цвету' 
FROM 
  semfour.auto 
where 
  mark in ('BMW', 'LADA') 
group by 
  mark, 
  color;
2) 
SELECT 
  mark as 'Марка', 
  count(mark) as 'Кол-во авто этой марки', 
  (
    select 
      count(mark) 
    from 
      semfour.auto
  ) - count(mark) as 'Кол-во авто не этой марки' 
FROM 
  semfour.auto 
group by 
  mark;
3) 
SELECT 
  * 
FROM 
  semfour.test_a 
  left join semfour.test_b using(id) 
where 
  semfour.test_b.id is null;
