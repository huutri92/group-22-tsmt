USE [TSMT]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(7,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ProfileID] [int] NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Articles]    Script Date: 5/10/2014 12:12:12 PM ******/
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
/****** Object:  Table [dbo].[Candidates]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidates](
	[CandidateID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Candidates] PRIMARY KEY CLUSTERED 
(
	[CandidateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cars]    Script Date: 5/10/2014 12:12:12 PM ******/
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
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/10/2014 12:12:12 PM ******/
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
/****** Object:  Table [dbo].[ChairitiesExams]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChairitiesExams](
	[CharityExamID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NOT NULL,
	[CharityID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Charities]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charities](
	[CharityID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Charities] PRIMARY KEY CLUSTERED 
(
	[CharityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 5/10/2014 12:12:12 PM ******/
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
/****** Object:  Table [dbo].[Districts]    Script Date: 5/10/2014 12:12:12 PM ******/
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
/****** Object:  Table [dbo].[Examinations]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examinations](
	[ExaminationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Examinations] PRIMARY KEY CLUSTERED 
(
	[ExaminationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExaminationsPapers]    Script Date: 5/10/2014 12:12:12 PM ******/
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
	[ParticipantVolunteerID] [int] NULL,
 CONSTRAINT [PK_ExamsPaper] PRIMARY KEY CLUSTERED 
