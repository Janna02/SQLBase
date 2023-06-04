1)
CREATE VIEW CostsOfauto as
SELECT * FROM Cars WHERE Cost<25000;

2) 
ALTER VIEW CostsOfauto AS
SELECT * FROM cars
WHERE cost <30000;

3)
CREATE VIEW nameOfcars AS
SELECT * FROM cars
WHERE name = 'Skoda' OR name = 'Audi';


CREATE VIEW nameandprice AS
SELECT an_name, an_price FROM analysis
INNER JOIN orders ON analysis.an_id = orders.ord_an
WHERE ord_datatime BETWEEN '2020-02-05' AND '2020-02-16';