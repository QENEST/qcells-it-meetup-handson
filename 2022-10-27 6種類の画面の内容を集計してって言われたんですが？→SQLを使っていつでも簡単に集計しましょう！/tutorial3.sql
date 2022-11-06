SELECT
	申込日, count(*)
FROM `20221027-handson`.application
GROUP BY
	申込日
ORDER BY
	申込日
