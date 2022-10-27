SELECT
	step6.案件番号,
    step6.お客様番号,
    step6.申込日,
    step6.ステップ6,
    step.ステータス
FROM
(SELECT * FROM `20221027-handson`.application
WHERE ステップ6 is not null) as step6

LEFT JOIN
    (SELECT * from `20221027-handson`.stepStatus
        WHERE ステップ='ステップ6') as step
on step6.ステップ6 = step.番号
;
