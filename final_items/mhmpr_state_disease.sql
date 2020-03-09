SELECT
	code,
	(select avg(incidence_per_capita) FROM data.measles where state=s.code and 1968 <= year and year <= 2002),
	(select avg(incidence_per_capita) FROM data.hepatitis where state=s.code and 1968 <= year and year <= 2002),
	(select avg(incidence_per_capita) FROM data.mumps where state=s.code and 1968 <= year and year <= 2002),
	(select avg(incidence_per_capita) FROM data.pertussis where state=s.code and 1968 <= year and year <= 2002),
	(select avg(incidence_per_capita) FROM data.rubella where state=s.code and 1968 <= year and year <= 2002)
FROM data.USState as s;

