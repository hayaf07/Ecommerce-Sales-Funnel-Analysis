# E-commerce Sales Funnel Analysis

## Project Background
E-commerce platforms record customer interactions as events, such as viewing a page, adding a product to a cart, starting checkout, entering payment information, and completing a purchase. Analyzing these events can help a business understand customer behavior, marketing performance, and revenue outcomes.

## Problem Statement
The business needs a clearer view of how users move through the purchasing journey, how traffic sources contribute to customers, and what revenue-related measures can be derived from the event data.

## Project Objectives
1. Measure the number of unique users recorded at each customer-funnel stage.
2. Compare traffic sources using viewers, purchasing customers, and view-to-purchase conversion rate.
3. Calculate selected revenue measures, including revenue per channel, revenue per distinct product, and revenue per purchasing customer.
4. Use the findings to identify potential areas for business improvement.

## Project Scope

### 1. Customer Funnel Analysis
Counts distinct users associated with page views, add-to-cart events, checkout starts, payment-information events, and purchases.

**Interpretation note:** These are event participation counts. Unless event sequence and session/user journey order are explicitly checked, they should not be described as a strictly sequential funnel.

### 2. Marketing Channel Analysis
Groups users by traffic source and compares distinct viewers, distinct purchasing customers, and view-to-purchase conversion rate.

**Interpretation note:** This comparison depends on how `traffic_source` is populated across a user's events. It does not automatically prove that the source caused or exclusively generated a purchase.

### 3. Revenue Analysis
Calculates total revenue and selected averages:
- Revenue per traffic channel
- Revenue per distinct product ID
- Revenue per purchasing customer

**Data validation note:** The current SQL uses `SUM(amount)`. Confirm that `amount` is populated only on purchase events before interpreting this as total sales revenue. If amounts are recorded on other event types, the revenue calculation should be restricted to purchase rows.

## Tools
- PostgreSQL / Supabase SQL Editor
- GitHub for project version control and portfolio presentation

## Expected Outcomes
The analysis is intended to provide a concise view of customer activity across funnel stages, differences between traffic sources, and selected revenue measures. Business recommendations should be written only after reviewing the actual query outputs.
