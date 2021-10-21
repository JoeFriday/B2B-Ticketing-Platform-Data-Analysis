-- Compare sales results by weeks and buy channels
SELECT 
        STR_TO_DATE(CONCAT(YEARWEEK(purchase_date, 0), ' ', 'Sunday'), '%X%V %W') AS week_start, 
        STR_TO_DATE(CONCAT(YEARWEEK(purchase_date, 0), ' ', 'Saturday'), '%X%V %W') AS week_end,
        SUM(price_per_ticket * quantity) AS sales ,
        COUNT(ticket_id) AS ticket_amount
FROM ticket
GROUP BY week_start, week_end
ORDER BY week_start, week_end
;

SELECT 
    YEAR(t.purchase_date)  AS year,
    MONTH(t.purchase_date) AS month,
    sc.name AS sales_channel,
    SUM(t.price_per_ticket * t.quantity) AS sales,
    COUNT(t.ticket_id) AS ticket_amount,
    r.name
FROM ticket t
INNER JOIN sales_channel sc ON (t.channel_id = sc.channel_id)
INNER JOIN reseller r ON (t.reseller_id = r.reseller_id)
GROUP BY YEAR(t.purchase_date), MONTH(t.purchase_date), sc.name, r.name
ORDER BY year, SUM(t.price_per_ticket * t.quantity) DESC
;

-- Comparison if the commission rate is in relation to sales results
SELECT
    commission_rate,
    price_per_ticket * quantity AS sales_total
FROM ticket
ORDER BY price_per_ticket * quantity DESC
;

-- Most popular tickets per offices, resellers
SELECT
    r.name AS reseller,
    -- e.name AS event,
    -- rb.location,
    COUNT(*) AS amount,
    SUM(price_per_ticket * quantity) AS sales_total
FROM ticket t
JOIN reseller r USING (reseller_id)
JOIN reseller_branch rb ON (rb.reseller_branch_id = t.branch_id)
GROUP BY r.name
ORDER BY sales_total DESC
