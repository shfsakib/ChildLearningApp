USE [master]
GO
/****** Object:  Database [KidsLearningDb]    Script Date: 9/12/2021 11:49:26 AM ******/
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
/****** Object:  Table [dbo].[Admin]    Script Date: 9/12/2021 11:49:26 AM ******/
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
/****** Object:  Table [dbo].[AnswerPic]    Script Date: 9/12/2021 11:49:26 AM ******/
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
/****** Object:  Table [dbo].[Calculation]    Script Date: 9/12/2021 11:49:26 AM ******/
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
/****** Object:  Table [dbo].[CharacterMatcher]    Script Date: 9/12/2021 11:49:26 AM ******/
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
/****** Object:  Table [dbo].[FindAnswer]    Script Date: 9/12/2021 11:49:26 AM ******/
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
/****** Object:  Table [dbo].[HighScore]    Script Date: 9/12/2021 11:49:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HighScore](
	[HighScore] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LearnInfo]    Script Date: 9/12/2021 11:49:26 AM ******/
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
/****** Object:  Table [dbo].[LetterInfo]    Script Date: 9/12/2021 11:49:26 AM ******/
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
/****** Object:  Table [dbo].[LevelInfo]    Script Date: 9/12/2021 11:49:26 AM ******/
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
/****** Object:  Table [dbo].[Questions]    Script Date: 9/12/2021 11:49:26 AM ******/
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
/****** Object:  Table [dbo].[Rhymes]    Script Date: 9/12/2021 11:49:26 AM ******/
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
USE [master]
GO
ALTER DATABASE [KidsLearningDb] SET  READ_WRITE 
GO
