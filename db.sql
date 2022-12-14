USE [master]
GO
/****** Object:  Database [EF_DB]    Script Date: 22/11/24 1:34:39 AM ******/
CREATE DATABASE [EF_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EF_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EF_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EF_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EF_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EF_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EF_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EF_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EF_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EF_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EF_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EF_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EF_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EF_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EF_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EF_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EF_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EF_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EF_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EF_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EF_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EF_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EF_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EF_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EF_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EF_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EF_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EF_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EF_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EF_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [EF_DB] SET  MULTI_USER 
GO
ALTER DATABASE [EF_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EF_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EF_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EF_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EF_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EF_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EF_DB', N'ON'
GO
ALTER DATABASE [EF_DB] SET QUERY_STORE = OFF
GO
USE [EF_DB]
GO
/****** Object:  Table [dbo].[MyContacts]    Script Date: 22/11/24 1:34:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyContacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Family] [nvarchar](50) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MyContact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 22/11/24 1:34:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[personID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[family] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[personID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonCar]    Script Date: 22/11/24 1:34:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonCar](
	[PersonID] [int] NOT NULL,
	[CarName] [nvarchar](50) NOT NULL,
	[CarPlak] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PersonCar] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 22/11/24 1:34:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[departmant] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_students] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_People]    Script Date: 22/11/24 1:34:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_People](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[website] [nvarchar](150) NULL,
 CONSTRAINT [PK_tbl_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([StudentId], [firstName], [lastName], [departmant], [Email]) VALUES (1, N'Lily', N'smith', N'math', N'lili.s@gmail.com')
INSERT [dbo].[student] ([StudentId], [firstName], [lastName], [departmant], [Email]) VALUES (2, N'rosow', N'naive', N'chemistry', N'ross12@yahoo.com')
INSERT [dbo].[student] ([StudentId], [firstName], [lastName], [departmant], [Email]) VALUES (3, N'william', N'baowry', N'literature', N'will_mineus@yahoo.com')
SET IDENTITY_INSERT [dbo].[student] OFF
GO
ALTER TABLE [dbo].[PersonCar]  WITH CHECK ADD  CONSTRAINT [FK_PersonCar_PersonCar] FOREIGN KEY([PersonID])
REFERENCES [dbo].[tbl_People] ([Id])
GO
ALTER TABLE [dbo].[PersonCar] CHECK CONSTRAINT [FK_PersonCar_PersonCar]
GO
USE [master]
GO
ALTER DATABASE [EF_DB] SET  READ_WRITE 
GO
