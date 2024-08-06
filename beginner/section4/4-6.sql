INSERT INTO account_titles
-- 重複しないように選択
SELECT distinct
    category_id, category_title, expense_class
FROM
    expenses_everything;

INSERT INTO stores
-- 重複しないように選択
SELECT distinct
    store_id, store_name
FROM
    expenses_everything;
