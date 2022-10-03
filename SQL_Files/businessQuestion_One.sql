--Business Question One: Did the duration range impact course application
USE theRoom
GO

--For as to look at the impact of course application to duration range, we will use the num_subscribers to content_duration
-- Top 10 by content duration
SELECT TOP (10)course_id, 
       course_title,
	   subject, 
	   num_subscribers, 
	   content_duration
FROM udemyCourses
ORDER BY content_duration DESC;

-- Top 10 by num_subscribers
SELECT TOP (10)course_id, 
       course_title,
	   subject, 
	   num_subscribers, 
	   content_duration
FROM udemyCourses
ORDER BY num_subscribers DESC;

-- Checking aggregation of courses and subjects
SELECT subject,
       COUNT(*) * 100.0/(SELECT COUNT(*) FROM udemyCourses) AS PercentageDistribution,
       COUNT(*) AS coursesBySubject,
	   AVG(num_subscribers) AS avg_NumberOfSubscriberPerSubject,
       SUM(num_subscribers) AS totalNumberOfSubscriber, 
	   AVG(content_duration) AS avg_contentDurationPerSubject,
	   SUM(content_duration) AS sum_contentDurationPerSubject
FROM udemyCourses
GROUP BY subject
ORDER BY totalNumberOfSubscriber DESC, avg_contentDurationPerSubject DESC;

---Average content Duration for all courses
SELECT AVG(content_duration) AS [Average Content Duration For All Courses]
FROM udemyCourses;

--Total Number of Subscribers
SELECT SUM(num_subscribers) AS [Total Number of Subscribers]
FROM udemyCourses;