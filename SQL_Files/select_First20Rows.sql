/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (20) [course_id]
      ,[course_title]
      ,[url]
      ,[is_paid]
      ,[price]
      ,[num_subscribers]
      ,[num_reviews]
      ,[num_lectures]
      ,[level]
      ,[content_duration]
      ,[published_timestamp]
      ,[subject]
  FROM [theRoom].[dbo].[udemyCourses]