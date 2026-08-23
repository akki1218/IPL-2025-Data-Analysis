CREATE DATABASE ipl_2025;
USE ipl_2025;
USE ipl_2025;
create database stddb;
CREATE DATABASE ipl_2025;
USE ipl_2025;
SELECT * FROM matches LIMIT 5;
show tables;
USE ipl_2025;

select *from matches limit 5;
          #task 1-Which team won the most matches
SELECT  match_winner,COUNT(*) AS matches_won FROM matches
 WHERE match_winner IS NOT NULL GROUP BY match_winner ORDER BY matches_won DESC;
           #task 2-Which teams played the most matches
 SELECT team, COUNT(*) AS matches_played
FROM (
    SELECT team1 AS team FROM matches
    UNION ALL
    SELECT team2 AS team FROM matches
) AS all_teams
GROUP BY team
ORDER BY matches_played DESC;
         #task-3 Top 10 run scorers
 SELECT
    striker,
    SUM(runs_scored) AS total_runs
FROM ipl_batsman
GROUP BY striker
ORDER BY total_runs DESC
LIMIT 10;
   #Task 4 — Top 10 Average Strike Rate
-- Task 4: Top 10 Average Strike Rate
SELECT striker,ROUND(AVG(strike_rate), 2) AS average_strike_rate FROM ipl_batsman  GROUP BY striker
ORDER BY average_strike_rate DESC
LIMIT 10;
   #Task 5 — Top 10 Wicket Takers

-- Task 5: Top 10 Wicket Takers
SELECT  bowler,SUM(wickets_taken) AS total_wickets FROM ipl_bowler GROUP BY bowler ORDER BY total_wickets DESC
LIMIT 10;

 



