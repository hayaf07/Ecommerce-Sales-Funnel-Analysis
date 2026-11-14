-- =====================================================
-- PROJECT: E-commerce Sales Funnel Analysis
-- ANALYSIS: Customer Funnel
-- OBJECTIVE: Count unique users at each purchasing stage
-- =====================================================

SELECT
    COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN user_id END) AS view,
    COUNT(DISTINCT CASE WHEN event_type = 'add_to_cart' THEN user_id END) AS cart,
    COUNT(DISTINCT CASE WHEN event_type = 'checkout_start' THEN user_id END) AS checkout,
    COUNT(DISTINCT CASE WHEN event_type = 'payment_info' THEN user_id END) AS payment,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS purchase
FROM events;
