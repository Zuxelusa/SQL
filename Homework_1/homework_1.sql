use homework_1;

-- Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT * FROM items
WHERE count > 2;

--  Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM items
WHERE brand = 'Samsung';

-- 4.*** С помощью регулярных выражений найти: 4.1. Товары, в которых есть упоминание "Iphone"
SELECT * FROM items
WHERE brand LIKE '%Ipho%';

-- 4.2. "Samsung"
SELECT * FROM items
WHERE brand LIKE '%amsun%';

-- 4.3. Товары, в которых есть ЦИФРА "10"
SELECT * FROM items
WHERE model LIKE '%10%';