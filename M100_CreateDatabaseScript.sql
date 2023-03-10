USE [master]
GO
/****** Object:  Database [MovieProject]    Script Date: 16.01.2023 08:18:32 ******/
CREATE DATABASE [MovieProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MovieProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOTSCHES\MSSQL\DATA\MovieProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MovieProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOTSCHES\MSSQL\DATA\MovieProject_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MovieProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MovieProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MovieProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MovieProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MovieProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MovieProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MovieProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [MovieProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MovieProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MovieProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MovieProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MovieProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MovieProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MovieProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MovieProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MovieProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MovieProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MovieProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MovieProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MovieProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MovieProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MovieProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MovieProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MovieProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MovieProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MovieProject] SET  MULTI_USER 
GO
ALTER DATABASE [MovieProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MovieProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MovieProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MovieProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MovieProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MovieProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MovieProject] SET QUERY_STORE = OFF
GO
USE [MovieProject]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16.01.2023 08:18:32 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 16.01.2023 08:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DirectorMovie]    Script Date: 16.01.2023 08:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirectorMovie](
	[DirectorsId] [int] NOT NULL,
	[MoviesId] [int] NOT NULL,
 CONSTRAINT [PK_DirectorMovie] PRIMARY KEY CLUSTERED 
(
	[DirectorsId] ASC,
	[MoviesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 16.01.2023 08:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 16.01.2023 08:18:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ProductionYear] [int] NOT NULL,
	[TicketsSold] [int] NOT NULL,
	[MovieGenreId] [int] NOT NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230106080440_InitialCreate', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230106093016_RemovedSecondName', N'7.0.1')
GO
SET IDENTITY_INSERT [dbo].[Director] ON 

INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20001, N'Rolf                                              ', N'Lyssy                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20002, N'Bettina                                           ', N'Oberli                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20003, N'Michael                                           ', N'Steiner                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20004, N'Mike                                              ', N'Eschmann                                          ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20005, N'Xavier                                            ', N'Koller                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20006, N'Yves                                              ', N'Yersin                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20008, N'Petra                                             ', N'Volpe                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20009, N'Gustav                                            ', N'Ehmck                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20010, N'Pierre                                            ', N'Monnard                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20012, N'Sabine                                            ', N'Boss                                              ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20013, N'Fredi M.                                          ', N'Murer                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20015, N'Markus                                            ', N'Imhoof                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20016, N'Markus                                            ', N'Imboden                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20017, N'Stefan                                            ', N'Haupt                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20018, N'Claude                                            ', N'Goretta                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20019, N'Richard                                           ', N'Fleischer                                         ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20020, N'Jürg                                              ', N'Ebe                                               ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20021, N'Christoph                                         ', N'Schaub                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20023, N'Niklaus                                           ', N'Hilber                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20025, N'Claude                                            ', N'Barras                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20026, N'Oliver                                            ', N'Rihs                                              ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20027, N'Mark M.                                           ', N'Rissi                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20031, N'Friedrich                                         ', N'Kappeler                                          ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20032, N'Manuel Flurin                                     ', N'Hendry                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20034, N'Alain                                             ', N'Tanner                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20038, N'Kurt                                              ', N'Gloor                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20039, N'Hans-Ulrich                                       ', N'Schlumpf                                          ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20040, N'Peter                                             ', N'Stierlin                                          ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20042, N'Daniel                                            ', N'Schmid                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20046, N'Francis                                           ', N'Reusser                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20047, N'Jean-Stéphane                                     ', N'Bron                                              ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20048, N'Franz                                             ', N'Reichle                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20050, N'Peter                                             ', N'von Gunten                                        ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20052, N'Denis                                             ', N'Rabaglia                                          ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20053, N'Jean-Luc                                          ', N'Godard                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20055, N'Samir                                             ', N'                                                  ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20057, N'Wolfgang                                          ', N'Panzer                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20059, N'Paul                                              ', N'Riniker                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20060, N'Stefan                                            ', N'Jäger                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20061, N'Stéphanie                                         ', N'Chuat                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20062, N'Micha                                             ', N'Lewinsky                                          ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20063, N'Alice                                             ', N'Schmid                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20064, N'Urs                                               ', N'Odermatt                                          ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20066, N'Christian                                         ', N'Labhart                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20068, N'Barbara                                           ', N'Miller                                            ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20070, N'Manuel                                            ', N'von Stürler                                       ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20071, N'Wilfried                                          ', N'Bolliger                                          ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20072, N'Andrea                                            ', N'Staka                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20073, N'Marc                                              ', N'Schippert                                         ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20075, N'Michel                                            ', N'Soutter                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20077, N'Alain                                             ', N'Gsponer                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20078, N'Erich                                             ', N'Langjahr                                          ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20080, N'Ursula                                            ', N'Meier                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20081, N'Simon                                             ', N'Aeby                                              ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20082, N'Hans                                              ', N'Haldimann                                         ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20083, N'Bernard                                           ', N'Weber                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20087, N'Ulrike                                            ', N'Koch                                              ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20091, N'Bernhard                                          ', N'Giger                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20092, N'Sabine                                            ', N'Gisiger                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20093, N'Thomas                                            ', N'Koerfer                                           ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20096, N'Werner                                            ', N'Schweizer                                         ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20097, N'Thomas                                            ', N'Rickenmann                                        ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20098, N'Peter                                             ', N'Luisi                                             ')
INSERT [dbo].[Director] ([Id], [FirstName], [LastName]) VALUES (20099, N'Riccardo                                          ', N'Signorell                                         ')
SET IDENTITY_INSERT [dbo].[Director] OFF
GO
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20001, 1)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20002, 2)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20003, 3)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20004, 4)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20005, 5)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20006, 6)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20003, 7)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20008, 8)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20009, 9)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20010, 10)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20003, 11)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20012, 12)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20013, 13)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20013, 14)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20015, 15)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20016, 16)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20017, 17)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20018, 18)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20019, 19)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20020, 20)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20021, 21)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20001, 22)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20023, 23)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20005, 24)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20025, 25)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20026, 26)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20027, 27)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20015, 28)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20016, 29)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20005, 30)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20031, 31)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20032, 32)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20003, 33)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20034, 34)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20012, 35)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20027, 36)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20001, 37)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20038, 38)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20039, 39)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20040, 40)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20021, 41)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20042, 42)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20001, 43)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20005, 44)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20016, 45)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20046, 46)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20047, 47)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20048, 48)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20021, 49)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20050, 50)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20038, 51)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20052, 52)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20053, 53)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20034, 54)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20055, 55)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20042, 56)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20057, 57)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20016, 58)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20059, 59)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20060, 60)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20061, 61)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20062, 62)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20063, 63)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20064, 64)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20042, 65)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20066, 66)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20013, 67)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20068, 68)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20042, 69)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20070, 70)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20071, 71)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20072, 72)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20073, 73)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20017, 74)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20075, 75)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20004, 76)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20077, 77)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20078, 78)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20015, 79)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20080, 80)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20081, 81)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20082, 82)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20083, 83)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20004, 84)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20020, 85)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20057, 86)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20087, 87)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20001, 88)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20034, 89)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20052, 90)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20091, 91)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20092, 92)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20093, 93)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20042, 94)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20038, 95)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20096, 96)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20097, 97)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20098, 98)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20099, 99)
INSERT [dbo].[DirectorMovie] ([DirectorsId], [MoviesId]) VALUES (20078, 100)
GO
SET IDENTITY_INSERT [dbo].[Genre] ON 

