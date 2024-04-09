use pharmacy;
/*Calculate the total number of prescriptions issued each month for the past year, grouped by month
*/
SELECT 
    MONTH(prescription_date) AS calendar_month,
    COUNT(prescription_id) AS total_prescriptions
FROM
    prescriptions
GROUP BY MONTH(prescription_date)
ORDER BY total_prescriptions DESC
;

/*	1. The insights tell the first 4 months register poor sales except of February. Deep dives would help unearth why
2. The insights will guide a plan of action for the next business year e.g., how to distribute investments and resources
	to suit each month's needs. Low staffing and relaxed inventory in poor months can release some resources for other usage.
3. The insights help plot growth and guide setting targets.
4. There are good sales towards end of year. A deep dive would help explain why. Resources could be planned to support this.
5. The results will help correlate sales to seasons and trends e.g., flu medications may be selling more during winter.
	This will help adjust inventory to match the seasons
6. Marketing resources can be heightened in these peak months e.g., November
7. Patient education can be heightened for conditions prevalent in certain months.
*/