SELECT n.account_id, n.account_name, n.full_address, e.pctname, e.county, e.cd, e.sd, e.ad, e.nyccd
FROM nyic_member_orgs_nyic_member_orgs_for_electoral_district_mappin AS n
JOIN ny_ed as e
ON ST_Within(n.the_geom, e.the_geom)
