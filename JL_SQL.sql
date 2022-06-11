USE justice_league_files;

#a. 5 must include multi-table JOINs
SELECT members.id_num,members.hero_name,sub_teams.team_count
FROM members
INNER JOIN sub_teams ON
members.team_name=sub_teams.team_name;

SELECT contingencies.protocol_num,contingencies.hero_name,members.identity,contingencies.protocol_description
FROM contingencies
LEFT JOIN members ON
contingencies.id_num=members.id_num;

SELECT members.hero_name,archenemies.villian_name,archenemies.threat_level
FROM members
RIGHT JOIN archenemies ON
members.id_num=archenemies.id_num;

SELECT members.hero_name,archenemies.villian_name,archenemies.threat_level
FROM members
RIGHT JOIN archenemies ON
members.id_num=archenemies.id_num
WHERE threat_level = 3;

SELECT members.hero_name,members.occupation,sub_teams.team_name,sub_teams.location,contingencies.protocol_num,contingencies.protocol_description
FROM members
JOIN sub_teams ON
members.team_name = sub_teams.team_name
JOIN contingencies ON
members.protocol_num = contingencies.protocol_num;

#b. 1 must be an aggregate query with grouping
SELECT event_name,year,MAX(issues)
FROM major_events
GROUP BY year
ORDER BY year;

#c. 1 must include a sub-query
SELECT id_num,hero_name,clearance_level
FROM members
WHERE id_num IN
(SELECT id_num
FROM members
WHERE clearance_level = 4);
