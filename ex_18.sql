/*18. Какой торговый агент сделал самый большой объем продаж в 2009 году? На выходе в первой колонке должна быть сумма продаж, во второй имя и фамилия продавца.*/
SELECT Max(total),
       fullname
FROM   (SELECT Sum(i.total)      AS Total,
               ( e.firstname
                 || ' '
                 || e.lastname ) AS FullName
        FROM   employee e
               LEFT JOIN customer c
                      ON c.supportrepid = e.employeeid
               LEFT JOIN invoice i
                      ON i.customerid = c.customerid
        WHERE  e.title = 'Sales Support Agent'
               AND Strftime('%Y', i.invoicedate) = '2009'
        GROUP  BY e.employeeid);