INSERT [dbo].[Genre] ([Id], [Designation]) VALUES (101, N'Animationsfilm')
INSERT [dbo].[Genre] ([Id], [Designation]) VALUES (102, N'Dokumentarfilm')
INSERT [dbo].[Genre] ([Id], [Designation]) VALUES (103, N'Spielfilm')
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO
SET IDENTITY_INSERT [dbo].[Movie] ON 

INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (1, N'SCHWEIZERMACHER, DIE                                                                                ', 1978, 942066, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (2, N'HERBSTZEITLOSEN, DIE                                                                                ', 2006, 596272, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (3, N'MEIN NAME IST EUGEN                                                                                 ', 2005, 580870, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (4, N'ACHTUNG, FERTIG, CHARLIE!                                                                           ', 2003, 560523, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (5, N'SCHELLEN-URSLI                                                                                      ', 2014, 456159, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (6, N'PETITES FUGUES, LES                                                                                 ', 1979, 426649, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (7, N'GROUNDING                                                                                           ', 2005, 377713, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (8, N'GÖTTLICHE ORDNUNG, DIE                                                                              ', 2016, 357879, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (9, N'SCHWEIZER NAMENS NÖTZLI, EIN                                                                        ', 1988, 350681, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (10, N'PLATZSPITZBABY                                                                                      ', 2019, 334076, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (11, N'WOLKENBRUCHS WUNDERLICHE REISE IN DIE ARME EINER SCHICKSE                                           ', 2017, 315094, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (12, N'ERNSTFALL IN HAVANNA                                                                                ', 2002, 313617, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (13, N'VITUS                                                                                               ', 2006, 272963, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (14, N'HÖHENFEUER                                                                                          ', 1985, 255695, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (15, N'MORE THAN HONEY                                                                                     ', 2012, 255250, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (16, N'VERDINGBUB, DER                                                                                     ', 2011, 250046, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (17, N'ZWINGLI                                                                                             ', 2018, 249461, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (18, N'DENTELLIÈRE, LA                                                                                     ', 1977, 239741, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (19, N'ASHANTI                                                                                             ', 1978, 220559, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (20, N'HANDYMAN                                                                                            ', 2006, 207490, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (21, N'GIULIAS VERSCHWINDEN                                                                                ', 2009, 195716, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (22, N'KASSETTENLIEBE                                                                                      ', 1981, 186185, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (23, N'BRUNO MANSER - DIE STIMME DES REGENWALDES                                                           ', 2018, 183175, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (24, N'GEFRORENE HERZ, DAS                                                                                 ', 1980, 181515, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (25, N'MA VIE DE COURGETTE                                                                                 ', 2016, 179378, 101)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (26, N'ACHTUNG, FERTIG, WK!                                                                                ', 2013, 177051, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (27, N'BROT UND STEINE                                                                                     ', 1979, 160779, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (28, N'BOOT IST VOLL, DAS                                                                                  ', 1981, 159841, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (29, N'KOMIKER                                                                                             ', 2000, 157776, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (30, N'SCHWARZE TANNER, DER                                                                                ', 1986, 149279, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (31, N'MANI MATTER, WARUM SYT DIR SO TRUURIG?                                                              ', 2002, 146207, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (32, N'PAPA MOLL                                                                                           ', 2017, 143774, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (33, N'SENNENTUNTSCHI                                                                                      ', 2010, 143444, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (34, N'JONAS QUI AURA 25 ANS EN L''AN 2000                                                                  ', 1976, 139933, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (35, N'GOALIE BIN IG, DER                                                                                  ', 2013, 139574, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (36, N'SCHWARZE SPINNE, DIE                                                                                ', 1983, 138532, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (37, N'LEO SONNYBOY                                                                                        ', 1989, 133112, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (38, N'ERFINDER, DER                                                                                       ', 1980, 126854, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (39, N'KONGRESS DER PINGUINE, DER                                                                          ', 1993, 126174, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (40, N'KLASSEZÄMEKUNFT                                                                                     ', 1988, 125892, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (41, N'STERNENBERG                                                                                         ', 2004, 124847, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (42, N'BERESINA ODER DIE LETZTEN TAGE DER SCHWEIZ                                                          ', 1999, 119966, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (43, N'LETZTE POINTE, DIE                                                                                  ', 2017, 119127, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (44, N'REISE DER HOFFNUNG                                                                                  ', 1990, 112363, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (45, N'KATZENDIEBE                                                                                         ', 1996, 109520, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (46, N'DERBORENCE                                                                                          ', 1985, 107281, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (47, N'MAIS IM BUNDESHUUS - LE GENIE HELVETIQUE                                                            ', 2003, 105092, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (48, N'WISSEN VOM HEILEN, DAS                                                                              ', 1997, 104655, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (49, N'JEUNE HOMME                                                                                         ', 2006, 100508, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (50, N'KLEINE FRIEREN AUCH IM SOMMER                                                                       ', 1978, 100011, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (51, N'PLÖTZLICHE EINSAMKEIT DES KONRAD STEINER, DIE                                                       ', 1976, 99459, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (52, N'AZZURRO                                                                                             ', 2000, 97757, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (53, N'JE VOUS SALUE, MARIE                                                                                ', 1985, 93635, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (54, N'MESSIDOR                                                                                            ', 1979, 89191, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (55, N'SNOW WHITE                                                                                          ', 2005, 86627, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (56, N'JENATSCH                                                                                            ', 1987, 85034, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (57, N'BROKEN SILENCE                                                                                      ', 1995, 83299, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (58, N'HEIDI [Imboden M.]                                                                                  ', 2001, 82283, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (59, N'USFAHRT OERLIKE                                                                                     ', 2014, 81656, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (60, N'GROSSE SOMMER, DER                                                                                  ', 2015, 79320, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (61, N'PETITE CHAMBRE, LA                                                                                  ', 2010, 78761, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (62, N'STANDESBEAMTIN, DIE                                                                                 ', 2009, 78365, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (63, N'KINDER VOM NAPF, DIE                                                                                ', 2011, 77876, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (64, N'GEKAUFTES GLÜCK                                                                                     ', 1989, 74617, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (65, N'HÉCATE - MAÎTRESSE DE LA NUIT                                                                       ', 1982, 74291, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (66, N'GIOVANNI SEGANTINI - MAGIE DES LICHTS                                                               ', 2015, 72830, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (67, N'VOLLMOND                                                                                            ', 1998, 72796, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (68, N'VIOLANTA                                                                                            ', 2018, 70227, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (69, N'HIVER NOMADE                                                                                        ', 1977, 70204, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (70, N'LANDVOGT VON GREIFENSEE, DER                                                                        ', 2012, 69923, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (71, N'FRÄULEIN, DAS                                                                                       ', 1979, 69258, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (72, N'RING THING, THE                                                                                     ', 2006, 68353, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (73, N'ELISABETH KÜBLER-ROSS                                                                               ', 2004, 67637, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (74, N'REPÉRAGES                                                                                           ', 2003, 67518, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (75, N'BREAKOUT                                                                                            ', 1977, 65592, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (76, N'AKTE GRÜNINGER                                                                                      ', 2007, 65293, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (77, N'ERBE DER BERGLER, DAS                                                                               ', 2012, 64164, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (78, N'BERG, DER                                                                                           ', 2006, 63870, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (79, N'ENFANT D''EN HAUT, L''                                                                                ', 1990, 61845, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (80, N'FÄHNLEIN DER SIEBEN AUFRECHTEN, DAS [Aeby S.]                                                       ', 2012, 61150, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (81, N'BERGAUF, BERGAB                                                                                     ', 2001, 60539, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (82, N'WIESENBERGER, DIE                                                                                   ', 2008, 57358, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (83, N'TELL [Eschmann M.]                                                                                  ', 2012, 56085, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (84, N'LIEBLING, LASS UNS SCHEIDEN...                                                                      ', 2007, 55475, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (85, N'GROSSE KATER, DER                                                                                   ', 2010, 54751, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (86, N'SALZMÄNNER VON TIBET, DIE                                                                           ', 2010, 54016, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (87, N'TEDDY BÄR                                                                                           ', 1996, 53125, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (88, N'DANS LA VILLE BLANCHE                                                                               ', 1983, 51818, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (89, N'MARCELLO MARCELLO                                                                                   ', 1983, 50403, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (90, N'GEMEINDEPRÄSIDENT, DER                                                                              ', 2008, 50150, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (91, N'YALOM''S CURE                                                                                        ', 1984, 49804, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (92, N'GLUT                                                                                                ', 2014, 49645, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (93, N'ZWISCHENSAISON                                                                                      ', 1983, 49489, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (94, N'MANN OHNE GEDÄCHTNIS, DER                                                                           ', 1992, 48468, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (95, N'VERLIEBTE FEINDE                                                                                    ', 1984, 47717, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (96, N'ALPZYT                                                                                              ', 2013, 46923, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (97, N'FLITZER                                                                                             ', 2016, 46336, 102)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (98, N'CHAMPIONS                                                                                           ', 2016, 46304, 103)
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (99, N'HIRTENREISE INS DRITTE JAHRTAUSEND                                                                  ', 2010, 45812, 103)
GO
INSERT [dbo].[Movie] ([Id], [Title], [ProductionYear], [TicketsSold], [MovieGenreId]) VALUES (100, N'KINDER DER LANDSTRASSE                                                                              ', 2002, 45470, 102)
SET IDENTITY_INSERT [dbo].[Movie] OFF
GO
/****** Object:  Index [IX_DirectorMovie_MoviesId]    Script Date: 16.01.2023 08:18:32 ******/
CREATE NONCLUSTERED INDEX [IX_DirectorMovie_MoviesId] ON [dbo].[DirectorMovie]
(
	[MoviesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Movie_MovieGenreId]    Script Date: 16.01.2023 08:18:32 ******/
CREATE NONCLUSTERED INDEX [IX_Movie_MovieGenreId] ON [dbo].[Movie]
(
	[MovieGenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DirectorMovie]  WITH CHECK ADD  CONSTRAINT [FK_DirectorMovie_Director_DirectorsId] FOREIGN KEY([DirectorsId])
REFERENCES [dbo].[Director] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DirectorMovie] CHECK CONSTRAINT [FK_DirectorMovie_Director_DirectorsId]
GO
ALTER TABLE [dbo].[DirectorMovie]  WITH CHECK ADD  CONSTRAINT [FK_DirectorMovie_Movie_MoviesId] FOREIGN KEY([MoviesId])
REFERENCES [dbo].[Movie] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DirectorMovie] CHECK CONSTRAINT [FK_DirectorMovie_Movie_MoviesId]
GO
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Genre_MovieGenreId] FOREIGN KEY([MovieGenreId])
REFERENCES [dbo].[Genre] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_Genre_MovieGenreId]
GO
USE [master]
GO
ALTER DATABASE [MovieProject] SET  READ_WRITE 
GO
