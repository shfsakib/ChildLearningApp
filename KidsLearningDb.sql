USE [master]
GO
/****** Object:  Database [KidsLearningDb]    Script Date: 9/13/2021 12:20:35 PM ******/
CREATE DATABASE [KidsLearningDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KidsLearningDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOCAL\MSSQL\DATA\KidsLearningDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KidsLearningDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOCAL\MSSQL\DATA\KidsLearningDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [KidsLearningDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KidsLearningDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KidsLearningDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KidsLearningDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KidsLearningDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KidsLearningDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KidsLearningDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [KidsLearningDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KidsLearningDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KidsLearningDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KidsLearningDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KidsLearningDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KidsLearningDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KidsLearningDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KidsLearningDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KidsLearningDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KidsLearningDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KidsLearningDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KidsLearningDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KidsLearningDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KidsLearningDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KidsLearningDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KidsLearningDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KidsLearningDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KidsLearningDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KidsLearningDb] SET  MULTI_USER 
GO
ALTER DATABASE [KidsLearningDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KidsLearningDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KidsLearningDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KidsLearningDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KidsLearningDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KidsLearningDb', N'ON'
GO
USE [KidsLearningDb]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 9/13/2021 12:20:36 PM ******/
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
/****** Object:  Table [dbo].[AnswerPic]    Script Date: 9/13/2021 12:20:36 PM ******/
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
/****** Object:  Table [dbo].[Calculation]    Script Date: 9/13/2021 12:20:36 PM ******/
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
/****** Object:  Table [dbo].[CharacterMatcher]    Script Date: 9/13/2021 12:20:36 PM ******/
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
/****** Object:  Table [dbo].[FindAnswer]    Script Date: 9/13/2021 12:20:36 PM ******/
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
/****** Object:  Table [dbo].[HighScore]    Script Date: 9/13/2021 12:20:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HighScore](
	[HighScore] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LearnInfo]    Script Date: 9/13/2021 12:20:36 PM ******/
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
/****** Object:  Table [dbo].[LetterInfo]    Script Date: 9/13/2021 12:20:36 PM ******/
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
/****** Object:  Table [dbo].[LevelInfo]    Script Date: 9/13/2021 12:20:36 PM ******/
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
/****** Object:  Table [dbo].[Questions]    Script Date: 9/13/2021 12:20:36 PM ******/
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
/****** Object:  Table [dbo].[Rhymes]    Script Date: 9/13/2021 12:20:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rhymes](
	[RhymesId] [int] IDENTITY(1,1) NOT NULL,
	[RhymeName] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[Intime] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rhymes] PRIMARY KEY CLUSTERED 
(
	[RhymesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [Name], [Email], [MobileNo], [Gender], [Dob], [ProfilePicture], [Password], [Type], [Status], [InTime]) VALUES (1, N'Tanay Hasan', N'admin@gmail.com', N'016542332020', N'Male', N'02/08/1996', N'/Image/quiz back.jpg', N'1', N'Admin', N'A', N'19/04/2021_10:49:54')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[AnswerPic] ON 

INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (1, 2, N'/Image/291931cow.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (2, 2, N'/Image/482640goat.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (3, 2, N'/Image/949541frog.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (4, 2, N'/Image/792391sheep.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (5, 3, N'/Image/527199cow.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (6, 3, N'/Image/649049goat.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (7, 3, N'/Image/744645sheep.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (8, 3, N'/Image/242381frog.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (9, 4, N'/Image/166434956628frog.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (10, 4, N'/Image/74430255003ojogo.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (11, 4, N'/Image/911965312940rabbit.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (12, 4, N'/Image/505570482640goat.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (13, 5, N'/Image/8147022.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (14, 5, N'/Image/24296112.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (15, 5, N'/Image/18698611.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (16, 5, N'/Image/77650210.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (17, 6, N'/Image/39499012.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (18, 6, N'/Image/8330751.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (19, 6, N'/Image/5350352.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (20, 6, N'/Image/88169211.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (21, 7, N'/Image/785668956628frog.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (22, 7, N'/Image/48840285333cow.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (23, 7, N'/Image/62683655003ojogo.jpg')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (24, 7, N'/Image/968557526811ant.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (25, 8, N'/Image/637000dui.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (26, 8, N'/Image/564772egaro.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (27, 8, N'/Image/705651dosh.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (28, 8, N'/Image/148592baro.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (29, 9, N'/Image/323951baro.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (30, 9, N'/Image/562475egaro.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (31, 9, N'/Image/767636dui.png')
INSERT [dbo].[AnswerPic] ([PicId], [FindId], [Picture]) VALUES (32, 9, N'/Image/285810dosh.png')
SET IDENTITY_INSERT [dbo].[AnswerPic] OFF
GO
SET IDENTITY_INSERT [dbo].[Calculation] ON 

INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (1, N'1+3=?', N'/Image/8365571 apple.png', N'/Image/7379863 apple.png', N'6', N'4', N'English', N'Addition', N'4', N'12/09/2021_10:34:40')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (2, N'3-1', N'/Image/3677841 apple.png', N'/Image/9419263 apple.png', N'2', N'1', N'English', N'Substraction', N'2', N'12/09/2021_10:35:31')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (3, N'৩+১=?', N'/Image/3527593 apple.png', N'/Image/3718771 apple.png', N'৫', N'৪', N'Bangla', N'Addition', N'৪', N'12/09/2021_10:38:15')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (4, N'৩-১=?', N'/Image/3759753 apple.png', N'/Image/3761691 apple.png', N'১', N'২', N'Bangla', N'Substraction', N'২', N'12/09/2021_10:39:57')
INSERT [dbo].[Calculation] ([Id], [Question], [Picture1], [Picture2], [Option1], [Option2], [Type], [CalType], [Answer], [Intime]) VALUES (5, N'3+3=?', N'/Image/8322053 apple.png', N'/Image/484033 apple.png', N'7', N'6', N'English', N'Addition', N'6', N'12/09/2021_11:21:40')
SET IDENTITY_INSERT [dbo].[Calculation] OFF
GO
SET IDENTITY_INSERT [dbo].[CharacterMatcher] ON 

INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (1, N'/Image/693501A watermark.png', N'A', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (2, N'/Image/8946601_watermark.png', N'1', N'Number')
SET IDENTITY_INSERT [dbo].[CharacterMatcher] OFF
GO
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (2, N'Find Cow', N'/Image/291931cow.jpg', N'/Image/findcow.mp3', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (3, N'গরু', N'/Image/527199cow.jpg', N'/Image/goru.mp3', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (4, N'Find Frog', N'/Image/166434956628frog.jpg', N'/Audio/240497find frog.mp3', N'English', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (5, N'Find 2', N'/Image/8147022.png', N'/Audio/276108find 2.mp3', N'English', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (6, N'Find 12', N'/Image/39499012.jpg', N'/Audio/61797find 12.mp3', N'English', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (7, N'ব্যাঙ', N'/Image/785668956628frog.jpg', N'/Audio/473582vang.mp3', N'Bangla', N'Animal')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (8, N'দুই', N'/Image/637000dui.png', N'/Audio/594168dui.mp3', N'Bangla', N'Number')
INSERT [dbo].[FindAnswer] ([FindId], [Question], [AnswerPic], [Audio], [LangType], [QuestionType]) VALUES (9, N'বার', N'/Image/323951baro.png', N'/Audio/987781baro.mp3', N'Bangla', N'Number')
GO
INSERT [dbo].[HighScore] ([HighScore]) VALUES (N'25')
GO
SET IDENTITY_INSERT [dbo].[LearnInfo] ON 

INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (1, N'Red', N'/Image/705370498331red.jpg', N'Color', N'/Audio/212332red.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (2, N'Blue', N'/Image/843157blue.png', N'Color', N'/Audio/blue.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (3, N'লাল', N'/Image/633262498331red.jpg', N'Bangla Color', N'/Audio/212332red.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (4, N'নীল', N'/Image/120618blue.png', N'Bangla Color', N'/Audio/blue.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (9, N'Cow', N'/Image/743462cow.jpg', N'Animal', N'/Audio/211696cow.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (10, N'গরু', N'/Image/85333cow.jpg', N'Bangla Animal', N'/Audio/845401cow.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (11, N'January', N'/Image/582082302013january.jpg', N'Month', N'/Audio/789653january.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (12, N'বৈশাখ', N'/Image/684577125671boishak.jpg', N'Bangla Month', N'/Audio/332955boishak.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (13, N'Saturday', N'/Image/933524saturday.png', N'Week', N'/Audio/504547Saturday.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (14, N'শনিবার', N'/Image/545697saturday.png', N'Bangla Week', N'/Audio/162033shonibar.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (15, N'Triangle', N'/Image/792938triangle.png', N'Shape', N'/Audio/413864triangle.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (18, N'ত্রিভূজ', N'/Image/18819triangle.png', N'Bangla Shape', N'/Audio/643851trivuj.mp3')
SET IDENTITY_INSERT [dbo].[LearnInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[LetterInfo] ON 

INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (12, N'Aa', N'/Audio/379559A.mp3', N'/Image/487448A.png', N'Apple', N'/Audio/999699apple.mp3', N'/Image/478815apple.jpg', N'08/09/2021_11:11:55', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (13, N'Aa', N'/Audio/51413A.mp3', N'/Image/526811ant.png', N'Ant', N'/Audio/111475Ant.mp3', N'/Image/660179ant.png', N'08/09/2021_11:13:31', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (14, N'Aa', N'/Audio/858463A.mp3', N'/Image/873312A.png', N'Airplane', N'/Audio/6153Airplane.mp3', N'/Image/178969airplane.jpg', N'08/09/2021_11:19:57', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (15, N'Aa', N'/Audio/387359A.mp3', N'/Image/657989A.png', N'Arrow', N'/Audio/838137arrow.mp3', N'/Image/840181arrow.png', N'08/09/2021_11:20:33', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (16, N'Bb', N'/Audio/517341B.mp3', N'/Image/580624B.png', N'Ball', N'/Audio/643662ball.mp3', N'/Image/236008ball.jpg', N'08/09/2021_11:22:45', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (17, N'Bb', N'/Audio/878466B.mp3', N'/Image/588956B.png', N'Busket', N'/Audio/627203busket.mp3', N'/Image/678591Busket.jpg', N'08/09/2021_11:23:20', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (18, N'অ', N'/Audio/863544o.mp3', N'/Image/95350o.png', N'অজগর', N'/Audio/973709ojogor.mp3', N'/Image/55003ojogo.jpg', N'09/09/2021_10:39:57', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (19, N'আ', N'/Audio/42859aa.mp3', N'/Image/318347a.png', N'আম', N'/Audio/449565aam.mp3', N'/Image/62651am.jpg', N'09/09/2021_10:51:55', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (20, N'ক', N'/Audio/944944ko.mp3', N'/Image/97472ko.png', N'কলা', N'/Audio/565413kola.mp3', N'/Image/708277kola.jpg', N'09/09/2021_11:14:38', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (21, N'ক', N'/Audio/705779ko.mp3', N'/Image/788945ko.png', N'কলম', N'/Audio/533806kolom.mp3', N'/Image/656505kolom.jpg', N'09/09/2021_11:17:53', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (22, N'খ', N'/Audio/826332qho.mp3', N'/Image/521546kho.png', N'খরগোশ', N'/Audio/18531khorgosh.mp3', N'/Image/312940rabbit.jpg', N'09/09/2021_11:22:05', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (23, N'খ', N'/Audio/331122qho.mp3', N'/Image/544017kho.png', N'খেজুর', N'/Audio/880225qhejor.mp3', N'/Image/325486kejor.jpg', N'09/09/2021_11:22:55', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (24, N'1', N'/Audio/446000one.mp3', N'/Image/506730one.png', N'One', N'', N'', N'11/09/2021_11:08:03', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (25, N'2', N'/Audio/147625two.mp3', N'/Image/874595two.jpg', N'Two', N'', N'', N'11/09/2021_11:10:41', N'Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (26, N'১', N'/Audio/797301ek.mp3', N'/Image/236061.png', N'এক', N'', N'', N'11/09/2021_11:32:51', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (27, N'২', N'/Audio/885895dui.mp3', N'/Image/7816852.png', N'দুই', N'', N'', N'11/09/2021_11:33:14', N'Bangla Number')
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

INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime]) VALUES (4, N'Twinkle Twinkle Little Start', N'https://www.youtube.com/embed/-JRJibhgwUQ', N'16/04/2021_10:40:51')
INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime]) VALUES (5, N'Humpty Dumpty', N'https://www.youtube.com/embed/AIIj0mBX1jU', N'16/04/2021_10:42:39')
SET IDENTITY_INSERT [dbo].[Rhymes] OFF
GO
USE [master]
GO
ALTER DATABASE [KidsLearningDb] SET  READ_WRITE 
GO
