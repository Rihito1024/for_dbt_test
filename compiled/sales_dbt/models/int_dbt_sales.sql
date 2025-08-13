

SELECT
  s.datetime,
  m.product_name,
  s.price,
  s.number,
  c.customer_name,
  s.status
FROM STARTER.sales.raw_sales_stream as r
LEFT JOIN STARTER.sales.mst_product m ON r.product_id = m.id
LEFT JOIN STARTER.sales.mst_customer c ON r.customer_id = c.id;