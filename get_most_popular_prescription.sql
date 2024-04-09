use pharmacy;

/*Find the most commonly prescribed medication and the corresponding doctor who prescribed it.
*/
SELECT 
    p.medication_id,
    m.medication_name,
    COUNT(p.medication_id) AS times_prescribed,
    MAX(p.doctor_id) AS DoctorID_with_highest_count
FROM
    prescriptions p
        JOIN
    medications m ON p.medication_id = m.medication_id
GROUP BY p.medication_id
ORDER BY times_prescribed DESC
;

/* 1. Most popular prescription will lead the pharmacy to ask to which ailment is this drug affiliated to.
		The doctor with the highest count of it will also provide insight on which ailments does she prescribe it to.
        Deep dives into the ailment can then be carried for patient education.
2. The popularity will also express demand, Furosemide is most prescribed and should be promptly replenished.
3. Awareness campaigns can be guided by this analysis as patients are educated on the side-effects and adherence of this prescription.
	It's effective as the awareness will impact a good number of patients.
4. The doctors with high counts can receive training to enrich their knowledge which they will pass on to the patients.
	This will enrich the prescription process and doctor-patient relationship
*/