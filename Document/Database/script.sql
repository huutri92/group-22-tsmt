USE [master]
GO
/****** Object:  Database [TSMT]    Script Date: 4/7/2014 12:07:22 PM ******/
CREATE DATABASE [TSMT] ON  PRIMARY 
( NAME = N'TSMT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TSMT.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TSMT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TSMT_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[Accounts]    Script Date: 4/7/2014 12:07:23 PM ******/
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
	[Code] [nvarchar](10) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Articles]    Script Date: 4/7/2014 12:07:23 PM ******/
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
	[AvatarImage] [nvarchar](max) NULL,
	[IsAprroved] [bit] NOT NULL,
	[Summary] [nvarchar](max) NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticlesTags]    Script Date: 4/7/2014 12:07:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Candidates]    Script Date: 4/7/2014 12:07:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cars]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[CharityExamID] [int] NULL,
	[SponsorID] [int] NULL,
	[NumberPlate] [nvarchar](20) NULL,
	[TotalSlots] [int] NOT NULL,
	[AvailableSlots] [int] NOT NULL,
	[DriverName] [nvarchar](50) NULL,
	[DriverPhone] [nvarchar](50) NULL,
	[IsApproved] [bit] NOT NULL,
	[CharityID] [int] NULL,
	[LodgeID] [int] NULL,
	[VenueID] [int] NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/7/2014 12:07:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChairitiesExams]    Script Date: 4/7/2014 12:07:23 PM ******/
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
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChairitiesExams_1] PRIMARY KEY CLUSTERED 
(
	[CharityExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Charities]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charities](
	[CharityID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[FullDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_Charities] PRIMARY KEY CLUSTERED 
(
	[CharityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 4/7/2014 12:07:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Districts]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[DistrictID] [int] NOT NULL,
	[ProvinceID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Examinations]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examinations](
	[ExaminationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[IsRemovable] [bit] NOT NULL,
 CONSTRAINT [PK_Examinations] PRIMARY KEY CLUSTERED 
(
	[ExaminationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExaminationsPapers]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExaminationsPapers](
	[ExamPaperID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[UniExamID] [int] NOT NULL,
	[VenueID] [int] NOT NULL,
	[CharityExamID] [int] NULL,
	[LodgeRegisteredID] [int] NULL,
	[GroupID] [int] NULL,
	[RoomID] [int] NULL,
	[CarID] [int] NULL,
	[IsApproved] [bit] NOT NULL,
	[VolunteerID] [int] NULL,
 CONSTRAINT [PK_ExamsPaper] PRIMARY KEY CLUSTERED 
(
	[ExamPaperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Funds]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funds](
	[FundID] [int] IDENTITY(1,1) NOT NULL,
	[SponsorID] [int] NOT NULL,
	[CharityExamID] [int] NULL,
	[FundSponsored] [float] NOT NULL,
	[IsOnlineFunding] [bit] NOT NULL,
	[IsApproved] [bit] NOT NULL,
 CONSTRAINT [PK_Funds] PRIMARY KEY CLUSTERED 
(
	[FundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupRequest]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupRequest](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ActiveID] [int] NOT NULL,
	[ReceiveID] [int] NOT NULL,
 CONSTRAINT [PK_GroupRequest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[OwnerID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lodges]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lodges](
	[LodgeID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Longitude] [nvarchar](20) NOT NULL,
	[Latitude] [nvarchar](20) NOT NULL,
	[SponsorID] [int] NULL,
	[CharityExamID] [int] NULL,
	[TotalRooms] [int] NOT NULL,
	[TotalSlots] [int] NOT NULL,
	[AvailableSlots] [int] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[CharityID] [int] NULL,
	[TotalSlotsInUsed] [int] NOT NULL,
 CONSTRAINT [PK_Lodges] PRIMARY KEY CLUSTERED 
(
	[LodgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 4/7/2014 12:07:23 PM ******/
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
	[Gender] [bit] NOT NULL,
	[DateOfBirth] [date] NULL,
	[PhoneNumber] [varchar](13) NULL,
	[Address] [nvarchar](100) NULL,
	[DistrictID] [int] NULL,
	[ImagePath] [nvarchar](200) NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[ProvinceID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED 
(
	[ProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 4/7/2014 12:07:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 4/7/2014 12:07:23 PM ******/
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
	[Gender] [bit] NULL,
	[CharityExamID] [int] NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ScheduleExams]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleExams](
	[ScheduleExamID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NOT NULL,
	[Day] [datetime] NOT NULL,
	[BeginHour] [datetime] NOT NULL,
	[EndHour] [datetime] NOT NULL,
 CONSTRAINT [PK_DetailsScheduleExams] PRIMARY KEY CLUSTERED 
(
	[ScheduleExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchedulesCars]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchedulesCars](
	[ScheduleCarID] [int] IDENTITY(1,1) NOT NULL,
	[CarID] [int] NOT NULL,
	[Day] [datetime] NOT NULL,
	[ArriveTime] [datetime] NOT NULL,
	[PickUpTime] [datetime] NOT NULL,
	[WayGo] [nvarchar](max) NULL,
	[WayBack] [nvarchar](max) NULL,
 CONSTRAINT [PK_DetailScheduleCars] PRIMARY KEY CLUSTERED 
(
	[ScheduleCarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchedulesVolunteers]    Script Date: 4/7/2014 12:07:23 PM ******/
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
	[ExamPaperID] [int] NULL,
	[StartEndPoint] [nvarchar](50) NOT NULL,
	[WayPoint] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DetailScheduleVolunteers] PRIMARY KEY CLUSTERED 
(
	[ScheduleVolunteerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sponsors]    Script Date: 4/7/2014 12:07:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Universities]    Script Date: 4/7/2014 12:07:23 PM ******/
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
	[IsRemovable] [bit] NOT NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[UniversityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UniversitiesExaminations]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniversitiesExaminations](
	[UniExamID] [int] IDENTITY(1,1) NOT NULL,
	[UniversityID] [int] NOT NULL,
	[ExaminationID] [int] NOT NULL,
	[IsRemovable] [bit] NOT NULL,
 CONSTRAINT [PK_UniversityExamination] PRIMARY KEY CLUSTERED 
(
	[UniExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venues]    Script Date: 4/7/2014 12:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venues](
	[VenueID] [int] IDENTITY(1,1) NOT NULL,
	[UniExamID] [int] NOT NULL,
	[Longitude] [nvarchar](20) NOT NULL,
	[Latitude] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[IsRemovable] [bit] NOT NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[VenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Volunteers]    Script Date: 4/7/2014 12:07:23 PM ******/
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
	[IsApproved] [bit] NOT NULL,
 CONSTRAINT [PK_Volunteers] PRIMARY KEY CLUSTERED 
(
	[VolunteerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (1, N'sponsor01@gmail.com', N'123', 1, 8, 3, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (2, N'charity01@gmail.com', N'123', 1, 9, 2, NULL)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved], [CharityID], [LodgeID], [VenueID]) VALUES (1, 1, 1, N'56tx-789', 23, 12, N'tuan', N'01684010301', 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Cars] OFF
SET IDENTITY_INSERT [dbo].[ChairitiesExams] ON 

INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles], [Description]) VALUES (1, 1, 1, N'Tai Trợ 1', 0, 0, 0, 0, NULL)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles], [Description]) VALUES (2, 2, 1, N'Tài Trợ 2', 0, 0, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[ChairitiesExams] OFF
SET IDENTITY_INSERT [dbo].[Charities] ON 

INSERT [dbo].[Charities] ([CharityID], [AccountID], [PhoneNumber], [FullDescription]) VALUES (1, 2, N'01684010301', NULL)
SET IDENTITY_INSERT [dbo].[Charities] OFF
SET IDENTITY_INSERT [dbo].[Examinations] ON 

INSERT [dbo].[Examinations] ([ExaminationID], [Name], [BeginDate], [EndDate], [IsRemovable]) VALUES (1, N'Khối A', CAST(0x0000A2A600000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), 0)
INSERT [dbo].[Examinations] ([ExaminationID], [Name], [BeginDate], [EndDate], [IsRemovable]) VALUES (2, N'Khối B', CAST(0x0000A2A600000000 AS DateTime), CAST(0x0000A2C500000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Examinations] OFF
SET IDENTITY_INSERT [dbo].[Funds] ON 

INSERT [dbo].[Funds] ([FundID], [SponsorID], [CharityExamID], [FundSponsored], [IsOnlineFunding], [IsApproved]) VALUES (1, 1, 1, 342342432, 1, 0)
SET IDENTITY_INSERT [dbo].[Funds] OFF
SET IDENTITY_INSERT [dbo].[Lodges] ON 

INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved], [CharityID], [TotalSlotsInUsed]) VALUES (2, N'34 Chợ Bến Thành, Phường Bến Thành, Quận 1', N'106.69799169999999', N'10.772139', 1, 1, 2, 8, 5, 1, 1, 5)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved], [CharityID], [TotalSlotsInUsed]) VALUES (3, N'3 Lê Quý Đôn, Phường 6, Quận 3', N'106.69348949999994', N'10.7788478', 1, NULL, 0, 0, 0, 0, NULL, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved], [CharityID], [TotalSlotsInUsed]) VALUES (4, N'136 Nam Kỳ Khởi Nghĩa, Phường Bến Nghé, Quận 1', N'106.69701239999995', N'10.7776364', 1, NULL, 1, 6, 6, 0, NULL, 6)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved], [CharityID], [TotalSlotsInUsed]) VALUES (5, N'20 Nguyễn Cư Trinh, Phường Phạm Ngũ Lão, Quận 1', N'106.69201969999995', N'10.7646507', 1, NULL, 1, 3, 3, 0, NULL, 3)
SET IDENTITY_INSERT [dbo].[Lodges] OFF
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (8, 1, N'Tuan', N'Nguyen', N'Dinh', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (9, 2, N'Quang', N'LE', NULL, 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Profiles] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Candidate')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Charity')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'Sponsor')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (1, 2, 3, 3, N'123', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (2, 2, 5, 5, N'2', NULL, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (3, 5, 3, 3, N'345', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (4, 4, 6, 6, N'5', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Rooms] OFF
SET IDENTITY_INSERT [dbo].[Sponsors] ON 

INSERT [dbo].[Sponsors] ([SponsorID], [AccountID]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[Sponsors] OFF
/****** Object:  Index [IX_Candidates]    Script Date: 4/7/2014 12:07:23 PM ******/
ALTER TABLE [dbo].[Candidates] ADD  CONSTRAINT [IX_Candidates] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Charities]    Script Date: 4/7/2014 12:07:23 PM ******/
ALTER TABLE [dbo].[Charities] ADD  CONSTRAINT [IX_Charities] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sponsors]    Script Date: 4/7/2014 12:07:23 PM ******/
ALTER TABLE [dbo].[Sponsors] ADD  CONSTRAINT [IX_Sponsors] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Volunteers]    Script Date: 4/7/2014 12:07:23 PM ******/
ALTER TABLE [dbo].[Volunteers] ADD  CONSTRAINT [IX_Volunteers] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accounts]  WITH NOCHECK ADD  CONSTRAINT [FK_Accounts_Profiles] FOREIGN KEY([ProfileID])
REFERENCES [dbo].[Profiles] ([ProfileID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Profiles]
GO
ALTER TABLE [dbo].[Accounts]  WITH NOCHECK ADD  CONSTRAINT [FK_Accounts_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles]
GO
ALTER TABLE [dbo].[Articles]  WITH NOCHECK ADD  CONSTRAINT [FK_Article_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Article_Category]
GO
ALTER TABLE [dbo].[Articles]  WITH NOCHECK ADD  CONSTRAINT [FK_Articles_Accounts] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Articles_Accounts]
GO
ALTER TABLE [dbo].[ArticlesTags]  WITH NOCHECK ADD  CONSTRAINT [FK_ArticlesTags_Articles] FOREIGN KEY([ArticleID])
REFERENCES [dbo].[Articles] ([ArticleID])
GO
ALTER TABLE [dbo].[ArticlesTags] CHECK CONSTRAINT [FK_ArticlesTags_Articles]
GO
ALTER TABLE [dbo].[Candidates]  WITH NOCHECK ADD  CONSTRAINT [FK_Candidates_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Candidates] CHECK CONSTRAINT [FK_Candidates_Accounts]
GO
ALTER TABLE [dbo].[Cars]  WITH NOCHECK ADD  CONSTRAINT [FK_Cars_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_ChairitiesExams]
GO
ALTER TABLE [dbo].[Cars]  WITH NOCHECK ADD  CONSTRAINT [FK_Cars_Lodges] FOREIGN KEY([LodgeID])
REFERENCES [dbo].[Lodges] ([LodgeID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Lodges]
GO
ALTER TABLE [dbo].[Cars]  WITH NOCHECK ADD  CONSTRAINT [FK_Cars_Sponsors] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Sponsors]
GO
ALTER TABLE [dbo].[Cars]  WITH NOCHECK ADD  CONSTRAINT [FK_Cars_Venues] FOREIGN KEY([VenueID])
REFERENCES [dbo].[Venues] ([VenueID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Venues]
GO
ALTER TABLE [dbo].[ChairitiesExams]  WITH NOCHECK ADD  CONSTRAINT [FK_ChairitiesExams_Charities] FOREIGN KEY([CharityID])
REFERENCES [dbo].[Charities] ([CharityID])
GO
ALTER TABLE [dbo].[ChairitiesExams] CHECK CONSTRAINT [FK_ChairitiesExams_Charities]
GO
ALTER TABLE [dbo].[ChairitiesExams]  WITH NOCHECK ADD  CONSTRAINT [FK_ChairitiesExams_Examinations] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Examinations] ([ExaminationID])
GO
ALTER TABLE [dbo].[ChairitiesExams] CHECK CONSTRAINT [FK_ChairitiesExams_Examinations]
GO
ALTER TABLE [dbo].[Charities]  WITH NOCHECK ADD  CONSTRAINT [FK_Charities_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Charities] CHECK CONSTRAINT [FK_Charities_Accounts]
GO
ALTER TABLE [dbo].[Comments]  WITH NOCHECK ADD  CONSTRAINT [FK_Comments_Articles] FOREIGN KEY([ArticleID])
REFERENCES [dbo].[Articles] ([ArticleID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Articles]
GO
ALTER TABLE [dbo].[Comments]  WITH NOCHECK ADD  CONSTRAINT [FK_Comments_Comments] FOREIGN KEY([ReplyFor])
REFERENCES [dbo].[Comments] ([CommentID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Comments]
GO
ALTER TABLE [dbo].[Districts]  WITH NOCHECK ADD  CONSTRAINT [FK_Districts_Provinces] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Provinces] ([ProvinceID])
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_Districts_Provinces]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH NOCHECK ADD  CONSTRAINT [FK_ExaminationsPapers_Cars] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_Cars]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH NOCHECK ADD  CONSTRAINT [FK_ExaminationsPapers_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_ChairitiesExams]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH NOCHECK ADD  CONSTRAINT [FK_ExaminationsPapers_Groups] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Groups] ([GroupID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_Groups]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH NOCHECK ADD  CONSTRAINT [FK_ExaminationsPapers_Lodges] FOREIGN KEY([LodgeRegisteredID])
REFERENCES [dbo].[Lodges] ([LodgeID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_Lodges]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH NOCHECK ADD  CONSTRAINT [FK_ExaminationsPapers_Rooms] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_Rooms]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH NOCHECK ADD  CONSTRAINT [FK_ExaminationsPapers_Venues] FOREIGN KEY([VenueID])
REFERENCES [dbo].[Venues] ([VenueID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_Venues]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamsPaper_Candidates] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidates] ([CandidateID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExamsPaper_Candidates]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamsPaper_UniversityExamination] FOREIGN KEY([UniExamID])
REFERENCES [dbo].[UniversitiesExaminations] ([UniExamID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExamsPaper_UniversityExamination]
GO
ALTER TABLE [dbo].[Funds]  WITH NOCHECK ADD  CONSTRAINT [FK_Funds_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Funds] CHECK CONSTRAINT [FK_Funds_ChairitiesExams]
GO
ALTER TABLE [dbo].[Funds]  WITH NOCHECK ADD  CONSTRAINT [FK_Funds_Sponsores] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[Funds] CHECK CONSTRAINT [FK_Funds_Sponsores]
GO
ALTER TABLE [dbo].[GroupRequest]  WITH NOCHECK ADD  CONSTRAINT [FK_GroupRequest_ExaminationsPapers] FOREIGN KEY([ActiveID])
REFERENCES [dbo].[ExaminationsPapers] ([ExamPaperID])
GO
ALTER TABLE [dbo].[GroupRequest] CHECK CONSTRAINT [FK_GroupRequest_ExaminationsPapers]
GO
ALTER TABLE [dbo].[GroupRequest]  WITH NOCHECK ADD  CONSTRAINT [FK_GroupRequest_ExaminationsPapers1] FOREIGN KEY([ReceiveID])
REFERENCES [dbo].[ExaminationsPapers] ([ExamPaperID])
GO
ALTER TABLE [dbo].[GroupRequest] CHECK CONSTRAINT [FK_GroupRequest_ExaminationsPapers1]
GO
ALTER TABLE [dbo].[Groups]  WITH NOCHECK ADD  CONSTRAINT [FK_Groups_ExaminationsPapers] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[ExaminationsPapers] ([ExamPaperID])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_ExaminationsPapers]
GO
ALTER TABLE [dbo].[Lodges]  WITH NOCHECK ADD  CONSTRAINT [FK_Lodges_ChairitiesExams1] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Lodges] CHECK CONSTRAINT [FK_Lodges_ChairitiesExams1]
GO
ALTER TABLE [dbo].[Lodges]  WITH NOCHECK ADD  CONSTRAINT [FK_Lodges_Sponsors] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[Lodges] CHECK CONSTRAINT [FK_Lodges_Sponsors]
GO
ALTER TABLE [dbo].[Profiles]  WITH NOCHECK ADD  CONSTRAINT [FK_Profiles_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_Accounts]
GO
ALTER TABLE [dbo].[Profiles]  WITH NOCHECK ADD  CONSTRAINT [FK_Profiles_Districts] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[Districts] ([DistrictID])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_Districts]
GO
ALTER TABLE [dbo].[Rooms]  WITH NOCHECK ADD  CONSTRAINT [FK_Rooms_Lodges] FOREIGN KEY([LodgeID])
REFERENCES [dbo].[Lodges] ([LodgeID])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Lodges]
GO
ALTER TABLE [dbo].[ScheduleExams]  WITH NOCHECK ADD  CONSTRAINT [FK_ScheduleExams_Examinations] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Examinations] ([ExaminationID])
GO
ALTER TABLE [dbo].[ScheduleExams] CHECK CONSTRAINT [FK_ScheduleExams_Examinations]
GO
ALTER TABLE [dbo].[SchedulesCars]  WITH NOCHECK ADD  CONSTRAINT [FK_SchedulesCars_Cars] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[SchedulesCars] CHECK CONSTRAINT [FK_SchedulesCars_Cars]
GO
ALTER TABLE [dbo].[SchedulesVolunteers]  WITH NOCHECK ADD  CONSTRAINT [FK_DetailScheduleVolunteers_Volunteers] FOREIGN KEY([VolunteerID])
REFERENCES [dbo].[Volunteers] ([VolunteerID])
GO
ALTER TABLE [dbo].[SchedulesVolunteers] CHECK CONSTRAINT [FK_DetailScheduleVolunteers_Volunteers]
GO
ALTER TABLE [dbo].[SchedulesVolunteers]  WITH NOCHECK ADD  CONSTRAINT [FK_SchedulesVolunteers_ExaminationsPapers] FOREIGN KEY([ExamPaperID])
REFERENCES [dbo].[ExaminationsPapers] ([ExamPaperID])
GO
ALTER TABLE [dbo].[SchedulesVolunteers] CHECK CONSTRAINT [FK_SchedulesVolunteers_ExaminationsPapers]
GO
ALTER TABLE [dbo].[Sponsors]  WITH NOCHECK ADD  CONSTRAINT [FK_Sponsors_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Sponsors] CHECK CONSTRAINT [FK_Sponsors_Accounts]
GO
ALTER TABLE [dbo].[UniversitiesExaminations]  WITH NOCHECK ADD  CONSTRAINT [FK_UniversityExamination_Examinations] FOREIGN KEY([ExaminationID])
REFERENCES [dbo].[Examinations] ([ExaminationID])
GO
ALTER TABLE [dbo].[UniversitiesExaminations] CHECK CONSTRAINT [FK_UniversityExamination_Examinations]
GO
ALTER TABLE [dbo].[UniversitiesExaminations]  WITH NOCHECK ADD  CONSTRAINT [FK_UniversityExamination_University] FOREIGN KEY([UniversityID])
REFERENCES [dbo].[Universities] ([UniversityID])
GO
ALTER TABLE [dbo].[UniversitiesExaminations] CHECK CONSTRAINT [FK_UniversityExamination_University]
GO
ALTER TABLE [dbo].[Venues]  WITH NOCHECK ADD  CONSTRAINT [FK_Venues_UniversitiesExaminations] FOREIGN KEY([UniExamID])
REFERENCES [dbo].[UniversitiesExaminations] ([UniExamID])
GO
ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_UniversitiesExaminations]
GO
ALTER TABLE [dbo].[Volunteers]  WITH NOCHECK ADD  CONSTRAINT [FK_Volunteers_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Volunteers] CHECK CONSTRAINT [FK_Volunteers_Accounts]
GO
ALTER TABLE [dbo].[Volunteers]  WITH NOCHECK ADD  CONSTRAINT [FK_Volunteers_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Volunteers] CHECK CONSTRAINT [FK_Volunteers_ChairitiesExams]
GO
USE [master]
GO
ALTER DATABASE [TSMT] SET  READ_WRITE 
GO
