SELECT
	取次店番号, 取次店番号（サブ）, sum(取次店手数料（円）)
FROM `20221027-handson`.commissionHisotry
WHERE 精算 = '未精算'
GROUP BY 取次店番号, 取次店番号（サブ）
