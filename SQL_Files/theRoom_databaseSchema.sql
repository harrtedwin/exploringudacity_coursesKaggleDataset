CREATE DATABASE [theRoom]

USE [theRoom]
GO

CREATE TABLE [dbo].[udemyCourses](
	[course_id] [int] NOT NULL,
	[course_title] [nvarchar](250) NOT NULL,
	[url] [nvarchar](100) NOT NULL,
	[is_paid] [bit] NOT NULL,
	[price] [nvarchar](50) NOT NULL,
	[num_subscribers] [int] NOT NULL,
	[num_reviews] [nvarchar](50) NOT NULL,
	[num_lectures] [int] NOT NULL,
	[level] [nvarchar](50) NOT NULL,
	[content_duration] [float] NOT NULL,
	[published_timestamp] [datetime2](7) NOT NULL,
	[subject] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO