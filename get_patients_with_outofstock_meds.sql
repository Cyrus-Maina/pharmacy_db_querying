use pharmacy;
/*Retrieve the patients who have prescriptions for medications that are out of stock.
*/
SELECT 
    pt.patient_id, m.medication_id
FROM
    medications m
        JOIN
    prescriptions p ON m.medication_id = p.medication_id
        JOIN
    patients pt ON p.patient_id = pt.patient_id
WHERE
    m.quantity_available < 1
;

/* 1. There are no out of stock medications. These shows effective inventory management practice.
2. The insights inform communication to customers on rearrangements on when to pick the drugs. This would enhance customer-business trust
3. Insight will help prioritize replenishment to meet customer satisfaction
4. Insights will help the business help customers find alternaives
5. 
*/