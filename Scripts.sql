USE [Master]
GO

CREATE DATABASE [Task]
GO

USE [Task]
GO

/***** Object:  Table [dbo].[TableA]    Script Date: 6/15/2017 10:23:44 AM *****/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TableA](
 [NameId] [int] NOT NULL,
 [Name] [varchar](200) NOT NULL,
 [LastRefresh] [date] NOT NULL,
 [IsYesOrNo] [char](1) NOT NULL,
 [POSTGradYN] [char](1) NOT NULL,
 CONSTRAINT [PK_TableA] PRIMARY KEY CLUSTERED 
(
 [NameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TableA] ([NameId], [Name], [LastRefresh], [IsYesOrNo], [POSTGradYN]) VALUES (10001, N'AAAA', CAST(N'2020-07-06' AS Date), N'Y', N'Y')
GO
/***** Object:  StoredProcedure [dbo].[GetRecord]    Script Date: 6/15/2017 10:23:44 AM *****/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRecord]

AS
BEGIN
 SELECT [NameId], [Name], [LastRefresh], [IsYesOrNo], [POSTGradYN] from TableA
END

GO