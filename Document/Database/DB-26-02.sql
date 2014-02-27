USE [master]
GO
/****** Object:  Database [TSMT]    Script Date: 2/26/2014 3:44:38 PM ******/
CREATE DATABASE [TSMT]
 ON  PRIMARY 
( NAME = N'TSMT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\TSMT.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TSMT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\TSMT_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TSMT] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TSMT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TSMT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TSMT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TSMT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TSMT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TSMT] SET ARITHABORT OFF 
GO
ALTER DATABASE [TSMT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TSMT] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TSMT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TSMT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TSMT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TSMT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TSMT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TSMT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TSMT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TSMT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TSMT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TSMT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TSMT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TSMT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TSMT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TSMT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TSMT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TSMT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TSMT] SET RECOVERY FULL 
GO
ALTER DATABASE [TSMT] SET  MULTI_USER 
GO
ALTER DATABASE [TSMT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TSMT] SET DB_CHAINING OFF 
GO

EXEC sys.sp_db_vardecimal_storage_format N'TSMT', N'ON'
GO
USE [TSMT]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Articles]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[ArticleID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[IsAprroved] [bit] NOT NULL,
	[ApprovedOn] [datetime] NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Candidates]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidates](
	[CandidateID] [int] NOT NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_Candidates] PRIMARY KEY CLUSTERED 
