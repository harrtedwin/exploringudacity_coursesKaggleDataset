--Business Question TWO: Are the courses well designed at level difficult
-- Aggregate summary of the Business Case
SELECT level AS Level_Of_Difficulty,
       COUNT(*) * 100.0/(SELECT COUNT(*) FROM udemyCourses) AS PercentageDistribution,
       COUNT(*) AS Number_LevelCount,
	   SUM(num_subscribers) AS Subscribers_ByDifficultLevel
FROM udemyCourses
GROUP BY level
ORDER BY Subscribers_ByDifficultLevel DESC;

-- selecting list of courses, levels, subject and number of subscribers ordered by level to categorize them
SELECT course_title,
       subject,
       level,
	   num_subscribers
FROM udemyCourses
ORDER BY level, num_subscribers DESC;

--list of courses in All Levels only
SELECT TOP(100)course_title,
       level, 
	   num_subscribers
FROM udemyCourses
ORDER BY num_subscribers DESC;