(select 'contacthistory', c.datecreated from ny.contacthistory as c
group by str_to_date(c.datecreated, "%m/%d/%Y")
order by str_to_date(c.datecreated, "%m/%d/%Y") DESC
limit 1)

UNION

(select 'activistcodes', a.datecreated from ny.activistcodes as a
group by str_to_date(a.datecreated, "%m/%d/%Y")
order by str_to_date(a.datecreated, "%m/%d/%Y") DESC
limit 1)

UNION

(select 'surveyquestions', s.datecreated from ny.surveyquestions as s
group by str_to_date(s.datecreated, "%m/%d/%Y")
order by str_to_date(s.datecreated, "%m/%d/%Y") DESC
limit 1)