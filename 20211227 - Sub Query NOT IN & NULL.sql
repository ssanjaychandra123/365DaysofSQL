USE AdventureWorks2019;

SELECT CurrencyRateID, FromCurrencyCode, ToCurrencyCode
FROM Sales.CurrencyRate
WHERE CurrencyRateID NOT IN
(SELECT CurrencyRateID
FROM Sales.SalesOrderHeader
WHERE CurrencyRateID IS NOT NULL); 