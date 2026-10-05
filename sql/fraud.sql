-- Подозрительные: >50 звонков в час
SELECT subscriber_id, date_trunc('hour', started) AS hour, COUNT(*) AS n
FROM cdr
GROUP BY subscriber_id, hour
HAVING COUNT(*) > 50;
