USE [master]
GO
/****** Object:  Database [KidsLearningDb]    Script Date: 4/21/2021 7:02:40 PM ******/
CREATE DATABASE [KidsLearningDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KidsLearningDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.LOCAL\MSSQL\DATA\KidsLearningDb.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'KidsLearningDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.LOCAL\MSSQL\DATA\KidsLearningDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
USE [KidsLearningDb]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/21/2021 7:02:40 PM ******/
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
/****** Object:  Table [dbo].[AlphabetInfo]    Script Date: 4/21/2021 7:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlphabetInfo](
	[AlphaId] [int] IDENTITY(1,1) NOT NULL,
	[Alphabet] [nvarchar](50) NOT NULL,
	[Word] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[InTime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Alphabet] PRIMARY KEY CLUSTERED 
(
	[AlphaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HighScore]    Script Date: 4/21/2021 7:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HighScore](
	[HighScore] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LevelInfo]    Script Date: 4/21/2021 7:02:40 PM ******/
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
/****** Object:  Table [dbo].[Numeric]    Script Date: 4/21/2021 7:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Numeric](
	[NumId] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
	[Word] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[InTime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Numeric] PRIMARY KEY CLUSTERED 
(
	[NumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Questions]    Script Date: 4/21/2021 7:02:40 PM ******/
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
/****** Object:  Table [dbo].[Rhymes]    Script Date: 4/21/2021 7:02:40 PM ******/
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
SET IDENTITY_INSERT [dbo].[AlphabetInfo] ON 

INSERT [dbo].[AlphabetInfo] ([AlphaId], [Alphabet], [Word], [Picture], [InTime]) VALUES (2, N'Aa', N'A for Apple', N'/Image/775040a for apple.jpg', N'15/04/2021_03:08:51')
INSERT [dbo].[AlphabetInfo] ([AlphaId], [Alphabet], [Word], [Picture], [InTime]) VALUES (3, N'Bb', N'B for Ball', N'/Image/484943ball.jpg', N'15/04/2021_05:46:03')
SET IDENTITY_INSERT [dbo].[AlphabetInfo] OFF
INSERT [dbo].[HighScore] ([HighScore]) VALUES (N'25')
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
SET IDENTITY_INSERT [dbo].[Numeric] ON 

INSERT [dbo].[Numeric] ([NumId], [Number], [Word], [Picture], [InTime]) VALUES (2, N'1', N'One', N'/Image/8576171.jpg', N'15/04/2021_03:26:25')
INSERT [dbo].[Numeric] ([NumId], [Number], [Word], [Picture], [InTime]) VALUES (3, N'2', N'Two', N'/Image/9892722.jpg', N'15/04/2021_07:17:34')
SET IDENTITY_INSERT [dbo].[Numeric] OFF
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
SET IDENTITY_INSERT [dbo].[Rhymes] ON 

INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime]) VALUES (4, N'Twinkle Twinkle Little Start', N'https://www.youtube.com/embed/-JRJibhgwUQ', N'16/04/2021_10:40:51')
INSERT [dbo].[Rhymes] ([RhymesId], [RhymeName], [Link], [Intime]) VALUES (5, N'Humpty Dumpty', N'https://www.youtube.com/embed/AIIj0mBX1jU', N'16/04/2021_10:42:39')
SET IDENTITY_INSERT [dbo].[Rhymes] OFF
USE [master]
GO
ALTER DATABASE [KidsLearningDb] SET  READ_WRITE 
GO
