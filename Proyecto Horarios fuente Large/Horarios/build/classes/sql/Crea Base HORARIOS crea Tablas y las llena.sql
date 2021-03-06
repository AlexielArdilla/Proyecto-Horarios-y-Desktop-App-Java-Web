USE [master]
GO
/****** Object:  Database [HORARIOS]    Script Date: 21/04/2018 20:30:03 ******/
CREATE DATABASE [HORARIOS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HORARIOS', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HORARIOS.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HORARIOS_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\HORARIOS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HORARIOS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HORARIOS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HORARIOS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HORARIOS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HORARIOS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HORARIOS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HORARIOS] SET ARITHABORT OFF 
GO
ALTER DATABASE [HORARIOS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HORARIOS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HORARIOS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HORARIOS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HORARIOS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HORARIOS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HORARIOS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HORARIOS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HORARIOS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HORARIOS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HORARIOS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HORARIOS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HORARIOS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HORARIOS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HORARIOS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HORARIOS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HORARIOS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HORARIOS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HORARIOS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HORARIOS] SET  MULTI_USER 
GO
ALTER DATABASE [HORARIOS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HORARIOS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HORARIOS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HORARIOS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [HORARIOS]
GO
/****** Object:  User [Atlas]    Script Date: 21/04/2018 20:30:03 ******/
CREATE USER [Atlas] FOR LOGIN [Atlas] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Atlas]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Atlas]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Atlas]
GO
/****** Object:  Table [dbo].[DATOS]    Script Date: 21/04/2018 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DATOS](
	[ID] [int] NOT NULL,
	[Carrera] [varchar](50) NULL,
	[Materia] [varchar](50) NULL,
	[Comisión] [char](3) NULL,
	[Profesor] [varchar](50) NULL,
	[Horario] [char](4) NULL,
	[Aula] [char](5) NULL,
	[Sede] [varchar](25) NULL,
	[Cancelada] [varchar](5015) NULL,
 CONSTRAINT [PK_DATOS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARQUESINA]    Script Date: 21/04/2018 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MARQUESINA](
	[id] [int] NULL,
	[TEXTO] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (1, N'Abogacía', N'Derecho penal', N'A1 ', N'Velazquez', N'1800', N'101  ', N'UNPAZ', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (2, N'Abogacía', N'Derecho 2', N'B2 ', N'Velazquez', N'1830', N'105  ', N'UNPAZ', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (3, N'APU', N'Algebra y análisis', N'c1 ', N'Lopez', N'1800', N'201  ', N'CEM', N'cancelada')
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (4, N'Abogacía', N'Derecho penal 2', N'A1 ', N'Velazquez', N'2000', N'101  ', N'UTN', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (5, N'APU', N'Paradig. de la Prog', N'C1 ', N'Gonzalez', N'1930', N'15   ', N'UTN', N'NULL')
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (6, N'APU', N'Inglés', N'B2 ', N'Ninsei', N'1830', N'204  ', N'UNPAZ', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (7, N'Enfermería', N'Salud', N'A3 ', N'Favaloro', N'1730', N'9    ', N'CEM', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (8, N'Enfermería', N'Vacunas', N'A5 ', N'Roland', N'1800', N'219  ', N'UNPAZ', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (9, N'Gimnasia', N'Fisiología', N'A3 ', N'Atlas', N'2000', N'15   ', N'CEM', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (10, N'Gimnasia', N'Fuerza', N'b2 ', N'Johnes', N'1700', N'200  ', N'UTN', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (11, N'APU', N'Inglés 2', N'C2 ', N'Pereyra', N'2030', N'205  ', N'UNPAZ', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (12, N'Gimnasia', N'Inglés 2', N'A1 ', N'Pereyra', N'1800', N'208  ', N'CEM', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (13, N'Prog videojueos', N'Inglés', N'B3 ', N'Yanes', N'2030', N'105  ', N'UNPAZ', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (14, N'Enfermería', N'Med nuclear', N'A1 ', N'Puig', N'1700', N'12   ', N'UTN', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (15, N'Gimnasia', N'Handball', N'C1 ', N'Porrúa', N'2100', N'10   ', N'UTN', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (16, N'Prog videojueos', N'POO', N'C2 ', N'Marzone', N'1800', N'154  ', N'UTN', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (17, N'Enfermería', N'Inglés', N'C8 ', N'Miuau', N'1945', N'207  ', N'UNPAZ', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (18, N'Enfermería', N'Clínica med', N'C3 ', N'Einstein', N'2000', N'104  ', N'UNPAZ', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (19, N'Gimnasia', N'Inglés', N'A3 ', N'Lopez', N'1700', N'14   ', N'UNPAZ', NULL)
INSERT [dbo].[DATOS] ([ID], [Carrera], [Materia], [Comisión], [Profesor], [Horario], [Aula], [Sede], [Cancelada]) VALUES (20, N'APU', N'Inglés', N'A1 ', N'Lopez', N'2030', N'205  ', N'CEM', NULL)
INSERT [dbo].[MARQUESINA] ([id], [TEXTO]) VALUES (1, N'Los perros de Dios se hacen fuertes en mi corazón')
USE [master]
GO
ALTER DATABASE [HORARIOS] SET  READ_WRITE 
GO
