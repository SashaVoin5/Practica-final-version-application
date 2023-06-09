USE [master]
GO
/****** Object:  Database [Recruitment Agency]    Script Date: 14.03.2023 11:43:23 ******/
CREATE DATABASE [Recruitment Agency]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Recruitment Agency', FILENAME = N'D:\SQL  Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Recruitment Agency.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Recruitment Agency_log', FILENAME = N'D:\SQL  Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Recruitment Agency_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Recruitment Agency] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Recruitment Agency].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Recruitment Agency] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Recruitment Agency] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Recruitment Agency] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Recruitment Agency] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Recruitment Agency] SET ARITHABORT OFF 
GO
ALTER DATABASE [Recruitment Agency] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Recruitment Agency] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Recruitment Agency] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Recruitment Agency] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Recruitment Agency] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Recruitment Agency] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Recruitment Agency] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Recruitment Agency] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Recruitment Agency] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Recruitment Agency] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Recruitment Agency] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Recruitment Agency] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Recruitment Agency] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Recruitment Agency] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Recruitment Agency] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Recruitment Agency] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Recruitment Agency] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Recruitment Agency] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Recruitment Agency] SET  MULTI_USER 
GO
ALTER DATABASE [Recruitment Agency] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Recruitment Agency] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Recruitment Agency] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Recruitment Agency] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Recruitment Agency] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Recruitment Agency] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Recruitment Agency] SET QUERY_STORE = OFF
GO
USE [Recruitment Agency]
GO
/****** Object:  Table [dbo].[Citizen]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citizen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](25) NOT NULL,
	[middle_name] [nvarchar](30) NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[date_of_birth] [date] NOT NULL,
	[passport_data] [nvarchar](10) NOT NULL,
	[number_phone] [nvarchar](11) NOT NULL,
	[employment_status_id] [int] NOT NULL,
	[date_of_register] [date] NOT NULL,
	[date_of_status_change] [date] NOT NULL,
	[Login] [nvarchar](30) NULL,
	[Password] [nvarchar](30) NULL,
 CONSTRAINT [PK_Citizen] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[completion_status]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[completion_status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_completion_status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](25) NOT NULL,
	[middle_name] [nvarchar](30) NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[date_of_birth] [date] NOT NULL,
	[passport_data] [nvarchar](10) NOT NULL,
	[number_phone] [nvarchar](11) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Login] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name_of_the_organization] [nvarchar](50) NOT NULL,
	[type_of_activity] [nvarchar](30) NOT NULL,
	[address] [nvarchar](80) NOT NULL,
	[telephone] [nvarchar](11) NOT NULL,
	[additional_information] [nvarchar](150) NULL,
 CONSTRAINT [PK_Employer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employment_status]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employment_status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_employment_status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resume]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resume](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Citizen_id] [int] NOT NULL,
	[education_id] [int] NOT NULL,
	[availability_of_additional_education] [nvarchar](100) NULL,
	[specialization] [nvarchar](100) NOT NULL,
	[work_experience_id] [int] NOT NULL,
	[professional_skills] [nvarchar](100) NOT NULL,
	[salary] [int] NOT NULL,
	[statusResume_ID] [int] NOT NULL,
 CONSTRAINT [PK_Resume] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statusResume]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statusResume](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_statusResume] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacancy]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacancy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employer_id] [int] NOT NULL,
	[education_id] [int] NOT NULL,
	[specialization] [nvarchar](80) NOT NULL,
	[post] [nvarchar](50) NOT NULL,
	[work_experience_id] [int] NOT NULL,
	[professional_skills] [nvarchar](100) NULL,
	[salary] [int] NOT NULL,
	[completion_status_id] [int] NOT NULL,
 CONSTRAINT [PK_Vacancy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visiting]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visiting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[vacancy_id] [int] NOT NULL,
	[citizen_id] [int] NOT NULL,
	[date_of_the_visit] [datetime] NOT NULL,
	[result_id] [int] NULL,
 CONSTRAINT [PK_Visiting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[work_experience]    Script Date: 14.03.2023 11:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[work_experience](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_work_experience] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Citizen] ON 

INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (1, N'Сергей', N'Владимирович', N'Гладунов', CAST(N'1998-06-19' AS Date), N'3823382355', N'79236606701', 1, CAST(N'2022-03-01' AS Date), CAST(N'2022-01-03' AS Date), N'Gladunov1', N'Serjey313')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (2, N'Владимир', N'Иванович', N'Шебалдин', CAST(N'2004-03-04' AS Date), N'3823372113', N'71313131345', 3, CAST(N'2023-10-06' AS Date), CAST(N'2022-10-27' AS Date), N'UnLogin1', N'UnPassasd1')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (3, N'Дмитрий', N'Сергеевич', N'Головатюк', CAST(N'2001-08-01' AS Date), N'8313135133', N'79913131344', 1, CAST(N'2020-03-06' AS Date), CAST(N'2020-03-06' AS Date), N'UnLogin', N'UnPass3asd')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (4, N'Таисия', N'Ярославна', N'Павлова', CAST(N'1994-09-24' AS Date), N'7091839913', N'71238978131', 3, CAST(N'2018-06-03' AS Date), CAST(N'2019-06-06' AS Date), N'UnLogin', N'UnPass4asd')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (5, N'Виктория', N'Владимировна', N'Царева', CAST(N'1991-07-09' AS Date), N'9913131343', N'73198391838', 3, CAST(N'2019-12-12' AS Date), CAST(N'2020-01-20' AS Date), N'UnLogin', N'UnPass5ad')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (6, N'София', N'Тимофеевна', N'Иванова', CAST(N'1990-02-20' AS Date), N'8131341889', N'79831988738', 2, CAST(N'2021-12-20' AS Date), CAST(N'2021-12-25' AS Date), N'Sofya2', N'sifinka2')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (7, N'Матвей', N'Яковлев', N'Макаровый', CAST(N'2001-09-23' AS Date), N'9131481399', N'73189748173', 1, CAST(N'2020-12-20' AS Date), CAST(N'2020-12-20' AS Date), N'UnLogin', N'UnPass7ad')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (8, N'Анастасия', N'Семеновна', N'Калачева', CAST(N'2000-08-20' AS Date), N'8130319839', N'79319738173', 2, CAST(N'2022-12-12' AS Date), CAST(N'2023-02-03' AS Date), N'UnLogin', N'UnPass8asd')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (9, N'Анастасия', N'Дмитриевна', N'Тимофеева', CAST(N'1998-06-03' AS Date), N'3134149831', N'79318787133', 3, CAST(N'2019-12-20' AS Date), CAST(N'2021-12-12' AS Date), N'Nastya5', N'NastushSuper')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (10, N'Милана', N'Егоровна', N'Маркина', CAST(N'2003-03-21' AS Date), N'1361414415', N'79939183787', 3, CAST(N'2018-09-07' AS Date), CAST(N'2019-09-09' AS Date), N'UnLogin', N'UnPass10asd')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (11, N'Анастасия', N'Никитична', N'Богданова', CAST(N'2001-02-07' AS Date), N'9831987381', N'79381931378', 3, CAST(N'2022-03-05' AS Date), CAST(N'2022-09-07' AS Date), N'UnLogin', N'UnPass11asd')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (12, N'Иван', N'Сергеевич', N'Федорыч', CAST(N'1986-07-25' AS Date), N'981383', N'79238608701', 1, CAST(N'2023-03-13' AS Date), CAST(N'2023-03-13' AS Date), N'FedyaIvan', N'FedayaSergey')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (13, N'Виталий', N'Сергеевич', N'Батин', CAST(N'1985-07-12' AS Date), N'798123', N'79236606701', 1, CAST(N'2023-03-13' AS Date), CAST(N'2023-03-13' AS Date), N'Batka', N'RussiaGood')
INSERT [dbo].[Citizen] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [employment_status_id], [date_of_register], [date_of_status_change], [Login], [Password]) VALUES (14, N'Сергей', N'Владимирович', N'Владимиров', CAST(N'1985-07-12' AS Date), N'7913887', N'79233806901', 1, CAST(N'2023-03-14' AS Date), CAST(N'2023-03-14' AS Date), N'Sergih', N'Hihel')
SET IDENTITY_INSERT [dbo].[Citizen] OFF
GO
SET IDENTITY_INSERT [dbo].[completion_status] ON 

INSERT [dbo].[completion_status] ([ID], [name]) VALUES (1, N'Открыта')
INSERT [dbo].[completion_status] ([ID], [name]) VALUES (2, N'Выполнена')
SET IDENTITY_INSERT [dbo].[completion_status] OFF
GO
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([ID], [name]) VALUES (1, N'Среднее')
INSERT [dbo].[Education] ([ID], [name]) VALUES (2, N'Среднее профессиональное')
INSERT [dbo].[Education] ([ID], [name]) VALUES (3, N'Высшее')
SET IDENTITY_INSERT [dbo].[Education] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [RoleID], [Login], [Password]) VALUES (1, N'Злата', N'Олеговна', N'Громова', CAST(N'1997-06-03' AS Date), N'3821382355', N'79236606701', 1, N'jadjadj', N'Plesjakm')
INSERT [dbo].[Employee] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [RoleID], [Login], [Password]) VALUES (5, N'Юлия', N'Захарова', N'Кузьмина', CAST(N'1996-12-12' AS Date), N'8317878317', N'73189371738', 2, N'adadafa', N'adaffca')
INSERT [dbo].[Employee] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [RoleID], [Login], [Password]) VALUES (7, N'София', N'Платонрва', N'Кузнецова', CAST(N'1998-09-10' AS Date), N'3181388131', N'71398139898', 3, N'SofyaAds', N'adaffa')
INSERT [dbo].[Employee] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [RoleID], [Login], [Password]) VALUES (9, N'Василиса', N'Захаровна', N'Крылова', CAST(N'2000-08-05' AS Date), N'3183781378', N'71398193779', 2, N'adadggv', N'asdxaax')
INSERT [dbo].[Employee] ([ID], [first_name], [middle_name], [last_name], [date_of_birth], [passport_data], [number_phone], [RoleID], [Login], [Password]) VALUES (15, N'Иван', N'Сергеевич', N'Большемир', CAST(N'1995-06-22' AS Date), N'381738173', N'79246806701', 2, N'bolshesil', N'VanyaSuper')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Employer] ON 

INSERT [dbo].[Employer] ([ID], [name_of_the_organization], [type_of_activity], [address], [telephone], [additional_information]) VALUES (1, N'ООО "Большие надежды"', N'Починка компьютеров', N'Сервисная 39', N'7890913013', NULL)
INSERT [dbo].[Employer] ([ID], [name_of_the_organization], [type_of_activity], [address], [telephone], [additional_information]) VALUES (2, N'ООО "Печеньки и мясо"', N'Обслуживание клиентов', N'Вкусная 56', N'9839189931', NULL)
INSERT [dbo].[Employer] ([ID], [name_of_the_organization], [type_of_activity], [address], [telephone], [additional_information]) VALUES (3, N'ООО "Сел и поехал"', N'Ремонт авто', N'Красный проспект 79', N'7913818389', NULL)
INSERT [dbo].[Employer] ([ID], [name_of_the_organization], [type_of_activity], [address], [telephone], [additional_information]) VALUES (4, N'ООО "Вкусно и точка"', N'Кафе', N'Гоголя 13', N'9897137871', NULL)
INSERT [dbo].[Employer] ([ID], [name_of_the_organization], [type_of_activity], [address], [telephone], [additional_information]) VALUES (5, N'ООО "Быстро и точка"', N'Ремонт авто', N'Богаткова 255', N'8138831787', NULL)
INSERT [dbo].[Employer] ([ID], [name_of_the_organization], [type_of_activity], [address], [telephone], [additional_information]) VALUES (6, N'ООО "Не надо рекламы"', N'Создание сайтов', N'Дмитрия Шмонина 12', N'9173878781', NULL)
INSERT [dbo].[Employer] ([ID], [name_of_the_organization], [type_of_activity], [address], [telephone], [additional_information]) VALUES (9, N'ООО "Самообман"', N'Создание приложений', N'Военная 39', N'8131313881', NULL)
INSERT [dbo].[Employer] ([ID], [name_of_the_organization], [type_of_activity], [address], [telephone], [additional_information]) VALUES (10, N'ООО "Далеко едем"', N'Перевозка грузов', N'Военная 16', N'81378787813', N'')
INSERT [dbo].[Employer] ([ID], [name_of_the_organization], [type_of_activity], [address], [telephone], [additional_information]) VALUES (11, N'ООО "Вишенка и булочка"', N'Выпечка', N'Мировая 30', N'79236713131', N'Вкусные пирожки')
SET IDENTITY_INSERT [dbo].[Employer] OFF
GO
SET IDENTITY_INSERT [dbo].[employment_status] ON 

INSERT [dbo].[employment_status] ([ID], [Name]) VALUES (1, N'Ищет работу')
INSERT [dbo].[employment_status] ([ID], [Name]) VALUES (2, N'Связался с работодателем')
INSERT [dbo].[employment_status] ([ID], [Name]) VALUES (3, N'Трудоустроен')
SET IDENTITY_INSERT [dbo].[employment_status] OFF
GO
SET IDENTITY_INSERT [dbo].[Result] ON 

INSERT [dbo].[Result] ([ID], [name]) VALUES (1, N'Стороны договорились')
INSERT [dbo].[Result] ([ID], [name]) VALUES (2, N'Стороны не договори')
SET IDENTITY_INSERT [dbo].[Result] OFF
GO
SET IDENTITY_INSERT [dbo].[Resume] ON 

INSERT [dbo].[Resume] ([ID], [Citizen_id], [education_id], [availability_of_additional_education], [specialization], [work_experience_id], [professional_skills], [salary], [statusResume_ID]) VALUES (0, 1, 3, N'', N'Информационные системы и программирование', 4, N'Внимательный', 55000, 1)
INSERT [dbo].[Resume] ([ID], [Citizen_id], [education_id], [availability_of_additional_education], [specialization], [work_experience_id], [professional_skills], [salary], [statusResume_ID]) VALUES (2, 2, 3, N'Курсы повышения квалификации', N'Сварщик 3 разряда', 5, N'Внимательный, стрессоустойчивый', 65000, 1)
INSERT [dbo].[Resume] ([ID], [Citizen_id], [education_id], [availability_of_additional_education], [specialization], [work_experience_id], [professional_skills], [salary], [statusResume_ID]) VALUES (3, 3, 3, NULL, N'Программист', 3, N'Ответственный', 80000, 1)
INSERT [dbo].[Resume] ([ID], [Citizen_id], [education_id], [availability_of_additional_education], [specialization], [work_experience_id], [professional_skills], [salary], [statusResume_ID]) VALUES (5, 5, 2, NULL, N'Дальнобойщик', 2, N'Трудолюбимый', 80000, 2)
INSERT [dbo].[Resume] ([ID], [Citizen_id], [education_id], [availability_of_additional_education], [specialization], [work_experience_id], [professional_skills], [salary], [statusResume_ID]) VALUES (6, 6, 3, NULL, N'Администратор', 3, N'Ответственная, трудолюбивая', 50000, 1)
INSERT [dbo].[Resume] ([ID], [Citizen_id], [education_id], [availability_of_additional_education], [specialization], [work_experience_id], [professional_skills], [salary], [statusResume_ID]) VALUES (7, 7, 2, NULL, N'Механик', 4, N'Внимательный', 65000, 1)
INSERT [dbo].[Resume] ([ID], [Citizen_id], [education_id], [availability_of_additional_education], [specialization], [work_experience_id], [professional_skills], [salary], [statusResume_ID]) VALUES (8, 8, 3, NULL, N'Официант', 1, N'Хорошо говорит по английски', 35000, 1)
INSERT [dbo].[Resume] ([ID], [Citizen_id], [education_id], [availability_of_additional_education], [specialization], [work_experience_id], [professional_skills], [salary], [statusResume_ID]) VALUES (9, 9, 2, NULL, N'Секретарша', 3, N'Отлично работает с бумагами', 45000, 2)
INSERT [dbo].[Resume] ([ID], [Citizen_id], [education_id], [availability_of_additional_education], [specialization], [work_experience_id], [professional_skills], [salary], [statusResume_ID]) VALUES (10, 10, 3, N'Инженер-Программист', N'Программист', 4, N'Внимательная', 100000, 2)
INSERT [dbo].[Resume] ([ID], [Citizen_id], [education_id], [availability_of_additional_education], [specialization], [work_experience_id], [professional_skills], [salary], [statusResume_ID]) VALUES (11, 2, 3, N'', N'Программист', 2, N'Быстро печатает и внимательный', 45000, 1)
INSERT [dbo].[Resume] ([ID], [Citizen_id], [education_id], [availability_of_additional_education], [specialization], [work_experience_id], [professional_skills], [salary], [statusResume_ID]) VALUES (13, 2, 3, N'', N'Сантехник', 4, N'Внимательный', 35000, 1)
SET IDENTITY_INSERT [dbo].[Resume] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Директор')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (3, N'Консультант')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[statusResume] ON 

INSERT [dbo].[statusResume] ([ID], [Name]) VALUES (1, N'Активно')
INSERT [dbo].[statusResume] ([ID], [Name]) VALUES (2, N'Не активно')
SET IDENTITY_INSERT [dbo].[statusResume] OFF
GO
SET IDENTITY_INSERT [dbo].[Vacancy] ON 

INSERT [dbo].[Vacancy] ([ID], [Employer_id], [education_id], [specialization], [post], [work_experience_id], [professional_skills], [salary], [completion_status_id]) VALUES (1, 1, 3, N'Автопроизводства', N'Механик', 3, N'Внимательный', 50000, 1)
INSERT [dbo].[Vacancy] ([ID], [Employer_id], [education_id], [specialization], [post], [work_experience_id], [professional_skills], [salary], [completion_status_id]) VALUES (2, 2, 3, N'Обслуживание клиентов', N'Повар', 3, N'Трудолюбивый', 40000, 1)
INSERT [dbo].[Vacancy] ([ID], [Employer_id], [education_id], [specialization], [post], [work_experience_id], [professional_skills], [salary], [completion_status_id]) VALUES (3, 3, 3, N'Автопроизводства', N'Главный механик', 4, N'Ответственный', 60000, 1)
INSERT [dbo].[Vacancy] ([ID], [Employer_id], [education_id], [specialization], [post], [work_experience_id], [professional_skills], [salary], [completion_status_id]) VALUES (4, 4, 3, N'Обслуживание клиентов', N'Официант', 2, N'Ответственный ', 35000, 1)
INSERT [dbo].[Vacancy] ([ID], [Employer_id], [education_id], [specialization], [post], [work_experience_id], [professional_skills], [salary], [completion_status_id]) VALUES (5, 5, 3, N'Автопроизводства', N'Механик', 3, N'Внимательный', 50000, 1)
INSERT [dbo].[Vacancy] ([ID], [Employer_id], [education_id], [specialization], [post], [work_experience_id], [professional_skills], [salary], [completion_status_id]) VALUES (6, 6, 3, N'Программирование ', N'Программист', 4, N'Стрессоустойчивый', 70000, 1)
INSERT [dbo].[Vacancy] ([ID], [Employer_id], [education_id], [specialization], [post], [work_experience_id], [professional_skills], [salary], [completion_status_id]) VALUES (10, 10, 3, N'Дальнобойщик', N'Водитель', 3, N'Внимательный', 76000, 1)
INSERT [dbo].[Vacancy] ([ID], [Employer_id], [education_id], [specialization], [post], [work_experience_id], [professional_skills], [salary], [completion_status_id]) VALUES (11, 1, 2, N'Информационные системы и программирование', N'Программист', 4, N'Внимательный, умный', 58000, 2)
SET IDENTITY_INSERT [dbo].[Vacancy] OFF
GO
SET IDENTITY_INSERT [dbo].[Visiting] ON 

INSERT [dbo].[Visiting] ([ID], [employee_id], [vacancy_id], [citizen_id], [date_of_the_visit], [result_id]) VALUES (1, 1, 1, 1, CAST(N'2023-02-01T16:00:00.000' AS DateTime), 1)
INSERT [dbo].[Visiting] ([ID], [employee_id], [vacancy_id], [citizen_id], [date_of_the_visit], [result_id]) VALUES (4, 5, 4, 4, CAST(N'2023-02-07T13:00:00.000' AS DateTime), 1)
INSERT [dbo].[Visiting] ([ID], [employee_id], [vacancy_id], [citizen_id], [date_of_the_visit], [result_id]) VALUES (6, 7, 6, 6, CAST(N'2023-02-15T17:30:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Visiting] OFF
GO
SET IDENTITY_INSERT [dbo].[work_experience] ON 

INSERT [dbo].[work_experience] ([ID], [name]) VALUES (1, N'Не имеет значения')
INSERT [dbo].[work_experience] ([ID], [name]) VALUES (2, N'Нет опыта')
INSERT [dbo].[work_experience] ([ID], [name]) VALUES (3, N'Менее одного года')
INSERT [dbo].[work_experience] ([ID], [name]) VALUES (4, N'От года до трех лет')
INSERT [dbo].[work_experience] ([ID], [name]) VALUES (5, N'От трех до пяти лет')
INSERT [dbo].[work_experience] ([ID], [name]) VALUES (6, N'Более пяти лет')
SET IDENTITY_INSERT [dbo].[work_experience] OFF
GO
ALTER TABLE [dbo].[Citizen]  WITH CHECK ADD  CONSTRAINT [FK_Citizen_employment_status] FOREIGN KEY([employment_status_id])
REFERENCES [dbo].[employment_status] ([ID])
GO
ALTER TABLE [dbo].[Citizen] CHECK CONSTRAINT [FK_Citizen_employment_status]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_Citizen] FOREIGN KEY([Citizen_id])
REFERENCES [dbo].[Citizen] ([ID])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_Citizen]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_Education] FOREIGN KEY([education_id])
REFERENCES [dbo].[Education] ([ID])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_Education]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_statusResume] FOREIGN KEY([statusResume_ID])
REFERENCES [dbo].[statusResume] ([ID])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_statusResume]
GO
ALTER TABLE [dbo].[Resume]  WITH CHECK ADD  CONSTRAINT [FK_Resume_work_experience] FOREIGN KEY([work_experience_id])
REFERENCES [dbo].[work_experience] ([ID])
GO
ALTER TABLE [dbo].[Resume] CHECK CONSTRAINT [FK_Resume_work_experience]
GO
ALTER TABLE [dbo].[Vacancy]  WITH CHECK ADD  CONSTRAINT [FK_Vacancy_completion_status] FOREIGN KEY([completion_status_id])
REFERENCES [dbo].[completion_status] ([ID])
GO
ALTER TABLE [dbo].[Vacancy] CHECK CONSTRAINT [FK_Vacancy_completion_status]
GO
ALTER TABLE [dbo].[Vacancy]  WITH CHECK ADD  CONSTRAINT [FK_Vacancy_Education] FOREIGN KEY([education_id])
REFERENCES [dbo].[Education] ([ID])
GO
ALTER TABLE [dbo].[Vacancy] CHECK CONSTRAINT [FK_Vacancy_Education]
GO
ALTER TABLE [dbo].[Vacancy]  WITH CHECK ADD  CONSTRAINT [FK_Vacancy_Employer] FOREIGN KEY([Employer_id])
REFERENCES [dbo].[Employer] ([ID])
GO
ALTER TABLE [dbo].[Vacancy] CHECK CONSTRAINT [FK_Vacancy_Employer]
GO
ALTER TABLE [dbo].[Vacancy]  WITH CHECK ADD  CONSTRAINT [FK_Vacancy_work_experience] FOREIGN KEY([work_experience_id])
REFERENCES [dbo].[work_experience] ([ID])
GO
ALTER TABLE [dbo].[Vacancy] CHECK CONSTRAINT [FK_Vacancy_work_experience]
GO
ALTER TABLE [dbo].[Visiting]  WITH CHECK ADD  CONSTRAINT [FK_Visiting_Citizen] FOREIGN KEY([citizen_id])
REFERENCES [dbo].[Citizen] ([ID])
GO
ALTER TABLE [dbo].[Visiting] CHECK CONSTRAINT [FK_Visiting_Citizen]
GO
ALTER TABLE [dbo].[Visiting]  WITH CHECK ADD  CONSTRAINT [FK_Visiting_Employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Visiting] CHECK CONSTRAINT [FK_Visiting_Employee]
GO
ALTER TABLE [dbo].[Visiting]  WITH CHECK ADD  CONSTRAINT [FK_Visiting_Result] FOREIGN KEY([result_id])
REFERENCES [dbo].[Result] ([ID])
GO
ALTER TABLE [dbo].[Visiting] CHECK CONSTRAINT [FK_Visiting_Result]
GO
ALTER TABLE [dbo].[Visiting]  WITH CHECK ADD  CONSTRAINT [FK_Visiting_Vacancy] FOREIGN KEY([vacancy_id])
REFERENCES [dbo].[Vacancy] ([ID])
GO
ALTER TABLE [dbo].[Visiting] CHECK CONSTRAINT [FK_Visiting_Vacancy]
GO
USE [master]
GO
ALTER DATABASE [Recruitment Agency] SET  READ_WRITE 
GO
