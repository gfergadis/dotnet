USE [master]
GO
/****** Object:  Database [EnableODataQueryOnComputedPropertiesExample]    Script Date: 27/10/2018 15:01:01 ******/
CREATE DATABASE [EnableODataQueryOnComputedPropertiesExample]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EnableODataQueryOnComputedPropertiesExample', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EnableODataQueryOnComputedPropertiesExample.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EnableODataQueryOnComputedPropertiesExample_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EnableODataQueryOnComputedPropertiesExample_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EnableODataQueryOnComputedPropertiesExample].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET ARITHABORT OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET  MULTI_USER 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET QUERY_STORE = OFF
GO
USE [EnableODataQueryOnComputedPropertiesExample]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [EnableODataQueryOnComputedPropertiesExample]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27/10/2018 15:01:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animals]    Script Date: 27/10/2018 15:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Birthday] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Species] [int] NOT NULL,
	[OwnerId] [int] NULL,
 CONSTRAINT [PK_Animals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 27/10/2018 15:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Birthday] [datetime2](7) NOT NULL,
	[Firstname] [nvarchar](max) NULL,
	[Lastname] [nvarchar](max) NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181027121604_InitialCreate', N'2.1.1-rtm-30846')
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([Id], [Birthday], [Firstname], [Lastname]) VALUES (1, CAST(N'1969-08-19T00:00:00.0000000' AS DateTime2), N'Satya', N'Nadella')
INSERT [dbo].[Persons] ([Id], [Birthday], [Firstname], [Lastname]) VALUES (2, CAST(N'1955-10-28T00:00:00.0000000' AS DateTime2), N'Bill', N'Gates')
INSERT [dbo].[Persons] ([Id], [Birthday], [Firstname], [Lastname]) VALUES (3, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'Scott', N'Hanselman')
INSERT [dbo].[Persons] ([Id], [Birthday], [Firstname], [Lastname]) VALUES (4, CAST(N'1975-02-06T00:00:00.0000000' AS DateTime2), N'Scott', N'Guthrie')
SET IDENTITY_INSERT [dbo].[Persons] OFF
/****** Object:  Index [IX_Animals_OwnerId]    Script Date: 27/10/2018 15:01:02 ******/
CREATE NONCLUSTERED INDEX [IX_Animals_OwnerId] ON [dbo].[Animals]
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Animals]  WITH CHECK ADD  CONSTRAINT [FK_Animals_Persons_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Persons] ([Id])
GO
ALTER TABLE [dbo].[Animals] CHECK CONSTRAINT [FK_Animals_Persons_OwnerId]
GO
USE [master]
GO
ALTER DATABASE [EnableODataQueryOnComputedPropertiesExample] SET  READ_WRITE 
GO
