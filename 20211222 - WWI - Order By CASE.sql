USE WideWorldImporters;

SELECT
* 
FROM Application.PaymentMethods 
ORDER BY 
CASE PaymentMethodName
WHEN 'CASH' THEN 4
WHEN 'EFT' THEN 3
WHEN 'Credit Card' THEN 2
ELSE 1 END 