(
	[CandidateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cars]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarID] [int] NOT NULL,
	[SponsorID] [int] NULL,
	[CharityExamID] [int] NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarsSponsors]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarsSponsors](
	[CarID] [int] NULL,
	[SponsorID] [int] NULL,
	[CharityExamID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChairitiesExams]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChairitiesExams](
	[CharityID] [int] NOT NULL,
	[ExamID] [int] NULL,
	[CharityExamID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ChairitiesExams_1] PRIMARY KEY CLUSTERED 
(
	[CharityExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Charities]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charities](
	[CharityID] [int] NOT NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_Charities] PRIMARY KEY CLUSTERED 
(
	[CharityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] NOT NULL,
	[ArticleID] [int] NOT NULL,
	[AccountID] [int] NOT NULL,
	[CommentContent] [nvarchar](max) NOT NULL,
	[Status] [nchar](10) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Examinations]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examinations](
	[ExaminationID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Examinations] PRIMARY KEY CLUSTERED 
(
	[ExaminationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExaminationsPapers]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExaminationsPapers](
	[ExamPaperID] [int] NOT NULL,
	[UniExamID] [int] NOT NULL,
	[CandidateID] [int] NOT NULL,
	[VenueID] [int] NULL,
 CONSTRAINT [PK_ExamsPaper] PRIMARY KEY CLUSTERED 
(
	[ExamPaperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Funds]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funds](
	[FundID] [int] NOT NULL,
	[SponsorID] [int] NULL,
	[FundSponsored] [nvarchar](50) NULL,
	[CharityExamID] [int] NULL,
 CONSTRAINT [PK_Funds] PRIMARY KEY CLUSTERED 
(
	[FundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JoinsIn]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JoinsIn](
	[CharitiesExaminationsID] [int] NULL,
	[CandidateID] [int] NULL,
	[ScheduleCarID] [int] NULL,
	[ScheduleVolunteerID] [int] NULL,
	[ScheduleLodgeID] [int] NULL,
	[JoinInID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_JoinsIn] PRIMARY KEY CLUSTERED 
(
	[JoinInID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lodges]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lodges](
	[LodgeID] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Ward] [nvarchar](50) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[SponsorID] [int] NULL,
	[CharityExamID] [int] NULL,
 CONSTRAINT [PK_Lodges] PRIMARY KEY CLUSTERED 
(
	[LodgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LodgesSponsors]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LodgesSponsors](
	[LodgeID] [int] NULL,
	[SponsorID] [int] NULL,
	[CharityExamID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profiles](
	[ProfileID] [nchar](10) NOT NULL,
	[AccountID] [int] NULL,
	[Firstname] [nvarchar](15) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[PhoneNumber] [varchar](13) NULL,
	[Address] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingID] [int] NOT NULL,
	[AccountID] [int] NOT NULL,
	[ArticleID] [int] NOT NULL,
	[RatingMark] [int] NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[LodgeID] [int] NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchedulesCars]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchedulesCars](
	[ScheduleCarID] [int] NOT NULL,
	[CarID] [int] NOT NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_SchedulesCar] PRIMARY KEY CLUSTERED 
(
	[ScheduleCarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchedulesRooms]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchedulesRooms](
	[ScheduleLodgeID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [int] NULL,
 CONSTRAINT [PK_SchedulesLodge] PRIMARY KEY CLUSTERED 
(
	[ScheduleLodgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchedulesVolunteers]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchedulesVolunteers](
	[ScheduleVolunteerId] [int] NOT NULL,
	[VolunteerId] [int] NOT NULL,
 CONSTRAINT [PK_SchedulesVolunteer] PRIMARY KEY CLUSTERED 
(
	[ScheduleVolunteerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sponsors]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsors](
	[SponsorID] [int] NOT NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_Sponsores] PRIMARY KEY CLUSTERED 
(
	[SponsorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Universities]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universities](
	[UniversityID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[UniversityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UniversitiesExaminations]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniversitiesExaminations](
	[UniExamID] [int] NOT NULL,
	[UniversityID] [int] NOT NULL,
	[ExaminationID] [int] NOT NULL,
 CONSTRAINT [PK_UniversityExamination] PRIMARY KEY CLUSTERED 
(
	[UniExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venues]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venues](
	[VenueID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Ward] [nvarchar](50) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[UniExamID] [int] NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[VenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Volunteers]    Script Date: 2/26/2014 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteers](
	[VolunteerID] [int] NOT NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_Volunteers] PRIMARY KEY CLUSTERED 
(
	[VolunteerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Article_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Article_Category]
GO
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Articles_Accounts] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Articles_Accounts]
GO
ALTER TABLE [dbo].[Candidates]  WITH CHECK ADD  CONSTRAINT [FK_Candidates_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Candidates] CHECK CONSTRAINT [FK_Candidates_Accounts]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_ChairitiesExams]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Sponsors] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Sponsors]
GO
ALTER TABLE [dbo].[CarsSponsors]  WITH CHECK ADD  CONSTRAINT [FK_CarsSponsores_Cars] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[CarsSponsors] CHECK CONSTRAINT [FK_CarsSponsores_Cars]
GO
ALTER TABLE [dbo].[CarsSponsors]  WITH CHECK ADD  CONSTRAINT [FK_CarsSponsores_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[CarsSponsors] CHECK CONSTRAINT [FK_CarsSponsores_ChairitiesExams]
GO
ALTER TABLE [dbo].[CarsSponsors]  WITH CHECK ADD  CONSTRAINT [FK_CarsSponsores_Sponsores] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[CarsSponsors] CHECK CONSTRAINT [FK_CarsSponsores_Sponsores]
GO
ALTER TABLE [dbo].[ChairitiesExams]  WITH CHECK ADD  CONSTRAINT [FK_ChairitiesExams_Charities] FOREIGN KEY([CharityID])
REFERENCES [dbo].[Charities] ([CharityID])
GO
ALTER TABLE [dbo].[ChairitiesExams] CHECK CONSTRAINT [FK_ChairitiesExams_Charities]
GO
ALTER TABLE [dbo].[ChairitiesExams]  WITH CHECK ADD  CONSTRAINT [FK_ChairitiesExams_Examinations] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Examinations] ([ExaminationID])
GO
ALTER TABLE [dbo].[ChairitiesExams] CHECK CONSTRAINT [FK_ChairitiesExams_Examinations]
GO
ALTER TABLE [dbo].[Charities]  WITH CHECK ADD  CONSTRAINT [FK_Charities_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Charities] CHECK CONSTRAINT [FK_Charities_Accounts]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Articles] FOREIGN KEY([ArticleID])
REFERENCES [dbo].[Articles] ([ArticleID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Articles]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH CHECK ADD  CONSTRAINT [FK_ExaminationsPapers_Venues] FOREIGN KEY([VenueID])
REFERENCES [dbo].[Venues] ([VenueID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_Venues]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH CHECK ADD  CONSTRAINT [FK_ExamsPaper_Candidates] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidates] ([CandidateID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExamsPaper_Candidates]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH CHECK ADD  CONSTRAINT [FK_ExamsPaper_UniversityExamination] FOREIGN KEY([UniExamID])
REFERENCES [dbo].[UniversitiesExaminations] ([UniExamID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExamsPaper_UniversityExamination]
GO
ALTER TABLE [dbo].[Funds]  WITH CHECK ADD  CONSTRAINT [FK_Funds_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Funds] CHECK CONSTRAINT [FK_Funds_ChairitiesExams]
GO
ALTER TABLE [dbo].[Funds]  WITH CHECK ADD  CONSTRAINT [FK_Funds_Sponsores] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[Funds] CHECK CONSTRAINT [FK_Funds_Sponsores]
GO
ALTER TABLE [dbo].[JoinsIn]  WITH CHECK ADD  CONSTRAINT [FK_JoinIn_Candidates] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidates] ([CandidateID])
GO
ALTER TABLE [dbo].[JoinsIn] CHECK CONSTRAINT [FK_JoinIn_Candidates]
GO
ALTER TABLE [dbo].[JoinsIn]  WITH CHECK ADD  CONSTRAINT [FK_JoinIn_ChairitiesExams] FOREIGN KEY([CharitiesExaminationsID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[JoinsIn] CHECK CONSTRAINT [FK_JoinIn_ChairitiesExams]
GO
ALTER TABLE [dbo].[JoinsIn]  WITH CHECK ADD  CONSTRAINT [FK_JoinIn_SchedulesCar] FOREIGN KEY([ScheduleCarID])
REFERENCES [dbo].[SchedulesCars] ([ScheduleCarID])
GO
ALTER TABLE [dbo].[JoinsIn] CHECK CONSTRAINT [FK_JoinIn_SchedulesCar]
GO
ALTER TABLE [dbo].[JoinsIn]  WITH CHECK ADD  CONSTRAINT [FK_JoinIn_SchedulesLodge] FOREIGN KEY([ScheduleLodgeID])
REFERENCES [dbo].[SchedulesRooms] ([ScheduleLodgeID])
GO
ALTER TABLE [dbo].[JoinsIn] CHECK CONSTRAINT [FK_JoinIn_SchedulesLodge]
GO
ALTER TABLE [dbo].[JoinsIn]  WITH CHECK ADD  CONSTRAINT [FK_JoinIn_SchedulesVolunteer] FOREIGN KEY([ScheduleVolunteerID])
REFERENCES [dbo].[SchedulesVolunteers] ([ScheduleVolunteerId])
GO
ALTER TABLE [dbo].[JoinsIn] CHECK CONSTRAINT [FK_JoinIn_SchedulesVolunteer]
GO
ALTER TABLE [dbo].[Lodges]  WITH CHECK ADD  CONSTRAINT [FK_Lodges_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Lodges] CHECK CONSTRAINT [FK_Lodges_ChairitiesExams]
GO
ALTER TABLE [dbo].[Lodges]  WITH CHECK ADD  CONSTRAINT [FK_Lodges_Sponsors] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[Lodges] CHECK CONSTRAINT [FK_Lodges_Sponsors]
GO
ALTER TABLE [dbo].[LodgesSponsors]  WITH CHECK ADD  CONSTRAINT [FK_LodgesSponsores_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[LodgesSponsors] CHECK CONSTRAINT [FK_LodgesSponsores_ChairitiesExams]
GO
ALTER TABLE [dbo].[LodgesSponsors]  WITH CHECK ADD  CONSTRAINT [FK_LodgesSponsores_Lodges] FOREIGN KEY([LodgeID])
REFERENCES [dbo].[Lodges] ([LodgeID])
GO
ALTER TABLE [dbo].[LodgesSponsors] CHECK CONSTRAINT [FK_LodgesSponsores_Lodges]
GO
ALTER TABLE [dbo].[LodgesSponsors]  WITH CHECK ADD  CONSTRAINT [FK_LodgesSponsores_Sponsores] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[LodgesSponsors] CHECK CONSTRAINT [FK_LodgesSponsores_Sponsores]
GO
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Profiles_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_Accounts]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Accounts]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Articles] FOREIGN KEY([ArticleID])
REFERENCES [dbo].[Articles] ([ArticleID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Articles]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Lodges] FOREIGN KEY([LodgeID])
REFERENCES [dbo].[Lodges] ([LodgeID])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Lodges]
GO
ALTER TABLE [dbo].[SchedulesCars]  WITH CHECK ADD  CONSTRAINT [FK_SchedulesCar_Cars] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[SchedulesCars] CHECK CONSTRAINT [FK_SchedulesCar_Cars]
GO
ALTER TABLE [dbo].[SchedulesRooms]  WITH CHECK ADD  CONSTRAINT [FK_SchedulesLodges_Rooms] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[SchedulesRooms] CHECK CONSTRAINT [FK_SchedulesLodges_Rooms]
GO
ALTER TABLE [dbo].[SchedulesVolunteers]  WITH CHECK ADD  CONSTRAINT [FK_SchedulesVolunteer_Volunteers] FOREIGN KEY([VolunteerId])
REFERENCES [dbo].[Volunteers] ([VolunteerID])
GO
ALTER TABLE [dbo].[SchedulesVolunteers] CHECK CONSTRAINT [FK_SchedulesVolunteer_Volunteers]
GO
ALTER TABLE [dbo].[Sponsors]  WITH CHECK ADD  CONSTRAINT [FK_Sponsors_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Sponsors] CHECK CONSTRAINT [FK_Sponsors_Accounts]
GO
ALTER TABLE [dbo].[UniversitiesExaminations]  WITH CHECK ADD  CONSTRAINT [FK_UniversityExamination_Examinations] FOREIGN KEY([ExaminationID])
REFERENCES [dbo].[Examinations] ([ExaminationID])
GO
ALTER TABLE [dbo].[UniversitiesExaminations] CHECK CONSTRAINT [FK_UniversityExamination_Examinations]
GO
ALTER TABLE [dbo].[UniversitiesExaminations]  WITH CHECK ADD  CONSTRAINT [FK_UniversityExamination_University] FOREIGN KEY([UniversityID])
REFERENCES [dbo].[Universities] ([UniversityID])
GO
ALTER TABLE [dbo].[UniversitiesExaminations] CHECK CONSTRAINT [FK_UniversityExamination_University]
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD  CONSTRAINT [FK_Venues_UniversitiesExaminations] FOREIGN KEY([UniExamID])
REFERENCES [dbo].[UniversitiesExaminations] ([UniExamID])
GO
ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_UniversitiesExaminations]
GO
ALTER TABLE [dbo].[Volunteers]  WITH CHECK ADD  CONSTRAINT [FK_Volunteers_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Volunteers] CHECK CONSTRAINT [FK_Volunteers_Accounts]
GO
USE [master]
GO
ALTER DATABASE [TSMT] SET  READ_WRITE 
GO
