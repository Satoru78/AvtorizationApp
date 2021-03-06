USE [master]
GO
/****** Object:  Database [Avtorization]    Script Date: 14.01.2022 17:49:09 ******/
CREATE DATABASE [Avtorization]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Avtorization', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Avtorization.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Avtorization_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Avtorization_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Avtorization] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Avtorization].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Avtorization] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Avtorization] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Avtorization] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Avtorization] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Avtorization] SET ARITHABORT OFF 
GO
ALTER DATABASE [Avtorization] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Avtorization] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Avtorization] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Avtorization] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Avtorization] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Avtorization] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Avtorization] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Avtorization] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Avtorization] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Avtorization] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Avtorization] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Avtorization] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Avtorization] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Avtorization] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Avtorization] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Avtorization] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Avtorization] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Avtorization] SET RECOVERY FULL 
GO
ALTER DATABASE [Avtorization] SET  MULTI_USER 
GO
ALTER DATABASE [Avtorization] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Avtorization] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Avtorization] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Avtorization] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Avtorization] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Avtorization] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Avtorization', N'ON'
GO
ALTER DATABASE [Avtorization] SET QUERY_STORE = OFF
GO
USE [Avtorization]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 14.01.2022 17:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](10) NOT NULL,
	[Password] [nvarchar](10) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Avtorization] SET  READ_WRITE 
GO
