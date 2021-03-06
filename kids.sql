USE [master]
GO
/****** Object:  Database [KidsLearningDb]    Script Date: 10/5/2021 9:03:00 AM ******/
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
/****** Object:  Table [dbo].[Admin]    Script Date: 10/5/2021 9:03:00 AM ******/
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
/****** Object:  Table [dbo].[AnswerPic]    Script Date: 10/5/2021 9:03:00 AM ******/
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
/****** Object:  Table [dbo].[Calculation]    Script Date: 10/5/2021 9:03:00 AM ******/
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
/****** Object:  Table [dbo].[CharacterMatcher]    Script Date: 10/5/2021 9:03:00 AM ******/
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
/****** Object:  Table [dbo].[FindAnswer]    Script Date: 10/5/2021 9:03:00 AM ******/
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
/****** Object:  Table [dbo].[HighScore]    Script Date: 10/5/2021 9:03:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HighScore](
	[HighScore] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LearnInfo]    Script Date: 10/5/2021 9:03:00 AM ******/
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
/****** Object:  Table [dbo].[LetterInfo]    Script Date: 10/5/2021 9:03:00 AM ******/
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
/****** Object:  Table [dbo].[LevelInfo]    Script Date: 10/5/2021 9:03:00 AM ******/
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
/****** Object:  Table [dbo].[Questions]    Script Date: 10/5/2021 9:03:00 AM ******/
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
/****** Object:  Table [dbo].[Rhymes]    Script Date: 10/5/2021 9:03:00 AM ******/
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
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (3, N'/Image/B.png', N'B', N'Alphabet')
INSERT [dbo].[CharacterMatcher] ([MatchId], [Picture], [Answer], [Type]) VALUES (4, N'/Image/2.png', N'2', N'Number')
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

INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (3, N'লাল', N'/Image/633262498331red.jpg', N'Bangla Color', N'/Audio/212332red.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (4, N'নীল', N'/Image/120618blue.png', N'Bangla Color', N'/Audio/blue.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (9, N'Cow', N'/Image/743462cow.jpg', N'Animal', N'/Audio/211696cow.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (10, N'গরু', N'/Image/85333cow.jpg', N'Bangla Animal', N'/Audio/845401cow.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (12, N'বৈশাখ', N'/Image/684577125671boishak.jpg', N'Bangla Month', N'/Audio/332955boishak.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (14, N'শনিবার', N'/Image/545697saturday.png', N'Bangla Week', N'/Audio/162033shonibar.mp3')
INSERT [dbo].[LearnInfo] ([LearnId], [Answer], [Picture], [Type], [Audio]) VALUES (18, N'ত্রিভূজ', N'/Image/18819triangle.png', N'Bangla Shape', N'/Audio/643851trivuj.mp3')
SET IDENTITY_INSERT [dbo].[LearnInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[LetterInfo] ON 

INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (18, N'অ', N'/Audio/863544o.mp3', N'/Image/95350o.png', N'অজগর', N'/Audio/973709ojogor.mp3', N'/Image/55003ojogo.jpg', N'09/09/2021_10:39:57', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (19, N'আ', N'/Audio/42859aa.mp3', N'/Image/318347a.png', N'আম', N'/Audio/449565aam.mp3', N'/Image/62651am.jpg', N'09/09/2021_10:51:55', N'Bangla Vowel')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (20, N'ক', N'/Audio/944944ko.mp3', N'/Image/97472ko.png', N'কলা', N'/Audio/565413kola.mp3', N'/Image/708277kola.jpg', N'09/09/2021_11:14:38', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (21, N'ক', N'/Audio/705779ko.mp3', N'/Image/788945ko.png', N'কলম', N'/Audio/533806kolom.mp3', N'/Image/656505kolom.jpg', N'09/09/2021_11:17:53', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (22, N'খ', N'/Audio/826332qho.mp3', N'/Image/521546kho.png', N'খরগোশ', N'/Audio/18531khorgosh.mp3', N'/Image/312940rabbit.jpg', N'09/09/2021_11:22:05', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (23, N'খ', N'/Audio/331122qho.mp3', N'/Image/544017kho.png', N'খেজুর', N'/Audio/880225qhejor.mp3', N'/Image/325486kejor.jpg', N'09/09/2021_11:22:55', N'Bangla Consonent')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (26, N'১', N'/Audio/797301ek.mp3', N'/Image/236061.png', N'এক', N'', N'', N'11/09/2021_11:32:51', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (27, N'২', N'/Audio/885895dui.mp3', N'/Image/7816852.png', N'দুই', N'', N'', N'11/09/2021_11:33:14', N'Bangla Number')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (37, N'D', N'/Audio/102197D.mp3', N'/Image/303356a92ed0232d9f9dc63556844f5562608a.jpg', N'Dog', N'/Audio/3296991633273522575-dogspeech.mp3', N'/Image/924766IMG_20211003_205550.jpg', N'03/10/2021_11:10:53', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (38, N'D', N'/Audio/390597D.mp3', N'/Image/97999a92ed0232d9f9dc63556844f5562608a.jpg', N'Dolphin', N'/Audio/2898101633273567416-dolphinspeech.mp3', N'/Image/674680IMG_20211003_205601.jpg', N'03/10/2021_11:11:51', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (39, N'D', N'/Audio/989039D.mp3', N'/Image/510738a92ed0232d9f9dc63556844f5562608a.jpg', N'Duck', N'/Audio/3300461633273538923-duckspeech.mp3', N'/Image/570164IMG_20211003_205541.jpg', N'03/10/2021_11:12:21', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (40, N'E', N'/Audio/525455E.mp3', N'/Image/653249c470cb2c5aeb838c9ce2bc27fe20440d.jpg', N'Egg', N'/Audio/4817231633273606120-eggspeech.mp3', N'/Image/84318983b8b5381432e70cd0a33f2a57a075cb.jpg', N'03/10/2021_11:12:49', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (41, N'E', N'/Audio/308135E.mp3', N'/Image/75955c470cb2c5aeb838c9ce2bc27fe20440d.jpg', N'Elephant', N'/Audio/6817561633273624276-elephantspeech.mp3', N'/Image/734334IMG_20211003_134939.jpg', N'03/10/2021_11:13:29', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (42, N'E', N'/Audio/786664E.mp3', N'/Image/26887c470cb2c5aeb838c9ce2bc27fe20440d.jpg', N'Eagle', N'/Audio/327611633273649128-eaglespeech.mp3', N'/Image/2419199e4cffd202155686350b920a823a187b.jpg', N'03/10/2021_11:13:51', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (43, N'F', N'/Audio/627025F.mp3', N'/Image/7444929bf9eeeb13d1af911e0d2222606597b3.jpg', N'Fish', N'/Audio/9667791633273693902-fishspeech.mp3', N'/Image/241897IMG_20211003_133856.jpg', N'03/10/2021_11:14:24', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (44, N'F', N'/Audio/496602F.mp3', N'/Image/8871659bf9eeeb13d1af911e0d2222606597b3.jpg', N'Flower', N'/Audio/6546641633273718844-flowerspeech.mp3', N'/Image/981573IMG_20211003_134018.jpg', N'03/10/2021_11:14:47', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (45, N'F', N'/Audio/237725F.mp3', N'/Image/9339029bf9eeeb13d1af911e0d2222606597b3.jpg', N'Fox', N'/Audio/599591633273668623-foxspeech.mp3', N'/Image/119433IMG_20211003_133936.jpg', N'03/10/2021_11:15:12', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (46, N'G', N'/Audio/614218G.mp3', N'/Image/6238533f8aeb7d48a67c39a372ada8aba59d02.jpg', N'Guiter', N'/Audio/4980731633273824734-guiterspeech.mp3', N'/Image/749413IMG_20211003_135552.jpg', N'03/10/2021_11:16:01', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (47, N'G', N'/Audio/637223G.mp3', N'/Image/8340563f8aeb7d48a67c39a372ada8aba59d02.jpg', N'Giraffe', N'/Audio/6126911633273758500-giraffespeech.mp3', N'/Image/809559IMG_20211003_135211.jpg', N'03/10/2021_11:17:27', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (48, N'G', N'/Audio/861986G.mp3', N'/Image/4945883f8aeb7d48a67c39a372ada8aba59d02.jpg', N'Gorilla', N'/Audio/1503451633273782834-gorillaspeech.mp3', N'/Image/544922IMG_20211003_135542.jpg', N'03/10/2021_11:17:52', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (49, N'H', N'/Audio/967954H.mp3', N'/Image/590720ec6a542ee3e02abda5b6e605d7c0b569.jpg', N'Hat', N'/Audio/4069131633273896319-hatspeech.mp3', N'/Image/937507IMG_20211003_134050.jpg', N'03/10/2021_11:18:13', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (50, N'H', N'/Audio/231955H.mp3', N'/Image/654842ec6a542ee3e02abda5b6e605d7c0b569.jpg', N'Horse', N'/Audio/9284131633273869865-horsespeech.mp3', N'/Image/303267IMG_20211003_135728.jpg', N'03/10/2021_11:18:37', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (51, N'H', N'/Audio/927321H.mp3', N'/Image/666812ec6a542ee3e02abda5b6e605d7c0b569.jpg', N'House', N'/Audio/990741633273909842-housespeech.mp3', N'/Image/983101IMG_20211003_134155.jpg', N'03/10/2021_11:19:04', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (52, N'I', N'/Audio/894324I.mp3', N'/Image/272601b22314f85c744c6b99acaedb770ad9eb.jpg', N'Ice-cream', N'/Audio/4501691633273970006-ice creamspeech.mp3', N'/Image/901444a6e12e59cb78a45e4c50c16638fabd1d.jpg', N'03/10/2021_11:19:58', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (53, N'I', N'/Audio/367447I.mp3', N'/Image/592355b22314f85c744c6b99acaedb770ad9eb.jpg', N'Igloo', N'/Audio/5503861633274053375-igloospeech.mp3', N'/Image/5825135845537a22b707b147948bcce090fcbc.jpg', N'03/10/2021_11:20:23', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (54, N'I', N'/Audio/432070I.mp3', N'/Image/107719b22314f85c744c6b99acaedb770ad9eb.jpg', N'Ice', N'/Audio/4881611633274073003-icespeech.mp3', N'/Image/9246512e9ec86ac71056e0df88fc4b42a543de.jpg', N'03/10/2021_11:20:47', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (55, N'J', N'/Audio/441325J.mp3', N'/Image/398708424eee12cb504703aec2c85fcd1dd10f.jpg', N'Jug', N'/Audio/924741633274099372-jugspeech.mp3', N'/Image/236834IMG_20211003_134321.jpg', N'03/10/2021_11:21:27', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (56, N'J', N'/Audio/108298J.mp3', N'/Image/915813424eee12cb504703aec2c85fcd1dd10f.jpg', N'Juice', N'/Audio/4513171633274113586-juicespeech.mp3', N'/Image/48771791cfc573fa887c48d573121cfa3151bd.jpg', N'03/10/2021_11:21:48', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (57, N'J', N'/Audio/655654J.mp3', N'/Image/939428424eee12cb504703aec2c85fcd1dd10f.jpg', N'Jelly', N'/Audio/5881381633274136419-jellyspeech.mp3', N'/Image/86187IMG_20211003_134219.jpg', N'03/10/2021_11:22:23', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (58, N'K', N'/Audio/884967k.mp3', N'/Image/469745753e5285400c22d08457e9f613da8b9e.jpg', N'Kite', N'/Audio/3459431633274180856-kitespeech.mp3', N'/Image/9906703dcd7debdc80b412cbabb0b76d82a746.jpg', N'03/10/2021_11:23:06', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (60, N'K', N'/Audio/351667k.mp3', N'/Image/781659753e5285400c22d08457e9f613da8b9e.jpg', N'Kangaroo', N'/Audio/3320771633274300110-kangaroospeech.mp3', N'/Image/2882387f093eba01e8aa27137689efe35d2a58.jpg', N'03/10/2021_11:24:51', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (61, N'K', N'/Audio/31423k.mp3', N'/Image/185468753e5285400c22d08457e9f613da8b9e.jpg', N'Key', N'/Audio/2417191633281987062-keyspeech.mp3', N'/Image/417206key.jpg', N'03/10/2021_11:27:24', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (62, N'L', N'/Audio/611216L.mp3', N'/Image/8102177193f986cdcbf479306891cffeba523f.jpg', N'Lion', N'/Audio/4651291633274509149-lionspeech.mp3', N'/Image/176536lion.jpg', N'03/10/2021_11:27:48', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (63, N'L', N'/Audio/880623L.mp3', N'/Image/5055167193f986cdcbf479306891cffeba523f.jpg', N'Lemon', N'/Audio/2374171633274495277-lemonspeech.mp3', N'/Image/367700913b88b16064a69159a19803a4a8b063.jpg', N'03/10/2021_11:28:10', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (64, N'L', N'/Audio/293751L.mp3', N'/Image/4565137193f986cdcbf479306891cffeba523f.jpg', N'Lily', N'/Audio/2020151633274564152-lilyspeech.mp3', N'/Image/8610565893563f7c991b808f27dba7f4085b87.jpg', N'03/10/2021_11:28:33', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (65, N'M', N'/Audio/631985M.mp3', N'/Image/2244950a9e38abe3e6206a19c26ce1f758f653.jpg', N'Moon', N'/Audio/7601191633274604064-moonspeech.mp3', N'/Image/1442188edaae942ace6d9a12c80944788a2a70.jpg', N'03/10/2021_11:29:07', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (66, N'M', N'/Audio/588748M.mp3', N'/Image/1580430a9e38abe3e6206a19c26ce1f758f653.jpg', N'Mango', N'/Audio/9926951633274623388-mangaoospeech.mp3', N'/Image/422791IMG_20211003_212231.jpg', N'03/10/2021_11:29:31', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (67, N'M', N'/Audio/395110M.mp3', N'/Image/7536680a9e38abe3e6206a19c26ce1f758f653.jpg', N'Milk', N'/Audio/2111261633274788513-milkspeech.mp3', N'/Image/555815IMG_20211003_212254.jpg', N'03/10/2021_11:29:51', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (68, N'N', N'/Audio/442279N.mp3', N'/Image/65527053d496bc29ffd71deecc57439cecde71.jpg', N'Net', N'/Audio/3233401633274940782-netspeech.mp3', N'/Image/79333409e62659c0dd1effe5070bcdf945126a.jpg', N'03/10/2021_11:30:15', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (69, N'N', N'/Audio/71126N.mp3', N'/Image/76878653d496bc29ffd71deecc57439cecde71.jpg', N'Nest', N'/Audio/6972251633274839003-nestspeech.mp3', N'/Image/414932473e3c2c514224d9425e78ba2b7556b9.jpg', N'03/10/2021_11:30:36', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (70, N'N', N'/Audio/10515N.mp3', N'/Image/36539353d496bc29ffd71deecc57439cecde71.jpg', N'Nuts', N'/Audio/6862441633274953159-nutspeech.mp3', N'/Image/574191IMG_20211003_220243.jpg', N'03/10/2021_11:31:01', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (72, N'O', N'/Audio/560608O.mp3', N'/Image/499305376f7dd4abc959f0040d2d4a9cc36d0.jpg', N'Orange', N'/Audio/1777031633275172102-orangespeech.mp3', N'/Image/657217135e999473f95e890e2472eb6f64fec3.jpg', N'03/10/2021_11:32:18', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (73, N'O', N'/Audio/893230O.mp3', N'/Image/2911655376f7dd4abc959f0040d2d4a9cc36d0.jpg', N'Owl', N'/Audio/4194441633275272864-owlspeech.mp3', N'/Image/45614502cbd875736f19eb5ba2c645cec15738.jpg', N'03/10/2021_11:32:43', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (74, N'O', N'/Audio/7947O.mp3', N'/Image/9158825376f7dd4abc959f0040d2d4a9cc36d0.jpg', N'Oven', N'/Audio/3360571633275254961-ovenspeech.mp3', N'/Image/721477IMG_20211003_213427.jpg', N'03/10/2021_11:33:08', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (75, N'P', N'/Audio/11669P.mp3', N'/Image/95694565afc0ceac39357a5cd3d89f499b1d42.jpg', N'Pencil', N'/Audio/2049011633275408896-pencilspeech.mp3', N'/Image/534731efd4968f533f933247ae74cc78464aa9.jpg', N'03/10/2021_11:33:39', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (76, N'P', N'/Audio/382628P.mp3', N'/Image/39697065afc0ceac39357a5cd3d89f499b1d42.jpg', N'Panda', N'/Audio/9075461633275387393-pandaspeech.mp3', N'/Image/666894IMG_20211003_213833.jpg', N'03/10/2021_11:34:19', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (77, N'P', N'/Audio/808877P.mp3', N'/Image/78343865afc0ceac39357a5cd3d89f499b1d42.jpg', N'Potato', N'/Audio/3638711633275374406-potatospeech.mp3', N'/Image/844818f51d01a6f37ad6ef390e2c564d2f3667.jpg', N'03/10/2021_11:34:42', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (78, N'Q', N'/Audio/231067Q.mp3', N'/Image/578964180bbad421fd1784501a2770a8d8d680.jpg', N'Quill', N'/Audio/104241633275796547-quillspeech.mp3', N'/Image/404118bbec9e47b3986378dfbf711afd389a9d.jpg', N'03/10/2021_11:36:44', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (79, N'Q', N'/Audio/396336Q.mp3', N'/Image/733510180bbad421fd1784501a2770a8d8d680.jpg', N'Queen', N'/Audio/9452441633275676407-queenspeech.mp3', N'/Image/3449722e5308eaa2496eb1d3364585bc63464a.jpg', N'03/10/2021_11:37:37', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (80, N'Q', N'/Audio/505814Q.mp3', N'/Image/77729180bbad421fd1784501a2770a8d8d680.jpg', N'Quail', N'/Audio/5947101633275622483-quailspeech.mp3', N'/Image/846860IMG_20211003_220137.jpg', N'03/10/2021_11:38:17', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (81, N'R', N'/Audio/972503R.mp3', N'/Image/9405349c2f20dc6ed84c685468312ce8748016.jpg', N'Rain', N'/Audio/4365161633275858807-rainspeech.mp3', N'/Image/732950475315f26b1ea41b8d55297fa0cf8c61.jpg', N'03/10/2021_11:38:47', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (82, N'R', N'/Audio/897658R.mp3', N'/Image/1016709c2f20dc6ed84c685468312ce8748016.jpg', N'Rat', N'/Audio/9338091633275843746-ratspeech.mp3', N'/Image/2087537cc8f200a4df795f0ebc19b6dbf21cb4.jpg', N'03/10/2021_11:39:10', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (83, N'R', N'/Audio/258506R.mp3', N'/Image/4882029c2f20dc6ed84c685468312ce8748016.jpg', N'Rocket', N'/Audio/48401633275830078-rocketspeech.mp3', N'/Image/373560af6af2e226487c291a88cd5a6eeb8c21.jpg', N'03/10/2021_11:39:31', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (84, N'S', N'/Audio/779577S.mp3', N'/Image/195242295cec07f4071705e46556cd1be297a9.jpg', N'Sun', N'/Audio/6647901633275889494-sunspeech.mp3', N'/Image/962016636c68f22725528fcf0b2e22299c2992.jpg', N'03/10/2021_11:39:57', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (85, N'S', N'/Audio/761430S.mp3', N'/Image/271137295cec07f4071705e46556cd1be297a9.jpg', N'Sheep', N'/Audio/3829731633275915606-sheepspeech.mp3', N'/Image/21906613e2c1d5c3e22e83a2f76e7f4d4a7432.jpg', N'03/10/2021_11:40:24', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (86, N'S', N'/Audio/967621S.mp3', N'/Image/419388295cec07f4071705e46556cd1be297a9.jpg', N'Star', N'/Audio/6846951633275930995-starspeech.mp3', N'/Image/802468ca98ed3f2db49af9b998a1a543048233.jpg', N'03/10/2021_11:40:44', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (87, N'T', N'/Audio/340599T.mp3', N'/Image/962732b198612906a4d3dd0c4dad109d789d0e.jpg', N'Table', N'/Audio/3217641633275985693-tablespeech.mp3', N'/Image/278025fc176737fd237b5dbd2e00bdb7495b9d.jpg', N'03/10/2021_11:41:12', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (88, N'T', N'/Audio/871409T.mp3', N'/Image/478128b198612906a4d3dd0c4dad109d789d0e.jpg', N'Tomato', N'/Audio/5663361633276003372-tomatospeech.mp3', N'/Image/11415917eacce91e164a46f010be3bed5b2377.jpg', N'03/10/2021_11:41:35', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (89, N'T', N'/Audio/309626T.mp3', N'/Image/571472b198612906a4d3dd0c4dad109d789d0e.jpg', N'Tiger', N'/Audio/165421633275972169-tigerspeech.mp3', N'/Image/5848813afa817a1c5f4498f9e60b90593efc84.jpg', N'03/10/2021_11:42:00', N'Alphabet')
INSERT [dbo].[LetterInfo] ([LetterId], [Letter], [LetterAudio], [LetterPicture], [Word], [WordAudio], [WordPicture], [InTime], [LetterType]) VALUES (90, N'U', N'/Audio/561870U.mp3', N'/Image/72280566ab498cee8711f5cc7d74a6548ec894.jpg', N'Umbrella', N'/Audio/212191633276106216-umbrellaspeech.mp3', N'/Image/3606826bdb08ec46c89bad02ad315cdb3fbc1d.jpg', N'03/10/2021_11:42:38', N'Alphabet')
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
SET IDENTITY_INSERT [dbo].[Rhymes] OFF
GO
USE [master]
GO
ALTER DATABASE [KidsLearningDb] SET  READ_WRITE 
GO
