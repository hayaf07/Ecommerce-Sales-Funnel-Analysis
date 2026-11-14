-- =====================================================
-- PROJECT: E-commerce Sales Funnel Analysis
-- ANALYSIS: Revenue Analysis
-- OBJECTIVE: Calculate revenue averages by channel,
--            product type, and purchasing customer
-- =====================================================

WITH
summery AS (
    SELECT
        COUNT(DISTINCT traffic_source) AS total_channels,
        COUNT(DISTINCT product_id) AS total_products_type,
        COUNT(DISTINCT CASE
            WHEN event_type = 'purchase' THEN user_id
        END) AS total_customer,
        SUM(amount) AS total_revenue
    FROM events
),

fraction AS (
    SELECT
        ROUND(
            total_revenue::numeric / NULLIF(total_channels, 0),
            2
        ) AS revenue_per_channel,
        ROUND(
            total_revenue::numeric / NULLIF(total_products_type, 0),
            2
        ) AS revenue_per_products,
        ROUND(
            total_revenue::numeric / NULLIF(total_customer, 0),
            2
        ) AS revenue_per_customer
    FROM summery
)

SELECT *
FROM fraction;
