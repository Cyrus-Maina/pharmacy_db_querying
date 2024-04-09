use pharmacy;
/*Calculate the average transaction amount for each payment method used
*/
SELECT 
    payment_method,
    AVG(total_cost) AS avg_trnsctn_amnt_per_payment_method
FROM
    transactions
GROUP BY payment_method
ORDER BY avg_trnsctn_amnt_per_payment_method DESC
;

/*	1. The insights suggest where most resources should be directed to,to enhance compatibility and maximize customer satisfcation
2. The insights will help predict expected amounts thus easier to detect, prevent and arrest fraud. Unusual changes will be arrested promptly.
3. The insights inform promotional strategies i.e., certain incentives for using insurance
4. Cost analysis can be done and be compared to revenues earned through it. Cheaper methods can be marketed or necessary decisions
	made to maximize revenues via back-end process of payment options.
*/