(
	[ExamPaperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Funds]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funds](
	[FundID] [int] IDENTITY(1,1) NOT NULL,
	[SponsorID] [int] NOT NULL,
	[CharityExamID] [int] NOT NULL,
	[FundSponsored] [float] NOT NULL,
	[IsApproved] [bit] NOT NULL,
 CONSTRAINT [PK_Funds] PRIMARY KEY CLUSTERED 
(
	[FundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupRequest]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupRequest](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ActiveID] [int] NOT NULL,
	[ReceiveID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
 CONSTRAINT [PK_GroupRequest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 5/10/2014 12:12:12 PM ******/
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
/****** Object:  Table [dbo].[Lodges]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lodges](
	[LodgeID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](400) NOT NULL,
	[Longitude] [nvarchar](50) NOT NULL,
	[Latitude] [nvarchar](50) NOT NULL,
	[SponsorID] [int] NULL,
	[CharityExamID] [int] NULL,
	[TotalSlots] [int] NOT NULL,
	[TotalSlotsInUsed] [int] NOT NULL,
	[AvailableSlots] [int] NOT NULL,
	[CharityID] [int] NULL,
	[IsApproved] [bit] NOT NULL,
 CONSTRAINT [PK_Lodges] PRIMARY KEY CLUSTERED 
(
	[LodgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ParticipantVolunteer]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipantVolunteer](
	[ParticipantVolunteerID] [int] IDENTITY(1,1) NOT NULL,
	[VolunteerID] [int] NOT NULL,
	[CharityExamID] [int] NOT NULL,
	[ExamPaperID] [int] NULL,
	[WayPoints] [nvarchar](max) NULL,
	[IsApproved] [bit] NOT NULL,
 CONSTRAINT [PK_ParticipantVolunteer] PRIMARY KEY CLUSTERED 
(
	[ParticipantVolunteerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 5/10/2014 12:12:12 PM ******/
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
	[Gender] [bit] NOT NULL,
	[DateOfBirth] [date] NULL,
	[PhoneNumber] [varchar](13) NULL,
	[Address] [nvarchar](400) NULL,
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
/****** Object:  Table [dbo].[Provinces]    Script Date: 5/10/2014 12:12:12 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 5/10/2014 12:12:12 PM ******/
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
/****** Object:  Table [dbo].[Rooms]    Script Date: 5/10/2014 12:12:12 PM ******/
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
/****** Object:  Table [dbo].[ScheduleExams]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleExams](
	[ScheduleExamID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NOT NULL,
	[Day] [date] NOT NULL,
	[BeginTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
 CONSTRAINT [PK_DetailsScheduleExams] PRIMARY KEY CLUSTERED 
(
	[ScheduleExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sponsors]    Script Date: 5/10/2014 12:12:12 PM ******/
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
/****** Object:  Table [dbo].[Universities]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Universities](
	[UniversityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[UniversityCode] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](400) NULL,
	[Website] [nvarchar](50) NULL,
	[Phone] [varchar](13) NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[UniversityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UniversitiesExaminations]    Script Date: 5/10/2014 12:12:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venues]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venues](
	[VenueID] [int] IDENTITY(1,1) NOT NULL,
	[UniExamID] [int] NOT NULL,
	[Address] [nvarchar](400) NOT NULL,
	[Longitude] [nvarchar](20) NOT NULL,
	[Latitude] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[VenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Volunteers]    Script Date: 5/10/2014 12:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteers](
	[VolunteerID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Volunteers] PRIMARY KEY CLUSTERED 
(
	[VolunteerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (1, N'admin@gmail.com', N'123', 1, 1, 5)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (2, N'candidate01@gmail.com', N'123', 1, 2, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (3, N'candidate02@gmail.com', N'123', 1, 3, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (4, N'candidate03@gmail.com', N'123', 1, 4, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (5, N'candidate04@gmail.com', N'123', 1, 5, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (6, N'candidate05@gmail.com', N'123', 1, 6, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (7, N'candidate06@gmail.com', N'123', 1, 7, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (8, N'candidate07@gmail.com', N'123', 1, 8, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (9, N'candidate08@gmail.com', N'123', 1, 9, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (10, N'candidate09@gmail.com', N'123', 1, 10, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (11, N'candidate10@gmail.com', N'123', 1, 11, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (12, N'candidate11@gmail.com', N'123', 1, 12, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (13, N'candidate12@gmail.com', N'123', 1, 13, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (14, N'candidate13@gmail.com', N'123', 1, 14, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (15, N'candidate14@gmail.com', N'123', 1, 15, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (16, N'candidate15@gmail.com', N'123', 1, 16, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (17, N'candidate16@gmail.com', N'123', 1, 17, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (18, N'candidate16@gmail.com', N'123', 1, 18, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (19, N'candidate18@gmail.com', N'123', 1, 19, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (20, N'candidate19@gmail.com', N'123', 1, 20, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (21, N'candidate20@gmail.com', N'123', 1, 21, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (22, N'candidate21@gmail.com', N'123', 1, 22, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (23, N'candidate22@gmail.com', N'123', 1, 23, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (24, N'candidate23@gmail.com', N'123', 1, 24, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (25, N'candidate24@gmail.com', N'123', 1, 25, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (26, N'candidate25@gmail.com', N'123', 1, 26, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (27, N'candidate26@gmail.com', N'123', 1, 27, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (28, N'candidate27@gmail.com', N'123', 1, 28, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (29, N'candidate28@gmail.com', N'123', 1, 29, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (30, N'candidate29@gmail.com', N'123', 1, 30, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (31, N'candidate30@gmail.com', N'123', 1, 31, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (32, N'charity01@gmail.com', N'123', 1, 32, 2)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (33, N'charity02@gmail.com', N'123', 1, 33, 2)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (34, N'charity03@gmail.com', N'123', 1, 34, 2)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (35, N'charity04@gmail.com', N'123', 1, 35, 2)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (36, N'charity05@gmail.com', N'123', 1, 36, 2)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (37, N'sponsor01@gmail.com', N'123', 1, 37, 3)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (38, N'sponsor02@gmail.com', N'123', 1, 38, 3)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (39, N'sponsor03@gmail.com', N'123', 1, 39, 3)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (40, N'sponsor04@gmail.com', N'123', 1, 40, 3)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (41, N'sponsor05@gmail.com', N'123', 1, 41, 3)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (42, N'volunteer01@gmail.com', N'123', 1, 42, 4)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (43, N'volunteer02@gmail.com', N'123', 1, 43, 4)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (44, N'volunteer03@gmail.com', N'123', 1, 44, 4)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (45, N'volunteer04@gmail.com', N'123', 1, 45, 4)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (46, N'volunteer05@gmail.com', N'123', 1, 46, 4)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (47, N'volunteer06@gmail.com', N'123', 1, 47, 4)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (48, N'volunteer07@gmail.com', N'123', 1, 48, 4)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (49, N'volunteer08@gmail.com', N'123', 1, 49, 4)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (50, N'volunteer09@gmail.com', N'123', 1, 50, 4)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [IsActive], [ProfileID], [RoleID]) VALUES (51, N'volunteer10@gmail.com', N'123', 1, 51, 4)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET IDENTITY_INSERT [dbo].[Candidates] ON 

INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (1, 2)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (2, 3)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (3, 4)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (4, 5)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (5, 6)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (6, 7)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (7, 8)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (8, 9)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (9, 10)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (10, 11)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (11, 12)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (12, 13)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (13, 14)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (14, 15)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (15, 16)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (16, 17)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (17, 18)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (18, 19)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (19, 20)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (20, 21)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (21, 22)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (22, 23)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (23, 24)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (24, 25)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (25, 26)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (26, 27)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (27, 28)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (28, 29)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (29, 30)
INSERT [dbo].[Candidates] ([CandidateID], [AccountID]) VALUES (30, 31)
SET IDENTITY_INSERT [dbo].[Candidates] OFF
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved], [CharityID]) VALUES (1, 1, 1, N'51S-3459', 9, 3, N'Nguyễn Đông Du', N'0983794331', 1, 1)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved], [CharityID]) VALUES (2, 1, NULL, N'52C-3879', 10, 0, N'Nguyễn Phan Minh Nhật', N'0983823476', 1, 1)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved], [CharityID]) VALUES (3, 1, NULL, N'53C-9845', 7, 3, N'Trần Tường Nam', N'0984610965', 1, 1)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved], [CharityID]) VALUES (4, 1, NULL, N'54C-2398', 7, 7, N'Lý Tiến Dũng', N'01668568251', 1, 1)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved], [CharityID]) VALUES (5, 3, 1, N'51S1-5437', 15, 15, N'Cao Văn Vũ', N'01222029372', 1, 1)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved], [CharityID]) VALUES (6, NULL, 1, N'52S1-5467', 10, 10, N'Lê Văn Hòa', N'01684989898', 0, NULL)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved], [CharityID]) VALUES (7, NULL, NULL, N'55N1- 3456', 10, 10, N'Nguyễn Lữ', N'0985473463', 0, 1)
INSERT [dbo].[Cars] ([CarID], [CharityExamID], [SponsorID], [NumberPlate], [TotalSlots], [AvailableSlots], [DriverName], [DriverPhone], [IsApproved], [CharityID]) VALUES (8, NULL, NULL, N'55N2-8976', 15, 15, N'Nguyễn Bình', N'09843645343', 0, 1)
SET IDENTITY_INSERT [dbo].[Cars] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Thông tin đợt thi')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[ChairitiesExams] ON 

INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (1, 1, 1, 41, 41, 42, 42)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (3, 3, 1, 3, 3, 15, 15)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (4, 1, 2, 4, 4, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (5, 2, 2, 0, 0, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (6, 3, 2, 0, 0, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (7, 1, 3, 18, 18, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (8, 2, 3, 0, 0, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (9, 3, 3, 0, 0, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (10, 1, 4, 13, 13, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (11, 2, 4, 0, 0, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (12, 3, 4, 0, 0, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (13, 1, 5, 64, 64, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (14, 2, 5, 0, 0, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (15, 3, 5, 0, 0, 0, 0)
INSERT [dbo].[ChairitiesExams] ([CharityExamID], [ExamID], [CharityID], [TotalSlotsLodges], [AvailableSlotsLodges], [TotalSlotsVehicles], [AvailableSlotsVehicles]) VALUES (17, 2, 1, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[ChairitiesExams] OFF
SET IDENTITY_INSERT [dbo].[Charities] ON 

INSERT [dbo].[Charities] ([CharityID], [AccountID], [Name], [Description]) VALUES (1, 32, N'Ánh Sáng', NULL)
INSERT [dbo].[Charities] ([CharityID], [AccountID], [Name], [Description]) VALUES (2, 33, N'Thiện Tâm', NULL)
INSERT [dbo].[Charities] ([CharityID], [AccountID], [Name], [Description]) VALUES (3, 34, N'Tâm Đức', NULL)
INSERT [dbo].[Charities] ([CharityID], [AccountID], [Name], [Description]) VALUES (4, 35, N'Minh Tâm', NULL)
INSERT [dbo].[Charities] ([CharityID], [AccountID], [Name], [Description]) VALUES (5, 36, N'Hướng Dương', NULL)
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

INSERT [dbo].[Examinations] ([ExaminationID], [Name], [BeginDate], [EndDate]) VALUES (1, N'Đợt 1 (2014)', CAST(0x0000A35D00000000 AS DateTime), CAST(0x0000A35F00000000 AS DateTime))
INSERT [dbo].[Examinations] ([ExaminationID], [Name], [BeginDate], [EndDate]) VALUES (2, N'Đợt 2 (2014)', CAST(0x0000A36200000000 AS DateTime), CAST(0x0000A36400000000 AS DateTime))
INSERT [dbo].[Examinations] ([ExaminationID], [Name], [BeginDate], [EndDate]) VALUES (3, N'Đợt 3 (2014)', CAST(0x0000A36800000000 AS DateTime), CAST(0x0000A36A00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Examinations] OFF
SET IDENTITY_INSERT [dbo].[ExaminationsPapers] ON 

INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (1, 1, 1, 1, 1, 17, 3, 10, 2, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (2, 2, 1, 1, 1, 17, NULL, 10, 2, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (3, 3, 1, 1, 1, 17, 3, 10, 2, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (4, 4, 1, 1, 1, 17, NULL, 11, 2, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (5, 5, 1, 1, 1, 17, NULL, 11, 2, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (6, 6, 1, 2, 1, 17, NULL, 10, 2, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (7, 7, 1, 2, 1, 17, NULL, 9, 2, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (8, 8, 1, 2, 1, 17, NULL, 9, 2, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (9, 9, 1, 2, 1, 17, NULL, 11, 2, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (10, 10, 1, 2, 1, 17, NULL, 11, 2, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (11, 11, 1, 1, 1, 16, NULL, 6, 1, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (12, 12, 1, 1, 1, 16, NULL, 6, 1, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (13, 13, 1, 1, 1, 16, NULL, 6, 1, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (14, 14, 1, 1, 1, 16, NULL, 6, 1, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (15, 15, 1, 1, 1, 16, NULL, 5, 1, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (16, 16, 1, 1, 1, 16, NULL, 5, 1, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (17, 17, 1, 2, 1, 16, NULL, 5, 3, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (18, 18, 1, 2, 1, 16, NULL, 8, 3, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (19, 19, 1, 2, 1, 16, NULL, 7, 3, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (20, 20, 1, 2, 1, 16, NULL, 7, 3, NULL)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (21, 21, 1, 3, 1, 16, NULL, 8, NULL, 19)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (22, 22, 1, 3, 1, 16, NULL, 8, NULL, 20)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (23, 23, 1, 3, 1, 16, NULL, 7, NULL, 21)
INSERT [dbo].[ExaminationsPapers] ([ExamPaperID], [CandidateID], [UniExamID], [VenueID], [CharityExamID], [LodgeRegisteredID], [GroupID], [RoomID], [CarID], [ParticipantVolunteerID]) VALUES (24, 24, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ExaminationsPapers] OFF
SET IDENTITY_INSERT [dbo].[Funds] ON 

INSERT [dbo].[Funds] ([FundID], [SponsorID], [CharityExamID], [FundSponsored], [IsApproved]) VALUES (1, 1, 3, 3000000, 0)
INSERT [dbo].[Funds] ([FundID], [SponsorID], [CharityExamID], [FundSponsored], [IsApproved]) VALUES (2, 1, 12, 2000000, 1)
SET IDENTITY_INSERT [dbo].[Funds] OFF
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([GroupID], [OwnerID], [Quantity]) VALUES (3, 1, 2)
SET IDENTITY_INSERT [dbo].[Groups] OFF
SET IDENTITY_INSERT [dbo].[Lodges] ON 

INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (1, N'95 Phù Đổng Thiên Vương, Phường 11, Quận 5', N'106.66254219999996', N'10.7547798', NULL, NULL, 15, 15, 15, 1, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (2, N'592 Xô Viết Nghệ Tĩnh, Phường 25, Quận Binh Thanh', N'106.71402990000001', N'10.8111182', NULL, NULL, 0, 0, 0, 2, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (3, N'27 Trường Sơn, Phường 15, Quận 10', N'106.66126550000001', N'10.7809505', NULL, NULL, 9, 9, 9, 3, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (4, N'5 Trần Quý, Phường 4, Quận 11', N'106.65843310000002', N'10.7596231', NULL, NULL, 7, 7, 7, 4, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (5, N'447 Tân Hòa Đông, Phường Bình Trị Đông, Quận Bình Tân', N'106.61557670000002', N'10.7675018', NULL, NULL, 13, 13, 13, 5, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (6, N'14 Nguyễn Bá Luật, Phường Bình Thọ, Quận Thu Duc', N'106.76501869999993', N'10.8479160', NULL, NULL, 7, 7, 7, 1, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (7, N'739 Phan Văn Trị, Phường 7, Quận Gò Vấp', N'106.68590659999995', N'10.8280651', NULL, NULL, 0, 0, 0, 2, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (8, N'582 Huỳnh Tấn Phát, Phường Tân Phú, Quận 7', N'106.73056840000004', N'10.7361333', NULL, NULL, 9, 9, 9, 3, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (9, N'129 Nguyễn Hữu Cảnh, Phường 22, Quận Binh Thanh', N'106.71782250000001', N'10.7960742', NULL, NULL, 9, 9, 9, 4, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (10, N'304 Lê Văn Sỹ, Phường 1, Quận Tan Binh', N'106.66518689999998', N'10.7965221', NULL, NULL, 12, 12, 12, 5, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (11, N'5 Bùi Đình Tuý, Phường 26, Quận Binh Thanh', N'106.70891219999999', N'10.8083887', NULL, NULL, 4, 4, 4, 1, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (12, N'3 Bùi Quang Là, Phường 12, Quận Gò Vấp', N'106.63771410000004', N'10.8358731', NULL, NULL, 0, 0, 0, 2, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (13, N'18 Phạm Văn Chiêu, Phường 12, Quận Gò Vấp', N'106.65287020000005', N'10.8502184', NULL, NULL, 0, 0, 0, 3, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (14, N'275 Tân Chánh Hiệp 10, Phường Tân Chánh Hiệp, Quận 12', N'106.62615000000005', N'10.8677146', NULL, NULL, 0, 0, 0, 4, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (15, N'787 Lạc Long Quân, Phường 10, Quận Tan Binh', N'106.65058490000001', N'10.7831269', NULL, NULL, 13, 13, 13, 5, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (16, N'95 Phù Đổng Thiên Vương, Phường 11, Quận 5', N'106.66254219999996', N'10.7547798', NULL, 1, 15, 15, 2, 1, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (17, N'450 Sư Vạn Hạnh, Phường 9, Quận 10', N'106.67202109999994', N'10.7658734', 1, 1, 15, 15, 5, 1, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (18, N'592 Xô Viết Nghệ Tĩnh, Phường 25, Quận Binh Thanh', N'106.71402990000001', N'10.8111182', NULL, 4, 4, 4, 4, 2, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (19, N'14 Nguyễn Bá Luật, Phường Bình Thọ, Quận Thu Duc', N'106.76501869999993', N'10.8479160', NULL, 1, 7, 7, 7, 1, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (20, N'5 Bùi Đình Tuý, Phường 26, Quận Binh Thanh', N'106.70891219999999', N'10.8083887', NULL, 1, 4, 4, 4, 1, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (21, N'27 Trường Sơn, Phường 15, Quận 10', N'106.66126550000001', N'10.7809505', NULL, 7, 9, 9, 9, 3, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (22, N'582 Huỳnh Tấn Phát, Phường Tân Phú, Quận 7', N'106.73056840000004', N'10.7361333', NULL, 7, 9, 9, 9, 3, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (23, N'5 Trần Quý, Phường 4, Quận 11', N'106.65843310000002', N'10.7596231', NULL, 10, 7, 4, 4, 4, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (24, N'129 Nguyễn Hữu Cảnh, Phường 22, Quận Binh Thanh', N'106.71782250000001', N'10.7960742', NULL, 10, 9, 9, 9, 4, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (25, N'447 Tân Hòa Đông, Phường Bình Trị Đông, Quận Bình Tân', N'106.61557670000002', N'10.7675018', NULL, 13, 13, 13, 13, 5, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (26, N'304 Lê Văn Sỹ, Phường 1, Quận Tan Binh', N'106.66518689999998', N'10.7965221', NULL, 13, 12, 12, 12, 5, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (29, N'787 Lạc Long Quân, Phường 10, Quận Tan Binh', N'106.65058490000001', N'10.7831269', NULL, 13, 13, 13, 13, 5, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (30, N'107 Hàm Nghi, Phường Nguyễn Thái Bình, Quận 1', N'106.70107510000003', N'10.7708811', 1, NULL, 7, 7, 7, NULL, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (31, N'48 Huỳnh Thúc Kháng, Phường Bến Nghé, Quận 1', N'106.70229790000008', N'10.7725399', 1, NULL, 7, 7, 7, NULL, 0)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (40, N'1028 Chợ Bến Thành, Phường Bến Thành, Quận 1', N'106.69618243278808', N'10.770853440258147', NULL, NULL, 0, 0, 0, 1, 1)
INSERT [dbo].[Lodges] ([LodgeID], [Address], [Longitude], [Latitude], [SponsorID], [CharityExamID], [TotalSlots], [TotalSlotsInUsed], [AvailableSlots], [CharityID], [IsApproved]) VALUES (41, N'14 Nguyễn Bá Luật, Phường Bình Thọ, Quận Thu Duc', N'106.76501869999993', N'10.8479160', NULL, 3, 7, 3, 3, 1, 1)
SET IDENTITY_INSERT [dbo].[Lodges] OFF
SET IDENTITY_INSERT [dbo].[ParticipantVolunteer] ON 

INSERT [dbo].[ParticipantVolunteer] ([ParticipantVolunteerID], [VolunteerID], [CharityExamID], [ExamPaperID], [WayPoints], [IsApproved]) VALUES (19, 2, 1, 21, NULL, 1)
INSERT [dbo].[ParticipantVolunteer] ([ParticipantVolunteerID], [VolunteerID], [CharityExamID], [ExamPaperID], [WayPoints], [IsApproved]) VALUES (20, 3, 1, 22, NULL, 1)
INSERT [dbo].[ParticipantVolunteer] ([ParticipantVolunteerID], [VolunteerID], [CharityExamID], [ExamPaperID], [WayPoints], [IsApproved]) VALUES (21, 4, 1, 23, NULL, 1)
INSERT [dbo].[ParticipantVolunteer] ([ParticipantVolunteerID], [VolunteerID], [CharityExamID], [ExamPaperID], [WayPoints], [IsApproved]) VALUES (22, 5, 1, NULL, NULL, 1)
INSERT [dbo].[ParticipantVolunteer] ([ParticipantVolunteerID], [VolunteerID], [CharityExamID], [ExamPaperID], [WayPoints], [IsApproved]) VALUES (23, 1, 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[ParticipantVolunteer] OFF
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (1, 1, N'Khoa', N'Nguyễn Duy', 1, CAST(0x94190B00 AS Date), N'984837123', N'10 Lạc Long Quân, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (2, 2, N'Huy', N'Nguyễn Minh', 1, CAST(0xAC1F0B00 AS Date), N'1668659342', N'2 Lê Lợi, phường 9', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (3, 3, N'Minh', N'Phạm Huy', 1, CAST(0xAE1E0B00 AS Date), N'962588888', N'34 Quang Trung, phường Tân Thới Hiệp', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (4, 4, N'Tuấn', N'Lê Hoàng', 1, CAST(0x4E1F0B00 AS Date), N'909091996', N'15 Lũy Bán Bích, phường 12', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (5, 5, N'Thùy', N'Nguyễn Minh', 0, CAST(0xF51E0B00 AS Date), N'1639393939', N'35 Cây Keo, phường 8', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (6, 6, N'Mai', N'Lê Trần Hoàng', 0, CAST(0x6D1F0B00 AS Date), N'1639393939', N'100 Tân Hòa Đông, phường 10', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (7, 7, N'Trung', N'Huỳnh Văn', 1, CAST(0x4E1F0B00 AS Date), N'965229999', N'9 Nguyễn Văn Quá, phường Tân Chánh Hiệp', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (8, 8, N'Duy', N'Phạm Hoàng', 1, CAST(0x5C1F0B00 AS Date), N'967699999', N'90 Đinh Bộ Lĩnh, phường 1', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (9, 9, N'Dương', N'Nguyễn Ngọc', 1, CAST(0x1F1F0B00 AS Date), N'976868686', N'19 Điện Biên Phủ, phường 22', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (10, 10, N'Thu', N'Võ Hoài', 0, CAST(0x4E1F0B00 AS Date), N'969779999', N'28 Phạm Ngọc Thạch, phường 2', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (11, 11, N'Trang', N'Lê Nguyễn Minh', 0, CAST(0xB71F0B00 AS Date), N'1666777888', N'45 Hai Bà Trưng, phường 20', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (12, 12, N'Tú', N'Lê Tuấn', 1, CAST(0xAD1E0B00 AS Date), N'976969696', N'20 Cách Mạng Tháng 8, phường 15', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (13, 13, N'Nhiên', N'Lê Trần Hạo', 1, CAST(0xCA1E0B00 AS Date), N'1683838383', N'35 Cây Keo, phường 8', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (14, 14, N'Quân', N'Nguyễn Minh', 1, CAST(0x251F0B00 AS Date), N'969868888', N'23 Lương Thế Vinh, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (15, 15, N'Tâm', N'Lê Minh', 1, CAST(0xDD1E0B00 AS Date), N'1683456789', N'100 Thạch Lam, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (16, 16, N'Sơn', N'Hoàng Thái', 1, CAST(0xD11E0B00 AS Date), N'968838888', N'234 Lạc Long Quân, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (17, 17, N'Văn', N'Trần Kiến', 1, CAST(0xF21E0B00 AS Date), N'986565656', N'256 Thoại Ngọc Hầu, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (18, 18, N'Vũ', N'Võ Uy', 1, CAST(0xA91F0B00 AS Date), N'984778899', N'35 Cây Keo, phường 8', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (19, 19, N'Nguyên', N'Nguyễn Hoàng', 1, CAST(0x2F1F0B00 AS Date), N'988789999', N'9 Nguyễn Văn Quá, phường Tân Chánh Hiệp', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (20, 20, N'Hồng', N'Nguyễn Thị Kim', 0, CAST(0x101F0B00 AS Date), N'1659888888', N'45 Hai Bà Trưng, phường 20', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (21, 21, N'Kim', N'Dương Thị Thiên', 0, CAST(0xF21E0B00 AS Date), N'1686668888', N'10 An Dương Vương, phường 3', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (22, 22, N'Minh', N'Trần Thiện', 1, CAST(0x491F0B00 AS Date), N'964797979', N'10 Nguyễn Hữu Cảnh, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (23, 23, N'Dũng', N'Bùi Tiến', 1, CAST(0x8D1F0B00 AS Date), N'962678888', N'10 Trần Hưng Đạo, phường 2', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (24, 24, N'Mai', N'Lê Hoàng Ngọc', 0, CAST(0xEF1E0B00 AS Date), N'1669888888', N'10 Nguyễn Bình Khiêm, phường 1', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (25, 25, N'Thu', N'Nguyễn Xuân', 0, CAST(0xF91E0B00 AS Date), N'983666668', N'2 Lê Lợi, phường 9', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (26, 26, N'Duy', N'Hoàng Trọng', 1, CAST(0xD91E0B00 AS Date), N'973998888', N'107 Lạc Long Quân, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (27, 27, N'Lân', N'Nguyễn Hoàng', 1, CAST(0x541E0B00 AS Date), N'964868888', N'202 Hồ Học Lãm, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (28, 28, N'Phúc', N'Huỳnh Thiên', 1, CAST(0xC31E0B00 AS Date), N'964448888', N'10 Kinh Dương Vương, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (29, 29, N'Mai', N'Trần Yên', 0, CAST(0x4E1F0B00 AS Date), N'964449999', N'19 Điện Biên Phủ, phường 22', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (30, 30, N'Linh', N'Huỳnh Ái', 0, CAST(0xAC1F0B00 AS Date), N'972789789', N'20 Cách Mạng Tháng 8, phường 15', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (31, 31, N'Miên', N'Lê Trần Hải', 0, CAST(0x4E1F0B00 AS Date), N'986909999', N'10 Lạc Long Quân, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (32, 32, N'Quân', N'Nguyễn Đông', 1, CAST(0xA6020B00 AS Date), N'969989898', N'110 Nguyễn Trọng Tuyển, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (33, 33, N'Quang', N'Huỳnh Nhật', 1, CAST(0xDE050B00 AS Date), N'975177777', N'120 Hai Bà Trưng, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (34, 34, N'Trung', N'Trần Đức', 1, CAST(0x8D0E0B00 AS Date), N'977818181', N'130 Võ Thị Sáu, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (35, 35, N'Thiện', N'Lê Huỳnh Gia', 1, CAST(0xEDF70A00 AS Date), N'967229999', N'190 Phan Huy Ích, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (36, 36, N'Vương', N'Võ Hoàng', 1, CAST(0x05FE0A00 AS Date), N'967777888', N'109 Nguyễn Hồng Đào, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (37, 37, N'Lộc', N'Huỳnh Văn', 1, CAST(0x5F050B00 AS Date), N'983777888', N'150 Võ Văn Tần, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (38, 38, N'Long', N'Nguyễn Việt', 1, CAST(0x54070B00 AS Date), N'965798888', N'32 Nam Kỳ Khởi Nghĩa, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (39, 39, N'Luận', N'Lê Công', 1, CAST(0x120C0B00 AS Date), N'962123456', N'150 Phan Xích Long, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (40, 40, N'Ngân', N'Huỳnh Bích', 1, CAST(0x7AF70A00 AS Date), N'977528888', N'210 Phạm Văn Chiêu, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (41, 41, N'Nghi', N'Nguyễn Hoàng Phương', 1, CAST(0x72070B00 AS Date), N'1668668668', N'130 Phạm Đình Hổ, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (42, 42, N'An', N'Lê Trần Thiên', 1, CAST(0x62160B00 AS Date), N'972111777', N'10 Lê Đại Hành, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (43, 43, N'Dũng', N'Nguyễn Ngọc', 1, CAST(0xAD190B00 AS Date), N'1685666666', N'10 Kinh Dương Vương, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (44, 44, N'Khôi', N'Nguyễn Hoàng', 1, CAST(0x7D1C0B00 AS Date), N'1695555555', N'10 An Dương Vương, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (45, 45, N'Hoàng', N'Lê Sỹ', 1, CAST(0x431B0B00 AS Date), N'967839999', N'10 Cộng Hòa, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (46, 46, N'Huỳnh', N'Lê Nguyễn Bảo', 1, CAST(0x281D0B00 AS Date), N'963212161', N'10 Hoàng Văn Thụ, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (47, 47, N'Ngĩa', N'Huỳnh Trọng', 1, CAST(0xAA1A0B00 AS Date), N'963212126', N'20 Hồng Bàng, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (48, 48, N'My', N'Lê Nguyễn Bảo', 1, CAST(0x1E190B00 AS Date), N'963212125', N'50 Phan Huy Ích, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (49, 49, N'Lan', N'Nguyễn Tuyết', 1, CAST(0x92170B00 AS Date), N'96321223', N'100 Trường Chinh, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (50, 50, N'Nam', N'Trần Hoàng', 1, CAST(0x351C0B00 AS Date), N'963212112', N'20 Lê Trọng Tấn, phường 6', NULL, NULL)
INSERT [dbo].[Profiles] ([ProfileID], [AccountID], [Firstname], [Lastname], [Gender], [DateOfBirth], [PhoneNumber], [Address], [DistrictID], [ImagePath]) VALUES (51, 51, N'Huỳnh', N'Lê Nguyễn Bảo', 1, CAST(0xE01D0B00 AS Date), N'963212113', N'30 Lạc Long Quân, phường 6', NULL, NULL)
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

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Thí sinh')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Hội từ thiện')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'Nhà tài trợ')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (4, N'Tình nguyện viên')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (5, N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (1, 1, 3, 3, N'A101', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (2, 1, 4, 4, N'A102', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (3, 1, 5, 5, N'A103', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (4, 1, 3, 3, N'A104', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (5, 16, 3, 0, N'A101', 1, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (6, 16, 4, 0, N'A102', 1, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (7, 16, 5, 2, N'A103', 0, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (8, 16, 3, 0, N'A104', 1, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (9, 17, 3, 1, N'S101', 1, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (10, 17, 4, 0, N'S102', 1, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (11, 17, 5, 1, N'S103', 0, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (12, 17, 3, 3, N'S104', NULL, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (14, 18, 4, 4, N'C101', NULL, 4)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (18, 6, 3, 3, N'C101', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (19, 6, 4, 4, N'C102', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (20, 19, 3, 3, N'C101', NULL, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (21, 19, 4, 4, N'C102', NULL, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (22, 11, 4, 4, N'F101', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (23, 20, 4, 4, N'F101', NULL, 1)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (24, 3, 4, 4, N'S101', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (25, 3, 5, 5, N'S102', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (26, 21, 4, 4, N'S101', NULL, 7)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (27, 21, 5, 5, N'S102', NULL, 7)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (28, 8, 5, 5, N'S103', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (29, 8, 4, 4, N'S105', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (30, 22, 5, 5, N'S103', NULL, 7)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (31, 22, 4, 4, N'S105', NULL, 7)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (32, 4, 3, 3, N'R101', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (33, 4, 4, 4, N'R102', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (34, 23, 4, 4, N'R102', NULL, 10)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (35, 9, 4, 4, N'P101', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (36, 9, 5, 5, N'P103', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (37, 24, 4, 4, N'P101', NULL, 10)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (38, 24, 5, 5, N'P103', NULL, 10)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (39, 5, 4, 4, N'H101', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (40, 5, 4, 4, N'H102', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (41, 5, 5, 5, N'H103', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (42, 25, 4, 4, N'H101', NULL, 13)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (43, 25, 4, 4, N'H102', NULL, 13)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (44, 25, 5, 5, N'H103', NULL, 13)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (45, 10, 4, 4, N'D101', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (46, 10, 3, 3, N'D102', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (47, 10, 5, 5, N'D103', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (48, 26, 4, 4, N'D101', NULL, 13)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (49, 26, 3, 3, N'D102', NULL, 13)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (50, 26, 5, 5, N'D103', NULL, 13)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (51, 15, 4, 4, N'P101', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (52, 15, 4, 4, N'P102', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (53, 15, 5, 5, N'P103', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (60, 29, 4, 4, N'P101', NULL, 13)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (61, 29, 4, 4, N'P102', NULL, 13)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (62, 29, 5, 5, N'P103', NULL, 13)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (63, 30, 4, 4, N'101', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (64, 30, 3, 3, N'102', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (65, 31, 7, 7, N'102', NULL, NULL)
INSERT [dbo].[Rooms] ([RoomID], [LodgeID], [TotalSlots], [AvailableSlots], [RoomName], [Gender], [CharityExamID]) VALUES (83, 41, 3, 3, N'C101', NULL, 3)
SET IDENTITY_INSERT [dbo].[Rooms] OFF
SET IDENTITY_INSERT [dbo].[ScheduleExams] ON 

INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginTime], [EndTime]) VALUES (51, 1, CAST(0xB9380B00 AS Date), CAST(0x0000A35E00735B40 AS DateTime), CAST(0x0000A35E011826C0 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginTime], [EndTime]) VALUES (52, 1, CAST(0xBA380B00 AS Date), CAST(0x0000A35F00735B40 AS DateTime), CAST(0x0000A35F011826C0 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginTime], [EndTime]) VALUES (53, 1, CAST(0xBB380B00 AS Date), CAST(0x0000A36000735B40 AS DateTime), CAST(0x0000A360011826C0 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginTime], [EndTime]) VALUES (54, 2, CAST(0xC0380B00 AS Date), CAST(0x0000A36500735B40 AS DateTime), CAST(0x0000A365011826C0 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginTime], [EndTime]) VALUES (55, 2, CAST(0xC1380B00 AS Date), CAST(0x0000A36600735B40 AS DateTime), CAST(0x0000A366011826C0 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginTime], [EndTime]) VALUES (56, 2, CAST(0xC2380B00 AS Date), CAST(0x0000A36700735B40 AS DateTime), CAST(0x0000A367011826C0 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginTime], [EndTime]) VALUES (57, 3, CAST(0xCA380B00 AS Date), CAST(0x0000A36F00735B40 AS DateTime), CAST(0x0000A36F011826C0 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginTime], [EndTime]) VALUES (58, 3, CAST(0xCB380B00 AS Date), CAST(0x0000A37000735B40 AS DateTime), CAST(0x0000A370011826C0 AS DateTime))
INSERT [dbo].[ScheduleExams] ([ScheduleExamID], [ExamID], [Day], [BeginTime], [EndTime]) VALUES (59, 3, CAST(0xCC380B00 AS Date), CAST(0x0000A37100735B40 AS DateTime), CAST(0x0000A371011826C0 AS DateTime))
SET IDENTITY_INSERT [dbo].[ScheduleExams] OFF
SET IDENTITY_INSERT [dbo].[Sponsors] ON 

INSERT [dbo].[Sponsors] ([SponsorID], [AccountID]) VALUES (1, 37)
INSERT [dbo].[Sponsors] ([SponsorID], [AccountID]) VALUES (2, 38)
INSERT [dbo].[Sponsors] ([SponsorID], [AccountID]) VALUES (3, 39)
INSERT [dbo].[Sponsors] ([SponsorID], [AccountID]) VALUES (4, 40)
INSERT [dbo].[Sponsors] ([SponsorID], [AccountID]) VALUES (5, 41)
SET IDENTITY_INSERT [dbo].[Sponsors] OFF
SET IDENTITY_INSERT [dbo].[Universities] ON 

INSERT [dbo].[Universities] ([UniversityID], [Name], [UniversityCode], [Address], [Website], [Phone]) VALUES (1, N'Đại học Khoa học tự nhiên Tp.HCM', N'QST', N'227 Nguyễn Văn Cừ, Q.5, TP.HCM', N'http://www.hcmus.edu.vn', N'838354394')
INSERT [dbo].[Universities] ([UniversityID], [Name], [UniversityCode], [Address], [Website], [Phone]) VALUES (2, N'Đại học Bách Khoa Tp.HCM', N'QSB', N'268 Lý Thường Kiệt, Q.10, TP.HCM', N'http://www.aao.hcmut.edu.vn', N'838637002')
INSERT [dbo].[Universities] ([UniversityID], [Name], [UniversityCode], [Address], [Website], [Phone]) VALUES (3, N'Đại học Công nghiệp Tp.HCM', N'IUH', N'12, Nguyễn Văn Bảo, P.4, Q.Gò Vấp, TP.HCM', N'http://www.iuh.edu.vn', N'839850578')
INSERT [dbo].[Universities] ([UniversityID], [Name], [UniversityCode], [Address], [Website], [Phone]) VALUES (4, N'Đại học Tôn Đức Thắng', N'TDT', N'Đường Nguyễn Hữu Thọ, P.Tân Phong, Q.7, Tp.HCM', N'http://www.tdt.edu.vn', N'838405008')
INSERT [dbo].[Universities] ([UniversityID], [Name], [UniversityCode], [Address], [Website], [Phone]) VALUES (5, N'Đại học Nông Lâm TP.HCM', N'NLS', N'Khu phố 6, P.Linh Trung, Q.Thủ Đức, TP.HCM', N'http://www.hcmus.edu.vn', N'838963350')
SET IDENTITY_INSERT [dbo].[Universities] OFF
SET IDENTITY_INSERT [dbo].[UniversitiesExaminations] ON 

INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (1, 1, 1)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (2, 1, 2)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (3, 1, 3)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (4, 2, 1)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (5, 2, 2)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (6, 2, 3)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (7, 3, 1)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (8, 3, 2)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (9, 3, 3)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (10, 4, 1)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (11, 4, 2)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (12, 4, 3)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (13, 5, 1)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (14, 5, 2)
INSERT [dbo].[UniversitiesExaminations] ([UniExamID], [UniversityID], [ExaminationID]) VALUES (15, 5, 3)
SET IDENTITY_INSERT [dbo].[UniversitiesExaminations] OFF
SET IDENTITY_INSERT [dbo].[Venues] ON 

INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Address], [Longitude], [Latitude]) VALUES (1, 1, N'227 Nguyễn Văn Cừ, Phường 4, Quận 5', N'106.68241740000008', N'10.7631857')
INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Address], [Longitude], [Latitude]) VALUES (2, 1, N'838 Hồng Bàng, Phường 12, Quận 6', N'106.63490980000006', N'10.7542662')
INSERT [dbo].[Venues] ([VenueID], [UniExamID], [Address], [Longitude], [Latitude]) VALUES (3, 1, N'6 Hoàng Hoa Thám, Phường 7, Quận Binh Thanh', N'106.69222890000003', N'10.8036411')
SET IDENTITY_INSERT [dbo].[Venues] OFF
SET IDENTITY_INSERT [dbo].[Volunteers] ON 

INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID]) VALUES (1, 42)
INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID]) VALUES (2, 43)
INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID]) VALUES (3, 44)
INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID]) VALUES (4, 45)
INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID]) VALUES (5, 46)
INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID]) VALUES (6, 47)
INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID]) VALUES (7, 48)
INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID]) VALUES (8, 49)
INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID]) VALUES (9, 50)
INSERT [dbo].[Volunteers] ([VolunteerID], [AccountID]) VALUES (10, 51)
SET IDENTITY_INSERT [dbo].[Volunteers] OFF
/****** Object:  Index [IX_Candidates]    Script Date: 5/10/2014 12:12:13 PM ******/
ALTER TABLE [dbo].[Candidates] ADD  CONSTRAINT [IX_Candidates] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Charities]    Script Date: 5/10/2014 12:12:13 PM ******/
ALTER TABLE [dbo].[Charities] ADD  CONSTRAINT [IX_Charities] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sponsors]    Script Date: 5/10/2014 12:12:13 PM ******/
ALTER TABLE [dbo].[Sponsors] ADD  CONSTRAINT [IX_Sponsors] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Volunteers]    Script Date: 5/10/2014 12:12:13 PM ******/
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
ALTER TABLE [dbo].[Cars]  WITH NOCHECK ADD  CONSTRAINT [FK_Cars_Sponsors] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsors] ([SponsorID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Sponsors]
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
ALTER TABLE [dbo].[ExaminationsPapers]  WITH NOCHECK ADD  CONSTRAINT [FK_ExaminationsPapers_ParticipantVolunteer] FOREIGN KEY([ParticipantVolunteerID])
REFERENCES [dbo].[ParticipantVolunteer] ([ParticipantVolunteerID])
GO
ALTER TABLE [dbo].[ExaminationsPapers] CHECK CONSTRAINT [FK_ExaminationsPapers_ParticipantVolunteer]
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
ALTER TABLE [dbo].[GroupRequest]  WITH NOCHECK ADD  CONSTRAINT [FK_GroupRequest_Groups] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Groups] ([GroupID])
GO
ALTER TABLE [dbo].[GroupRequest] CHECK CONSTRAINT [FK_GroupRequest_Groups]
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
ALTER TABLE [dbo].[ParticipantVolunteer]  WITH NOCHECK ADD  CONSTRAINT [FK_ParticipantVolunteer_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[ParticipantVolunteer] CHECK CONSTRAINT [FK_ParticipantVolunteer_ChairitiesExams]
GO
ALTER TABLE [dbo].[ParticipantVolunteer]  WITH NOCHECK ADD  CONSTRAINT [FK_ParticipantVolunteer_ExaminationsPapers] FOREIGN KEY([ExamPaperID])
REFERENCES [dbo].[ExaminationsPapers] ([ExamPaperID])
GO
ALTER TABLE [dbo].[ParticipantVolunteer] CHECK CONSTRAINT [FK_ParticipantVolunteer_ExaminationsPapers]
GO
ALTER TABLE [dbo].[ParticipantVolunteer]  WITH NOCHECK ADD  CONSTRAINT [FK_ParticipantVolunteer_Volunteers] FOREIGN KEY([VolunteerID])
REFERENCES [dbo].[Volunteers] ([VolunteerID])
GO
ALTER TABLE [dbo].[ParticipantVolunteer] CHECK CONSTRAINT [FK_ParticipantVolunteer_Volunteers]
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
ALTER TABLE [dbo].[Rooms]  WITH NOCHECK ADD  CONSTRAINT [FK_Rooms_ChairitiesExams] FOREIGN KEY([CharityExamID])
REFERENCES [dbo].[ChairitiesExams] ([CharityExamID])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_ChairitiesExams]
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
