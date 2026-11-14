-- =====================================================
-- PROJECT: E-commerce Sales Funnel Analysis
-- ANALYSIS: Marketing Channel Analysis
-- OBJECTIVE: Compare viewers, customers, and conversion
--            rates across traffic sources
-- =====================================================

WITH
counter AS (
    SELECT
        traffic_source AS channel,
        COUNT(DISTINCT CASE
            WHEN event_type = 'page_view' THEN user_id
        END) AS viewers,
        COUNT(DISTINCT CASE
            WHEN event_type = 'purchase' THEN user_id
        END) AS customers
    FROM events
    GROUP BY traffic_source
),

con_rate AS (
    SELECT
        channel,
        ROUND(
            customers::numeric / NULLIF(viewers, 0) * 100,
            2
        ) AS rate
    FROM counter
)

SELECT
    c.channel,
    c.viewers,
    c.customers,
    r.rate
FROM counter AS c
JOIN con_rate AS r
    ON c.channel = r.channel
ORDER BY rate DESC;
