-- write your queries here

-- 1
SELECT * FROM owners FULL JOIN vehicles on owners.id = vehicles.owner_id;

--2
SELECT owners.first_name, owners.last_name, COUNT(*) FROM owners 
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY owners.first_name, owners.last_name
ORDER BY owners.first_name;

-- 3
SELECT owners.first_name, owners.last_name, ROUND(AVG(vehicles.price)), COUNT(*) FROM owners 
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY owners.first_name, owners.last_name
HAVING COUNT(*) > 1 AND  ROUND(AVG(vehicles.price)) > 10000
ORDER BY owners.first_name DESC;
