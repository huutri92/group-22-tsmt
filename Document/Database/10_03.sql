USE [TSMT]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ProfileID] [int] NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidates]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidates](
	[CandidateID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[HighSchoolName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Candidates] PRIMARY KEY CLUSTERED 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Candidates] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profiles](
	[ProfileID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[Firstname] [nvarchar](20) NOT NULL,
	[Lastname] [nvarchar](20) NOT NULL,
	[Middlename] [nvarchar](30) NULL,
	[IsFemale] [bit] NOT NULL,
	[DateOfBirth] [date] NULL,
	[PhoneNumber] [varchar](13) NULL,
	[Address] [nvarchar](100) NULL,
	[ImagePath] [nvarchar](200) NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[ArticleID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[LastModifiedOn] [datetime] NULL,
	[IsAprroved] [bit] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[ArticleID] [int] NOT NULL,
	[AccountID] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ReplyFor] [int] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Charities]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charities](
	[CharityID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Charities] PRIMARY KEY CLUSTERED 
(
	[CharityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Charities] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Examinations]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examinations](
	[ExaminationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Examinations] PRIMARY KEY CLUSTERED 
(
	[ExaminationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChairitiesExams]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChairitiesExams](
	[CharityExamID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NOT NULL,
	[CharityID] [int] NOT NULL,
	[CharityExamName] [nvarchar](50) NULL,
	[TotalSlotsLodges] [int] NOT NULL,
	[AvailableSlotsLodges] [int] NOT NULL,
	[TotalSlotsVehicles] [int] NOT NULL,
	[AvailableSlotsVehicles] [int] NOT NULL,
 CONSTRAINT [PK_ChairitiesExams_1] PRIMARY KEY CLUSTERED 
(
	[CharityExamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteers]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteers](
	[VolunteerID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[CharityExamID] [int] NULL,
	[JobName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Volunteers] PRIMARY KEY CLUSTERED 
(
	[VolunteerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Volunteers] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[ArticleID] [int] NOT NULL,
	[RatingMark] [int] NOT NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sponsors]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsors](
	[SponsorID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Sponsores] PRIMARY KEY CLUSTERED 
(
	[SponsorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sponsors] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lodges]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lodges](
	[LodgeID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[SponsorID] [int] NULL,
	[CharityExamID] [int] NOT NULL,
	[TotalRooms] [int] NOT NULL,
	[TotalSlots] [int] NOT NULL,
	[AvailableSlots] [int] NOT NULL,
 CONSTRAINT [PK_Lodges] PRIMARY KEY CLUSTERED 
(
	[LodgeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funds]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funds](
	[FundID] [int] IDENTITY(1,1) NOT NULL,
	[SponsorID] [int] NOT NULL,
	[CharityExamID] [int] NOT NULL,
	[FundSponsored] [float] NOT NULL,
	[IsOnlineFunding] [bit] NOT NULL,
 CONSTRAINT [PK_Funds] PRIMARY KEY CLUSTERED 
(
	[FundID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[CharityExamID] [int] NOT NULL,
	[SponsorID] [int] NULL,
	[NumberPlate] [nvarchar](20) NULL,
	[TotalSlots] [int] NOT NULL,
	[AvailableSlots] [int] NOT NULL,
	[DriverName] [nvarchar](50) NULL,
	[DriverPhone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[LodgeID] [int] NOT NULL,
	[TotalSlots] [int] NOT NULL,
	[AvailableSlots] [int] NOT NULL,
	[RoomName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Universities]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universities](
	[UniversityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[UniversityCode] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
	[Phone] [int] NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[UniversityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UniversitiesExaminations]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniversitiesExaminations](
	[UniExamID] [int] IDENTITY(1,1) NOT NULL,
	[UniversityID] [int] NOT NULL,
	[ExaminationID] [int] NOT NULL,
 CONSTRAINT [PK_UniversityExamination] PRIMARY KEY CLUSTERED 
(
	[UniExamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venues]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venues](
	[VenueID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[DistrictID] [int] NOT NULL,
	[UniExamID] [int] NOT NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[VenueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExaminationsPapers]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExaminationsPapers](
	[ExamPaperID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[UniExamID] [int] NOT NULL,
	[VenueID] [int] NOT NULL,
 CONSTRAINT [PK_ExamsPaper] PRIMARY KEY CLUSTERED 
(
	[ExamPaperID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JoinsIn]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JoinsIn](
	[JoinInID] [int] IDENTITY(1,1) NOT NULL,
	[CharitiesExaminationsID] [int] NOT NULL,
	[ExamPaperID] [int] NOT NULL,
	[RoomID] [int] NULL,
 CONSTRAINT [PK_JoinsIn] PRIMARY KEY CLUSTERED 
(
	[JoinInID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchedulesVolunteers]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchedulesVolunteers](
	[ScheduleVolunteerID] [int] IDENTITY(1,1) NOT NULL,
	[VolunteerID] [int] NOT NULL,
	[Day] [datetime] NOT NULL,
	[PickUpTime] [datetime] NOT NULL,
	[ArriveTime] [datetime] NOT NULL,
	[JoinInID] [int] NOT NULL,
 CONSTRAINT [PK_DetailScheduleVolunteers] PRIMARY KEY CLUSTERED 
(
	[ScheduleVolunteerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchedulesCars]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchedulesCars](
	[ScheduleCarID] [int] IDENTITY(1,1) NOT NULL,
	[CarID] [int] NOT NULL,
	[JoinInID] [int] NOT NULL,
 CONSTRAINT [PK_SchedulesCar] PRIMARY KEY CLUSTERED 
(
	[ScheduleCarID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailsSchedulesCars]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailsSchedulesCars](
	[DetailScheduleCarID] [int] IDENTITY(1,1) NOT NULL,
	[ScheduleCarID] [int] NOT NULL,
	[Day] [datetime] NOT NULL,
	[PickUpTime] [nchar](10) NOT NULL,
	[ArriveTime] [nchar](10) NOT NULL,
 CONSTRAINT [PK_DetailScheduleCars] PRIMARY KEY CLUSTERED 
(
	[DetailScheduleCarID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[TagID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticlesTags]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticlesTags](
	[ArticleTagID] [int] IDENTITY(1,1) NOT NULL,
	[ArticleID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_ArticlesTags] PRIMARY KEY CLUSTERED 
(
	[ArticleTagID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[ProvinceID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED 
(
	[ProvinceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailsScheduleExams]    Script Date: 03/10/2014 04:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailsScheduleExams](
	[DetailsScheduleExamID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NOT NULL,
	[Day] [datetime] NOT NULL,
	[BeginHour] [datetime] NOT NULL,
	[EndHour] [datetime] NOT NULL,
 CONSTRAINT [PK_DetailsScheduleExams] PRIMARY KEY CLUSTERED 
(
	[DetailsScheduleExamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Accounts_Profiles]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Profiles] FOREIGN KEY([ProfileID])
REFERENCES [dbo].[Profiles] ([ProfileID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Profiles]
GO
/****** Object:  ForeignKey [FK_Accounts_Roles]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles]
GO
/****** Object:  ForeignKey [FK_Article_Category]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Article_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Article_Category]
GO
/****** Object:  ForeignKey [FK_Articles_Accounts]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Articles_Accounts] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Articles_Accounts]
GO
/****** Object:  ForeignKey [FK_ArticlesTags_Articles]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[ArticlesTags]  WITH CHECK ADD  CONSTRAINT [FK_ArticlesTags_Articles] FOREIGN KEY([ArticleID])
REFERENCES [dbo].[Articles] ([ArticleID])
GO
ALTER TABLE [dbo].[ArticlesTags] CHECK CONSTRAINT [FK_ArticlesTags_Articles]
GO
/****** Object:  ForeignKey [FK_ArticlesTags_Tags]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[ArticlesTags]  WITH CHECK ADD  CONSTRAINT [FK_ArticlesTags_Tags] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tags] ([TagID])
GO
ALTER TABLE [dbo].[ArticlesTags] CHECK CONSTRAINT [FK_ArticlesTags_Tags]
GO
/****** Object:  ForeignKey [FK_Candidates_Accounts]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Candidates]  WITH CHECK ADD  CONSTRAINT [FK_Candidates_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Candidates] CHECK CONSTRAINT [FK_Candidates_Accounts]
GO
/****** Object:  ForeignKey [FK_Cars_ChairitiesExams]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_ChairitiesExams]
GO
/****** Object:  ForeignKey [FK_Cars_Sponsors]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Sponsors] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Sponsors]
GO
/****** Object:  ForeignKey [FK_ChairitiesExams_Charities]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[ChairitiesExams]  WITH CHECK ADD  CONSTRAINT [FK_ChairitiesExams_Charities] FOREIGN KEY([CharityID])
REFERENCES [dbo].[Charities] ([CharityID])
GO
ALTER TABLE [dbo].[ChairitiesExams] CHECK CONSTRAINT [FK_ChairitiesExams_Charities]
GO
/****** Object:  ForeignKey [FK_ChairitiesExams_Examinations]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[ChairitiesExams]  WITH CHECK ADD  CONSTRAINT [FK_ChairitiesExams_Examinations] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Examinations] ([ExaminationID])
GO
ALTER TABLE [dbo].[ChairitiesExams] CHECK CONSTRAINT [FK_ChairitiesExams_Examinations]
GO
/****** Object:  ForeignKey [FK_Charities_Accounts]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Charities]  WITH CHECK ADD  CONSTRAINT [FK_Charities_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Charities] CHECK CONSTRAINT [FK_Charities_Accounts]
GO
/****** Object:  ForeignKey [FK_Comments_Articles]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Articles] FOREIGN KEY([ArticleID])
REFERENCES [dbo].[Articles] ([ArticleID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Articles]
GO
/****** Object:  ForeignKey [FK_Comments_Comments]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comments] FOREIGN KEY([ReplyFor])
REFERENCES [dbo].[Comments] ([CommentID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Comments]
GO
/****** Object:  ForeignKey [FK_DetailsScheduleExams_Examinations]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[DetailsScheduleExams]  WITH CHECK ADD  CONSTRAINT [FK_DetailsScheduleExams_Examinations] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Examinations] ([ExaminationID])
GO
ALTER TABLE [dbo].[DetailsScheduleExams] CHECK CONSTRAINT [FK_DetailsScheduleExams_Examinations]
GO
/****** Object:  ForeignKey [FK_DetailsSchedulesCars_SchedulesCars]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[DetailsSchedulesCars]  WITH CHECK ADD  CONSTRAINT [FK_DetailsSchedulesCars_SchedulesCars] FOREIGN KEY([ScheduleCarID])
REFERENCES [dbo].[SchedulesCars] ([ScheduleCarID])
GO
ALTER TABLE [dbo].[DetailsSchedulesCars] CHECK CONSTRAINT [FK_DetailsSchedulesCars_SchedulesCars]
GO
/****** Object:  ForeignKey [FK_Districts_Provinces]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD  CONSTRAINT [FK_Districts_Provinces] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Provinces] ([ProvinceID])
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_Districts_Provinces]
GO
/****** Object:  ForeignKey [FK_ExaminationsPapers_Venues]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[ExaminationsPapers]  WITH CHECK ADD  CONSTRAINT [FK_ExaminationsPapers_Venues] FOREIGN KEY([VenueID])
REFERENCES [dbo].[Venues] ([VenueID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_Venues]
GO
/****** Object:  ForeignKey [FK_ExamsPaper_Candidates]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[ExaminationsPapers]  WITH CHECK ADD  CONSTRAINT [FK_ExamsPaper_Candidates] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidates] ([CandidateID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExamsPaper_Candidates]
GO
/****** Object:  ForeignKey [FK_ExamsPaper_UniversityExamination]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[ExaminationsPapers]  WITH CHECK ADD  CONSTRAINT [FK_ExamsPaper_UniversityExamination] FOREIGN KEY([UniExamID])
REFERENCES [dbo].[UniversitiesExaminations] ([UniExamID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExamsPaper_UniversityExamination]
GO
/****** Object:  ForeignKey [FK_Funds_ChairitiesExams]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Funds]  WITH CHECK ADD  CONSTRAINT [FK_Funds_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Funds] CHECK CONSTRAINT [FK_Funds_ChairitiesExams]
GO
/****** Object:  ForeignKey [FK_Funds_Sponsores]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Funds]  WITH CHECK ADD  CONSTRAINT [FK_Funds_Sponsores] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[Funds] CHECK CONSTRAINT [FK_Funds_Sponsores]
GO
/****** Object:  ForeignKey [FK_JoinIn_ChairitiesExams]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[JoinsIn]  WITH CHECK ADD  CONSTRAINT [FK_JoinIn_ChairitiesExams] FOREIGN KEY([CharitiesExaminationsID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[JoinsIn] CHECK CONSTRAINT [FK_JoinIn_ChairitiesExams]
GO
/****** Object:  ForeignKey [FK_JoinsIn_ExaminationsPapers]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[JoinsIn]  WITH CHECK ADD  CONSTRAINT [FK_JoinsIn_ExaminationsPapers] FOREIGN KEY([ExamPaperID])
REFERENCES [dbo].[ExaminationsPapers] ([ExamPaperID])
GO
ALTER TABLE [dbo].[JoinsIn] CHECK CONSTRAINT [FK_JoinsIn_ExaminationsPapers]
GO
/****** Object:  ForeignKey [FK_JoinsIn_Rooms]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[JoinsIn]  WITH CHECK ADD  CONSTRAINT [FK_JoinsIn_Rooms] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[JoinsIn] CHECK CONSTRAINT [FK_JoinsIn_Rooms]
GO
/****** Object:  ForeignKey [FK_Lodges_ChairitiesExams1]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Lodges]  WITH CHECK ADD  CONSTRAINT [FK_Lodges_ChairitiesExams1] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Lodges] CHECK CONSTRAINT [FK_Lodges_ChairitiesExams1]
GO
/****** Object:  ForeignKey [FK_Lodges_Sponsors]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Lodges]  WITH CHECK ADD  CONSTRAINT [FK_Lodges_Sponsors] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[Lodges] CHECK CONSTRAINT [FK_Lodges_Sponsors]
GO
/****** Object:  ForeignKey [FK_Profiles_Accounts]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Profiles_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_Accounts]
GO
/****** Object:  ForeignKey [FK_Rating_Accounts]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Accounts]
GO
/****** Object:  ForeignKey [FK_Rating_Articles]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Articles] FOREIGN KEY([ArticleID])
REFERENCES [dbo].[Articles] ([ArticleID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Articles]
GO
/****** Object:  ForeignKey [FK_Rooms_Lodges]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Lodges] FOREIGN KEY([LodgeID])
REFERENCES [dbo].[Lodges] ([LodgeID])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Lodges]
GO
/****** Object:  ForeignKey [FK_SchedulesCar_Cars]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[SchedulesCars]  WITH CHECK ADD  CONSTRAINT [FK_SchedulesCar_Cars] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[SchedulesCars] CHECK CONSTRAINT [FK_SchedulesCar_Cars]
GO
/****** Object:  ForeignKey [FK_SchedulesCars_JoinsIn]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[SchedulesCars]  WITH CHECK ADD  CONSTRAINT [FK_SchedulesCars_JoinsIn] FOREIGN KEY([JoinInID])
REFERENCES [dbo].[JoinsIn] ([JoinInID])
GO
ALTER TABLE [dbo].[SchedulesCars] CHECK CONSTRAINT [FK_SchedulesCars_JoinsIn]
GO
/****** Object:  ForeignKey [FK_DetailScheduleVolunteers_Volunteers]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[SchedulesVolunteers]  WITH CHECK ADD  CONSTRAINT [FK_DetailScheduleVolunteers_Volunteers] FOREIGN KEY([VolunteerID])
REFERENCES [dbo].[Volunteers] ([VolunteerID])
GO
ALTER TABLE [dbo].[SchedulesVolunteers] CHECK CONSTRAINT [FK_DetailScheduleVolunteers_Volunteers]
GO
/****** Object:  ForeignKey [FK_ScheduleVolunteers_JoinsIn]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[SchedulesVolunteers]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleVolunteers_JoinsIn] FOREIGN KEY([JoinInID])
REFERENCES [dbo].[JoinsIn] ([JoinInID])
GO
ALTER TABLE [dbo].[SchedulesVolunteers] CHECK CONSTRAINT [FK_ScheduleVolunteers_JoinsIn]
GO
/****** Object:  ForeignKey [FK_Sponsors_Accounts]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Sponsors]  WITH CHECK ADD  CONSTRAINT [FK_Sponsors_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Sponsors] CHECK CONSTRAINT [FK_Sponsors_Accounts]
GO
/****** Object:  ForeignKey [FK_UniversityExamination_Examinations]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[UniversitiesExaminations]  WITH CHECK ADD  CONSTRAINT [FK_UniversityExamination_Examinations] FOREIGN KEY([ExaminationID])
REFERENCES [dbo].[Examinations] ([ExaminationID])
GO
ALTER TABLE [dbo].[UniversitiesExaminations] CHECK CONSTRAINT [FK_UniversityExamination_Examinations]
GO
/****** Object:  ForeignKey [FK_UniversityExamination_University]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[UniversitiesExaminations]  WITH CHECK ADD  CONSTRAINT [FK_UniversityExamination_University] FOREIGN KEY([UniversityID])
REFERENCES [dbo].[Universities] ([UniversityID])
GO
ALTER TABLE [dbo].[UniversitiesExaminations] CHECK CONSTRAINT [FK_UniversityExamination_University]
GO
/****** Object:  ForeignKey [FK_Venues_UniversitiesExaminations]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD  CONSTRAINT [FK_Venues_UniversitiesExaminations] FOREIGN KEY([UniExamID])
REFERENCES [dbo].[UniversitiesExaminations] ([UniExamID])
GO
ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_UniversitiesExaminations]
GO
/****** Object:  ForeignKey [FK_Volunteers_Accounts]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Volunteers]  WITH CHECK ADD  CONSTRAINT [FK_Volunteers_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Volunteers] CHECK CONSTRAINT [FK_Volunteers_Accounts]
GO
/****** Object:  ForeignKey [FK_Volunteers_ChairitiesExams]    Script Date: 03/10/2014 04:39:29 ******/
ALTER TABLE [dbo].[Volunteers]  WITH CHECK ADD  CONSTRAINT [FK_Volunteers_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Volunteers] CHECK CONSTRAINT [FK_Volunteers_ChairitiesExams]
GO
