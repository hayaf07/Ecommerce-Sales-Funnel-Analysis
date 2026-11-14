# Data Dictionary

The following fields are identified from the project dataset description. Confirm the exact column names, data types, nullability, and meanings against the original CSV/table before final submission.

| Column | Description | Notes / validation |
|---|---|---|
| `event_id` | Identifier for an individual recorded event. | Check whether it is unique and non-null. |
| `user_id` | Identifier for the user who generated the event. | Used for distinct-user counts in the funnel and channel analysis. |
| `event_type` | Type of interaction recorded, such as `page_view`, `add_to_cart`, `checkout_start`, `payment_info`, or `purchase`. | Confirm the complete set of values and consistent spelling/case. |
| `event_date` | Date or timestamp when the event occurred. | Confirm whether this is a date or timestamp and identify its timezone if applicable. |
| `product_id` | Identifier of the product associated with the event. | It may identify individual products; do not assume it means product category/type. |
| `amount` | Monetary amount associated with an event. | Confirm currency and whether values are present only for purchase events before calculating revenue. |
| `traffic_source` | Traffic source associated with the event/user interaction. | Confirm whether attribution is stable across a user's events and how missing values are handled. |

## Dataset validation checklist
- Confirm the total row count and date range.
- Check for null values in key fields.
- Check whether `event_id` is unique.
- Review distinct `event_type` and `traffic_source` values.
- Confirm whether `amount` is populated for non-purchase events.
- Confirm the currency and whether refunds, cancellations, or duplicate purchase events are represented.
