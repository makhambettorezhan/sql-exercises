/*9. Просматривая таблицу InvoiceLine, напишите запрос, который подсчитывает количество позиций для счета-фактуры с InvoiceId 37. На выходе в первой колонке
 должно быть количество позиций.*/
SELECT Count(*)
FROM   invoiceline il
WHERE  il.invoiceid = 37;