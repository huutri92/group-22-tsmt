USE [master]
GO
/****** Object:  Database [TSMT]    Script Date: 3/24/2014 10:17:13 AM ******/
CREATE DATABASE [TSMT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TSMT', FILENAME = N'Z:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TSMT.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TSMT_log', FILENAME = N'Z:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TSMT_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
ALTER DATABASE [TSMT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TSMT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TSMT', N'ON'
GO
USE [TSMT]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 3/24/2014 10:17:13 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Articles]    Script Date: 3/24/2014 10:17:13 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticlesTags]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[Candidates]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[Cars]    Script Date: 3/24/2014 10:17:13 AM ******/
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
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[ChairitiesExams]    Script Date: 3/24/2014 10:17:13 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Charities]    Script Date: 3/24/2014 10:17:13 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[Districts]    Script Date: 3/24/2014 10:17:13 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Examinations]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[ExaminationsPapers]    Script Date: 3/24/2014 10:17:13 AM ******/
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
	[GroupID] [int] NULL,
	[RoomID] [int] NULL,
	[CarID] [int] NULL,
	[IsApproved] [bit] NOT NULL,
 CONSTRAINT [PK_ExamsPaper] PRIMARY KEY CLUSTERED 
(
	[ExamPaperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Funds]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[Groups]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[Lodges]    Script Date: 3/24/2014 10:17:13 AM ******/
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
 CONSTRAINT [PK_Lodges] PRIMARY KEY CLUSTERED 
(
	[LodgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 3/24/2014 10:17:13 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 3/24/2014 10:17:13 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[Rooms]    Script Date: 3/24/2014 10:17:13 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ScheduleExams]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[SchedulesCars]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[SchedulesVolunteers]    Script Date: 3/24/2014 10:17:13 AM ******/
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
 CONSTRAINT [PK_DetailScheduleVolunteers] PRIMARY KEY CLUSTERED 
(
	[ScheduleVolunteerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sponsors]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[Universities]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[UniversitiesExaminations]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[Venues]    Script Date: 3/24/2014 10:17:13 AM ******/
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
/****** Object:  Table [dbo].[Volunteers]    Script Date: 3/24/2014 10:17:13 AM ******/
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

INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (16, N'charity01@gmail.com', N'123', 1, 10, 2)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (18, N'sponsor01@gmail.com', N'123', 1, 12, 3)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (19, N'volunteer01@gmail.com', N'123', 1, 13, 4)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (20, N'candidate01@gmail.com', N'123', 1, 14, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (21, N'charity02@gmail.com', N'123', 1, 15, 2)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (22, N'sponsor02@gmail.com', N'123', 1, 16, 3)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (23, N'volunteer02@gmail.com', N'123', 1, 17, 4)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (24, N'candidate02@gmail.com', N'123', 1, 18, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (28, N'admin@gmail.com', N'123', 1, 22, 5)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (29, N'candidate03@gmail.com', N'123', 1, 23, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (30, N'candidate04@gmail.com', N'123', 1, 24, 1)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET IDENTITY_INSERT [dbo].[Candidates] ON 

INSERT [dbo].[Candidates] ([CandidateID], [AccountID], [HighSchoolName]) VALUES (3, 20, N'Santos')
INSERT [dbo].[Candidates] ([CandidateID], [AccountID], [HighSchoolName]) VALUES (4, 24, N'Cố vấn An ninh Quốc gia')
INSERT [dbo].[Candidates] ([CandidateID], [AccountID], [HighSchoolName]) VALUES (5, 29, N'sdds')
INSERT [dbo].[Candidates] ([CandidateID], [AccountID], [HighSchoolName]) VALUES (6, 30, N'bfndg')
SET IDENTITY_INSERT [dbo].[Candidates] OFF
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved]) VALUES (31, 26, NULL, N'123', 123, 123, N'123', N'123', 0)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved]) VALUES (32, 26, NULL, N'6633', 23, 23, N'ksada', N'098574633', 0)
SET IDENTITY_INSERT [dbo].[Cars] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'alo 123')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Thông Thin Ăn Uống')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Tips Cần Biết')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Thông Tin Trường')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (7, N'weqwewqrqr')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[ChairitiesExams] ON 

INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (26, 13, 4, N'Hội tình nguyện ABC', 2, 2, 146, 146)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (27, 14, 4, N'Rocket', 0, 0, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (28, 13, 6, N'Càfé Tiamo', 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[ChairitiesExams] OFF
SET IDENTITY_INSERT [dbo].[Charities] ON 

INSERT [dbo].[Charities] ([CharityID], [AccountID]) VALUES (4, 16)
INSERT [dbo].[Charities] ([CharityID], [AccountID]) VALUES (6, 21)
SET IDENTITY_INSERT [dbo].[Charities] OFF
SET IDENTITY_INSERT [dbo].[Districts] ON 

INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (1, 1, N'Quận 1')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (2, 1, N'Quận 2')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (3, 1, N'Quận 3')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (4, 2, N'Quận Hoàn Kiếm')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (5, 2, N'Quận Ba Đình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (6, 2, N'Quận Thanh Xuân')
SET IDENTITY_INSERT [dbo].[Districts] OFF
SET IDENTITY_INSERT [dbo].[Examinations] ON 

INSERT [dbo].[Examinations] ([ExaminationID], [Name], [BeginDate], [EndDate], [IsRemovable]) VALUES (13, N'Khối A (2014)', CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2ED00000000 AS DateTime), 0)
INSERT [dbo].[Examinations] ([ExaminationID], [Name], [BeginDate], [EndDate], [IsRemovable]) VALUES (14, N'Khối C (2014)', CAST(0x0000A2F100000000 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Examinations] OFF
SET IDENTITY_INSERT [dbo].[ExaminationsPapers] ON 

INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [GroupID], [RoomID], [CarID], [IsApproved]) VALUES (12, 3, 9, 27, 26, 1, NULL, NULL, 0)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [GroupID], [RoomID], [CarID], [IsApproved]) VALUES (14, 4, 9, 27, 26, 1, NULL, NULL, 0)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [GroupID], [RoomID], [CarID], [IsApproved]) VALUES (15, 5, 9, 27, 26, NULL, NULL, NULL, 0)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [GroupID], [RoomID], [CarID], [IsApproved]) VALUES (16, 6, 9, 33, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ExaminationsPapers] OFF
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([GroupID], [OwnerID], [Quantity]) VALUES (1, 12, 2)
SET IDENTITY_INSERT [dbo].[Groups] OFF
SET IDENTITY_INSERT [dbo].[Lodges] ON 

INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (24, N'100 Võ Thị Sáu, Phường Tân Định, Quận 1', N'106.69233080000004', N'10.7883122', 4, NULL, 1, 1, 1, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (29, N'159 Điện Biên Phủ, Phường Đa Kao, Quận 1', N'106.69518440000002', N'10.7879718', 4, 26, 0, 0, 0, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (30, N'11-12 Phạm Ngọc Thạch, Phường 6, Quận 3', N'106.69533720000004', N'10.7831375', 4, NULL, 0, 0, 0, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (31, N'15 Ngô Thời Nhiệm, Phường 6, Quận 3', N'106.69149140000002', N'10.7821749', 4, 28, 0, 0, 0, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (32, N'118 Nguyễn Đình Chiểu, Phường Đa Kao, Quận 1', N'106.69640240000001', N'10.7852611', 4, 28, 0, 0, 0, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (33, N'59 Nguyen Hong Dao', N'', N'', 4, 27, 0, 0, 0, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (34, N'13 Nguyễn Hồng Đào, Quận Tân Bình', N'106.64350000000002', N'10.7971924', NULL, 27, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Lodges] OFF
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [IsFemale], [DateOfBirth], [PhoneNumber], [Address], [ImagePath]) VALUES (10, 16, N'Gates', N'Bill', N'William Henry', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [IsFemale], [DateOfBirth], [PhoneNumber], [Address], [ImagePath]) VALUES (12, 18, N'Beckham', N'David', N'Robert Joseph', 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [IsFemale], [DateOfBirth], [PhoneNumber], [Address], [ImagePath]) VALUES (13, 19, N'Perry', N'Katy', N'Elizabeth', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [IsFemale], [DateOfBirth], [PhoneNumber], [Address], [ImagePath]) VALUES (14, 20, N'Júnior', N'Neymar', N'Silva Santos', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [IsFemale], [DateOfBirth], [PhoneNumber], [Address], [ImagePath]) VALUES (15, 21, N'Abe', N'Shinzo', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [IsFemale], [DateOfBirth], [PhoneNumber], [Address], [ImagePath]) VALUES (16, 22, N'Merkel', N'Angela', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [IsFemale], [DateOfBirth], [PhoneNumber], [Address], [ImagePath]) VALUES (17, 23, N'Cameron', N'David', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [IsFemale], [DateOfBirth], [PhoneNumber], [Address], [ImagePath]) VALUES (18, 24, N'Rice', N'Condoleeza', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [IsFemale], [DateOfBirth], [PhoneNumber], [Address], [ImagePath]) VALUES (22, 28, N'khoa', N'nguyen duy', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [IsFemale], [DateOfBirth], [PhoneNumber], [Address], [ImagePath]) VALUES (23, 29, N'Neville', N'Phil', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [IsFemale], [DateOfBirth], [PhoneNumber], [Address], [ImagePath]) VALUES (24, 30, N'Davidson', N'Harley', NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Profiles] OFF
SET IDENTITY_INSERT [dbo].[Provinces] ON 

INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (1, N'Hồ Chí Minh')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (2, N'Hà Nội')
SET IDENTITY_INSERT [dbo].[Provinces] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Candidate')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Charity')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'Sponsor')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (4, N'Volunteer')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (5, N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName]) VALUES (45, 24, 1, 1, N'111')
SET IDENTITY_INSERT [dbo].[Rooms] OFF
SET IDENTITY_INSERT [dbo].[ScheduleExams] ON 

INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginHour], [EndHour]) VALUES (81, 13, CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2EB00735B40 AS DateTime), CAST(0x0000A2EB00B54640 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginHour], [EndHour]) VALUES (82, 13, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2EC00735B40 AS DateTime), CAST(0x0000A2EC0107AC00 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginHour], [EndHour]) VALUES (83, 13, CAST(0x0000A2ED00000000 AS DateTime), CAST(0x0000A2ED00735B40 AS DateTime), CAST(0x0000A2ED0107AC00 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginHour], [EndHour]) VALUES (84, 14, CAST(0x0000A2F100000000 AS DateTime), CAST(0x0000A2F100735B40 AS DateTime), CAST(0x0000A2F10107AC00 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginHour], [EndHour]) VALUES (85, 14, CAST(0x0000A2F200000000 AS DateTime), CAST(0x0000A2F200735B40 AS DateTime), CAST(0x0000A2F20107AC00 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginHour], [EndHour]) VALUES (86, 14, CAST(0x0000A2F300000000 AS DateTime), CAST(0x0000A2F300735B40 AS DateTime), CAST(0x0000A2F30107AC00 AS DateTime))
SET IDENTITY_INSERT [dbo].[ScheduleExams] OFF
SET IDENTITY_INSERT [dbo].[SchedulesCars] ON 

INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (1, 31, CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2EB0062E080 AS DateTime), CAST(0x0000A2EB00AD08E0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (2, 31, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2EC0062E080 AS DateTime), CAST(0x0000A2EC00FF6EA0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (3, 31, CAST(0x0000A2ED00000000 AS DateTime), CAST(0x0000A2ED0062E080 AS DateTime), CAST(0x0000A2ED00FF6EA0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (4, 32, CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2EB0062E080 AS DateTime), CAST(0x0000A2EB00AD08E0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (5, 32, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2EC0062E080 AS DateTime), CAST(0x0000A2EC00FF6EA0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (6, 32, CAST(0x0000A2ED00000000 AS DateTime), CAST(0x0000A2ED0062E080 AS DateTime), CAST(0x0000A2ED00FF6EA0 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[SchedulesCars] OFF
SET IDENTITY_INSERT [dbo].[Sponsors] ON 

INSERT [dbo].[Sponsors] ([SponsorID], [AccountID]) VALUES (4, 18)
INSERT [dbo].[Sponsors] ([SponsorID], [AccountID]) VALUES (5, 22)
SET IDENTITY_INSERT [dbo].[Sponsors] OFF
SET IDENTITY_INSERT [dbo].[Universities] ON 

INSERT [dbo].[Universities] ([UniversityID], [Name], [Address], [UniversityCode], [Website], [Phone], [IsRemovable]) VALUES (10, N'Đại học FPT', N'100 Tô Ký, Quận 12', N'FU', N'www.fpt.edu.vn', 47538457, 0)
INSERT [dbo].[Universities] ([UniversityID], [Name], [Address], [UniversityCode], [Website], [Phone], [IsRemovable]) VALUES (11, N'RMIT', N'999 Nguyễn Văn Linh, Quận 7', N'RMIT', N'www.rmit.vn', 74753, 0)
SET IDENTITY_INSERT [dbo].[Universities] OFF
SET IDENTITY_INSERT [dbo].[UniversitiesExaminations] ON 

INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID], [IsRemovable]) VALUES (9, 10, 13, 0)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID], [IsRemovable]) VALUES (10, 11, 14, 1)
SET IDENTITY_INSERT [dbo].[UniversitiesExaminations] OFF
SET IDENTITY_INSERT [dbo].[Venues] ON 

INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Longitude], [Latitude], [Address], [IsRemovable]) VALUES (27, 9, N'106.69713350000006', N'10.7907737', N'120-125 Đinh Tiên Hoàng, Phường Đa Kao, Quận 1', 1)
INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Longitude], [Latitude], [Address], [IsRemovable]) VALUES (31, 9, N'106.69812969999998', N'10.7860673', N'29 Mạc Đĩnh Chi, Phường Đa Kao, Quận 1', 1)
INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Longitude], [Latitude], [Address], [IsRemovable]) VALUES (33, 9, N'106.69004560000008', N'10.7942299', N'55 Trần Khánh Dư, Phường Tân Định, Quận 1', 1)
INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Longitude], [Latitude], [Address], [IsRemovable]) VALUES (34, 9, N'106.69045860000006', N'10.7816408', N'25 Lê Quý Đôn, Phường 7, Quận 3', 1)
SET IDENTITY_INSERT [dbo].[Venues] OFF
SET IDENTITY_INSERT [dbo].[Volunteers] ON 

INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID], [CharityExamID], [JobName], [Description], [IsApproved]) VALUES (4, 19, NULL, N'Singer', N'Nothing to share', 0)
INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID], [CharityExamID], [JobName], [Description], [IsApproved]) VALUES (5, 23, NULL, N'Thủ tướng Anh', N'Đại học Oxford', 0)
SET IDENTITY_INSERT [dbo].[Volunteers] OFF
/****** Object:  Index [IX_Candidates]    Script Date: 3/24/2014 10:17:13 AM ******/
ALTER TABLE [dbo].[Candidates] ADD  CONSTRAINT [IX_Candidates] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Charities]    Script Date: 3/24/2014 10:17:13 AM ******/
ALTER TABLE [dbo].[Charities] ADD  CONSTRAINT [IX_Charities] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sponsors]    Script Date: 3/24/2014 10:17:13 AM ******/
ALTER TABLE [dbo].[Sponsors] ADD  CONSTRAINT [IX_Sponsors] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Volunteers]    Script Date: 3/24/2014 10:17:13 AM ******/
ALTER TABLE [dbo].[Volunteers] ADD  CONSTRAINT [IX_Volunteers] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Profiles] FOREIGN KEY([ProfileID])
REFERENCES [dbo].[Profiles] ([ProfileID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Profiles]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles]
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
ALTER TABLE [dbo].[ArticlesTags]  WITH CHECK ADD  CONSTRAINT [FK_ArticlesTags_Articles] FOREIGN KEY([ArticleID])
REFERENCES [dbo].[Articles] ([ArticleID])
GO
ALTER TABLE [dbo].[ArticlesTags] CHECK CONSTRAINT [FK_ArticlesTags_Articles]
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
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comments] FOREIGN KEY([ReplyFor])
REFERENCES [dbo].[Comments] ([CommentID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Comments]
GO
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD  CONSTRAINT [FK_Districts_Provinces] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Provinces] ([ProvinceID])
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_Districts_Provinces]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH CHECK ADD  CONSTRAINT [FK_ExaminationsPapers_Cars] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_Cars]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH CHECK ADD  CONSTRAINT [FK_ExaminationsPapers_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_ChairitiesExams]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH CHECK ADD  CONSTRAINT [FK_ExaminationsPapers_Groups] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Groups] ([GroupID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_Groups]
GO
ALTER TABLE [dbo].[ExaminationsPapers]  WITH CHECK ADD  CONSTRAINT [FK_ExaminationsPapers_Rooms] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_Rooms]
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
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_ExaminationsPapers] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[ExaminationsPapers] ([ExamPaperID])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_ExaminationsPapers]
GO
ALTER TABLE [dbo].[Lodges]  WITH CHECK ADD  CONSTRAINT [FK_Lodges_ChairitiesExams1] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Lodges] CHECK CONSTRAINT [FK_Lodges_ChairitiesExams1]
GO
ALTER TABLE [dbo].[Lodges]  WITH CHECK ADD  CONSTRAINT [FK_Lodges_Sponsors] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[Lodges] CHECK CONSTRAINT [FK_Lodges_Sponsors]
GO
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Profiles_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_Accounts]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Lodges] FOREIGN KEY([LodgeID])
REFERENCES [dbo].[Lodges] ([LodgeID])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Lodges]
GO
ALTER TABLE [dbo].[ScheduleExams]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleExams_Examinations] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Examinations] ([ExaminationID])
GO
ALTER TABLE [dbo].[ScheduleExams] CHECK CONSTRAINT [FK_ScheduleExams_Examinations]
GO
ALTER TABLE [dbo].[SchedulesCars]  WITH CHECK ADD  CONSTRAINT [FK_SchedulesCars_Cars] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[SchedulesCars] CHECK CONSTRAINT [FK_SchedulesCars_Cars]
GO
ALTER TABLE [dbo].[SchedulesVolunteers]  WITH CHECK ADD  CONSTRAINT [FK_DetailScheduleVolunteers_Volunteers] FOREIGN KEY([VolunteerID])
REFERENCES [dbo].[Volunteers] ([VolunteerID])
GO
ALTER TABLE [dbo].[SchedulesVolunteers] CHECK CONSTRAINT [FK_DetailScheduleVolunteers_Volunteers]
GO
ALTER TABLE [dbo].[SchedulesVolunteers]  WITH CHECK ADD  CONSTRAINT [FK_SchedulesVolunteers_ExaminationsPapers] FOREIGN KEY([ExamPaperID])
REFERENCES [dbo].[ExaminationsPapers] ([ExamPaperID])
GO
ALTER TABLE [dbo].[SchedulesVolunteers] CHECK CONSTRAINT [FK_SchedulesVolunteers_ExaminationsPapers]
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
ALTER TABLE [dbo].[Volunteers]  WITH CHECK ADD  CONSTRAINT [FK_Volunteers_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Volunteers] CHECK CONSTRAINT [FK_Volunteers_ChairitiesExams]
GO
USE [master]
GO
ALTER DATABASE [TSMT] SET  READ_WRITE 
GO
