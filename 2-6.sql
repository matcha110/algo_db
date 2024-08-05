SELECT
    name as 顧客名,
    sum(amount) as 合計金額
FROM
    ledger
where
    date BETWEEN '2022-08-08' AND '2022-08-14'
group by
    顧客名
having
    合計金額 >= 5000;