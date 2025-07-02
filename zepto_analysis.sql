use zepto_sql_project  

SELECT * FROM zepto_db
-- data exploration 

   -- COUNT OF ROWS  
   SELECT COUNT(*) FROM zepto_db

   -- SAMPLE DATA 
    SELECT TOP 10 * FROM zepto_db 

	--  NULL VALUES 
	SELECT * FROM zepto_db
	WHERE name IS NULL
	OR category IS NULL 
	OR mrp IS NULL
	OR discountPercent IS NULL 
	OR availablequantity IS NULL
	OR discountedSellingPrice IS NULL 
	OR weightInGms IS NULL 
	OR outOfStock IS NULL 
	OR quantity IS NULL 

  -- DIFFRENT PRODUCT CATEGORIES 
   SELECT DISTINCT category 
   from zepto_db
   ORDER BY category 
    
	-- PRODUCTS OUT OF STOCK VS IN STOCK  
	SELECT outOfStock , COUNT ( *)
	FROM zepto_db
	GROUP BY outOfStock 

	--  PRODUCTS NAME PRESENT MULTIPLE TIMES
	SELECT name, COUNT(*) AS number_of_items
	FROM zepto_db
	GROUP BY name 
	HAVING count(*)> 1 
	ORDER BY count(*) DESC 

	 
-- DATA CLEANING 

	-- PRODUCT WITH PRICE = 0 
	SELECT * FROM zepto_db
	WHERE mrp = 0 OR  discountedSellingPrice = 0 

	DELETE FROM zepto_db
	WHERE mrp =0 
	 
	 -- CONVERT PAISE INTO RUPEES
	 UPDATE zepto_db 
	 SET mrp = mrp/100.0,
	 discountedSellingPrice = discountedSellingPrice/100.0 

	 SELECT mrp, discountedSellingPrice FROM zepto_db 

	 -- Q1. Find the top 10 best value products based on the discount percentage .  
	       SELECT DISTINCT TOP 10  name, mrp,discountPercent 
		   from zepto_db 
		   ORDER BY discountPercent DESC 


	 -- Q2. what are the products with HIGH MRP but out of stock ? 
	      SELECT DISTINCT name, mrp FROM zepto_db
		  WHERE outOfStock = 1 AND mrp  > 300 
		  ORDER BY mrp DESC 


	 -- Q3. Calculate estimated revenue for each category .

	     SELECT category,
		 SUM(discountedSellingPrice*availableQuantity) AS total_revenue 
		 FROM zepto_db 
		 GROUP BY category 
		 ORDER BY total_revenue 


	 -- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10% .
           SELECT DISTINCT name,mrp , discountPercent 
		   FROM zepto_db
		   WHERE mrp > 500 AND discountPercent <10 
		   ORDER BY mrp DESC , discountPercent DESC 


	 -- Q5. Identify the top 5 categories offering the highest average discount  percentage . 
	       SELECT TOP 5  category , 
		   CAST(ROUND(AVG(discountPercent),2)AS DECIMAL(10,2)) AS avg_discount 
		   FROM zepto_db 
		   GROUP BY category
		   ORDER BY avg_discount DESC 


	 -- Q6. Find the price per gram for products above 100g and sort by best value . 
	        SELECT DISTINCT name, weightInGms , discountedSellingPrice , 
			CAST (ROUND(discountedSellingPrice/weightInGms,2) AS DECIMAL(10,2)) AS price_per_gram
			FROM zepto_db 
			WHERE weightInGms >= 100
			ORDER BY price_per_gram


     --Q7. Group the products into categories like low , medium , bulk .
	       SELECT DISTINCT name , weightInGms , 
		   CASE WHEN weightInGms < 1000 THEN 'LOW'
		   WHEN weightInGms < 5000 THEN 'MEDIUM'
		   ELSE 'BULK'
		   END AS weight_category 
		  FROM zepto_db 


	-- Q8. What is total inventory Weight per category ?
	      SELECT category , 
		  SUM(weightInGms* availableQuantity) AS total_weight 
		  FROM zepto_db
		  GROUP BY category
		  ORDER BY total_weight 