USE [SBL_INVENTORY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10/7/2021 10:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[MobileNo] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Dob] [nvarchar](50) NOT NULL,
	[ProfilePicture] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[InTime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerPic]    Script Date: 10/7/2021 10:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerPic](
	[PicId] [int] IDENTITY(1,1) NOT NULL,
	[FindId] [int] NULL,
	[Picture] [nvarchar](max) NULL,
 CONSTRAINT [PK_AnswerPic] PRIMARY KEY CLUSTERED 
(
	[PicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calculation]    Script Date: 10/7/2021 10:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calculation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Picture1] [nvarchar](max) NULL,
	[Picture2] [nvarchar](max) NULL,
	[Option1] [nvarchar](50) NULL,
	[Option2] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[CalType] [nvarchar](50) NULL,
	[Answer] [nvarchar](50) NULL,
	[Intime] [nvarchar](50) NULL,
 CONSTRAINT [PK_Calculation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CharacterMatcher]    Script Date: 10/7/2021 10:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterMatcher](
	[MatchId] [int] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](max) NULL,
	[Answer] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_CharacterMatcher] PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FindAnswer]    Script Date: 10/7/2021 10:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FindAnswer](
	[FindId] [int] NOT NULL,
	[Question] [nvarchar](max) NULL,
	[AnswerPic] [nvarchar](max) NULL,
	[Audio] [nvarchar](max) NULL,
	[LangType] [nvarchar](50) NULL,
	[QuestionType] [nvarchar](50) NULL,
 CONSTRAINT [PK_FindAnswer] PRIMARY KEY CLUSTERED 
(
	[FindId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HighScore]    Script Date: 10/7/2021 10:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HighScore](
	[HighScore] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LearnInfo]    Script Date: 10/7/2021 10:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LearnInfo](
	[LearnId] [int] IDENTITY(1,1) NOT NULL,
	[Answer] [nvarchar](1999) NULL,
	[Picture] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Audio] [nvarchar](max) NULL,
 CONSTRAINT [PK_LearnInfo] PRIMARY KEY CLUSTERED 
