-- Create Triangle table
CREATE TABLE Triangle (
	x INT,
	y INT,
	z INT,
	PRIMARY KEY (x, y, z)
);
 
-- Insert sample data
INSERT INTO Triangle (x, y, z) VALUES
(13, 15, 30),
(10, 20, 15);
SELECT 
  x, 
  y, 
  z,
  CASE 
    WHEN x + y > z AND y + z > x AND x + z > y THEN 'Yes' 
    ELSE 'No'
  END AS Triangle_formed
FROM (
  VALUES
    (13, 15, 30),
    (10, 20, 15)
) AS t(x, y, z);
