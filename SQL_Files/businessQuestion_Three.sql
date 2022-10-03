-- Business Case Three: Are planning courses more profitable than trading courses?

--- Total number of planning courses
SELECT COUNT(*) AS totalNumber_planningCourses     
FROM udemyCourses
WHERE course_title LIKE '%planning%'

--- Total number of trading courses
SELECT COUNT(*) AS totalNumber_tradingCourses    
FROM udemyCourses
WHERE course_title LIKE '%trading%';


/*My Assumption when calculating for profit is that for a course to be profitable,
we must have students who have subscribed for it; 
hence: profit = (price x num_subscribers)*/

-- Selecting Planning Courses and calculating profit revenue for planning courses
SELECT course_title, num_lectures, price, num_subscribers, (price * num_subscribers) AS planningCourse_revenue
FROM udemyCourses
WHERE course_title LIKE '%planning%';


-- Selecting Trading Courses and calculating profit revenue for trading courses
SELECT course_title, num_lectures, price, num_subscribers, (price * num_subscribers) AS tradingCourse_revenue
FROM udemyCourses
WHERE course_title LIKE '%trading%';