(
	[LearnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LetterInfo]    Script Date: 10/7/2021 10:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LetterInfo](
	[LetterId] [int] IDENTITY(1,1) NOT NULL,
	[Letter] [nvarchar](50) NOT NULL,
	[LetterAudio] [nvarchar](max) NULL,
	[LetterPicture] [nvarchar](max) NULL,
	[Word] [nvarchar](max) NULL,
	[WordAudio] [nvarchar](max) NULL,
	[WordPicture] [nvarchar](max) NULL,
	[InTime] [nvarchar](50) NULL,
	[LetterType] [nvarchar](50) NULL,
 CONSTRAINT [PK_AlphabetInfo] PRIMARY KEY CLUSTERED 
(
	[LetterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LevelInfo]    Script Date: 10/7/2021 10:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LevelInfo](
	[LevelId] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [nvarchar](50) NULL,
	[Intime] [nvarchar](50) NULL,
 CONSTRAINT [PK_LevelInfo] PRIMARY KEY CLUSTERED 
(
	[LevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 10/7/2021 10:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[LevelId] [int] NULL,
	[Question] [nvarchar](max) NULL,
	[OptionA] [nvarchar](50) NULL,
	[OptionB] [nvarchar](50) NULL,
	[Answer] [nvarchar](50) NULL,
	[Point] [nvarchar](50) NULL,
	[Intime] [nvarchar](50) NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rhymes]    Script Date: 10/7/2021 10:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rhymes](
	[RhymesId] [int] IDENTITY(1,1) NOT NULL,
	[RhymeName] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[Intime] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rhymes] PRIMARY KEY CLUSTERED 
(
	[RhymesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [Name], [Email], [MobileNo], [Gender], [Dob], [ProfilePicture], [Password], [Type], [Status], [InTime]) VALUES (1, N'Tanay Hasan', N'admin@gmail.com', N'016542332020', N'Male', N'02/08/1996', N'/Image/profile.png', N'1', N'Admin', N'A', N'19/04/2021_10:49:54')
INSERT [dbo].[Admin] ([Id], [Name], [Email], [MobileNo], [Gender], [Dob], [ProfilePicture], [Password], [Type], [Status], [InTime]) VALUES (2, N'Tanay Alam', N'tanayalam@gmail.com', N'01717333264', N'Male', N'10/08/1988', N'/Image/143254 copy (1).jpg', N'ojana69', N'Admin', N'A', N'07/10/2021_07:58:18')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[AnswerPic] ON 

INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (5, 1001, N'/Image/136745image_processing20200410-24721-12ik9dq.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (6, 1001, N'/Image/18631366-661321_zebra-clip-art-at-clker-zebra-clipart-black.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (7, 1001, N'/Image/969980104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (8, 1001, N'/Image/57194385-851110_transparent-cute-fox-clipart-clip-art-of-fox.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (9, 1002, N'/Image/4790152560px-Cow_clipart_01.svg.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (10, 1002, N'/Image/501098568-5683929_rabbit-clipart-hd-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (11, 1002, N'/Image/2618366-661321_zebra-clip-art-at-clker-zebra-clipart-black.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (12, 1002, N'/Image/332221lion.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (13, 1003, N'/Image/18197685-851110_transparent-cute-fox-clipart-clip-art-of-fox.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (14, 1003, N'/Image/450101244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (15, 1003, N'/Image/3371212560px-Cow_clipart_01.svg.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (16, 1003, N'/Image/9242631170356-middle.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (17, 1004, N'/Image/359261244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (18, 1004, N'/Image/791605image_processing20200410-24721-12ik9dq.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (19, 1004, N'/Image/14991185-851110_transparent-cute-fox-clipart-clip-art-of-fox.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (20, 1004, N'/Image/276254568-5683929_rabbit-clipart-hd-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (21, 1005, N'/Image/3474801170356-middle.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (22, 1005, N'/Image/633782image_processing20200410-18222-1q6sutd.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (23, 1005, N'/Image/668019lion.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (24, 1005, N'/Image/1834652560px-Cow_clipart_01.svg.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (25, 1006, N'/Image/985147lion.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (26, 1006, N'/Image/3225104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (27, 1006, N'/Image/54888466-661321_zebra-clip-art-at-clker-zebra-clipart-black.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (28, 1006, N'/Image/297868image_processing20200410-24721-12ik9dq.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (29, 1007, N'/Image/90186image_processing20200410-18222-1q6sutd.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (30, 1007, N'/Image/748778568-5683929_rabbit-clipart-hd-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (31, 1007, N'/Image/908182244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (32, 1007, N'/Image/8442291170356-middle.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (33, 1008, N'/Image/292560568-5683929_rabbit-clipart-hd-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (34, 1008, N'/Image/23374166-661321_zebra-clip-art-at-clker-zebra-clipart-black.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (35, 1008, N'/Image/2065792560px-Cow_clipart_01.svg.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (36, 1008, N'/Image/173585244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (37, 1009, N'/Image/790125104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (38, 1009, N'/Image/865581lion.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (39, 1009, N'/Image/218014568-5683929_rabbit-clipart-hd-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (40, 1009, N'/Image/309804image_processing20200410-18222-1q6sutd.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (41, 1010, N'/Image/77414066-661321_zebra-clip-art-at-clker-zebra-clipart-black.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (42, 1010, N'/Image/150440image_processing20200410-24721-12ik9dq.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (43, 1010, N'/Image/8869691170356-middle.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (44, 1010, N'/Image/468267image_processing20200410-18222-1q6sutd.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (45, 1011, N'/Image/690591image_processing20200410-18222-1q6sutd.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (46, 1011, N'/Image/554351104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (47, 1011, N'/Image/804170244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (48, 1011, N'/Image/614097image_processing20200410-24721-12ik9dq.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (49, 1012, N'/Image/7066182560px-Cow_clipart_01.svg.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (50, 1012, N'/Image/852168104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (51, 1012, N'/Image/60782366-661321_zebra-clip-art-at-clker-zebra-clipart-black.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (52, 1012, N'/Image/526630lion.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (53, 1013, N'/Image/16653566-661321_zebra-clip-art-at-clker-zebra-clipart-black.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (54, 1013, N'/Image/6992671170356-middle.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (55, 1013, N'/Image/205351image_processing20200410-18222-1q6sutd.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (56, 1013, N'/Image/921714244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (57, 1014, N'/Image/895092104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (58, 1014, N'/Image/553020lion.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (59, 1014, N'/Image/94505266-661321_zebra-clip-art-at-clker-zebra-clipart-black.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (60, 1014, N'/Image/930558568-5683929_rabbit-clipart-hd-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (61, 1015, N'/Image/381523image_processing20200410-24721-12ik9dq.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (62, 1015, N'/Image/857298244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (63, 1015, N'/Image/50096568-5683929_rabbit-clipart-hd-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (64, 1015, N'/Image/49620385-851110_transparent-cute-fox-clipart-clip-art-of-fox.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (65, 1016, N'/Image/2643301170356-middle.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (66, 1016, N'/Image/70878566-661321_zebra-clip-art-at-clker-zebra-clipart-black.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (67, 1016, N'/Image/159691104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (68, 1016, N'/Image/1362622560px-Cow_clipart_01.svg.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (69, 1017, N'/Image/131653568-5683929_rabbit-clipart-hd-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (70, 1017, N'/Image/707903image_processing20200410-24721-12ik9dq.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (71, 1017, N'/Image/473248244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (72, 1017, N'/Image/326876image_processing20200410-18222-1q6sutd.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (73, 1018, N'/Image/76048885-851110_transparent-cute-fox-clipart-clip-art-of-fox.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (74, 1018, N'/Image/37342266-661321_zebra-clip-art-at-clker-zebra-clipart-black.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (75, 1018, N'/Image/702804104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (76, 1018, N'/Image/5369951170356-middle.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (77, 1019, N'/Image/786042lion.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (78, 1019, N'/Image/685507104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (79, 1019, N'/Image/614022image_processing20200410-24721-12ik9dq.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (80, 1019, N'/Image/992145568-5683929_rabbit-clipart-hd-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (81, 1020, N'/Image/698221244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (82, 1020, N'/Image/513481image_processing20200410-18222-1q6sutd.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (83, 1020, N'/Image/63927085-851110_transparent-cute-fox-clipart-clip-art-of-fox.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (84, 1020, N'/Image/3436222560px-Cow_clipart_01.svg.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (85, 1021, N'/Image/158060PicsArt_10-05-10.21.18.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (86, 1021, N'/Image/84871PicsArt_10-05-10.21.00.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (87, 1021, N'/Image/654793PicsArt_10-05-10.21.36.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (88, 1021, N'/Image/753401PicsArt_10-05-10.21.08.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (89, 1022, N'/Image/103042PicsArt_10-05-10.21.28.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (90, 1022, N'/Image/859484PicsArt_10-05-10.21.36.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (91, 1022, N'/Image/406588PicsArt_10-05-10.21.18.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (92, 1022, N'/Image/939185PicsArt_10-05-10.20.50.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (93, 1023, N'/Image/311452PicsArt_10-05-10.22.29.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (94, 1023, N'/Image/458257PicsArt_10-05-10.22.38.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (95, 1023, N'/Image/973239PicsArt_10-05-10.22.47.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (96, 1023, N'/Image/159563PicsArt_10-05-10.21.28.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (97, 1024, N'/Image/853178PicsArt_10-05-10.21.08.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (98, 1024, N'/Image/608608PicsArt_10-05-10.20.39.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (99, 1024, N'/Image/240110PicsArt_10-05-10.21.00.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (100, 1024, N'/Image/816089PicsArt_10-05-10.21.36.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (101, 1025, N'/Image/203363PicsArt_10-05-10.20.50.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (102, 1025, N'/Image/735837PicsArt_10-05-10.21.08.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (103, 1025, N'/Image/238507PicsArt_10-05-10.21.36.jpg')
GO
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (104, 1025, N'/Image/934338PicsArt_10-05-10.21.18.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (105, 1026, N'/Image/319342PicsArt_10-05-10.20.39.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (106, 1026, N'/Image/363605PicsArt_10-05-10.21.43.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (107, 1026, N'/Image/582950PicsArt_10-05-10.22.58.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (108, 1026, N'/Image/806145PicsArt_10-05-10.22.38.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (109, 1027, N'/Image/548714PicsArt_10-05-10.21.36.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (110, 1027, N'/Image/822002PicsArt_10-05-10.21.43.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (111, 1027, N'/Image/368060PicsArt_10-05-10.21.08.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (112, 1027, N'/Image/240445PicsArt_10-05-10.21.00.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (113, 1028, N'/Image/602674PicsArt_10-05-10.21.43.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (114, 1028, N'/Image/78062PicsArt_10-05-10.21.00.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (115, 1028, N'/Image/234313PicsArt_10-05-10.20.50.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (116, 1028, N'/Image/536025PicsArt_10-05-10.22.29.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (117, 1029, N'/Image/283995PicsArt_10-05-10.21.50.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (118, 1029, N'/Image/202502PicsArt_10-05-10.22.58.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (119, 1029, N'/Image/425236PicsArt_10-05-10.21.28.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (120, 1029, N'/Image/732411PicsArt_10-05-10.21.08.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (121, 1030, N'/Image/416309PicsArt_10-05-10.21.00.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (122, 1030, N'/Image/544400PicsArt_10-05-10.22.58.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (123, 1030, N'/Image/185982PicsArt_10-05-10.20.50.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (124, 1030, N'/Image/662604PicsArt_10-05-10.22.38.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (125, 1031, N'/Image/738383PicsArt_10-03-08.32.03.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (126, 1031, N'/Image/697082PicsArt_10-03-08.32.17.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (127, 1031, N'/Image/696553PicsArt_10-03-08.32.53.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (128, 1031, N'/Image/675909PicsArt_10-03-08.33.05.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (129, 1032, N'/Image/930614PicsArt_10-03-08.32.17.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (130, 1032, N'/Image/133142PicsArt_10-03-08.33.56.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (131, 1032, N'/Image/12024PicsArt_10-03-08.33.37.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (132, 1032, N'/Image/807399PicsArt_10-03-08.33.15.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (133, 1033, N'/Image/475555PicsArt_10-03-08.33.05.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (134, 1033, N'/Image/562153PicsArt_10-03-08.24.10.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (135, 1033, N'/Image/202360PicsArt_10-03-08.21.42.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (136, 1033, N'/Image/838855PicsArt_10-03-08.33.56.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (137, 1034, N'/Image/54417PicsArt_10-03-08.33.37.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (138, 1034, N'/Image/837435PicsArt_10-03-08.24.56.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (139, 1034, N'/Image/528501PicsArt_10-03-08.23.48.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (140, 1034, N'/Image/751961PicsArt_10-03-08.34.25.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (141, 1035, N'/Image/488496PicsArt_10-03-08.33.15.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (142, 1035, N'/Image/201171PicsArt_10-03-08.32.41.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (143, 1035, N'/Image/566118PicsArt_10-03-08.32.17.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (144, 1035, N'/Image/49984PicsArt_10-03-08.33.05.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (145, 1036, N'/Image/276558PicsArt_10-03-08.32.53.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (146, 1036, N'/Image/8907PicsArt_10-03-08.21.42.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (147, 1036, N'/Image/52981PicsArt_10-03-08.20.41.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (148, 1036, N'/Image/263703PicsArt_10-03-08.33.05.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (149, 1037, N'/Image/645397PicsArt_10-03-08.32.41.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (150, 1037, N'/Image/821532PicsArt_10-03-08.33.05.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (151, 1037, N'/Image/277462PicsArt_10-03-08.33.37.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (152, 1037, N'/Image/564338PicsArt_10-03-08.34.25.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (153, 1038, N'/Image/159154PicsArt_10-03-08.33.56.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (154, 1038, N'/Image/66306PicsArt_10-03-08.33.37.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (155, 1038, N'/Image/685518PicsArt_10-03-08.24.35.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (156, 1038, N'/Image/199812PicsArt_10-03-08.23.48.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (157, 1039, N'/Image/695847PicsArt_10-03-08.34.25.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (158, 1039, N'/Image/829505PicsArt_10-03-08.32.17.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (159, 1039, N'/Image/750817PicsArt_10-03-08.33.05.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (160, 1039, N'/Image/750614PicsArt_10-03-08.20.41.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (161, 1040, N'/Image/383475PicsArt_10-03-08.32.30.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (162, 1040, N'/Image/791034PicsArt_10-03-08.32.17.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (163, 1040, N'/Image/715470PicsArt_10-03-08.24.35.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (164, 1040, N'/Image/70678PicsArt_10-03-08.33.05.jpg')
SET IDENTITY_INSERT [dbo].[AnswerPic] OFF
GO
SET IDENTITY_INSERT [dbo].[Calculation] ON 

INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (2, N'3+2', N'/Image/5173233.jpg', N'/Image/9198732.png', N'4', N'5', N'English', N'Addition', N'5', N'07/10/2021_11:53:54')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (3, N'5+3', N'/Image/615695apple.jpg', N'/Image/396523.jpg', N'8', N'6', N'English', N'Addition', N'8', N'07/10/2021_11:54:24')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (4, N'2+1', N'/Image/8203432.png', N'/Image/451301.png', N'3', N'4', N'English', N'Addition', N'3', N'07/10/2021_11:54:55')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (5, N'6-3', N'/Image/8154266apple.png', N'/Image/8287283apple.jpg', N'2', N'3', N'English', N'Addition', N'3', N'07/10/2021_11:55:32')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (6, N'8+1', N'/Image/4619198apple.jpg', N'/Image/35761.png', N'8', N'9', N'English', N'Addition', N'9', N'07/10/2021_11:56:12')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (7, N'7-5', N'/Image/4069027.png', N'/Image/7781895apple.jpg', N'2', N'3', N'English', N'Substraction', N'2', N'07/10/2021_11:56:54')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (8, N'5-4', N'/Image/3550265apple.jpg', N'/Image/4553844.png', N'2', N'1', N'English', N'Substraction', N'1', N'07/10/2021_11:57:39')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (9, N'6+1', N'/Image/9620706apple.png', N'/Image/4314431.png', N'7', N'8', N'English', N'Addition', N'7', N'07/10/2021_11:58:34')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (10, N'9-2', N'/Image/1160919apple.jpg', N'/Image/2885742.png', N'8', N'7', N'English', N'Substraction', N'7', N'07/10/2021_11:59:21')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (11, N'8-3', N'/Image/8865738apple.jpg', N'/Image/8626883apple.jpg', N'5', N'9', N'English', N'Substraction', N'5', N'07/10/2021_12:00:16')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (12, N'৩+২', N'/Image/2120553 apple.jpg', N'/Image/7416002.png', N'৫', N'৭', N'Bangla', N'Addition', N'৫', N'07/10/2021_12:03:03')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (13, N'৪+৩', N'/Image/9262884.png', N'/Image/2241793apple.jpg', N'৬', N'৭', N'Bangla', N'Addition', N'৭', N'07/10/2021_12:07:20')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (14, N'৫+১', N'/Image/5694835apple.jpg', N'/Image/9439161.png', N'৫', N'৬', N'Bangla', N'Addition', N'৬', N'07/10/2021_12:07:59')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (15, N'৬+২', N'/Image/8751076apple.png', N'/Image/2117172.png', N'৮', N'৯', N'Bangla', N'Addition', N'৮', N'07/10/2021_12:08:32')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (16, N'২+২', N'/Image/1013872.png', N'/Image/1127962.png', N'৪', N'৩', N'Bangla', N'Addition', N'৪', N'07/10/2021_12:08:53')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (17, N'৮-৩', N'/Image/6900718apple.jpg', N'/Image/3706623apple.jpg', N'৪', N'৫', N'Bangla', N'Substraction', N'৫', N'07/10/2021_12:09:37')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (18, N'৯-৭', N'/Image/3868219apple.jpg', N'/Image/1059127.jpg', N'২', N'৩', N'Bangla', N'Substraction', N'২', N'07/10/2021_12:10:09')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (19, N'৭-৪', N'/Image/6761897.jpg', N'/Image/9330684.png', N'৩', N'২', N'Bangla', N'Substraction', N'৩', N'07/10/2021_12:10:37')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (20, N'৬-৫', N'/Image/1453796apple.png', N'/Image/4187835apple.jpg', N'২', N'১', N'Bangla', N'Substraction', N'১', N'07/10/2021_12:11:00')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (21, N'৩-২', N'/Image/763403.jpg', N'/Image/5520132.png', N'১', N'২', N'Bangla', N'Substraction', N'১', N'07/10/2021_12:11:28')
SET IDENTITY_INSERT [dbo].[Calculation] OFF
GO
SET IDENTITY_INSERT [dbo].[CharacterMatcher] ON 

INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (5, N'/Image/4210471.png', N'1', N'Number')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (6, N'/Image/9088922.png', N'2', N'Number')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (7, N'/Image/285863.png', N'3', N'Number')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (8, N'/Image/7746144.png', N'4', N'Number')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (9, N'/Image/1949555.png', N'5', N'Number')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (10, N'/Image/5302966.png', N'6', N'Number')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (11, N'/Image/8972447.png', N'7', N'Number')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (12, N'/Image/9472898.png', N'8', N'Number')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (13, N'/Image/9558329.png', N'9', N'Number')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (14, N'/Image/476185A.png', N'A', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (15, N'/Image/908451B.png', N'B', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (16, N'/Image/541212C.png', N'C', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (17, N'/Image/128212D.png', N'D', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (18, N'/Image/320944E.png', N'E', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (19, N'/Image/687892F.png', N'F', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (20, N'/Image/769467G.png', N'G', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (21, N'/Image/326098H.png', N'H', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (22, N'/Image/800906I.png', N'I', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (23, N'/Image/617779J.png', N'J', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (24, N'/Image/3293K.png', N'K', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (25, N'/Image/50039L.png', N'L', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (26, N'/Image/280819M.png', N'M', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (27, N'/Image/400519N.png', N'N', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (28, N'/Image/531076O.png', N'O', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (29, N'/Image/45122P.png', N'P', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (30, N'/Image/672434Q.png', N'Q', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (31, N'/Image/826962R.png', N'R', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (32, N'/Image/146040S.png', N'S', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (33, N'/Image/868096T.png', N'T', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (34, N'/Image/41189U.png', N'U', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (35, N'/Image/498544V.png', N'V', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (36, N'/Image/437431W.png', N'W', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (37, N'/Image/38664X.png', N'X', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (38, N'/Image/723500Y.png', N'Y', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (39, N'/Image/109014Z.png', N'Z', N'Alphabet')
SET IDENTITY_INSERT [dbo].[CharacterMatcher] OFF
GO
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1001, N'Which one is a cat?', N'/Image/136745image_processing20200410-24721-12ik9dq.png', N'/Audio/681982which one is a cat.aac', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1002, N'Which one is a cow?', N'/Image/4790152560px-Cow_clipart_01.svg.png', N'/Audio/827361which one is a cow.aac', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1003, N'Which one is a fox?', N'/Image/18197685-851110_transparent-cute-fox-clipart-clip-art-of-fox.png', N'/Audio/996935which one is a fox.aac', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1004, N'Which one is a dog?', N'/Image/359261244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png', N'/Audio/292997which one is dog.aac', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1005, N'Which one is a giraffe?', N'/Image/3474801170356-middle.png', N'/Audio/158825which one is Giraffe.aac', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1006, N'Which one is a king lion?', N'/Image/985147lion.png', N'/Audio/736506which one is king Lion.aac', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1007, N'Which one is a monkey?', N'/Image/90186image_processing20200410-18222-1q6sutd.png', N'/Audio/736034which one is monkey.aac', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1008, N'Which one is a rabbit?', N'/Image/292560568-5683929_rabbit-clipart-hd-png-download.png', N'/Audio/704454Which one is rabbit.aac', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1009, N'Which one is a tiger?', N'/Image/790125104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png', N'/Audio/182841which one is tiger.aac', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1010, N'Which one is a zebra?', N'/Image/77414066-661321_zebra-clip-art-at-clker-zebra-clipart-black.png', N'/Audio/437455Which one is zebra.aac', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1011, N'বলতো বাঁদর কোনটি ?', N'/Image/690591image_processing20200410-18222-1q6sutd.png', N'/Audio/878135boloto bador konti.aac', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1012, N'বলতো গরু কোনটি ?', N'/Image/7066182560px-Cow_clipart_01.svg.png', N'/Audio/839963boloto goru konti.aac', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1013, N'বলতো জেব্রা কোনটি ?', N'/Image/16653566-661321_zebra-clip-art-at-clker-zebra-clipart-black.png', N'/Audio/972697boloto jebra konti.aac', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1014, N'বলতো বাঘ কোনটি ?', N'/Image/895092104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png', N'/Audio/183292boloto konti bagh.aac', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1015, N'বলতো বিড়াল কোনটি ?', N'/Image/381523image_processing20200410-24721-12ik9dq.png', N'/Audio/773651boloto konti beral.aac', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1016, N'বলতো জিরাফ কোনটি ?', N'/Image/2643301170356-middle.png', N'/Audio/452377boloto konti giraffe.aac', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1017, N'বলতো খরগোশ কোনটি ?', N'/Image/131653568-5683929_rabbit-clipart-hd-png-download.png', N'/Audio/510196boloto konti khorgosh.aac', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1018, N'বলতো শিয়াল কোনটি ?', N'/Image/76048885-851110_transparent-cute-fox-clipart-clip-art-of-fox.png', N'/Audio/331366boloto sheyal konti.aac', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1019, N'বলতো সিংহ কোনটি ?', N'/Image/786042lion.png', N'/Audio/756470boloto shingho konti.aac', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1020, N'বলতো কুকুর কোনটি ?', N'/Image/698221244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png', N'/Audio/308058konti kukur.aac', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1021, N'বলতো পাঁচ কোনটি ?', N'/Image/158060PicsArt_10-05-10.21.18.jpg', N'/Audio/851504boloto 5 konti.aac', N'Bangla', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1022, N'বলতো ছয় কোনটি ?', N'/Image/103042PicsArt_10-05-10.21.28.jpg', N'/Audio/591115boloto 6 konti.aac', N'Bangla', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1023, N'বলতো দশ কোনটি ?', N'/Image/311452PicsArt_10-05-10.22.29.jpg', N'/Audio/305341boloto 10 konti.aac', N'Bangla', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1024, N'বলতো ৪ কোনটি ?', N'/Image/853178PicsArt_10-05-10.21.08.jpg', N'/Audio/569619boloto char konti.aac', N'Bangla', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1025, N'বলতো দুই কোনটি ?', N'/Image/203363PicsArt_10-05-10.20.50.jpg', N'/Audio/911039boloto dui konti.aac', N'Bangla', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1026, N'বলতো এক কোনটি ?', N'/Image/319342PicsArt_10-05-10.20.39.jpg', N'/Audio/216312boloto ek konti.aac', N'Bangla', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1027, N'বলতো সাত কোনটি ?', N'/Image/548714PicsArt_10-05-10.21.36.jpg', N'/Audio/580968boloto konti 7.aac', N'Bangla', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1028, N'বলতো আট কোনটি ?', N'/Image/602674PicsArt_10-05-10.21.43.jpg', N'/Audio/2820boloto konti 8.aac', N'Bangla', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1029, N'বলতো নয় কোনটি ?', N'/Image/283995PicsArt_10-05-10.21.50.jpg', N'/Audio/999953boloto konti 9.aac', N'Bangla', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1030, N'বলতো তিন কোনটি ?', N'/Image/416309PicsArt_10-05-10.21.00.jpg', N'/Audio/809249boloto tin konti.aac', N'Bangla', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1031, N'Find the number one', N'/Image/738383PicsArt_10-03-08.32.03.jpg', N'/Audio/754431Find the number 1.aac', N'English', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1032, N'Find the number two', N'/Image/930614PicsArt_10-03-08.32.17.jpg', N'/Audio/142097Find the number 2.aac', N'English', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1033, N'Find the number six', N'/Image/475555PicsArt_10-03-08.33.05.jpg', N'/Audio/711427Find the number 6.aac', N'English', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1034, N'Find the number eight', N'/Image/54417PicsArt_10-03-08.33.37.jpg', N'/Audio/711850Find the number 8.aac', N'English', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1035, N'Which one is seven?', N'/Image/488496PicsArt_10-03-08.33.15.jpg', N'/Audio/305110which one is 7.aac', N'English', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1036, N'Which one is number five', N'/Image/276558PicsArt_10-03-08.32.53.jpg', N'/Audio/500567Which one is number 5.aac', N'English', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1037, N'Which one is number four', N'/Image/645397PicsArt_10-03-08.32.41.jpg', N'/Audio/662284which one is the number 4.aac', N'English', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1038, N'Which one is number nine', N'/Image/159154PicsArt_10-03-08.33.56.jpg', N'/Audio/411141which one is the number 9.aac', N'English', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1039, N'Which one is number ten', N'/Image/695847PicsArt_10-03-08.34.25.jpg', N'/Audio/179686which one is the number 10.aac', N'English', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (1040, N'Find the number three', N'/Image/383475PicsArt_10-03-08.32.30.jpg', N'/Audio/94198Find the number 3.aac', N'English', N'Number')
GO
INSERT [dbo].[HighScore] ([HighScore]) VALUES (N'25')
GO
SET IDENTITY_INSERT [dbo].[LearnInfo] ON 

INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (1, N'Saturday', N'/Image/529966bfe9bbbf1fd617031ebdd8ecd60b360f.jpg', N'Week', N'/Audio/7703371633358297093-saturdayr.in-speech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (2, N'Sunday', N'/Image/1778674460781a461e00c0372e19387b26609e.jpg', N'Week', N'/Audio/9123891633358334337-sundayspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (3, N'Monday', N'/Image/286554913159dbe95ab405a5a22ab63aacf132.jpg', N'Week', N'/Audio/3229281633358370551-mondayspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (4, N'Tuesday', N'/Image/352856c479bca81246e9c4b8ff0de51f6abaca.jpg', N'Week', N'/Audio/5287751633358388300-tuesdayspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (5, N'Wednesday', N'/Image/4157826f952dec05485f3b47dc885d051a4c84.jpg', N'Week', N'/Audio/60271633358409077-wednesdayspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (6, N'Thursday', N'/Image/572424da110e8812391a837bc3a8e3b0ea3e7.jpg', N'Week', N'/Audio/7926111633358433765-thursdayspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (7, N'Friday', N'/Image/9698502c01932b11b1c9cd39de583c919f05c8.jpg', N'Week', N'/Audio/1072791633358477114-fridayspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (8, N'January', N'/Image/775577737f4859458c84a62489fd3b0f952c26.jpg', N'Month', N'/Audio/3217521633355941388-Januaryspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (9, N'February', N'/Image/580320977a691304806e18f7f3ed47f92c6d9e.jpg', N'Month', N'/Audio/1560851633356019443-februaryspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (10, N'March', N'/Image/337276b410207708daa6642670af057007c80d.jpg', N'Month', N'/Audio/541811633356038288-marchspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (11, N'April', N'/Image/7662441b0c2d2b3212c3f7294dfedb682be5bd.jpg', N'Month', N'/Audio/7539431633356053220-aprilspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (12, N'May', N'/Image/971934e9fa324531013736536cf705bbaa6c42.jpg', N'Month', N'/Audio/394211633356064681-mayspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (13, N'June', N'/Image/835554fe508882801ffc8fc1306a47e31efd94.jpg', N'Month', N'/Audio/3439931633356081549-junespeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (14, N'July', N'/Image/13969ade279919c0fe33ad40bd6f7bda50821.jpg', N'Month', N'/Audio/331261633356093846-julyspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (15, N'August', N'/Image/570352IMG_20211003_145057.jpg', N'Month', N'/Audio/2071241633356120082-augustspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (16, N'September', N'/Image/4067022c40ce59b0f560c26e3dc21eacefc8ad.jpg', N'Month', N'/Audio/8138701633356159595-septemberspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (17, N'October', N'/Image/77463556eb066cdceb44711028c3a67cf7cb2b.jpg', N'Month', N'/Audio/5231751633356174856-octoberspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (18, N'November', N'/Image/979130e38a2f19f3b57e3b5b2628d1039ffe11.jpg', N'Month', N'/Audio/6333141633356191405-novemberspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (19, N'December', N'/Image/682108be48015e744a367cfca193408509fd2f.jpg', N'Month', N'/Audio/9288341633356207690-decemberspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (20, N'Cow', N'/Image/7304562560px-Cow_clipart_01.svg.png', N'Animal', N'/Audio/6581471633357370233-cowspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (21, N'Fox', N'/Image/21912385-851110_transparent-cute-fox-clipart-clip-art-of-fox.png', N'Animal', N'/Audio/7594631633357621501-foxspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (22, N'Dog', N'/Image/771167244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png', N'Animal', N'/Audio/8577641633357643955-dogspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (23, N'Lion', N'/Image/402733lion.png', N'Animal', N'/Audio/2856861633357888551-lion.in-speech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (24, N'Zebra', N'/Image/32185366-661321_zebra-clip-art-at-clker-zebra-clipart-black.png', N'Animal', N'/Audio/3319001633357749828-zebrar.in-speech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (25, N'Tiger', N'/Image/293333104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png', N'Animal', N'/Audio/2182881633357774045-tiger.in-speech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (27, N'Giraffe ', N'/Image/5642441170356-middle.png', N'Animal', N'/Audio/7050241633357337658-giraffespeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (28, N'Cat', N'/Image/664873image_processing20200410-24721-12ik9dq.png', N'Animal', N'/Audio/9976901633357567761-voicemaker.in-speech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (29, N'Rabbit', N'/Image/302304568-5683929_rabbit-clipart-hd-png-download.png', N'Animal', N'/Audio/3280101633357867832-rabbit.in-speech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (30, N'Monkey', N'/Image/376031image_processing20200410-18222-1q6sutd.png', N'Animal', N'/Audio/2694671633357922873-monkey.in-speech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (31, N'Triangle', N'/Image/846616triangke.png', N'Shape', N'/Audio/2743891633362834936-Trianglespeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (32, N'Arrow', N'/Image/762516arrow.png', N'Shape', N'/Audio/143425arrow.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (33, N'Circle', N'/Image/373409circle.png', N'Shape', N'/Audio/779295circle.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (34, N'Heart', N'/Image/748555heart.png', N'Shape', N'/Audio/430121heart.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (35, N'Hexagon', N'/Image/621914hexagon.png', N'Shape', N'/Audio/543049hexagon.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (36, N'Oval', N'/Image/305760oval.png', N'Shape', N'/Audio/534323oval.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (37, N'Pentagon', N'/Image/673693P.png', N'Shape', N'/Audio/243629pentagon.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (38, N'Rectangle', N'/Image/812870rectangle.jpg', N'Shape', N'/Audio/528060rectangale.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (39, N'Square', N'/Image/693653square.png', N'Shape', N'/Audio/376597square.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (40, N'Star', N'/Image/885189star.png', N'Shape', N'/Audio/501201star.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (41, N'Red', N'/Image/128356images.png', N'Color', N'/Audio/8082971633360671913-redspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (42, N'Pink', N'/Image/470215baby-pink-square-clip-art-at-clker-com-vector-clip-art-online-y4WVSB-clipart.png', N'Color', N'/Audio/9940041633360703154-pinkspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (43, N'Blue', N'/Image/514648download (1).png', N'Color', N'/Audio/2357961633360719131-bluespeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (44, N'Yellow', N'/Image/73260download.png', N'Color', N'/Audio/3083141633360737860-yellowspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (45, N'Orange', N'/Image/696156download.jpg', N'Color', N'/Audio/4822471633360754608-orangespeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (46, N'Brown', N'/Image/13960images (5).png', N'Color', N'/Audio/2498991633360771406-brownspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (47, N'Black', N'/Image/485336images (2).png', N'Color', N'/Audio/1885021633360788332-blackspeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (48, N'White', N'/Image/846673images (4).png', N'Color', N'/Audio/9898101633360802979-whitespeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (49, N'Purple', N'/Image/286569images (1).png', N'Color', N'/Audio/7747481633360824200-purplespeech.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (50, N'Green', N'/Image/926918images (3).png', N'Color', N'/Audio/562444green.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (54, N'ত্রিভুজ', N'/Image/482917triangke.png', N'Bangla Shape', N'/Audio/355732ত্রিভুজ.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (56, N'লাল', N'/Image/372466images.png', N'Bangla Color', N'/Audio/408434Lal.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (57, N'কালো', N'/Image/470086images (2).png', N'Bangla Color', N'/Audio/318009Bla.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (58, N'গোলাপি', N'/Image/382398baby-pink-square-clip-art-at-clker-com-vector-clip-art-online-y4WVSB-clipart.png', N'Bangla Color', N'/Audio/663249Gola.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (59, N'হলুদ', N'/Image/240406download.png', N'Bangla Color', N'/Audio/442187Holud.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (60, N'খয়েরি', N'/Image/695912Sienna-color.jpg', N'Bangla Color', N'/Audio/835287kho.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (61, N'নীল', N'/Image/593858download (1).png', N'Bangla Color', N'/Audio/227788Nil.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (62, N'কমলা', N'/Image/495604download.jpg', N'Bangla Color', N'/Audio/935950Orangr.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (63, N'সবুজ', N'/Image/395151images (3).png', N'Bangla Color', N'/Audio/743227Sabuj.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (64, N'সাদা', N'/Image/53987images (4).png', N'Bangla Color', N'/Audio/867863sada.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (65, N'শনিবার', N'/Image/657837PicsArt_10-05-10.17.59.jpg', N'Bangla Week', N'/Audio/577662Sat.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (66, N'রবিবার', N'/Image/43296PicsArt_10-05-10.09.43.jpg', N'Bangla Week', N'/Audio/478816Sun.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (67, N'সোমবার', N'/Image/191867PicsArt_10-05-10.10.36.jpg', N'Bangla Week', N'/Audio/260249Mon.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (68, N'মঙ্গলবার', N'/Image/289409PicsArt_10-05-10.12.01.jpg', N'Bangla Week', N'/Audio/893003Tue.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (69, N'বুধবার', N'/Image/324798PicsArt_10-05-10.12.30.jpg', N'Bangla Week', N'/Audio/636782Wed.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (70, N'বৃহস্পতিবার', N'/Image/606626PicsArt_10-05-10.13.49.jpg', N'Bangla Week', N'/Audio/759587Thu.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (71, N'শুক্রবার', N'/Image/399316PicsArt_10-05-10.14.21.jpg', N'Bangla Week', N'/Audio/712816Fri.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (73, N'গরু', N'/Image/834079download (1).png', N'Bangla Animal', N'/Audio/84809goru.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (74, N'বিড়াল', N'/Image/892296aade508eb36995273fe018183acbcb9.jpg', N'Bangla Animal', N'/Audio/98489biral.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (75, N'বাদর', N'/Image/160334Vervet_Monkey_Chlorocebus_pygerythrus.jpg', N'Bangla Animal', N'/Audio/549774bador.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (76, N'জিরাফ', N'/Image/1754551170356-middle.png', N'Bangla Animal', N'/Audio/743160giraf.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (77, N'খরগোশ', N'/Image/102000568-5683929_rabbit-clipart-hd-png-download.png', N'Bangla Animal', N'/Audio/524983khorgosh.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (78, N'কুকুর', N'/Image/513304244-2445185_transparent-dog-vector-png-dog-clipart-png-download.png', N'Bangla Animal', N'/Audio/818008kukur.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (79, N'শেয়াল', N'/Image/55983985-851110_transparent-cute-fox-clipart-clip-art-of-fox.png', N'Bangla Animal', N'/Audio/338459sheyal.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (81, N'সিংহ', N'/Image/29416lion.png', N'Bangla Animal', N'/Audio/717093shingho.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (82, N'বাঘ', N'/Image/744820104-1043125_animal-clipart-tiger-bengal-transparent-background-tiger-clipart.png', N'Bangla Animal', N'/Audio/138852tiger.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (83, N'জেব্রা', N'/Image/72825666-661321_zebra-clip-art-at-clker-zebra-clipart-black.png', N'Bangla Animal', N'/Audio/283005zebra.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (84, N'চতুর্ভুজ', N'/Image/674108square.png', N'Bangla Shape', N'/Audio/469017chotour.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (85, N'বৃত্ত', N'/Image/905565circle.png', N'Bangla Shape', N'/Audio/859557britto.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (86, N'হৃদয়', N'/Image/517502heart.png', N'Bangla Shape', N'/Audio/805871heart.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (87, N'পঞ্চভূজ', N'/Image/583013P.png', N'Bangla Shape', N'/Audio/79150poncho.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (88, N'ষড়ভুজ', N'/Image/384518hexagon.png', N'Bangla Shape', N'/Audio/388676shorovuj.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (89, N'তারা', N'/Image/727283star.png', N'Bangla Shape', N'/Audio/678815tara.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (91, N'তীর', N'/Image/331313arrow.png', N'Bangla Shape', N'/Audio/373264tir.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (92, N'উপবৃত্ত', N'/Image/333820oval.png', N'Bangla Shape', N'/Audio/892470upobritto.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (117, N'বৈশাখ', N'/Image/555953PicsArt_10-06-12.21.32.jpg', N'Bangla Month', N'/Audio/7373681.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (119, N'আষাঢ়', N'/Image/68592PicsArt_10-06-12.25.02.jpg', N'Bangla Month', N'/Audio/836233.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (120, N'শ্রাবণ	', N'/Image/131595PicsArt_10-06-12.25.58.jpg', N'Bangla Month', N'/Audio/8354714.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (121, N'ভাদ্র', N'/Image/340506PicsArt_10-06-12.27.40.jpg', N'Bangla Month', N'/Audio/2981285.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (122, N'আশ্বিন', N'/Image/528744PicsArt_10-06-12.28.56.jpg', N'Bangla Month', N'/Audio/9687336.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (123, N'কার্তিক', N'/Image/354431PicsArt_10-06-12.29.46.jpg', N'Bangla Month', N'/Audio/3172867.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (124, N'অগ্রহায়ণ', N'/Image/758388PicsArt_10-06-12.33.06.jpg', N'Bangla Month', N'/Audio/151523ogro.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (127, N'ফাল্গুন', N'/Image/47018PicsArt_10-06-12.35.33.jpg', N'Bangla Month', N'/Audio/7678210.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (128, N'মাঘ', N'/Image/149961PicsArt_10-06-12.34.21.jpg', N'Bangla Month', N'/Audio/4421959.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (129, N'পৌষ', N'/Image/496931PicsArt_10-06-12.33.46.jpg', N'Bangla Month', N'/Audio/2907648.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (130, N'চৈত্র', N'/Image/297046PicsArt_10-06-12.36.03.jpg', N'Bangla Month', N'/Audio/97849112.aac')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (131, N'জ্যৈষ্ঠ', N'/Image/771105PicsArt_10-07-12.05.38.jpg', N'Bangla Month', N'/Audio/5373552.aac')
SET IDENTITY_INSERT [dbo].[LearnInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[LetterInfo] ON 

INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (2, N'A', N'/Audio/4930641633277435887-Aspeech.mp3', N'/Image/253616870a537dbc3604f8be9cfe31e2614254.jpg', N'Apple', N'/Audio/5463721633273218338-Applespeech.mp3', N'/Image/143401425b994435dbbf1bce718626f3c15dfc.jpg', N'05/10/2021_11:44:54', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (3, N'A', N'/Audio/5216451633277435887-Aspeech.mp3', N'/Image/296421870a537dbc3604f8be9cfe31e2614254.jpg', N'Ant', N'/Audio/869066ant.mp3.mp3', N'/Image/772361dcb1a65a31dbe9b66ed5514804db0c9f.jpg', N'05/10/2021_11:45:51', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (4, N'A', N'/Audio/6245871633277435887-Aspeech.mp3', N'/Image/661834870a537dbc3604f8be9cfe31e2614254.jpg', N'Airplane', N'/Audio/7141581633273318344-AirPlanespeech.mp3', N'/Image/991135d7a9cd87a5556422a45a23b85a3980a5.jpg', N'05/10/2021_11:46:29', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (5, N'B', N'/Audio/454902B.mp3', N'/Image/155881bd9840be7d7401fe95b9b776fcfe1e2c.jpg', N'Ball', N'/Audio/4531271633273357636-Ballspeech.mp3', N'/Image/59869591b591a1b5e979ac7ae9a7edfaece5da.jpg', N'05/10/2021_11:47:27', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (6, N'B', N'/Audio/611321B.mp3', N'/Image/259986bd9840be7d7401fe95b9b776fcfe1e2c.jpg', N'Book', N'/Audio/1841621633273379207-Bookspeech.mp3', N'/Image/178667IMG_20211003_132338.jpg', N'05/10/2021_11:47:58', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (7, N'B', N'/Audio/517405B.mp3', N'/Image/44957bd9840be7d7401fe95b9b776fcfe1e2c.jpg', N'Bag', N'/Audio/9116261633273402352-bagspeech.mp3', N'/Image/110416IMG_20211003_132414.jpg', N'05/10/2021_11:48:13', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (8, N'C', N'/Audio/568066C.mp3', N'/Image/845906264bddcca0ce48dc9729a883d0f4df61.jpg', N'Cat', N'/Audio/8620391633273453802-catspeech.mp3', N'/Image/9995296aade508eb36995273fe018183acbcb9.jpg', N'05/10/2021_11:48:51', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (9, N'C', N'/Audio/741031C.mp3', N'/Image/459341264bddcca0ce48dc9729a883d0f4df61.jpg', N'Cap', N'/Audio/4853231633273488051-capspeech.mp3', N'/Image/341837IMG_20211003_210507.jpg', N'05/10/2021_11:49:10', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (10, N'C', N'/Audio/187446C.mp3', N'/Image/874346264bddcca0ce48dc9729a883d0f4df61.jpg', N'Car', N'/Audio/1567771633273502398-carspeech.mp3', N'/Image/606105IMG_20211003_210518.jpg', N'05/10/2021_11:49:26', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (11, N'D', N'/Audio/25687D.mp3', N'/Image/966774a92ed0232d9f9dc63556844f5562608a.jpg', N'Duck', N'/Audio/6126321633273538923-duckspeech.mp3', N'/Image/774555IMG_20211003_205541.jpg', N'05/10/2021_11:50:05', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (12, N'D', N'/Audio/514420D.mp3', N'/Image/895802a92ed0232d9f9dc63556844f5562608a.jpg', N'Dog', N'/Audio/9727571633273522575-dogspeech.mp3', N'/Image/7602IMG_20211003_205550.jpg', N'05/10/2021_11:51:45', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (13, N'D', N'/Audio/607624D.mp3', N'/Image/453971a92ed0232d9f9dc63556844f5562608a.jpg', N'Dolphin', N'/Audio/2343381633273567416-dolphinspeech.mp3', N'/Image/978699IMG_20211003_205601.jpg', N'05/10/2021_11:52:20', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (14, N'E', N'/Audio/210590E.mp3', N'/Image/491459c470cb2c5aeb838c9ce2bc27fe20440d.jpg', N'Egg', N'/Audio/5307681633273606120-eggspeech.mp3', N'/Image/54158483b8b5381432e70cd0a33f2a57a075cb.jpg', N'05/10/2021_11:52:52', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (15, N'E', N'/Audio/521615E.mp3', N'/Image/490806c470cb2c5aeb838c9ce2bc27fe20440d.jpg', N'Elephant', N'/Audio/1262121633273624276-elephantspeech.mp3', N'/Image/15852IMG_20211003_134939.jpg', N'05/10/2021_11:53:32', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (16, N'E', N'/Audio/545297E.mp3', N'/Image/664837c470cb2c5aeb838c9ce2bc27fe20440d.jpg', N'Eagle', N'/Audio/1434981633273649128-eaglespeech.mp3', N'/Image/2577329e4cffd202155686350b920a823a187b.jpg', N'05/10/2021_11:53:50', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (17, N'F', N'/Audio/673540F.mp3', N'/Image/9666849bf9eeeb13d1af911e0d2222606597b3.jpg', N'Fish', N'/Audio/9490311633273693902-fishspeech.mp3', N'/Image/157821IMG_20211003_133856.jpg', N'05/10/2021_11:54:09', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (18, N'F', N'/Audio/951066F.mp3', N'/Image/7079369bf9eeeb13d1af911e0d2222606597b3.jpg', N'Fox', N'/Audio/3616731633273668623-foxspeech.mp3', N'/Image/157228IMG_20211003_133936.jpg', N'05/10/2021_11:54:28', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (19, N'F', N'/Audio/800453F.mp3', N'/Image/5770379bf9eeeb13d1af911e0d2222606597b3.jpg', N'Flower', N'/Audio/8693601633273718844-flowerspeech.mp3', N'/Image/307730IMG_20211003_134018.jpg', N'05/10/2021_11:54:47', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (20, N'G', N'/Audio/354014G.mp3', N'/Image/9158853f8aeb7d48a67c39a372ada8aba59d02.jpg', N'Giraffe', N'/Audio/2350591633273758500-giraffespeech.mp3', N'/Image/539520IMG_20211003_135211.jpg', N'05/10/2021_11:55:53', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (21, N'G', N'/Audio/435377G.mp3', N'/Image/3870383f8aeb7d48a67c39a372ada8aba59d02.jpg', N'Gorilla', N'/Audio/9863301633273782834-gorillaspeech.mp3', N'/Image/890233IMG_20211003_135542.jpg', N'05/10/2021_11:56:18', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (22, N'G', N'/Audio/259675G.mp3', N'/Image/1137923f8aeb7d48a67c39a372ada8aba59d02.jpg', N'Guiter', N'/Audio/106331633273824734-guiterspeech.mp3', N'/Image/64482IMG_20211003_135552.jpg', N'05/10/2021_11:56:40', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (23, N'H', N'/Audio/899734H.mp3', N'/Image/830579ec6a542ee3e02abda5b6e605d7c0b569.jpg', N'Hat', N'/Audio/8729141633273896319-hatspeech.mp3', N'/Image/241957IMG_20211003_134050.jpg', N'05/10/2021_11:57:12', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (24, N'H', N'/Audio/599915H.mp3', N'/Image/537096ec6a542ee3e02abda5b6e605d7c0b569.jpg', N'House', N'/Audio/3577201633273909842-housespeech.mp3', N'/Image/278447IMG_20211003_134155.jpg', N'05/10/2021_11:57:30', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (25, N'H', N'/Audio/515737H.mp3', N'/Image/130423ec6a542ee3e02abda5b6e605d7c0b569.jpg', N'Horse', N'/Audio/6698061633273869865-horsespeech.mp3', N'/Image/456762IMG_20211003_135728.jpg', N'05/10/2021_11:57:49', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (26, N'I', N'/Audio/842035I.mp3', N'/Image/188052b22314f85c744c6b99acaedb770ad9eb.jpg', N'Ice-cream', N'/Audio/5842301633273970006-ice creamspeech.mp3', N'/Image/675413a6e12e59cb78a45e4c50c16638fabd1d.jpg', N'05/10/2021_11:58:24', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (28, N'I', N'/Audio/951495I.mp3', N'/Image/184642b22314f85c744c6b99acaedb770ad9eb.jpg', N'Igloo', N'/Audio/6789971633274053375-igloospeech.mp3', N'/Image/7207035845537a22b707b147948bcce090fcbc.jpg', N'05/10/2021_11:59:02', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (29, N'J', N'/Audio/533867J.mp3', N'/Image/706900424eee12cb504703aec2c85fcd1dd10f.jpg', N'Juice', N'/Audio/3980361633274113586-juicespeech.mp3', N'/Image/74311391cfc573fa887c48d573121cfa3151bd.jpg', N'05/10/2021_11:59:33', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (30, N'J', N'/Audio/522721J.mp3', N'/Image/930228424eee12cb504703aec2c85fcd1dd10f.jpg', N'Jug', N'/Audio/3462041633274099372-jugspeech.mp3', N'/Image/761062IMG_20211003_134321.jpg', N'05/10/2021_11:59:51', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (31, N'J', N'/Audio/289338J.mp3', N'/Image/360971424eee12cb504703aec2c85fcd1dd10f.jpg', N'Jelly', N'/Audio/6342981633274136419-jellyspeech.mp3', N'/Image/825364IMG_20211003_134219.jpg', N'05/10/2021_12:00:08', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (32, N'K', N'/Audio/2344k.mp3', N'/Image/534643753e5285400c22d08457e9f613da8b9e.jpg', N'Key', N'/Audio/1425101633281987062-keyspeech.mp3', N'/Image/810937key.jpg', N'05/10/2021_12:00:45', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (33, N'K', N'/Audio/302646k.mp3', N'/Image/345494753e5285400c22d08457e9f613da8b9e.jpg', N'Kite', N'/Audio/6380141633274180856-kitespeech.mp3', N'/Image/7099413dcd7debdc80b412cbabb0b76d82a746.jpg', N'05/10/2021_12:01:11', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (34, N'K', N'/Audio/281472k.mp3', N'/Image/690670753e5285400c22d08457e9f613da8b9e.jpg', N'Kangarooo', N'/Audio/9436081633274300110-kangaroospeech.mp3', N'/Image/7920697f093eba01e8aa27137689efe35d2a58.jpg', N'05/10/2021_12:01:43', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (35, N'L', N'/Audio/490171L.mp3', N'/Image/3592397193f986cdcbf479306891cffeba523f.jpg', N'Lemon', N'/Audio/5693221633274495277-lemonspeech.mp3', N'/Image/700590913b88b16064a69159a19803a4a8b063.jpg', N'05/10/2021_12:02:15', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (36, N'L', N'/Audio/213128L.mp3', N'/Image/1353557193f986cdcbf479306891cffeba523f.jpg', N'Lily', N'/Audio/1381011633274564152-lilyspeech.mp3', N'/Image/6366785893563f7c991b808f27dba7f4085b87.jpg', N'05/10/2021_12:02:39', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (37, N'L', N'/Audio/493874L.mp3', N'/Image/537867193f986cdcbf479306891cffeba523f.jpg', N'Lion', N'/Audio/8834671633274509149-lionspeech.mp3', N'/Image/57246lion.jpg', N'05/10/2021_12:03:00', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (38, N'M', N'/Audio/266798M.mp3', N'/Image/3205070a9e38abe3e6206a19c26ce1f758f653.jpg', N'Moon', N'/Audio/9452911633274604064-moonspeech.mp3', N'/Image/2441158edaae942ace6d9a12c80944788a2a70.jpg', N'05/10/2021_12:03:34', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (39, N'M', N'/Audio/983320M.mp3', N'/Image/6396730a9e38abe3e6206a19c26ce1f758f653.jpg', N'Mango', N'/Audio/2556581633274623388-mangaoospeech.mp3', N'/Image/385223IMG_20211003_212231.jpg', N'05/10/2021_12:03:51', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (40, N'M', N'/Audio/585459M.mp3', N'/Image/8484390a9e38abe3e6206a19c26ce1f758f653.jpg', N'Milk', N'/Audio/2007811633274788513-milkspeech.mp3', N'/Image/590019IMG_20211003_212254.jpg', N'05/10/2021_12:04:11', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (41, N'N', N'/Audio/773485N.mp3', N'/Image/72606853d496bc29ffd71deecc57439cecde71.jpg', N'Net', N'/Audio/6659871633274940782-netspeech.mp3', N'/Image/97276009e62659c0dd1effe5070bcdf945126a.jpg', N'05/10/2021_12:04:42', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (42, N'N', N'/Audio/581526N.mp3', N'/Image/1440053d496bc29ffd71deecc57439cecde71.jpg', N'Nest', N'/Audio/8548801633274839003-nestspeech.mp3', N'/Image/73927473e3c2c514224d9425e78ba2b7556b9.jpg', N'05/10/2021_12:04:59', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (43, N'N', N'/Audio/660708N.mp3', N'/Image/92896253d496bc29ffd71deecc57439cecde71.jpg', N'Nut', N'/Audio/1017921633274953159-nutspeech.mp3', N'/Image/65517IMG_20211003_220243.jpg', N'05/10/2021_12:05:23', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (44, N'O', N'/Audio/433209O.mp3', N'/Image/6086195376f7dd4abc959f0040d2d4a9cc36d0.jpg', N'Oven', N'/Audio/2106131633275254961-ovenspeech.mp3', N'/Image/844486IMG_20211003_213427.jpg', N'05/10/2021_12:06:29', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (45, N'O', N'/Audio/767142O.mp3', N'/Image/1959455376f7dd4abc959f0040d2d4a9cc36d0.jpg', N'Owl', N'/Audio/7839701633275272864-owlspeech.mp3', N'/Image/93588502cbd875736f19eb5ba2c645cec15738.jpg', N'05/10/2021_12:06:58', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (46, N'O', N'/Audio/502230O.mp3', N'/Image/1288735376f7dd4abc959f0040d2d4a9cc36d0.jpg', N'Orange', N'/Audio/9187881633275172102-orangespeech.mp3', N'/Image/182723135e999473f95e890e2472eb6f64fec3.jpg', N'05/10/2021_12:07:14', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (47, N'P', N'/Audio/628158P.mp3', N'/Image/35797365afc0ceac39357a5cd3d89f499b1d42.jpg', N'Pencil', N'/Audio/3249101633275408896-pencilspeech.mp3', N'/Image/5045efd4968f533f933247ae74cc78464aa9.jpg', N'05/10/2021_12:07:52', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (48, N'P', N'/Audio/564019P.mp3', N'/Image/35997765afc0ceac39357a5cd3d89f499b1d42.jpg', N'Potato', N'/Audio/3674441633275374406-potatospeech.mp3', N'/Image/597290f51d01a6f37ad6ef390e2c564d2f3667.jpg', N'05/10/2021_12:08:51', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (49, N'P', N'/Audio/945684P.mp3', N'/Image/64087065afc0ceac39357a5cd3d89f499b1d42.jpg', N'Panda', N'/Audio/6153311633275387393-pandaspeech.mp3', N'/Image/847007IMG_20211003_213833.jpg', N'05/10/2021_12:09:41', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (50, N'Q', N'/Audio/967051Q.mp3', N'/Image/742153180bbad421fd1784501a2770a8d8d680.jpg', N'Queen', N'/Audio/2320941633275676407-queenspeech.mp3', N'/Image/122312e5308eaa2496eb1d3364585bc63464a.jpg', N'05/10/2021_12:10:09', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (51, N'Q', N'/Audio/808512Q.mp3', N'/Image/12873180bbad421fd1784501a2770a8d8d680.jpg', N'Quill', N'/Audio/228961633275796547-quillspeech.mp3', N'/Image/600731bbec9e47b3986378dfbf711afd389a9d.jpg', N'05/10/2021_12:10:49', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (52, N'Q', N'/Audio/247484Q.mp3', N'/Image/345751180bbad421fd1784501a2770a8d8d680.jpg', N'Quail ', N'/Audio/9555511633275622483-quailspeech.mp3', N'/Image/239603IMG_20211003_220137.jpg', N'05/10/2021_12:12:09', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (53, N'I', N'/Audio/177328I.mp3', N'/Image/580462b22314f85c744c6b99acaedb770ad9eb.jpg', N'Ice', N'/Audio/2834191633274073003-icespeech.mp3', N'/Image/3985362e9ec86ac71056e0df88fc4b42a543de.jpg', N'05/10/2021_12:12:41', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (54, N'R', N'/Audio/931475R.mp3', N'/Image/4404469c2f20dc6ed84c685468312ce8748016.jpg', N'Rat', N'/Audio/437361633275843746-ratspeech.mp3', N'/Image/7768377cc8f200a4df795f0ebc19b6dbf21cb4.jpg', N'05/10/2021_12:13:37', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (55, N'R', N'/Audio/205619R.mp3', N'/Image/5534709c2f20dc6ed84c685468312ce8748016.jpg', N'Rain', N'/Audio/5481621633275858807-rainspeech.mp3', N'/Image/339353475315f26b1ea41b8d55297fa0cf8c61.jpg', N'05/10/2021_12:13:57', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (56, N'R', N'/Audio/543062R.mp3', N'/Image/3877719c2f20dc6ed84c685468312ce8748016.jpg', N'Rocket', N'/Audio/5144171633275830078-rocketspeech.mp3', N'/Image/540056af6af2e226487c291a88cd5a6eeb8c21.jpg', N'05/10/2021_12:14:13', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (57, N'S', N'/Audio/800822S.mp3', N'/Image/442514295cec07f4071705e46556cd1be297a9.jpg', N'Sheep', N'/Audio/6998641633275915606-sheepspeech.mp3', N'/Image/35707713e2c1d5c3e22e83a2f76e7f4d4a7432.jpg', N'05/10/2021_12:14:42', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (58, N'S', N'/Audio/275546S.mp3', N'/Image/178156295cec07f4071705e46556cd1be297a9.jpg', N'Sun', N'/Audio/1907611633275889494-sunspeech.mp3', N'/Image/19872636c68f22725528fcf0b2e22299c2992.jpg', N'05/10/2021_12:14:57', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (59, N'S', N'/Audio/922335S.mp3', N'/Image/320208295cec07f4071705e46556cd1be297a9.jpg', N'Star', N'/Audio/7797761633275930995-starspeech.mp3', N'/Image/726701ca98ed3f2db49af9b998a1a543048233.jpg', N'05/10/2021_12:15:15', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (60, N'T', N'/Audio/222631T.mp3', N'/Image/232540b198612906a4d3dd0c4dad109d789d0e.jpg', N'Table', N'/Audio/8660211633275985693-tablespeech.mp3', N'/Image/579473fc176737fd237b5dbd2e00bdb7495b9d.jpg', N'05/10/2021_12:15:45', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (61, N'T', N'/Audio/664635T.mp3', N'/Image/194657b198612906a4d3dd0c4dad109d789d0e.jpg', N'Tomato', N'/Audio/6216361633276003372-tomatospeech.mp3', N'/Image/43838717eacce91e164a46f010be3bed5b2377.jpg', N'05/10/2021_12:16:01', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (62, N'T', N'/Audio/821266T.mp3', N'/Image/92850b198612906a4d3dd0c4dad109d789d0e.jpg', N'Tiger', N'/Audio/8286161633275972169-tigerspeech.mp3', N'/Image/7211963afa817a1c5f4498f9e60b90593efc84.jpg', N'05/10/2021_12:16:17', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (63, N'U', N'/Audio/440567U.mp3', N'/Image/84446966ab498cee8711f5cc7d74a6548ec894.jpg', N'Umbrella', N'/Audio/5413491633276106216-umbrellaspeech.mp3', N'/Image/3424676bdb08ec46c89bad02ad315cdb3fbc1d.jpg', N'05/10/2021_12:16:53', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (64, N'U', N'/Audio/732248U.mp3', N'/Image/74548366ab498cee8711f5cc7d74a6548ec894.jpg', N'Unicorn', N'/Audio/8626011633276091215-unicornspeech.mp3', N'/Image/411373212052afbd741fce84f0331ea2c11a1.jpg', N'05/10/2021_12:17:11', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (65, N'U', N'/Audio/212373U.mp3', N'/Image/21378366ab498cee8711f5cc7d74a6548ec894.jpg', N'Uniform', N'/Audio/1939151633276139102-uniformspeech.mp3', N'/Image/483105b93e1c0e039d72adb38c8ab45e9d3d5f.jpg', N'05/10/2021_12:17:32', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (66, N'V', N'/Audio/492908V.mp3', N'/Image/33812583ffd0c2c7106f46aa2607494b3845c8.jpg', N'Van', N'/Audio/4633351633276230182-vanspeech.mp3', N'/Image/19972308d1da4816e2318801adfef28873acf5.jpg', N'05/10/2021_12:18:09', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (67, N'V', N'/Audio/364086V.mp3', N'/Image/89557383ffd0c2c7106f46aa2607494b3845c8.jpg', N'Vase', N'/Audio/5407881633276199503-vasespeech.mp3', N'/Image/92112486692981ee2a64db306a039c0f889915.jpg', N'05/10/2021_12:18:25', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (68, N'V', N'/Audio/223290V.mp3', N'/Image/84873883ffd0c2c7106f46aa2607494b3845c8.jpg', N'Vegetable', N'/Audio/2151021633276213165-vegetablespeech.mp3', N'/Image/304609f26cf8954cd9140ff30e8096400eb1bf.jpg', N'05/10/2021_12:18:52', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (69, N'W', N'/Audio/139806W.mp3', N'/Image/7524092081d8cd5b2eaa71961c31ea6c274ff0.jpg', N'Watermelon', N'/Audio/9834441633276294070-watermelonspeech.mp3', N'/Image/122367f1a827dd8e186e5125e3c905d248f72f.jpg', N'05/10/2021_12:19:33', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (70, N'W', N'/Audio/832436W.mp3', N'/Image/1045692081d8cd5b2eaa71961c31ea6c274ff0.jpg', N'Whale', N'/Audio/7994681633276308935-whalespeech.mp3', N'/Image/31764671c3bb84135304e5f8e716d5aaf6808b.jpg', N'05/10/2021_12:19:48', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (71, N'W', N'/Audio/982547W.mp3', N'/Image/3715842081d8cd5b2eaa71961c31ea6c274ff0.jpg', N'Well', N'/Audio/7567731633276323877-wellspeech.mp3', N'/Image/7739405efc8913b26346d99935621090f9ebb8.jpg', N'05/10/2021_12:20:01', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (72, N'X', N'/Audio/470097X.mp3', N'/Image/57438121eff0e0b77d00b4e1c38741f51cf005.jpg', N'X-mas', N'/Audio/2710751633276429660-xmasspeech.mp3', N'/Image/385817d82602ad3d8f6e2f1279ffee48804818.jpg', N'05/10/2021_12:20:35', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (73, N'X', N'/Audio/32913X.mp3', N'/Image/20532921eff0e0b77d00b4e1c38741f51cf005.jpg', N'X-ray', N'/Audio/2399761633276464444-x rayspeech.mp3', N'/Image/928679IMG_20211003_220021.jpg', N'05/10/2021_12:21:00', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (74, N'X', N'/Audio/790782X.mp3', N'/Image/10637621eff0e0b77d00b4e1c38741f51cf005.jpg', N'X-ray fish', N'/Audio/8680241633276490971-x ray fishspeech.mp3', N'/Image/121346IMG_20211003_220715.jpg', N'05/10/2021_12:21:20', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (75, N'Y', N'/Audio/322069Y.mp3', N'/Image/239508560f6d9e3ac26d73022e284ed9edc24b.jpg', N'Yellow', N'/Audio/6836481633276611637-yellowspeech.mp3', N'/Image/845631c0f9911f85d6adcf2ef22de1d8c1210d.jpg', N'05/10/2021_12:21:45', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (76, N'Y', N'/Audio/461035Y.mp3', N'/Image/729852560f6d9e3ac26d73022e284ed9edc24b.jpg', N'Yo-yo', N'/Audio/5891211633276642190-yo yospeech.mp3', N'/Image/320985c73476933e1553ddd3cb7aeec046ab0e.jpg', N'05/10/2021_12:22:17', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (77, N'Y', N'/Audio/909558Y.mp3', N'/Image/323147560f6d9e3ac26d73022e284ed9edc24b.jpg', N'Yak', N'/Audio/5944111633276595737-yakspeech.mp3', N'/Image/6415f5d544be3e047b6e4ff9bfad223a3139.jpg', N'05/10/2021_12:22:34', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (78, N'Z', N'/Audio/478681Z.mp3', N'/Image/7900738e3c491abaf58a61103cbb253c882cdb.jpg', N'Zero', N'/Audio/3370411633276710471-zerospeech.mp3', N'/Image/671843b05a84b8cc009c50346ba10d7e6615b0.jpg', N'05/10/2021_12:23:17', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (79, N'Z', N'/Audio/572096Z.mp3', N'/Image/1423298e3c491abaf58a61103cbb253c882cdb.jpg', N'Zoo', N'/Audio/745681633276738160-zoospeech.mp3', N'/Image/3480011914edf425edfa437b965c4169458f06.jpg', N'05/10/2021_12:23:35', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (80, N'Z', N'/Audio/230932Z.mp3', N'/Image/2669668e3c491abaf58a61103cbb253c882cdb.jpg', N'Zebra', N'/Audio/2394691633276725440-zebraspeech.mp3', N'/Image/3340445e8792ae6e495420df9209d94accdb11.jpg', N'05/10/2021_12:23:50', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (81, N'1', N'/Audio/9216961633358691139-1speech.mp3', N'/Image/143500PicsArt_10-03-08.32.03.jpg', N'One', N'', N'', N'05/10/2021_04:36:38', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (82, N'2', N'/Audio/9388591633358730338-2speech.mp3', N'/Image/686353PicsArt_10-03-08.32.17.jpg', N'Two', N'', N'', N'05/10/2021_04:36:55', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (83, N'3', N'/Audio/1503571633358784479-3speech.mp3', N'/Image/453909PicsArt_10-03-08.32.30.jpg', N'Three', N'', N'', N'05/10/2021_05:03:24', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (84, N'4', N'/Audio/6577571633358796988-4speech.mp3', N'/Image/517442PicsArt_10-03-08.32.41.jpg', N'Four', N'', N'', N'05/10/2021_05:03:42', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (85, N'5', N'/Audio/5533891633358809908-5speech.mp3', N'/Image/836085PicsArt_10-03-08.32.53.jpg', N'five', N'', N'', N'05/10/2021_05:04:44', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (86, N'6', N'/Audio/411501633358822327-6r.in-speech.mp3', N'/Image/832969PicsArt_10-03-08.33.05.jpg', N'Six', N'', N'', N'05/10/2021_05:05:02', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (87, N'7', N'/Audio/2980041633358837846-7speech.mp3', N'/Image/783281PicsArt_10-03-08.33.15.jpg', N'Seven', N'', N'', N'05/10/2021_05:05:20', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (88, N'8', N'/Audio/3326201633358849936-8.in-speech.mp3', N'/Image/939896PicsArt_10-03-08.33.37.jpg', N'Eight', N'', N'', N'05/10/2021_05:05:36', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (89, N'9', N'/Audio/1596971633358864944-9r.in-speech.mp3', N'/Image/909136PicsArt_10-03-08.33.56.jpg', N'Nine', N'', N'', N'05/10/2021_05:07:49', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (90, N'10', N'/Audio/6593821633358880880-10speech.mp3', N'/Image/168376PicsArt_10-03-08.34.25.jpg', N'Ten', N'', N'', N'05/10/2021_05:08:11', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (91, N'11', N'/Audio/750961633358908946-11speech.mp3', N'/Image/914288PicsArt_10-03-08.20.41.jpg', N'Eleven', N'', N'', N'05/10/2021_05:08:40', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (92, N'12', N'/Audio/8759111633358922507-12speech.mp3', N'/Image/811990PicsArt_10-03-08.21.42.jpg', N'Twelve', N'', N'', N'05/10/2021_05:09:41', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (93, N'13', N'/Audio/2319191633358935126-13speech.mp3', N'/Image/260052PicsArt_10-03-08.22.02.jpg', N'Thirteen', N'', N'', N'05/10/2021_05:09:56', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (94, N'14', N'/Audio/3504241633358950151-14speech.mp3', N'/Image/753543PicsArt_10-03-08.22.22.jpg', N'Fourteen', N'', N'', N'05/10/2021_05:10:11', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (95, N'15', N'/Audio/1485141633358962908-15speech.mp3', N'/Image/439431PicsArt_10-03-08.23.27.jpg', N'Fifteen', N'', N'', N'05/10/2021_05:10:42', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (96, N'16', N'/Audio/2386311633358976130-16speech.mp3', N'/Image/337689PicsArt_10-03-08.23.48.jpg', N'Sixteen', N'', N'', N'05/10/2021_05:10:59', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (97, N'17', N'/Audio/9759051633358989218-17speech.mp3', N'/Image/723504PicsArt_10-03-08.24.10.jpg', N'Seventeen', N'', N'', N'05/10/2021_05:11:16', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (98, N'18', N'/Audio/7729331633359002772-18speech.mp3', N'/Image/752432PicsArt_10-03-08.24.35.jpg', N'Eighteen', N'', N'', N'05/10/2021_05:11:37', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (99, N'19', N'/Audio/1213051633359016169-19speech.mp3', N'/Image/670797PicsArt_10-03-08.24.56.jpg', N'Nineteen', N'', N'', N'05/10/2021_05:11:56', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (100, N'20', N'/Audio/1384681633359029636-20speech.mp3', N'/Image/214762PicsArt_10-03-08.25.14.jpg', N'Twenty', N'', N'', N'05/10/2021_05:12:12', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (101, N'21', N'/Audio/2003541633359041124-21speech.mp3', N'/Image/69203PicsArt_10-03-08.25.34.jpg', N'Twenty One', N'', N'', N'05/10/2021_05:12:30', N'Number')
GO
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (102, N'22', N'/Audio/8155351633359055732-22speech.mp3', N'/Image/437732PicsArt_10-03-08.25.50.jpg', N'Twenty Two', N'', N'', N'05/10/2021_05:12:49', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (103, N'23', N'/Audio/7039541633359073035-23speech.mp3', N'/Image/814853PicsArt_10-03-08.26.04.jpg', N'Twenty Three', N'', N'', N'05/10/2021_05:13:21', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (104, N'24', N'/Audio/3790471633359086251-24speech.mp3', N'/Image/379024PicsArt_10-03-08.26.22.jpg', N'Twenty Four', N'', N'', N'05/10/2021_05:13:42', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (105, N'25', N'/Audio/1582771633359099418-25speech.mp3', N'/Image/482835PicsArt_10-03-08.26.40.jpg', N'Twenty Five', N'', N'', N'05/10/2021_05:14:35', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (106, N'26', N'/Audio/8670851633359111430-26speech.mp3', N'/Image/996595PicsArt_10-03-08.26.56.jpg', N'Twenty Six', N'', N'', N'05/10/2021_05:14:56', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (107, N'27', N'/Audio/8688971633359133527-27speech.mp3', N'/Image/206570PicsArt_10-03-08.27.11.jpg', N'Twenty Seven', N'', N'', N'05/10/2021_05:15:19', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (108, N'28', N'/Audio/9100321633359148330-28speech.mp3', N'/Image/993251PicsArt_10-03-08.27.34.jpg', N'Twenty Eight', N'', N'', N'05/10/2021_05:15:37', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (109, N'29', N'/Audio/383471633359229230-29speech.mp3', N'/Image/673399PicsArt_10-03-08.28.06.jpg', N'Twenty Nine', N'', N'', N'05/10/2021_05:15:58', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (110, N'30', N'/Audio/4345891633359243778-30speech.mp3', N'/Image/702230PicsArt_10-03-08.28.29.jpg', N'Thirty', N'', N'', N'05/10/2021_05:16:16', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (163, N'ক', N'/Audio/357552k.aac', N'/Image/276504PicsArt_10-05-10.17.58.jpg', N'কলা', N'/Audio/668025kola (1).aac', N'/Image/970607banana-clipart-pdf.png', N'06/10/2021_01:01:53', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (164, N'খ', N'/Audio/106293kha.aac', N'/Image/505310PicsArt_10-05-07.10.26.jpg', N'খেলনা', N'/Audio/178667khelna.aac', N'/Image/523504kids-toy-box-full-toys-modern-flat-style-vector-illustration-cartoon-clipart-82200341.jpg', N'06/10/2021_01:02:42', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (165, N'গ', N'/Audio/433786g.aac', N'/Image/737167PicsArt_10-05-07.10.41.jpg', N'গরু', N'/Audio/84355Goru (1).aac', N'/Image/773692download (1).png', N'06/10/2021_01:03:11', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (166, N'ঘ', N'/Audio/712219gh.aac', N'/Image/582850PicsArt_10-05-07.10.59.jpg', N'ঘোড়া', N'/Audio/429198gho.aac', N'/Image/116492download.jpg', N'06/10/2021_01:03:41', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (167, N'ঙ', N'/Audio/450296oowo.aac', N'/Image/552352PicsArt_10-05-07.11.29.jpg', N'ব্যাঙ', N'/Audio/867205beng.aac', N'/Image/621720ac1acffaa7f87b31c94cfab729167efb.jpg', N'06/10/2021_01:05:33', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (168, N'চ', N'/Audio/588312cha.aac', N'/Image/617904PicsArt_10-05-07.11.40.jpg', N'চাবি', N'/Audio/274293chabi.aac', N'/Image/718799pngtree-key-vector-icon-png-image_1027880.jpg', N'06/10/2021_03:21:56', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (169, N'ছ', N'/Audio/486689ca.aac', N'/Image/224797PicsArt_10-05-07.12.04.jpg', N'ছাগল', N'/Audio/218716cagol.aac', N'/Image/91306827-279202_goat-and-kid-clipart-clip-art-black-and.png', N'06/10/2021_01:08:46', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (170, N'জ', N'/Audio/92319ja.aac', N'/Image/334021PicsArt_10-05-07.13.20.jpg', N'জুতা', N'/Audio/2038juta.aac', N'/Image/770570download.png', N'06/10/2021_01:10:08', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (171, N'ঝ', N'/Audio/373972jha.aac', N'/Image/356883PicsArt_10-05-07.13.31.jpg', N'ঝুড়ি', N'/Audio/680716jhuri.aac', N'/Image/533420kissclipart-storage-basket-clipart-basket-wicker-nyse-glw-f8eb46bed0f71e45.jpg', N'06/10/2021_01:10:39', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (172, N'ঞ', N'/Audio/242691eu.aac', N'/Image/865219PicsArt_10-05-07.17.59.jpg', N'মিঞ', N'/Audio/273328miao.aac', N'/Image/159610234-2345778_cat-clip-art-clipart-cat-kitten-clip-art.png', N'06/10/2021_01:17:46', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (173, N'ট', N'/Audio/986115ta.aac', N'/Image/536706PicsArt_10-05-07.19.02.jpg', N'টব', N'/Audio/933705tab.aac', N'/Image/962647download.jpg', N'06/10/2021_01:18:22', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (174, N'ঠ', N'/Audio/826670tha.aac', N'/Image/701882PicsArt_10-05-07.19.17.jpg', N'ঠেলা', N'/Audio/791193thela.aac', N'/Image/209977download.jpg', N'06/10/2021_01:18:50', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (175, N'ড', N'/Audio/548509da.aac', N'/Image/579479PicsArt_10-05-07.19.30.jpg', N'ডাব', N'/Audio/949602dab.aac', N'/Image/99833simple-coconut-on-white-background-free-vector.jpg', N'06/10/2021_01:19:20', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (176, N'ঢ', N'/Audio/821523dha.aac', N'/Image/345987PicsArt_10-05-07.20.38.jpg', N'ঢাকনা', N'/Audio/900441dhakna.aac', N'/Image/204639unnamed.jpg', N'06/10/2021_01:21:01', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (177, N'ণ', N'/Audio/968898no.aac', N'/Image/952079PicsArt_10-05-07.30.08.jpg', N'হরিণ', N'/Audio/504220horin.aac', N'/Image/176377Cute-Deer-clipart-png.png', N'06/10/2021_01:21:56', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (178, N'ত', N'/Audio/22985ta.aac', N'/Image/826887PicsArt_10-05-07.30.49.jpg', N'তাল', N'/Audio/855155tal.aac', N'/Image/144370asian-palmyra-palm-toddy-palm-sugar-palm-white-background_55883-8805.jpg', N'06/10/2021_01:22:23', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (179, N'থ', N'/Audio/808528tho.aac', N'/Image/666307PicsArt_10-05-07.31.02.jpg', N'থালা', N'/Audio/873697thala.aac', N'/Image/622603large_plate_clip_art_13429.jpg', N'06/10/2021_01:23:29', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (180, N'দ', N'/Audio/508498do.aac', N'/Image/578736PicsArt_10-05-07.31.13.jpg', N'দোলনা', N'/Audio/881445dolna.aac', N'/Image/955143233-2334681_parks-recreation-school-clipart-clipart-boy-outdoor-swing.png', N'06/10/2021_01:24:03', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (181, N'ধ', N'/Audio/433847dho.aac', N'/Image/186332PicsArt_10-05-07.31.26.jpg', N'ধান', N'/Audio/302209dhan.aac', N'/Image/677186download.jpg', N'06/10/2021_01:24:43', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (182, N'ন', N'/Audio/570499no.aac', N'/Image/603928PicsArt_10-05-07.31.37.jpg', N'নৌকা', N'/Audio/806048nouka.aac', N'/Image/74772112340762-wooden-fishing-boat-vector-illustration-isolated-on-a-white-background-.jpg', N'06/10/2021_01:25:23', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (183, N'প', N'/Audio/80111po.aac', N'/Image/219464PicsArt_10-05-07.31.49.jpg', N'পাতা', N'/Audio/393369pata.aac', N'/Image/489093download.jpg', N'06/10/2021_01:26:53', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (184, N'ফ', N'/Audio/35950fo.aac', N'/Image/700952PicsArt_10-05-07.32.03.jpg', N'ফল', N'/Audio/139045fol.aac', N'/Image/96767324-245281_fruit-and-vegetables-clipart-fruit-clipart-png-fruit.png', N'06/10/2021_01:27:34', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (185, N'ব', N'/Audio/39943bo.aac', N'/Image/465295PicsArt_10-05-07.32.16.jpg', N'বন', N'/Audio/511141bon.aac', N'/Image/13584istockphoto-1307130196-170667a.jpg', N'06/10/2021_01:28:02', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (186, N'ভ', N'/Audio/39018bho.aac', N'/Image/14347PicsArt_10-05-07.32.26.jpg', N'ভাত', N'/Audio/24241bhat.aac', N'/Image/213592121-1214639_bowl-of-white-rice-transparent-bowl-of-rice.png', N'06/10/2021_01:29:07', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (187, N'ম', N'/Audio/715101mo.aac', N'/Image/856065PicsArt_10-05-07.32.42.jpg', N'মাছি', N'/Audio/946904machi.aac', N'/Image/646534115-1159872_house-fly-fly-clipart-hd-png-download.png', N'06/10/2021_01:29:34', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (188, N'য', N'/Audio/338819jo.aac', N'/Image/960202PicsArt_10-05-07.32.52.jpg', N'যাতা', N'/Audio/984736jata.aac', N'/Image/719391images.jpg', N'06/10/2021_01:30:07', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (189, N'র', N'/Audio/972359ro.aac', N'/Image/48035PicsArt_10-05-07.33.24.jpg', N'রাজা', N'/Audio/598454raja.aac', N'/Image/7146294531717-cartoon-king.jpg', N'06/10/2021_01:30:37', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (190, N'ল', N'/Audio/708353lo.aac', N'/Image/85395PicsArt_10-05-07.33.36.jpg', N'লাঠি', N'/Audio/666584lathi.aac', N'/Image/659470walking-stick.jpg', N'06/10/2021_01:31:05', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (191, N'শ', N'/Audio/801557sho.aac', N'/Image/642452PicsArt_10-05-07.34.56.jpg', N'শাপলা', N'/Audio/927053shapla.aac', N'/Image/631679G03.jpg', N'06/10/2021_01:31:39', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (192, N'ষ', N'/Audio/361558sho.aac', N'/Image/336768PicsArt_10-05-07.35.34.jpg', N'ষাঁড়', N'/Audio/960422shar.aac', N'/Image/704681102626636-cartoon-happy-bison.jpg', N'06/10/2021_01:32:47', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (193, N'স', N'/Audio/959075sho.aac', N'/Image/298559PicsArt_10-05-07.34.41.jpg', N'সাগর', N'/Audio/513759shagor.aac', N'/Image/800172kissclipart-sea-beach-clip-art-3213219c2a383f99.png', N'06/10/2021_01:33:23', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (194, N'হ', N'/Audio/834034ho.aac', N'/Image/826262PicsArt_10-05-07.35.48.jpg', N'হাঁস', N'/Audio/487362has.aac', N'/Image/8635345430980-white-duck-duck-clipart-feather-duckbill-png-transparent-image-duck-clipart-png-532_800_preview.png', N'06/10/2021_01:34:23', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (195, N'ড়', N'/Audio/2527161.aac', N'/Image/530712PicsArt_10-05-07.26.21.jpg', N'পাহাড়', N'/Audio/12539pa.aac', N'/Image/715249203-2034326_transparent-rolling-hills-clipart-transparent-background-mountain-clipart.png', N'06/10/2021_02:26:04', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (196, N'ঢ়', N'/Audio/927680dhar.aac', N'/Image/475022PicsArt_10-05-07.28.16.jpg', N'আষাঢ়', N'/Audio/525944ashar.aac', N'/Image/103072vector-background-scene-with-forest-in-the-rain.jpg', N'06/10/2021_02:26:34', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (197, N'য়', N'/Audio/903055ya.aac', N'/Image/346516PicsArt_10-05-07.33.10.jpg', N'আয়না', N'/Audio/196649ayna.aac', N'/Image/201771552-5526020_png-mirror-clip-art-transparent-png-png-download.png', N'06/10/2021_01:35:13', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (198, N'ৎ', N'/Audio/394327khondotto.aac', N'/Image/428311PicsArt_10-06-12.38.04.jpg', N'জগৎ', N'/Audio/309718jogot.aac', N'/Image/15156images.jpg', N'06/10/2021_02:12:04', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (199, N'ং', N'/Audio/2820811.aac', N'/Image/618667PicsArt_10-06-12.37.02.jpg', N'রং', N'/Audio/562761r.aac', N'/Image/2699793fb9ceae-d2c2-11de-9a9e-001cc4c03286.image.jpg', N'06/10/2021_02:21:04', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (200, N'ঃ', N'/Audio/109672onusshar.aac', N'/Image/909777PicsArt_10-06-12.37.44.jpg', N'দুঃখ', N'/Audio/137471dukkho.aac', N'/Image/69178282-820745_sad-new-png-girl-crying-clipart-transparent-png.png', N'06/10/2021_02:16:21', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (201, N'ঁ', N'/Audio/435113chandradsdsdsd.aac', N'/Image/690977dsdsccdscefcece.jpg', N'চাঁদ', N'/Audio/877093chaddsdsdsdsd.aac', N'/Image/559989dsdsdsdsdsdsd.jpg', N'06/10/2021_03:21:26', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (202, N'অ', N'/Audio/705583o.aac', N'/Image/670738PicsArt_10-05-07.36.51.jpg', N'অজগর', N'/Audio/957327ojo.aac', N'/Image/155368405-4053461_cool-snake-clipart-snake-clipart.png', N'07/10/2021_11:04:32', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (203, N'আ', N'/Audio/303227aa.aac', N'/Image/252389PicsArt_10-05-07.37.12.jpg', N'আম', N'/Audio/995345am.aac', N'/Image/922161images.jpg', N'07/10/2021_11:04:57', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (204, N'ই', N'/Audio/213516e.aac', N'/Image/594678PicsArt_10-05-07.37.22.jpg', N'ইলিশ', N'/Audio/573075eli.aac', N'/Image/602658unnamed.jpg', N'07/10/2021_11:05:24', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (205, N'ঈ', N'/Audio/693513ee.aac', N'/Image/443118PicsArt_10-05-07.37.33.jpg', N'ঈগল', N'/Audio/418595egol.aac', N'/Image/37332444-444242_eagle-perched-png-pic-philippine-eagle-clipart-transparent.png', N'07/10/2021_11:05:56', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (206, N'উ', N'/Audio/561241u.aac', N'/Image/682783PicsArt_10-05-07.37.43.jpg', N'উট', N'/Audio/131569ut.aac', N'/Image/51412821-211840_camel-png-photo-transparent-camel-clipart-png-download.png', N'07/10/2021_11:07:43', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (207, N'ঊ', N'/Audio/236122uu.aac', N'/Image/452866PicsArt_10-05-07.37.53.jpg', N'ঊষা', N'/Audio/653710usha.aac', N'/Image/869303download.jpg', N'07/10/2021_11:08:20', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (208, N'ঋ', N'/Audio/19901ri.aac', N'/Image/426462PicsArt_10-05-07.38.12.jpg', N'ঋষি', N'/Audio/709414rishi.aac', N'/Image/350081photo.jpg', N'07/10/2021_11:08:53', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (209, N'এ', N'/Audio/163361e.aac', N'/Image/545033PicsArt_10-05-07.38.22.jpg', N'একতারা', N'/Audio/521992ektara.aac', N'/Image/2623251154090210_mreenmoyb.jpg', N'07/10/2021_11:09:20', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (210, N'ঐ', N'/Audio/755478oi.aac', N'/Image/774165PicsArt_10-05-07.38.34.jpg', N'ঐরাবত', N'/Audio/234911oirabot.aac', N'/Image/577533download.jpg', N'07/10/2021_11:09:49', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (211, N'ও', N'/Audio/283467o.aac', N'/Image/454411PicsArt_10-05-07.38.45.jpg', N'ওল', N'/Audio/134694ol.aac', N'/Image/896463Ol-Kochu.png', N'07/10/2021_11:10:14', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (212, N'ঔ', N'/Audio/294884ou.aac', N'/Image/953250PicsArt_10-05-07.38.56.jpg', N'ঔষধ', N'/Audio/689778oushod.aac', N'/Image/111171297-2974273_tablet-clipart-medicine-tablet-clip-art-of-medicine.png', N'07/10/2021_11:10:56', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (213, N'১', N'/Audio/290341.aac', N'/Image/793522PicsArt_10-05-10.20.39.jpg', N'এক', N'', N'', N'07/10/2021_08:25:12', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (214, N'২', N'/Audio/5233972.aac', N'/Image/595812PicsArt_10-05-10.20.50.jpg', N'দুই', N'', N'', N'07/10/2021_08:25:26', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (215, N'৩', N'/Audio/187943.aac', N'/Image/122393PicsArt_10-05-10.21.00.jpg', N'তিন', N'', N'', N'07/10/2021_08:25:42', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (216, N'৪', N'/Audio/8201114.aac', N'/Image/882867PicsArt_10-05-10.21.08.jpg', N'চার', N'', N'', N'07/10/2021_08:26:09', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (217, N'৫', N'/Audio/8154845.aac', N'/Image/737373PicsArt_10-05-10.21.18.jpg', N'পাঁচ', N'', N'', N'07/10/2021_08:26:29', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (218, N'৬', N'/Audio/1124816.aac', N'/Image/196818PicsArt_10-05-10.21.28.jpg', N'ছয়', N'', N'', N'07/10/2021_08:26:59', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (219, N'৭', N'/Audio/3867097.aac', N'/Image/484070PicsArt_10-05-10.21.36.jpg', N'সাত', N'', N'', N'07/10/2021_08:27:18', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (220, N'৮', N'/Audio/5466388.aac', N'/Image/835150PicsArt_10-05-10.21.43.jpg', N'আট', N'', N'', N'07/10/2021_08:27:34', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (221, N'৯', N'/Audio/8773519.aac', N'/Image/245298PicsArt_10-05-10.21.50.jpg', N'নয়', N'', N'', N'07/10/2021_08:28:04', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (222, N'১০', N'/Audio/82807910.aac', N'/Image/65036PicsArt_10-05-10.22.29.jpg', N'দশ', N'', N'', N'07/10/2021_08:28:22', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (223, N'১১', N'/Audio/20747911.aac', N'/Image/616221PicsArt_10-05-10.22.38.jpg', N'এগারো', N'', N'', N'07/10/2021_08:29:14', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (224, N'১২', N'/Audio/89891312.aac', N'/Image/793041PicsArt_10-05-10.22.47.jpg', N'বারো', N'', N'', N'07/10/2021_08:29:34', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (225, N'১৩', N'/Audio/35065013.aac', N'/Image/664995PicsArt_10-05-10.22.58.jpg', N'তেরো', N'', N'', N'07/10/2021_08:29:57', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (226, N'১৪', N'/Audio/4738114.aac', N'/Image/53729PicsArt_10-05-10.23.07.jpg', N'চৌদ্দ', N'', N'', N'07/10/2021_08:31:48', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (227, N'১৫', N'/Audio/18494015.aac', N'/Image/575756PicsArt_10-05-10.23.28.jpg', N'পনেরো', N'', N'', N'07/10/2021_08:32:40', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (228, N'১৬', N'/Audio/85240216.aac', N'/Image/508749PicsArt_10-05-10.23.37.jpg', N'ষোলো', N'', N'', N'07/10/2021_08:32:59', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (229, N'১৭', N'/Audio/66044217.aac', N'/Image/795969PicsArt_10-05-10.23.44.jpg', N'সতেরো', N'', N'', N'07/10/2021_08:33:17', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (230, N'১৮', N'/Audio/8597318.aac', N'/Image/627058PicsArt_10-05-10.23.50.jpg', N'আঠারো', N'', N'', N'07/10/2021_08:33:49', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (231, N'১৯', N'/Audio/35759719.aac', N'/Image/771767PicsArt_10-05-10.23.57.jpg', N'উনিশ', N'', N'', N'07/10/2021_08:34:36', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (232, N'২০', N'/Audio/78432920.aac', N'/Image/675602PicsArt_10-05-10.24.05.jpg', N'বিশ', N'', N'', N'07/10/2021_08:34:55', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (233, N'২১', N'/Audio/61956221.aac', N'/Image/384940PicsArt_10-05-10.24.12.jpg', N'একুশ', N'', N'', N'07/10/2021_08:35:15', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (234, N'২২', N'/Audio/24326222.aac', N'/Image/142561PicsArt_10-05-10.24.19.jpg', N'বাইশ', N'', N'', N'07/10/2021_08:37:04', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (235, N'২৩', N'/Audio/59675023.aac', N'/Image/621196PicsArt_10-05-10.24.29.jpg', N'তেইশ', N'', N'', N'07/10/2021_08:37:42', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (236, N'২৪', N'/Audio/4638524 (1).aac', N'/Image/214491PicsArt_10-05-10.24.36.jpg', N'চব্বিশ', N'', N'', N'07/10/2021_08:37:59', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (237, N'২৫', N'/Audio/21485624 (2).aac', N'/Image/199699PicsArt_10-05-10.24.46.jpg', N'পঁচিশ', N'', N'', N'07/10/2021_08:38:24', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (238, N'২৬', N'/Audio/62091524 (3).aac', N'/Image/312594PicsArt_10-05-10.24.56.jpg', N'ছাব্বিশ', N'', N'', N'07/10/2021_08:38:44', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (239, N'২৭', N'/Audio/35158624 (4).aac', N'/Image/893004PicsArt_10-05-10.25.05.jpg', N'সাতাশ', N'', N'', N'07/10/2021_08:39:05', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (240, N'২৯', N'/Audio/45423924 (6).aac', N'/Image/189733PicsArt_10-05-10.25.28.jpg', N'ঊনত্রিশ', N'', N'', N'07/10/2021_08:39:59', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (241, N'৩০', N'/Audio/48451724 (7).aac', N'/Image/270650PicsArt_10-05-10.25.36.jpg', N'ত্রিশ', N'', N'', N'07/10/2021_08:40:19', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (242, N'২৮', N'/Audio/72663624 (5).aac', N'/Image/920494PicsArt_10-05-10.25.15.jpg', N'আটাশ', N'', N'', N'07/10/2021_08:41:12', N'Bangla Number')
SET IDENTITY_INSERT [dbo].[LetterInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[LevelInfo] ON 

INSERT [dbo].[LevelInfo] ([LevelId], [LevelName], [Intime]) VALUES (1, N'Level 1', N'17/04/2021_10:54:54')
INSERT [dbo].[LevelInfo] ([LevelId], [LevelName], [Intime]) VALUES (2, N'Level 2', N'17/04/2021_10:55:03')
INSERT [dbo].[LevelInfo] ([LevelId], [LevelName], [Intime]) VALUES (3, N'Level 3', N'17/04/2021_10:55:09')
INSERT [dbo].[LevelInfo] ([LevelId], [LevelName], [Intime]) VALUES (4, N'Level 4', N'17/04/2021_10:55:13')
INSERT [dbo].[LevelInfo] ([LevelId], [LevelName], [Intime]) VALUES (6, N'Level 5', N'17/04/2021_11:00:18')
INSERT [dbo].[LevelInfo] ([LevelId], [LevelName], [Intime]) VALUES (7, N'Level 6', N'17/04/2021_11:00:25')
INSERT [dbo].[LevelInfo] ([LevelId], [LevelName], [Intime]) VALUES (8, N'Level 7', N'17/04/2021_11:00:34')
INSERT [dbo].[LevelInfo] ([LevelId], [LevelName], [Intime]) VALUES (9, N'Level 8', N'17/04/2021_11:00:58')
SET IDENTITY_INSERT [dbo].[LevelInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (2, 1, N'What is the correct spelling for 1?', N'Onee', N'One', N'One', N'1', N'19/04/2021_01:54:34')
INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (3, 1, N'What is the correct word with B?', N'Ball', N'Van', N'Ball', N'1', N'19/04/2021_01:55:10')
INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (4, 1, N'What is the correct number with this spelling Three?', N'33', N'3', N'3', N'1', N'19/04/2021_01:56:45')
INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (5, 1, N'What is the correct alphabet with this word Doll?', N'H', N'D', N'D', N'1', N'19/04/2021_01:57:27')
INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (6, 1, N'What is the correct word with alphabet K?', N'King', N'Mug', N'King', N'1', N'19/04/2021_02:00:15')
INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (7, 2, N'What is the next line after "Twinkle Twinkle Little Start"?', N'Like a diamond in the sky', N'How I wonder what you are?', N'How I wonder what you are?', N'2', N'19/04/2021_02:01:25')
INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (8, 2, N'What is the next line after "Up avobe the world so high"?', N'How I wonder what you are?', N'Like a diamond in the sky.', N'Like a diamond in the sky.', N'2', N'19/04/2021_02:02:44')
INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (9, 2, N'What is the alphabet after K?', N'L', N'M', N'L', N'2', N'19/04/2021_02:03:26')
INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (10, 2, N'What is the alphabet before X?', N'Y', N'W', N'W', N'2', N'19/04/2021_02:04:01')
INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (11, 2, N'What is number after 13?', N'15', N'14', N'14', N'2', N'19/04/2021_02:04:25')
INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (12, 3, N'What is the correct spelling of 16?', N'Sixty', N'Sixteen', N'Sixteen', N'3', N'19/04/2021_02:05:14')
INSERT [dbo].[Questions] ([QuestionId], [LevelId], [Question], [OptionA], [OptionB], [Answer], [Point], [Intime]) VALUES (13, 3, N'What is the correct spelling of 33?', N'Thirteen Three', N'Thirty Three', N'Thirty Three', N'3', N'19/04/2021_02:06:26')
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[Rhymes] ON 

INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime], [Type]) VALUES (4, N'Twinkle Twinkle Little Start', N'https://www.youtube.com/embed/-JRJibhgwUQ', N'16/04/2021_10:40:51', N'English')
INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime], [Type]) VALUES (5, N'Humpty Dumpty', N'https://www.youtube.com/embed/AIIj0mBX1jU', N'16/04/2021_10:42:39', N'English')
INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime], [Type]) VALUES (12, N'Baa Baa Black Sheep', N'https://www.youtube.com/embed/MR5XSOdjKMA', N'07/10/2021_12:43:01', N'English')
INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime], [Type]) VALUES (13, N'Johny Johny Yes Papa ', N'https://www.youtube.com/embed/F4tHL8reNCs', N'07/10/2021_12:43:53', N'English')
INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime], [Type]) VALUES (14, N' Ribbit - Ribbit', N'https://www.youtube.com/embed/hzSCwDt_6UQ', N'07/10/2021_12:44:21', N'English')
INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime], [Type]) VALUES (16, N'আতা গাছে তোতা পাখি', N'https://www.youtube.com/embed/95S00tAh25c', N'07/10/2021_12:45:19', N'Bangla')
INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime], [Type]) VALUES (17, N'আয় বৃষ্টি ঝেপে', N'https://www.youtube.com/embed/9yX8TEagWfU', N'07/10/2021_12:46:03', N'Bangla')
INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime], [Type]) VALUES (18, N'হাট্টিমাটিম টিম', N'https://www.youtube.com/embed/cqy3jdXFKLU', N'07/10/2021_12:46:32', N'Bangla')
INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime], [Type]) VALUES (19, N'আম পাতা জোড়া জোড়া', N'https://www.youtube.com/embed/bE4NYNiuh-o', N'07/10/2021_12:47:07', N'Bangla')
INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime], [Type]) VALUES (20, N'আয় আয় চাঁদ মামা', N'https://www.youtube.com/embed/IqIDIvZwluQ', N'07/10/2021_12:47:48', N'Bangla')
SET IDENTITY_INSERT [dbo].[Rhymes] OFF
GO
