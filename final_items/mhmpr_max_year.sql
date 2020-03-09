SELECT min(year) FROM
(
	SELECT max(year) as year FROM data.measles
	UNION
	SELECT max(year) as year FROM data.hepatitis
	UNION
	SELECT max(year) as year FROM data.mumps
	UNION
	SELECT max(year) as year FROM data.pertussis
	UNION
	SELECT max(year) as year FROM data.rubella
) as results;
