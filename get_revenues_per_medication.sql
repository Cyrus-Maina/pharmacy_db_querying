use pharmacy;

/*Calculate the total revenue generated from each medication, considering the quantity sold and the price per unit.
*/

 SELECT 
    m.medication_id,
    m.medication_name,
    sum(p.quantity * m.price_per_unit) AS revenues
FROM
    medications m
        JOIN
    prescriptions p ON m.medication_id = p.medication_id
    group by m.medication_id,m.medication_name
ORDER BY revenues ASC
;

/* Reccomendations & Insights
1. With these insights we can assess profitability per medication
2. The insights inform resource & investments allocation, the pharmacy will want to allocate more to drugs with high revenues as these meds
	reflect demand.
3. The insights will inform a need of negotiations to lower buying prices with suppliers.
4. We can now assess the pricing strategy of the pharmacy. The revenues will inform need of changing prices to adjust to a situation
	e.g., low sales.
5. Optimize inventory by stockling high-revenue earners to minimize stock-outs.
*/