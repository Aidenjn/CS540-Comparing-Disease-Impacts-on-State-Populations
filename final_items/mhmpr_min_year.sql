SELECT max(year) FROM
(
	SELECT min(year) as year FROM data.measles
	UNION
	SELECT min(year) as year FROM data.hepatitis
	UNION
	SELECT min(year) as year FROM data.mumps
	UNION
	SELECT min(year) as year FROM data.pertussis
	UNION
	SELECT min(year) as year FROM data.rubella
) as result;
