USE [TSMT]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Articles]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[ArticleID] [int] NOT NULL,
	[ArticleName] [nvarchar](50) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[AccountID] [int] NOT NULL,
	[Contents] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[ApproveDated] [datetime] NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Candidates]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidates](
	[CandidateID] [int] NOT NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Candidates] PRIMARY KEY CLUSTERED 
(
	[CandidateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CandidatesExaminations]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidatesExaminations](
	[CandidateID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/25/2014 9:48:12 PM ******/
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
/****** Object:  Table [dbo].[ChairitiesExams]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChairitiesExams](
	[ChairityID] [int] NULL,
	[ExaminationID] [int] NULL,
	[RegisteredInformationID] [int] NULL,
	[LodgeID] [int] NULL,
	[SponsorID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Charities]    Script Date: 2/25/2014 9:48:12 PM ******/
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
/****** Object:  Table [dbo].[Comments]    Script Date: 2/25/2014 9:48:12 PM ******/
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
/****** Object:  Table [dbo].[Examinations]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examinations](
	[ExaminationID] [int] NOT NULL,
 CONSTRAINT [PK_Examinations] PRIMARY KEY CLUSTERED 
(
	[ExaminationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExaminationsCantidates]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExaminationsCantidates](
	[CandidateID] [int] NOT NULL,
	[ExaminationID] [int] NOT NULL,
 CONSTRAINT [PK_ExaminationsCantidates] PRIMARY KEY CLUSTERED 
(
	[CandidateID] ASC,
	[ExaminationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Funds]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funds](
	[FundID] [int] NOT NULL,
	[CharityID] [int] NULL,
	[DateSponsored] [date] NULL,
	[FundSponsored] [nvarchar](50) NULL,
 CONSTRAINT [PK_Funds] PRIMARY KEY CLUSTERED 
(
	[FundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lodges]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lodges](
	[LodgeID] [int] NOT NULL,
	[CharityID] [int] NULL,
	[Address] [nvarchar](50) NULL,
	[Ward] [nvarchar](50) NULL,
	[District] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lodges] PRIMARY KEY CLUSTERED 
(
	[LodgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LodgesCandidates]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LodgesCandidates](
	[CandidateID] [int] NULL,
	[LodgeID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LodgesSponsores]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LodgesSponsores](
	[LodgeID] [int] NULL,
	[SponsorID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 2/25/2014 9:48:12 PM ******/
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
	[City] [nvarchar](50) NULL,
	[Images] [nvarchar](50) NULL,
	[HighSchoolName] [nvarchar](50) NULL,
	[HighSchoolAddress] [nvarchar](50) NULL,
	[HighSchoolDistrict] [nvarchar](50) NULL,
	[HighSchoolCity] [nvarchar](50) NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 2/25/2014 9:48:12 PM ******/
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
/****** Object:  Table [dbo].[RegisteredInformations]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisteredInformations](
	[ID] [int] NOT NULL,
	[CandidateID] [int] NOT NULL,
 CONSTRAINT [PK_RegisteredInformations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/25/2014 9:48:12 PM ******/
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
/****** Object:  Table [dbo].[Sponsores]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsores](
	[SponsorID] [int] NOT NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_Sponsores] PRIMARY KEY CLUSTERED 
(
	[SponsorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[University]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[University](
	[UniversityID] [int] NOT NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[UniversityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UniversityExamination]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniversityExamination](
	[UniversityID] [int] NOT NULL,
	[ExaminationID] [int] NOT NULL,
	[VenueID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[VehicleID] [int] NOT NULL,
	[VehicleTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleType]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleType](
	[VehicleTypeID] [int] NOT NULL,
	[VehicleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VehicleType] PRIMARY KEY CLUSTERED 
(
	[VehicleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venues]    Script Date: 2/25/2014 9:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venues](
	[VenueID] [int] NOT NULL,
	[VenueName] [nvarchar](50) NULL,
	[VenueAddresss] [nvarchar](50) NULL,
	[VenueWard] [nvarchar](50) NULL,
	[VenueDistrict] [nvarchar](50) NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[VenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Volunteers]    Script Date: 2/25/2014 9:48:12 PM ******/
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
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Articles_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Articles_Accounts]
GO
ALTER TABLE [dbo].[Candidates]  WITH CHECK ADD  CONSTRAINT [FK_Candidates_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Candidates] CHECK CONSTRAINT [FK_Candidates_Accounts]
GO
ALTER TABLE [dbo].[ChairitiesExams]  WITH CHECK ADD  CONSTRAINT [FK_ChairitiesExams_Charities] FOREIGN KEY([ChairityID])
REFERENCES [dbo].[Charities] ([CharityID])
GO
ALTER TABLE [dbo].[ChairitiesExams] CHECK CONSTRAINT [FK_ChairitiesExams_Charities]
GO
ALTER TABLE [dbo].[ChairitiesExams]  WITH CHECK ADD  CONSTRAINT [FK_ChairitiesExams_Examinations] FOREIGN KEY([ExaminationID])
REFERENCES [dbo].[Examinations] ([ExaminationID])
GO
ALTER TABLE [dbo].[ChairitiesExams] CHECK CONSTRAINT [FK_ChairitiesExams_Examinations]
GO
ALTER TABLE [dbo].[ChairitiesExams]  WITH CHECK ADD  CONSTRAINT [FK_ChairitiesExams_RegisteredInformations] FOREIGN KEY([RegisteredInformationID])
REFERENCES [dbo].[RegisteredInformations] ([ID])
GO
ALTER TABLE [dbo].[ChairitiesExams] CHECK CONSTRAINT [FK_ChairitiesExams_RegisteredInformations]
GO
ALTER TABLE [dbo].[Charities]  WITH CHECK ADD  CONSTRAINT [FK_Charities_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Charities] CHECK CONSTRAINT [FK_Charities_Accounts]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Accounts]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Articles] FOREIGN KEY([ArticleID])
REFERENCES [dbo].[Articles] ([ArticleID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Articles]
GO
ALTER TABLE [dbo].[ExaminationsCantidates]  WITH CHECK ADD  CONSTRAINT [FK_ExaminationsCantidates_Candidates] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidates] ([CandidateID])
GO
ALTER TABLE [dbo].[ExaminationsCantidates] CHECK CONSTRAINT [FK_ExaminationsCantidates_Candidates]
GO
ALTER TABLE [dbo].[Funds]  WITH CHECK ADD  CONSTRAINT [FK_Funds_Charities] FOREIGN KEY([CharityID])
REFERENCES [dbo].[Charities] ([CharityID])
GO
ALTER TABLE [dbo].[Funds] CHECK CONSTRAINT [FK_Funds_Charities]
GO
ALTER TABLE [dbo].[LodgesCandidates]  WITH CHECK ADD  CONSTRAINT [FK_CandidatesLodges_Candidates] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidates] ([CandidateID])
GO
ALTER TABLE [dbo].[LodgesCandidates] CHECK CONSTRAINT [FK_CandidatesLodges_Candidates]
GO
ALTER TABLE [dbo].[LodgesCandidates]  WITH CHECK ADD  CONSTRAINT [FK_CandidatesLodges_Lodges] FOREIGN KEY([LodgeID])
REFERENCES [dbo].[Lodges] ([LodgeID])
GO
ALTER TABLE [dbo].[LodgesCandidates] CHECK CONSTRAINT [FK_CandidatesLodges_Lodges]
GO
ALTER TABLE [dbo].[LodgesSponsores]  WITH CHECK ADD  CONSTRAINT [FK_LodgesSponsores_Lodges] FOREIGN KEY([LodgeID])
REFERENCES [dbo].[Lodges] ([LodgeID])
GO
ALTER TABLE [dbo].[LodgesSponsores] CHECK CONSTRAINT [FK_LodgesSponsores_Lodges]
GO
ALTER TABLE [dbo].[LodgesSponsores]  WITH CHECK ADD  CONSTRAINT [FK_LodgesSponsores_Sponsores] FOREIGN KEY([SponsorID])
REFERENCES [dbo].[Sponsores] ([SponsorID])
GO
ALTER TABLE [dbo].[LodgesSponsores] CHECK CONSTRAINT [FK_LodgesSponsores_Sponsores]
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
ALTER TABLE [dbo].[RegisteredInformations]  WITH CHECK ADD  CONSTRAINT [FK_RegisteredInformations_Candidates] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidates] ([CandidateID])
GO
ALTER TABLE [dbo].[RegisteredInformations] CHECK CONSTRAINT [FK_RegisteredInformations_Candidates]
GO
ALTER TABLE [dbo].[Sponsores]  WITH CHECK ADD  CONSTRAINT [FK_Sponsores_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Sponsores] CHECK CONSTRAINT [FK_Sponsores_Accounts]
GO
ALTER TABLE [dbo].[UniversityExamination]  WITH CHECK ADD  CONSTRAINT [FK_UniversityExamination_Examinations] FOREIGN KEY([ExaminationID])
REFERENCES [dbo].[Examinations] ([ExaminationID])
GO
ALTER TABLE [dbo].[UniversityExamination] CHECK CONSTRAINT [FK_UniversityExamination_Examinations]
GO
ALTER TABLE [dbo].[UniversityExamination]  WITH CHECK ADD  CONSTRAINT [FK_UniversityExamination_University] FOREIGN KEY([UniversityID])
REFERENCES [dbo].[University] ([UniversityID])
GO
ALTER TABLE [dbo].[UniversityExamination] CHECK CONSTRAINT [FK_UniversityExamination_University]
GO
ALTER TABLE [dbo].[UniversityExamination]  WITH CHECK ADD  CONSTRAINT [FK_UniversityExamination_Venues] FOREIGN KEY([VenueID])
REFERENCES [dbo].[Venues] ([VenueID])
GO
ALTER TABLE [dbo].[UniversityExamination] CHECK CONSTRAINT [FK_UniversityExamination_Venues]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_VehicleType] FOREIGN KEY([VehicleTypeID])
REFERENCES [dbo].[VehicleType] ([VehicleTypeID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_VehicleType]
GO
ALTER TABLE [dbo].[Volunteers]  WITH CHECK ADD  CONSTRAINT [FK_Volunteers_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Volunteers] CHECK CONSTRAINT [FK_Volunteers_Accounts]
GO
ALTER TABLE [dbo].[Volunteers]  WITH CHECK ADD  CONSTRAINT [FK_Volunteers_Articles] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Articles] ([ArticleID])
GO
ALTER TABLE [dbo].[Volunteers] CHECK CONSTRAINT [FK_Volunteers_Articles]
GO
