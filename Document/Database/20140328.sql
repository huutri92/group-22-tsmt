USE [TSMT]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Articles]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[ArticlesTags]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Candidates]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Cars]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[ChairitiesExams]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Charities]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Comments]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Districts]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Examinations]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[ExaminationsPapers]    Script Date: 3/28/2014 10:13:54 AM ******/
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
	[LodgeRegisteredID] [int] NULL,
 CONSTRAINT [PK_ExamsPaper] PRIMARY KEY CLUSTERED 
(
	[ExamPaperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Funds]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Groups]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Lodges]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Profiles]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Provinces]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Rooms]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[ScheduleExams]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[SchedulesCars]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[SchedulesVolunteers]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Sponsors]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Universities]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[UniversitiesExaminations]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Venues]    Script Date: 3/28/2014 10:13:54 AM ******/
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
/****** Object:  Table [dbo].[Volunteers]    Script Date: 3/28/2014 10:13:54 AM ******/
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

INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (16, N'charity01@gmail.com', N'123', 1, 10, 2, N'123456')
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (18, N'sponsor01@gmail.com', N'123', 1, 12, 3, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (19, N'volunteer01@gmail.com', N'123', 1, 13, 4, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (20, N'candidate01@gmail.com', N'123', 1, 14, 1, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (21, N'charity02@gmail.com', N'123', 1, 15, 2, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (22, N'sponsor02@gmail.com', N'123', 1, 16, 3, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (23, N'volunteer02@gmail.com', N'123', 1, 17, 4, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (24, N'candidate02@gmail.com', N'123', 1, 18, 1, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (28, N'admin@gmail.com', N'123', 1, 22, 5, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (29, N'candidate03@gmail.com', N'123', 1, 23, 1, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (30, N'candidate04@gmail.com', N'123', 1, 24, 1, NULL)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID], [Code]) VALUES (31, N'charity03@gmail.com', N'123', 1, 25, 2, NULL)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET IDENTITY_INSERT [dbo].[Articles] ON 

INSERT [dbo].[Articles] ([ArticleID], [Title], [CategoryID], [CreatedOn], [CreatedBy], [Content], [LastModifiedOn], [AvatarImage], [IsAprroved], [Summary]) VALUES (1, N'MH370 đã chở hàng dễ cháy', 1, CAST(0x0000A2FB00D9E1F7 AS DateTime), 28, N'<p>Sylvia Adcock từng phụ tr&aacute;ch mục an ninh v&agrave; an to&agrave;n h&agrave;ng kh&ocirc;ng của trang Newsday.com từ năm 1996 tới 2005. B&agrave; hiện l&agrave; bi&ecirc;n tập vi&ecirc;n của tạp ch&iacute; NC State của đại học bang North Carolina. B&agrave; n&ecirc;u ra một giả thuyết về nguy&ecirc;n nh&acirc;n dẫn đến t&igrave;nh trạng của MH370 hiện nay.</p>

<p>C&aacute;c nh&agrave; điều tra Malaysia chưa t&igrave;m được mảnh vỡ cũng như hộp đen để nghi&ecirc;n cứu v&agrave; kết luận. Bởi vậy, họ tập trung kiểm tra l&yacute; lịch c&aacute;c phi c&ocirc;ng v&agrave; tất cả h&agrave;nh kh&aacute;ch tr&ecirc;n MH370, đồng thời ph&acirc;n t&iacute;ch dữ liệu radar c&ugrave;ng những li&ecirc;n lạc cuối c&ugrave;ng từ buồng l&aacute;i. Họ cũng để &yacute; nhiều hơn nữa đến một manh mối quan trọng: danh mục c&aacute;c loại h&agrave;ng được chở tr&ecirc;n chuyến bay.</p>

<p>Danh s&aacute;ch những thứ nằm trong khoang h&agrave;ng h&oacute;a của mỗi chuyến bay nằm ph&iacute;a tr&ecirc;n mục h&agrave;nh l&yacute; k&yacute; gửi. C&aacute;c nh&agrave; vận chuyển thường d&ugrave;ng m&aacute;y bay d&acirc;n dụng để chở h&agrave;ng h&oacute;a hay vật liệu. Việc nắm danh s&aacute;ch những loại h&agrave;ng tr&ecirc;n m&aacute;y bay trở n&ecirc;n quan trọng bất ngờ đối với việc điều tra tai nạn.</p>

<p>Trường hợp điển h&igrave;nh l&agrave; vụ tai nạn m&aacute;y bay ValuJet 592 năm 1996 ở Mỹ. Chiếc m&aacute;y bay lao xuống v&ugrave;ng Everglades, bang Florida, kh&ocirc;ng l&acirc;u sau khi cất c&aacute;nh từ th&agrave;nh phố Miami. C&aacute;c nh&agrave; chức tr&aacute;ch điều tra được rằng phi c&ocirc;ng đ&atilde; kh&ocirc;ng kiểm so&aacute;t được m&aacute;y bay sau khi ngọn lửa b&ugrave;ng l&ecirc;n từ khoang chứa h&agrave;ng l&agrave;m v&ocirc; hiệu h&oacute;a một số hệ thống m&aacute;y m&oacute;c. Nguồn gốc đ&aacute;m ch&aacute;y được lần ra l&agrave; một l&ocirc; c&aacute;c b&igrave;nh oxy bị d&aacute;n sai nh&atilde;n v&agrave; đ&oacute;ng g&oacute;i kh&ocirc;ng đ&uacute;ng quy c&aacute;ch.</p>

<p>Vụ tai nạn khiến Ủy ban An to&agrave;n Giao th&ocirc;ng Quốc gia Mỹ bắt buộc mọi m&aacute;y bay phải lắp đặt m&aacute;y ph&aacute;t hiện kh&oacute;i v&agrave; c&aacute;c hệ thống chữa ch&aacute;y ở khoang chở h&agrave;ng của c&aacute;c m&aacute;y bay d&acirc;n dụng. Cục H&agrave;ng kh&ocirc;ng Li&ecirc;n bang Mỹ (FAA) cũng ra quyết định về việc&nbsp;b&igrave;nh chữa ch&aacute;y halon (chất chữa ch&aacute;y dạng kh&iacute;) phải được đặt trong khoang h&agrave;ng. Đến nay, những thiết bị n&agrave;y vẫn mang những t&iacute;nh năng giữ an to&agrave;n quan trọng cho chuyến bay.</p>

<p>Gần đ&acirc;y, c&oacute; một loại h&agrave;ng h&oacute;a bị ch&uacute; &yacute; đặc biệt, đ&oacute; l&agrave; pin lithium, một loại pin sạc (như pin điện thoại hay pin m&aacute;y t&iacute;nh x&aacute;ch tay), c&ograve;n được gọi l&agrave; pin lithium ion. (pin Li-ion) Loại thứ hai l&agrave; pin kh&ocirc;ng sạc được (như pin d&ugrave;ng cho đồ chơi hay cho c&aacute;c thiết bị y tế) c&ograve;n được gọi l&agrave; pin lithium metal.</p>

<p>Loại pin thứ hai chứa nhiều năng lượng. Nếu ch&uacute;ng bị bảo quản sai c&aacute;ch th&igrave; rất dễ bắt lửa v&agrave; ngọn lửa n&agrave;y kh&ocirc;ng thể được dập tắt bằng halon. Đ&acirc;y l&agrave; l&yacute; do khiến cục FAA cấm m&aacute;y bay d&acirc;n dụng vận chuyển pin lithium metal từ năm 2004. Tuy nhi&ecirc;n, luật n&agrave;y chỉ được &aacute;p dụng tại Mỹ, c&aacute;c cơ quan quốc tế vẫn đang xem x&eacute;t khả năng ban h&agrave;nh quy định như vậy. Ri&ecirc;ng pin lithium ion được ph&eacute;p c&oacute; mặt tr&ecirc;n m&aacute;y bay nhưng phải đ&oacute;ng g&oacute;i v&agrave; d&aacute;n nh&atilde;n cẩn thận.</p>

<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="background-color:rgb(244, 245, 246); color:rgb(0, 0, 0); font-family:times new roman; font-size:16px; line-height:normal; min-width:1px; width:1px">
	<tbody>
		<tr>
			<td style="vertical-align:middle"><img alt="800px-1-7-12-JAL787-APU-Batter-5561-6516" src="http://m.f29.img.vnecdn.net/2014/03/26/800px-1-7-12-JAL787-APU-Batter-5561-6516-1395828749.jpg" /></td>
		</tr>
		<tr>
			<td style="vertical-align:middle">
			<p>Hộp pin lithium g&acirc;y ra vụ ch&aacute;y tr&ecirc;n chiếc m&aacute;y bay Boeing 787 của h&atilde;ng h&agrave;ng kh&ocirc;ng Nhật Bản năm 2013. Ảnh:&nbsp;<em>Wikipedia</em></p>
			</td>
		</tr>
	</tbody>
</table>

<p>Trong vụ MH370, quan chức Malaysia từng hứa sẽ c&ocirc;ng bố bản k&ecirc; khai h&agrave;ng h&oacute;a &quot;v&agrave;o đ&uacute;ng thời điểm&quot;. Sau đ&oacute;, họ chỉ tiết lộ rằng chiếc Boeing 777-200 chở theo 198 kg pin lithium ion. Ch&iacute;nh quyền nước n&agrave;y khẳng định những loại h&agrave;ng h&oacute;a c&oacute; mặt tr&ecirc;n MH370 kh&ocirc;ng g&acirc;y nguy hại cho m&aacute;y bay.&nbsp;<em>CNN</em>&nbsp;dẫn một nguồn tin cho biết, Malaysia từ chối đưa bản danh mục h&agrave;ng h&oacute;a cho ch&iacute;nh phủ Australia, cho d&ugrave; điều n&agrave;y l&agrave; hữu &iacute;ch đối với việc khoanh v&ugrave;ng t&igrave;m kiếm.</p>

<p>Cho d&ugrave; pin lithium ion kh&oacute; bắt lửa hơn v&agrave; cũng dễ bị dập tắt hơn pin lithium metal, cả hai loại n&agrave;y đều c&oacute; độ lan truyền nhiệt lớn. Mỗi cục pin nhanh ch&oacute;ng truyền nhiệt cho cục b&ecirc;n cạnh, tạo th&agrave;nh đ&aacute;m ch&aacute;y lan rộng v&agrave; kh&oacute; bị dập bằng c&aacute;c phương tiện cứu hỏa th&ocirc;ng thường.</p>

<p>Đ&aacute;ng ch&uacute; &yacute;, pin lithium ion bị quy l&agrave; nguy&ecirc;n nh&acirc;n vụ tai nạn m&aacute;y bay Boeing 747 UPS năm 2010 ở th&agrave;nh phố Dubai, UAE. Hai phi c&ocirc;ng đ&atilde; thiệt mạng khi cố gắng hạ c&aacute;nh khẩn cấp. C&aacute;c điều tra vi&ecirc;n xem x&eacute;t hồ sơ vận chuyển h&agrave;ng v&agrave; ph&aacute;t hiện l&ocirc; h&agrave;ng pin lithium ion kh&ocirc;ng được khai b&aacute;o l&agrave; h&agrave;ng nguy hiểm. Ngọn lửa b&ugrave;ng ph&aacute;t nhanh ch&oacute;ng, ph&aacute; hủy hệ thống điều khiển, khiến buồng l&aacute;i ngập trong kh&oacute;i, l&agrave;m c&aacute;c phi c&ocirc;ng mất khả năng kiểm so&aacute;t.</p>

<p>C&aacute;c nh&agrave; chức tr&aacute;ch Malaysia cần ch&uacute; &yacute; đến c&aacute;c yếu tố c&oacute; thể g&acirc;y ch&aacute;y tr&ecirc;n MH370. Họ phải xem x&eacute;t danh s&aacute;ch h&agrave;ng h&oacute;a được vận chuyển h&ocirc;m đ&oacute;, đồng thời thẩm vấn c&aacute;c chủ h&agrave;ng ph&ograve;ng trường hợp c&oacute; loại h&agrave;ng bị chuyển nhầm, bị hư hỏng hoặc bảo quản sai c&aacute;ch. Điều tra theo hướng n&agrave;y cũng quan trọng như việc xem x&eacute;t c&aacute;c giả thiết phi c&ocirc;ng ph&aacute; hoại hay kh&ocirc;ng tặc.</p>

<p style="text-align:right"><strong>Trần Trang&nbsp;</strong><em>(theo CNN)</em></p>
', CAST(0x0000A2FB0066945F AS DateTime), N'/Content/UserUpload/Koala.jpg', 1, N'Sự biến mất bí ẩn của chuyến bay MH370 có thể bắt nguồn từ 198 kg hàng hóa dễ bắt lửa trên chiếc phi cơ Boeing 777-200.')
SET IDENTITY_INSERT [dbo].[Articles] OFF
SET IDENTITY_INSERT [dbo].[Candidates] ON 

INSERT [dbo].[Candidates] ([CandidateID], [AccountID], [HighSchoolName]) VALUES (3, 20, N'Santos')
INSERT [dbo].[Candidates] ([CandidateID], [AccountID], [HighSchoolName]) VALUES (4, 24, N'Cố vấn An ninh Quốc gia')
INSERT [dbo].[Candidates] ([CandidateID], [AccountID], [HighSchoolName]) VALUES (5, 29, N'sdds')
INSERT [dbo].[Candidates] ([CandidateID], [AccountID], [HighSchoolName]) VALUES (6, 30, N'bfndg')
SET IDENTITY_INSERT [dbo].[Candidates] OFF
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved]) VALUES (1, 28, 4, N'51S1-3939', 130, 100, N'Nguyen Van A', N'098238324', 1)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved]) VALUES (4, NULL, 4, N'482', 10, 10, N'sjhdjas áhdjah', N'092392833', 0)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved]) VALUES (5, NULL, 4, N'22334', 23, 23, N'sdsa', N'23231', 0)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved]) VALUES (6, 26, NULL, N'32323', 23, 23, N'sdsd', N'23232', 1)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved]) VALUES (7, 26, NULL, N'2323', 45, 45, N'sdsd', N'', 1)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved]) VALUES (31, NULL, 4, N'123', 123, 123, N'123', N'123', 0)
SET IDENTITY_INSERT [dbo].[Cars] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'alo 123')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Thông Thin Ăn Uống')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Tips Cần Biết')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Thông Tin Trường')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (7, N'weqwewqrqr')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[ChairitiesExams] ON 

INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles], [Description]) VALUES (1, 15, 1, N'Blue Summer', 0, 0, 0, 0, NULL)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles], [Description]) VALUES (2, 14, 6, N'Red Winter', 0, 0, 0, 0, NULL)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles], [Description]) VALUES (3, 15, 6, N'Purple Season', 0, 0, 0, 0, NULL)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles], [Description]) VALUES (4, 15, 6, N'Pink Sky', 0, 0, 0, 0, NULL)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles], [Description]) VALUES (26, 13, 4, N'ABC 123456', 0, 0, 68, 68, NULL)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles], [Description]) VALUES (27, 14, 4, N'Rocket', 0, 0, 0, 0, NULL)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [CharityExamName], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles], [Description]) VALUES (28, 13, 6, N'Cafe Tiamo', 0, 0, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[ChairitiesExams] OFF
SET IDENTITY_INSERT [dbo].[Charities] ON 

INSERT [dbo].[Charities] ([CharityID], [AccountID], [PhoneNumber], [FullDescription]) VALUES (1, 31, N'0837515341', N'ABCDEFGHJKLMNOPQ')
INSERT [dbo].[Charities] ([CharityID], [AccountID], [PhoneNumber], [FullDescription]) VALUES (4, 16, N'0837515342', N'123456789poiuytrew')
INSERT [dbo].[Charities] ([CharityID], [AccountID], [PhoneNumber], [FullDescription]) VALUES (6, 21, N'0837515343', N'qưesereterctrev23423423')
SET IDENTITY_INSERT [dbo].[Charities] OFF
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (113, 2, N'Từ Liêm')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (114, 2, N'Thanh Trì')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (115, 2, N'Sóc Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (116, 2, N'Gia Lâm')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (117, 2, N'Đông Anh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (118, 2, N'Long Biên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (119, 2, N'Hoàng Mai')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (120, 2, N'Cầu Giấy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (121, 2, N'Tây Hồ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (122, 2, N'Thanh Xuân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (123, 2, N'Hai Bà Trưng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (124, 2, N'Đống Đa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (125, 2, N'Ba Đình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (126, 2, N'Hoàn Kiếm')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (127, 3, N'Quận 1')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (128, 3, N'Quận 2')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (129, 3, N'Quận 3')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (130, 3, N'Quận 4')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (131, 3, N'Quận 5')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (132, 3, N'Quận 6')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (133, 3, N'Quận 7')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (134, 3, N'Quận 8')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (135, 3, N'Quận 9')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (136, 3, N'Quận 10')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (137, 3, N'Quận 11')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (138, 3, N'Quận 12')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (139, 3, N'Quận Phú Nhuận')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (140, 3, N'Quận Bình Thạnh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (141, 3, N'Quận Tân Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (142, 3, N'Quận Tân Phú')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (143, 3, N'Quận Gò Vấp')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (144, 3, N'Quận Thủ Đức')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (145, 3, N'Quận Bình Tân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (146, 3, N'Huyện Bình Chánh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (147, 3, N'Huyện Củ Chi')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (149, 3, N'Huyện Nhà Bè')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (150, 3, N'Huyện Cần Giờ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (151, 68, N'Bà Rịa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (152, 68, N'Châu Đất')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (153, 68, N'Côn Đảo')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (154, 68, N'Long Đất')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (155, 68, N'Tân Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (156, 68, N'Vũng Tàu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (157, 68, N'Xuyên Mộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (158, 62, N'An Lão')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (159, 62, N'An Nhơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (160, 62, N'Hoài Ân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (161, 62, N'Hoài Nhơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (162, 62, N'Phù Cát')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (163, 62, N'Phù Mỹ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (164, 62, N'Qui Nhơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (165, 62, N'Tây Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (166, 62, N'Tuy Phước')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (167, 62, N'Vân Canh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (168, 62, N'Vĩnh Thạnh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (169, 66, N'Ba Bể')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (170, 66, N'Bắc Kạn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (171, 66, N'Bạch Thông ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (172, 66, N'Chợ Đồn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (173, 66, N'Chợ Mới')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (174, 66, N'Na Rì')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (175, 66, N'Ngân Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (176, 57, N'Bảo Lạc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (177, 57, N'Cao Bắng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (178, 57, N'Hạ Lang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (179, 57, N'Hà Quảng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (180, 57, N'Hòa An')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (181, 57, N'Nguyên Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (182, 57, N'Quảng Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (183, 57, N'Thạch An')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (184, 57, N'Thông Nông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (185, 57, N'Trà Lĩnh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (186, 57, N'Trùng Khánh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (187, 51, N'An Khê')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (188, 51, N'Ayun Pa ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (189, 51, N'Chư Păh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (190, 51, N'Chư Prông  ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (191, 51, N'Chư Sê ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (192, 51, N'Đức Cơ  ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (193, 51, N'KBang  ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (194, 51, N'Krông Chro')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (195, 51, N'Krông Pa ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (196, 51, N'La Grai  ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (197, 51, N'Mang Yang ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (198, 51, N'Pleiku')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (214, 47, N'Cẩm Xuyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (215, 47, N'Can Lộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (216, 47, N'Đức Thọ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (217, 47, N'Hà Tĩnh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (218, 47, N'Hồng Lĩnh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (219, 47, N'Hương Khê')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (220, 47, N'Hương Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (221, 47, N'Kỳ Anh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (222, 47, N'Nghi Xuân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (223, 47, N'Thạch Hà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (224, 44, N'Đà Bắc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (225, 44, N'Hòa Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (226, 44, N'Kim Bôi')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (227, 44, N'Kỳ Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (228, 44, N'Lạc Sơn')
GO
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (229, 44, N'Lạc Thủy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (230, 44, N'Lương Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (231, 44, N'Mai Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (232, 44, N'Tân Lạc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (233, 44, N'Yên Thủy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (234, 46, N'Bình Giang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (235, 46, N'Cẩm Giàng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (236, 46, N'Chí Linh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (238, 46, N'Gia Lộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (239, 46, N'Hải Dương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (241, 46, N'Kim Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (242, 46, N'Nam Sách')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (243, 46, N'Ninh Giang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (244, 46, N'Kinh Môn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (245, 46, N'Ninh Giang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (246, 46, N'Thanh Hà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (247, 46, N'Thanh Miện')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (248, 46, N'Từ Kỳ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (249, 70, N'An Hải')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (250, 70, N'An Lão')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (251, 70, N'Bạch Long Vỹ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (253, 70, N'Đồ Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (254, 70, N'Hồng Bàng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (255, 70, N'Kiến An')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (256, 70, N'Kiến Thụy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (257, 70, N'Lê Chân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (258, 70, N'Ngô Quyền')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (259, 70, N'Thủy Nguyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (260, 70, N'Tiên Lãng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (261, 70, N'Vĩnh Bảo')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (262, 43, N'Ân Thi')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (263, 43, N'Hưng Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (264, 43, N'Khoái Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (265, 43, N'Tiên Lữ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (266, 43, N'Văn Giang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (267, 43, N'Văn Lâm')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (268, 43, N'Yên Mỹ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (269, 42, N'Nha Trang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (270, 42, N'Khánh Vĩnh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (271, 42, N'Diên Khánh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (272, 42, N'Ninh Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (273, 42, N'Khánh Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (274, 42, N'Cam Ranh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (275, 42, N'Trường Sa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (276, 42, N'Vạn Ninh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (277, 41, N'An Biên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (278, 41, N'An Minh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (279, 41, N'Châu Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (280, 41, N'Gò Quao')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (281, 41, N'Gồng Giềng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (282, 41, N'Hà Tiên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (283, 41, N'Hòn Đất')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (284, 41, N'Kiên Hải')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (285, 41, N'Phú Quốc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (286, 41, N'Rạch Giá')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (287, 41, N'Tân Hiệp')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (288, 41, N'Vĩnh Thuận')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (290, 40, N'Đắk Glei')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (291, 40, N'Đắk Tô')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (292, 40, N'Kon Plông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (293, 40, N'Kon Tum')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (294, 40, N'Ngọc Hồi')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (295, 40, N'Sa Thầy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (296, 39, N'Điện Biên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (297, 39, N'Điện Biên Đông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (298, 39, N'Điện Biên Phủ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (299, 39, N'Lai Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (300, 39, N'Mường Lay')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (301, 39, N'Mường Tè')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (302, 39, N'Phong Thổ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (303, 39, N'Sìn Hồ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (304, 39, N'Tủa Chùa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (305, 39, N'Tuần Giáo')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (306, 36, N'Bắc Hà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (307, 36, N'Bảo Thắng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (308, 36, N'Bảo Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (309, 36, N'Bát Xát')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (310, 36, N'Cam Đường')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (311, 36, N'Lào Cai')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (312, 36, N'Mường Khương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (313, 36, N'Sa Pa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (314, 36, N'Than Uyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (315, 36, N'Văn Bàn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (316, 36, N'Xi Ma Cai')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (317, 38, N'Bảo Lâm')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (318, 38, N'Bảo Lộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (319, 38, N'Cát Tiên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (320, 38, N'Đà Lạt')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (321, 38, N'Đạ Tẻh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (322, 38, N'Đạ Huoai')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (323, 38, N'Di Linh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (324, 38, N'Đơn Dương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (325, 38, N'Đức Trọng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (326, 38, N'Lạc Dương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (327, 38, N'Lâm Hà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (328, 37, N'Bắc Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (329, 37, N'Bình Gia')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (330, 37, N'Cao Lăng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (331, 37, N'Cao Lộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (332, 37, N'Đình Lập')
GO
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (333, 37, N'Hữu Lũng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (334, 37, N'Lạng Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (336, 37, N'Lộc Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (337, 37, N'Tràng Định')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (341, 35, N'Bến Lức')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (342, 37, N'Văn Lãng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (343, 37, N'Văn Quang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (344, 35, N'Cần Đước')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (345, 35, N'Cần Giuộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (346, 35, N'Châu Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (347, 35, N'Đức Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (348, 35, N'Đức Huệ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (349, 35, N'Mộc Hóa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (350, 35, N'Tân An')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (351, 35, N'Tân Hưng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (352, 35, N'Tân Thạnh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (354, 35, N'Tân Trụ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (355, 35, N'Thạnh Hóa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (356, 35, N'Thủ Thừa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (357, 35, N'Vĩnh Hưng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (358, 34, N'Giao Thủy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (360, 34, N'Hải Hậu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (361, 34, N'Mỹ Lộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (362, 34, N'Nam Định')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (363, 34, N'Nam Trực')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (364, 34, N'Nghĩa Hưng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (365, 34, N'Trực Ninh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (366, 34, N'Vụ Bản')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (367, 34, N'Xuân Trường')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (368, 34, N'Ý Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (369, 33, N'Anh Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (370, 33, N'Con Cuông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (371, 33, N'Cửa Lò')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (372, 33, N'Diễn Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (373, 33, N'Đô Lương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (374, 33, N'Hưng Nguyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (375, 33, N'Kỳ Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (376, 33, N'Nam Đàn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (377, 33, N'Nghi Lộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (378, 33, N'Nghĩa Đàn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (379, 33, N'Quế Phong')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (380, 33, N'Quỳ Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (381, 33, N'Quỳ Hợp')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (382, 33, N'Quỳnh Lưu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (383, 33, N'Tân Kỳ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (384, 33, N'Thanh Chương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (385, 33, N'Tương Dương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (386, 33, N'Vinh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (387, 33, N'Yên Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (388, 30, N'Đoan Hùng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (389, 30, N'Hạ Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (390, 30, N'Lâm Thao')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (391, 30, N'Phù Ninh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (392, 30, N'Phú Thọ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (393, 30, N'Sông Thao')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (394, 30, N'Tam Nông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (395, 30, N'Thanh Ba')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (396, 30, N'Thanh Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (397, 30, N'Thanh Thủy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (398, 30, N'Việt Trì')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (399, 30, N'Yên Lập')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (400, 27, N'Đại Lộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (401, 27, N'Điện Bàn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (402, 27, N'Duy Xuyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (403, 27, N'Hiên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (404, 27, N'Hiệp Đức')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (405, 27, N'Hội An')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (406, 27, N'Nam Giang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (407, 27, N'Núi Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (408, 27, N'Phước Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (409, 27, N'Quế Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (410, 27, N'Tam Kỳ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (411, 27, N'Thăng Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (412, 27, N'Tiên Phước')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (413, 27, N'Trà My')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (414, 24, N'Cam Lộ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (415, 24, N'Đa Krông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (416, 24, N'Đông Hà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (417, 24, N'Gio Linh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (418, 24, N'Hải Lăng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (419, 24, N'Hướng Hóa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (420, 24, N'Quảng Trị')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (421, 24, N'Triệu Phong')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (422, 24, N'Vĩnh Linh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (423, 16, N'A Lưới')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (424, 16, N'Huế')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (425, 16, N'Hương Thủy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (426, 16, N'Hương Trà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (427, 16, N'Nam Đông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (428, 16, N'Phong Điền')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (429, 16, N'Phú Lộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (430, 16, N'Phú Vang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (431, 16, N'Quảng Điền')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (432, 19, N'Đông Hưng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (433, 19, N'Hưng Hà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (434, 19, N'Kiến Xương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (435, 19, N'Quỳnh Phụ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (436, 19, N'Thái Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (437, 19, N'Thái Thụy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (438, 19, N'Tiền Hải')
GO
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (439, 19, N'Vũ Thư')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (440, 14, N'Càng Long')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (441, 14, N'Cầu Kè')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (442, 14, N'Cầu Ngang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (443, 14, N'Châu Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (444, 14, N'Duyên Hải')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (445, 14, N'Tiểu Cần')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (446, 14, N'Trà Cú')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (447, 14, N'Trà Vinh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (448, 11, N'Bình Xuyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (449, 11, N'Lập Thạch')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (450, 2, N'Mê Linh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (451, 11, N'Tam Dương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (452, 11, N'Vĩnh Tường')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (453, 11, N'Vĩnh Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (454, 11, N'Yên Lạc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (455, 56, N'Buôn Đôn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (456, 56, N'Buôn Ma Thuột')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (457, 56, N'Cư Jút')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (458, 56, N'Cư M''gar')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (459, 56, N'Đắk Mil')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (460, 56, N'Đắk Nông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (461, 56, N'Đắk R''lấp')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (462, 56, N'Ea H''leo')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (463, 56, N'Ea Kra')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (464, 56, N'Ea Súp')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (465, 56, N'Krông A Na')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (466, 56, N'Krông Bông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (467, 56, N'Krông Búk')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (468, 56, N'Krông Năng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (469, 56, N'Krông Nô')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (470, 56, N'Krông Pắc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (471, 56, N'Lắk')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (472, 56, N'M''Đrắt')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (473, 61, N'Bến Cát')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (474, 61, N'Dầu Tiếng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (475, 61, N'Dĩ An')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (476, 61, N'Tân Uyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (477, 61, N'Thủ Dầu Một')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (478, 61, N'Thuận An')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (479, 65, N'Bạc Liêu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (480, 65, N'Giá Rai')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (481, 65, N'Hồng Dân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (482, 65, N'Vĩnh Lợi')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (483, 64, N'Bắc Ninh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (484, 64, N'Gia Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (485, 64, N'Lương Tài')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (486, 64, N'Quế Võ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (487, 64, N'Thuận Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (488, 64, N'Tiên Du')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (489, 64, N'Từ Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (490, 64, N'Yên Phong')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (491, 58, N'Cà Mau')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (492, 58, N'Cái Nước')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (493, 58, N'Đầm Dơi')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (494, 58, N'Ngọc Hiển')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (495, 58, N'Thới Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (496, 58, N'Trần Văn Thời')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (497, 58, N'U Minh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (498, 50, N'Bắc Mê')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (499, 50, N'Bắc Quang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (500, 50, N'Đồng Văn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (501, 50, N'Hà Giang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (502, 50, N'Hoàng Su Phì')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (503, 50, N'Mèo Vạt')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (504, 50, N'Quản Bạ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (505, 50, N'Vị Xuyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (506, 50, N'Xín Mần')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (507, 50, N'Yên Minh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (568, 32, N'Hoa Lư')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (569, 32, N'Kim Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (571, 32, N'Nho Quan')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (572, 32, N'Ninh Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (573, 32, N'Tam Điệp')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (574, 32, N'Yên Khánh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (575, 32, N'Yên Mô')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (576, 29, N'Đồng Xuân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (577, 29, N'Sơn Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (578, 29, N'Sông Cầu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (579, 29, N'Sông Hinh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (580, 29, N'Tuy An')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (581, 29, N'Tuy Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (582, 26, N'Ba Tơ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (583, 26, N'Bình Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (584, 26, N'Đức Phổ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (585, 26, N'Lý Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (586, 26, N'Minh Long')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (587, 26, N'Mộ Đức')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (588, 26, N'Nghĩa Hành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (589, 26, N'Quãng Ngãi')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (590, 26, N'Sơn Hà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (591, 26, N'Sơn Tây')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (592, 26, N'Sơn Tịnh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (593, 26, N'Trà Bồng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (594, 26, N'Tư Nghĩa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (595, 23, N'Kế Sách')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (596, 23, N'Long Phú')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (597, 23, N'Mỹ Tú')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (598, 23, N'Mỹ Xuyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (599, 23, N'Sóc Trăng')
GO
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (600, 23, N'Thanh Trị')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (601, 23, N'Vĩnh Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (602, 21, N'Bến Cầu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (603, 21, N'Châu Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (604, 21, N'Dương Minh Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (605, 21, N'Gò Dầu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (606, 21, N'Hòa Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (607, 21, N'Tân Biên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (608, 21, N'Tân Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (609, 21, N'Tây Ninh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (610, 21, N'Trảng Bàng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (611, 18, N'Đại Từ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (612, 18, N'Định Hóa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (613, 18, N'Đồng Hỷ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (614, 18, N'Phổ Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (615, 18, N'Phú Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (616, 18, N'Phú Lương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (617, 18, N'Sông Công')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (618, 18, N'Thái Nguyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (619, 18, N'Võ Nhai')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (620, 13, N'Chiêm Hóa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (621, 13, N'Hàm Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (622, 13, N'Na Hang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (623, 13, N'Sơn Dương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (624, 13, N'Tuyên Quang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (625, 13, N'Yên Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (626, 10, N'Lục Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (627, 10, N'Mù Căng Chải')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (628, 10, N'Trạm Tấu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (629, 10, N'Trấn Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (630, 10, N'Văn Chấn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (631, 10, N'Văn Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (632, 10, N'Yên Bái')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (633, 10, N'Yên Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (634, 53, N'Biên Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (635, 53, N'Định Quán')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (636, 53, N'Long Khánh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (637, 53, N'Long Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (638, 53, N'Nhơn Trạch')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (639, 53, N'Tân Phú')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (640, 53, N'Thống Nhất')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (641, 53, N'Vĩnh Cừu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (642, 53, N'Xuân Lộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (643, 69, N'An Phú')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (644, 69, N'Châu Đốc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (645, 69, N'Châu Phú')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (646, 69, N'Châu Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (647, 69, N'Chợ Mới')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (648, 69, N'Long Xuyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (649, 69, N'Phú Tân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (650, 69, N'Tân Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (651, 69, N'Thoại Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (652, 69, N'Tịnh Biên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (653, 69, N'Tri Tôn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (654, 59, N'Bắc Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (655, 59, N'Đức Linh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (656, 59, N'Hàm Tân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (657, 59, N'Hàm Thuận Bắc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (658, 59, N'Hàm Thuận Nam')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (659, 59, N'Phan Thiết')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (660, 59, N'Phú Quí')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (661, 59, N'Tánh Linh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (662, 59, N'Tuy Phong')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (663, 67, N'Bắc Giang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (664, 67, N'Hiệp Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (665, 67, N'Lạng Giang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (666, 67, N'Lục Nam')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (667, 67, N'Lục Ngạn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (668, 67, N'Sơn Động')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (669, 67, N'Tân Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (670, 67, N'Việt Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (671, 67, N'Yên Dũng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (672, 67, N'Yên Thế')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (673, 63, N'Ba Tri')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (674, 63, N'Bến Tre')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (675, 63, N'Bình Đại')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (676, 63, N'Châu Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (677, 63, N'Chợ Lách')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (678, 63, N'Giồng Trôm')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (679, 63, N'Mỏ Cày')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (680, 63, N'Thạnh Phú')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (681, 72, N'Cần Thơ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (682, 45, N'Châu Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (683, 45, N'Long Mỹ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (684, 72, N'Ô Môn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (685, 45, N'Phụng Hiệp')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (686, 72, N'Thốt Nốt')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (687, 45, N'Vị Thanh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (688, 45, N'Vị Thủy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (689, 49, N'Bình Lục')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (690, 49, N'Duy Tiên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (691, 49, N'Kim Bảng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (692, 49, N'Lý Nhân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (693, 49, N'Phủ Lý')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (694, 49, N'Thanh Liêm')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (705, 43, N'Ân Thi')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (706, 43, N'Hưng Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (707, 43, N'Khoái Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (708, 43, N'Kim Động')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (709, 43, N'Mỹ Hào')
GO
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (710, 43, N'Phù Cừ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (715, 40, N'Đắk Glei')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (716, 40, N'Đắk Hà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (717, 40, N'Đắk Tô')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (718, 40, N'Kon Plông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (719, 40, N'Kon Tum')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (720, 40, N'Ngọc Hồi')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (721, 40, N'Sa Thầy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (743, 31, N'Ninh Hải')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (744, 31, N'Ninh Phước')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (745, 31, N'Ninh Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (746, 31, N'Phan Rang - Tháp Chàm')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (747, 28, N'Bố Trạch')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (748, 28, N'Đồng Hới')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (749, 28, N'Lệ Thủy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (750, 28, N'Quảng Ninh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (751, 28, N'Quảng Trạch')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (752, 28, N'Tuyên Hóa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (753, 25, N'Ba Chế')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (754, 25, N'Bình Liêu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (755, 25, N'Cẩm Phả')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (756, 25, N'Cô Tô')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (757, 25, N'Đông Triều')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (758, 25, N'Hạ Long')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (759, 25, N'Hoành Bồ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (760, 25, N'Móng Cái')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (761, 25, N'Quảng Hà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (762, 25, N'Tiên Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (763, 25, N'Uông Bí')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (764, 25, N'Vân Đồn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (765, 25, N'Yên Hưng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (766, 22, N'Bắc Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (767, 22, N'Mai Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (768, 22, N'Mộc Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (769, 22, N'Muờng La')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (770, 22, N'Phù Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (771, 22, N'Quỳnh Nhai')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (772, 22, N'Sơn La')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (773, 22, N'Sông Mã')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (774, 22, N'Thuận Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (775, 22, N'Yên Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (776, 17, N'Bá Thước')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (777, 17, N'Bỉm Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (778, 17, N'Cẩm Thủy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (779, 17, N'Đông Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (780, 17, N'Hà Trung')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (781, 17, N'Hậu Lộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (782, 17, N'Hoằng Hóa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (783, 17, N'Lang Chánh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (784, 17, N'Mường Lát')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (785, 17, N'Nga Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (786, 17, N'Ngọc Lặc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (787, 17, N'Như Thanh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (788, 17, N'Như Xuân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (789, 17, N'Nông Cống')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (790, 17, N'Quan Hóa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (791, 17, N'Quan Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (792, 17, N'Quảng Xương')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (793, 17, N'Sầm Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (794, 17, N'Thạch Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (795, 17, N'Thanh Hóa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (796, 17, N'Thọ Xuân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (797, 17, N'Thường Xuân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (798, 17, N'Tĩnh Gia')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (799, 17, N'Thiệu Hóa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (800, 17, N'Triệu Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (801, 17, N'Vĩnh Lộc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (802, 17, N'Yên Định')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (803, 15, N'Cái Bè')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (804, 15, N'Cai Lậy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (805, 15, N'Châu Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (806, 15, N'Chợ Gạo')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (807, 15, N'Gò Công')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (808, 15, N'Gò Công Đông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (809, 15, N'Gò Công Tây')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (810, 15, N'Mỹ Tho')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (811, 15, N'Tân Phước')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (812, 12, N'Bình Minh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (813, 12, N'Long Hồ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (814, 12, N'Mang Thít')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (815, 12, N'Tam Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (816, 12, N'Trà Ôn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (817, 12, N'Vĩnh Long')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (818, 12, N'Vũng Liêm')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (819, 71, N'Đảo Hòang Sa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (820, 71, N'Hải Châu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (821, 71, N'Hòa Vang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (822, 71, N'Liên Chiểu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (823, 71, N'Ngũ Hành Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (824, 71, N'Sơn Trà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (825, 71, N'Thanh Khê')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (826, 52, N'Cao Lãnh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (827, 52, N'Châu Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (828, 52, N'Hồng Ngự')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (829, 52, N'Lai Vung')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (830, 52, N'Lấp Vò')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (831, 52, N'Tam Nông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (832, 52, N'Tân Hồng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (833, 52, N'Thanh Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (834, 52, N'Tháp Mười')
GO
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (835, 52, N'Xa Đéc')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (836, 60, N'Bình Long')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (837, 72, N'Ninh Kiều')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (838, 53, N'Trảng Bom')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (839, 60, N'Phước Long')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (840, 2, N'Vân Điền')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (841, 61, N'Lái Thiêu')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (844, 71, N'Cẩm Lệ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (848, 72, N'Cái Răng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (849, 35, N'Liên Hưng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (850, 11, N'Phúc Yên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (851, 60, N'Bù Ðăng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (852, 60, N'Chơn Thành')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (853, 11, N'Tam Đảo')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (854, 70, N'Cát Bà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (855, 72, N'Bình Thủy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (856, 3, N'Huyện Hóc Môn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (857, 2, N'Ba Vì')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (858, 2, N'Chương Mỹ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (859, 2, N'Đan Phượng')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (860, 2, N'Hà Đông')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (861, 2, N'Hoài Đức')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (862, 2, N'Mỹ Đức')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (863, 2, N'Phú Xuyên')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (864, 2, N'Phúc Thọ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (865, 2, N'Quốc Oai')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (866, 2, N'Sơn Tây')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (867, 2, N'Thạch Thất')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (868, 2, N'Thanh Oai')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (869, 2, N'Thường Tín')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (871, 2, N'Ứng Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (872, 32, N'Gia Viễn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (873, 44, N'Cao Phong')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (874, 22, N'Sốp Cộp')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (875, 30, N'Cẩm Khê')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (876, 30, N'Tân Sơn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (877, 29, N'Đông Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (878, 29, N'Tây Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (879, 29, N'Phú Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (880, 28, N'Minh Hóa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (881, 47, N'Vũ Quang')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (882, 47, N'Lộc Hà')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (883, 33, N'Thái Hòa')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (884, 65, N'Phước Long')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (885, 65, N'Đông Hải')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (886, 65, N'Hòa Bình')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (887, 58, N'Năm Căn')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (888, 58, N'Phú Tân')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (890, 45, N'Châu Thành A')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (891, 45, N'Ngã Bảy')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (892, 72, N'Phong Điền')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (893, 72, N'Cờ Đỏ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (894, 72, N'Thới Lai')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (895, 72, N'Vĩnh Thạnh')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (896, 61, N'Phú Giáo')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (897, 59, N'La Gi')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (898, 68, N'Long Điền')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (899, 68, N'Đất Đỏ')
INSERT [dbo].[Districts] ([DistrictID], [ProvinceID], [Name]) VALUES (900, 70, N'Dương Kinh')
SET IDENTITY_INSERT [dbo].[Examinations] ON 

INSERT [dbo].[Examinations] ([ExaminationID], [Name], [BeginDate], [EndDate], [IsRemovable]) VALUES (13, N'Đợt 1 (2014)', CAST(0x0000A36100000000 AS DateTime), CAST(0x0000A36400000000 AS DateTime), 0)
INSERT [dbo].[Examinations] ([ExaminationID], [Name], [BeginDate], [EndDate], [IsRemovable]) VALUES (14, N'Đợt 2 (2014)', CAST(0x0000A36800000000 AS DateTime), CAST(0x0000A36B00000000 AS DateTime), 0)
INSERT [dbo].[Examinations] ([ExaminationID], [Name], [BeginDate], [EndDate], [IsRemovable]) VALUES (15, N'Đợt 3 (2014)', CAST(0x0000A36F00000000 AS DateTime), CAST(0x0000A37200000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Examinations] OFF
SET IDENTITY_INSERT [dbo].[ExaminationsPapers] ON 

INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [GroupID], [RoomID], [CarID], [IsApproved], [LodgeRegisteredID]) VALUES (14, 4, 9, 27, 28, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [GroupID], [RoomID], [CarID], [IsApproved], [LodgeRegisteredID]) VALUES (15, 5, 9, 27, 28, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [GroupID], [RoomID], [CarID], [IsApproved], [LodgeRegisteredID]) VALUES (16, 6, 9, 33, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [GroupID], [RoomID], [CarID], [IsApproved], [LodgeRegisteredID]) VALUES (38, 3, 9, 27, NULL, NULL, NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[ExaminationsPapers] OFF
SET IDENTITY_INSERT [dbo].[Lodges] ON 

INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (24, N'100 Võ Thị Sáu, Phường Tân Định, Quận 1', N'106.69233080000004', N'10.7883122', 4, NULL, 2, 50, 40, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (30, N'11-12 Phạm Ngọc Thạch, Phường 6, Quận 3', N'106.69533720000004', N'10.7831375', 4, 1, 0, 0, 0, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (31, N'15 Ngô Thời Nhiệm, Phường 6, Quận 3', N'106.69149140000002', N'10.7821749', 4, 28, 0, 0, 0, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (32, N'118 Nguyễn Đình Chiểu, Phường Đa Kao, Quận 1', N'106.69640240000001', N'10.7852611', 4, 28, 0, 0, 0, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (34, N'13 Nguyễn Hồng Đào, Quận Tân Bình', N'106.64350000000002', N'10.7971924', NULL, 27, 0, 0, 0, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (35, N'100 Âu Cơ, Phường 9, Quận Tan Binh', N'106.65100870000003', N'10.7703253', NULL, 27, 0, 0, 0, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (36, N'180 Bình Thới, Phường 14, Quận 11', N'106.64824599999997', N'10.7664794', NULL, 2, 0, 0, 0, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalRooms], [TotalSlots], [AvailableSlots], [IsApproved]) VALUES (37, N'55 Hòa Bình, Phường Tân Thới Hoà, Quận Tân Phú', N'106.63324710000006', N'10.7699523', NULL, 2, 0, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Lodges] OFF
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (10, 16, N'Gates', N'Bill', N'William Henry', 0, CAST(0x99190B00 AS Date), N'0938913140', NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (12, 18, N'Beckham', N'David', N'Robert Joseph', 0, CAST(0x50150B00 AS Date), N'0938913141', NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (13, 19, N'Perry', N'Katy', N'Elizabeth', 1, CAST(0x95190B00 AS Date), N'0938913142', NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (14, 20, N'Júnior', N'Neymar', N'Silva Santos', 1, CAST(0x50150B00 AS Date), N'0938913143', NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (15, 21, N'Abe', N'Shinzo', NULL, 0, CAST(0x9B050B00 AS Date), N'0938913144', NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (16, 22, N'Merkel', N'Angela', NULL, 1, CAST(0x1C170B00 AS Date), N'0938913145', NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (17, 23, N'Cameron', N'David', NULL, 0, CAST(0xFB110B00 AS Date), N'0938913146', NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (18, 24, N'Rice', N'Condoleeza', NULL, 1, CAST(0x03110B00 AS Date), N'0938913147', NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (22, 28, N'khoa', N'nguyen duy', NULL, 0, CAST(0x4B070B00 AS Date), N'0938913148', NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (23, 29, N'Neville', N'Phil', NULL, 1, CAST(0xD8080B00 AS Date), N'0938913149', NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (24, 30, N'Davidson', N'Harley', NULL, 1, CAST(0xE7090B00 AS Date), N'0938913150', NULL, NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Middlename], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (25, 31, N'Will', N'John', NULL, 0, CAST(0x52150B00 AS Date), N'0938913151', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Profiles] OFF
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (2, N'Hà Nội')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (3, N'TP.HCM')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (10, N'Yên Bái')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (11, N'Vĩnh Phúc')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (12, N'Vĩnh Long')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (13, N'Tuyên Quang')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (14, N'Trà Vinh')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (15, N'Tiền Giang')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (16, N'Thừa Thiên Huế')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (17, N'Thanh Hóa')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (18, N'Thái Nguyên')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (19, N'Thái Bình')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (21, N'Tây Ninh')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (22, N'Sơn La')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (23, N'Sóc Trăng')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (24, N'Quảng Trị')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (25, N'Quảng Ninh')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (26, N'Quảng Ngãi')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (27, N'Quảng Nam')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (28, N'Quảng Bình')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (29, N'Phú Yên')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (30, N'Phú Thọ')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (31, N'Ninh Thuận')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (32, N'Ninh Bình')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (33, N'Nghệ An')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (34, N'Nam Định')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (35, N'Long An')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (36, N'Lào Cai')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (37, N'Lạng Sơn')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (38, N'Lâm Đồng')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (39, N'Lai Châu')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (40, N'Kon Tum')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (41, N'Kiên Giang')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (42, N'Khánh Hòa')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (43, N'Hưng Yên')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (44, N'Hòa Bình')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (45, N'Hậu Giang')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (46, N'Hải Dương')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (47, N'Hà Tĩnh')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (49, N'Hà Nam ')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (50, N'Hà Giang')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (51, N'Gia Lai')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (52, N'Đồng Tháp')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (53, N'Đồng Nai')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (54, N'Điện Biên')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (55, N'Đắk Nông')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (56, N'Đắk Lắk')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (57, N'Cao Bằng')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (58, N'Cà Mau')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (59, N'Bình Thuận')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (60, N'Bình Phước')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (61, N'Bình Dương')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (62, N'Bình Định')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (63, N'Bến Tre')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (64, N'Bắc Ninh')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (65, N'Bạc Liêu')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (66, N'Bắc Kạn')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (67, N'Bắc Giang')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (68, N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (69, N'An Giang')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (70, N'Hải Phòng')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (71, N'Đà Nẵng')
INSERT [dbo].[Provinces] ([ProvinceID], [Name]) VALUES (72, N'Cần Thơ')
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Candidate')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Charity')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'Sponsor')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (4, N'Volunteer')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (5, N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName]) VALUES (45, 24, 100, 50, N'111')
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
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (4, 31, CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2EB0062E080 AS DateTime), CAST(0x0000A2EB00AD08E0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (5, 31, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2EC0062E080 AS DateTime), CAST(0x0000A2EC00FF6EA0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (6, 31, CAST(0x0000A2ED00000000 AS DateTime), CAST(0x0000A2ED0062E080 AS DateTime), CAST(0x0000A2ED00FF6EA0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (7, 5, CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2EB0062E080 AS DateTime), CAST(0x0000A2EB00AD08E0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (8, 5, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2EC0062E080 AS DateTime), CAST(0x0000A2EC00FF6EA0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (9, 5, CAST(0x0000A2ED00000000 AS DateTime), CAST(0x0000A2ED0062E080 AS DateTime), CAST(0x0000A2ED00FF6EA0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (10, 6, CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2EB0062E080 AS DateTime), CAST(0x0000A2EB00AD08E0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (11, 6, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2EC0062E080 AS DateTime), CAST(0x0000A2EC00FF6EA0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (12, 6, CAST(0x0000A2ED00000000 AS DateTime), CAST(0x0000A2ED0062E080 AS DateTime), CAST(0x0000A2ED00FF6EA0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (13, 7, CAST(0x0000A2EB00000000 AS DateTime), CAST(0x0000A2EB0062E080 AS DateTime), CAST(0x0000A2EB00AD08E0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (14, 7, CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2EC0062E080 AS DateTime), CAST(0x0000A2EC00FF6EA0 AS DateTime), NULL, NULL)
INSERT [dbo].[SchedulesCars] ([ScheduleCarID], [CarID], [Day], [ArriveTime], [PickUpTime], [WayGo], [WayBack]) VALUES (15, 7, CAST(0x0000A2ED00000000 AS DateTime), CAST(0x0000A2ED0062E080 AS DateTime), CAST(0x0000A2ED00FF6EA0 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[SchedulesCars] OFF
SET IDENTITY_INSERT [dbo].[Sponsors] ON 

INSERT [dbo].[Sponsors] ([SponsorID], [AccountID]) VALUES (4, 18)
INSERT [dbo].[Sponsors] ([SponsorID], [AccountID]) VALUES (5, 22)
SET IDENTITY_INSERT [dbo].[Sponsors] OFF
SET IDENTITY_INSERT [dbo].[Universities] ON 

INSERT [dbo].[Universities] ([UniversityID], [Name], [Address], [UniversityCode], [Website], [Phone], [IsRemovable]) VALUES (10, N'Đại học FPT', N'100 Tô Ký, Quận 12', N'FU', N'www.fpt.edu.vn', 47538457, 0)
INSERT [dbo].[Universities] ([UniversityID], [Name], [Address], [UniversityCode], [Website], [Phone], [IsRemovable]) VALUES (11, N'RMIT', N'999 Nguyễn Văn Linh, Quận 7', N'RMIT', N'www.rmit.vn', 74753, 0)
INSERT [dbo].[Universities] ([UniversityID], [Name], [Address], [UniversityCode], [Website], [Phone], [IsRemovable]) VALUES (13, N'Đại học Khoa học Tự Nhiên TpHCM', N'227 Nguyễn Văn Cừ, Quận 5', N'QST', N'www.hcmus.edu.vn', 838354394, 0)
SET IDENTITY_INSERT [dbo].[Universities] OFF
SET IDENTITY_INSERT [dbo].[UniversitiesExaminations] ON 

INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID], [IsRemovable]) VALUES (9, 10, 13, 0)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID], [IsRemovable]) VALUES (10, 11, 14, 1)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID], [IsRemovable]) VALUES (12, 13, 13, 1)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID], [IsRemovable]) VALUES (15, 13, 14, 1)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID], [IsRemovable]) VALUES (16, 13, 15, 1)
SET IDENTITY_INSERT [dbo].[UniversitiesExaminations] OFF
SET IDENTITY_INSERT [dbo].[Venues] ON 

INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Longitude], [Latitude], [Address], [IsRemovable]) VALUES (27, 9, N'106.69713350000006', N'10.7907737', N'120-125 Đinh Tiên Hoàng, Phường Đa Kao, Quận 1', 1)
INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Longitude], [Latitude], [Address], [IsRemovable]) VALUES (31, 9, N'106.69812969999998', N'10.7860673', N'29 Mạc Đĩnh Chi, Phường Đa Kao, Quận 1', 1)
INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Longitude], [Latitude], [Address], [IsRemovable]) VALUES (33, 10, N'106.69004560000008', N'10.7942299', N'55 Trần Khánh Dư, Phường Tân Định, Quận 1', 1)
INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Longitude], [Latitude], [Address], [IsRemovable]) VALUES (34, 9, N'106.69045860000006', N'10.7816408', N'25 Lê Quý Đôn, Phường 7, Quận 3', 1)
INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Longitude], [Latitude], [Address], [IsRemovable]) VALUES (35, 9, N'106.6428065', N'10.7674912', N'341 Lạc Long Quân, Phường 5, Quận 11', 1)
SET IDENTITY_INSERT [dbo].[Venues] OFF
SET IDENTITY_INSERT [dbo].[Volunteers] ON 

INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID], [CharityExamID], [JobName], [Description], [IsApproved]) VALUES (4, 19, 26, N'Singer', N'Nothing to share', 0)
INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID], [CharityExamID], [JobName], [Description], [IsApproved]) VALUES (5, 23, 26, N'Thủ tướng Anh', N'Đại học Oxford', 0)
SET IDENTITY_INSERT [dbo].[Volunteers] OFF
/****** Object:  Index [IX_Candidates]    Script Date: 3/28/2014 10:13:54 AM ******/
ALTER TABLE [dbo].[Candidates] ADD  CONSTRAINT [IX_Candidates] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Charities]    Script Date: 3/28/2014 10:13:54 AM ******/
ALTER TABLE [dbo].[Charities] ADD  CONSTRAINT [IX_Charities] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sponsors]    Script Date: 3/28/2014 10:13:54 AM ******/
ALTER TABLE [dbo].[Sponsors] ADD  CONSTRAINT [IX_Sponsors] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Volunteers]    Script Date: 3/28/2014 10:13:54 AM ******/
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
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Profiles_Districts] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[Districts] ([DistrictID])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_Districts]
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
