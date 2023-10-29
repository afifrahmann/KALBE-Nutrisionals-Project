Query 1 : Berapa rata-rata umur customer jika dilihat dari marital statusnya ?

Answer:

SELECT "Marital_Status", AVG("Age") AS "Average_Age"
FROM "Customer KALBE Nutrisionals"
GROUP BY "Marital_Status"

=====================================================================================================================================

Query 2 : Berapa rata-rata umur customer jika dilihat dari gender nya ?

Answer:

SELECT "Gender", AVG("Age") AS "Average_Age"
FROM "Customer KALBE Nutrisionals"
GROUP BY "Gender";

=====================================================================================================================================

Query 3 : Tentukan nama store dengan total quantity terbanyak!

Answer:
SELECT "Store KALBE Nutrisionals"."StoreName", SUM("Transaction KALBE Nutrisionals"."Qty") AS "Total_Quantity"
FROM "Store KALBE Nutrisionals"
JOIN "Transaction KALBE Nutrisionals" ON "Store KALBE Nutrisionals"."StoreID" = "Transaction KALBE Nutrisionals"."StoreID"
GROUP BY "Store KALBE Nutrisionals"."StoreName"
ORDER BY "Total_Quantity" DESC
LIMIT 1;

=====================================================================================================================================

Query 4 : Tentukan nama produk terlaris dengan total amount terbanyak!

SELECT "Product_Name", SUM("TotalAmount") AS "Total_Amount"
FROM "Transaction KALBE Nutrisionals"
JOIN "Product KALBE Nutrisionals" ON "Transaction KALBE Nutrisionals"."ProductID" = "Product KALBE Nutrisionals"."ProductID"
GROUP BY "Product_Name"
ORDER BY "Total_Amount" DESC
LIMIT 1;