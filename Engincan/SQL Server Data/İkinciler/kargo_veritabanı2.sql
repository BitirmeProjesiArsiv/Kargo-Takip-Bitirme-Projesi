USE [master]
GO
/****** Object:  Database [kargo_veritabani]    Script Date: 5.04.2022 23:26:03 ******/
CREATE DATABASE [kargo_veritabani]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kargo_veritabanı', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\kargo_veritabanı.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kargo_veritabanı_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\kargo_veritabanı_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [kargo_veritabani] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kargo_veritabani].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kargo_veritabani] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kargo_veritabani] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kargo_veritabani] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kargo_veritabani] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kargo_veritabani] SET ARITHABORT OFF 
GO
ALTER DATABASE [kargo_veritabani] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kargo_veritabani] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kargo_veritabani] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kargo_veritabani] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kargo_veritabani] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kargo_veritabani] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kargo_veritabani] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kargo_veritabani] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kargo_veritabani] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kargo_veritabani] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kargo_veritabani] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kargo_veritabani] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kargo_veritabani] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kargo_veritabani] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kargo_veritabani] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kargo_veritabani] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kargo_veritabani] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kargo_veritabani] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [kargo_veritabani] SET  MULTI_USER 
GO
ALTER DATABASE [kargo_veritabani] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kargo_veritabani] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kargo_veritabani] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kargo_veritabani] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [kargo_veritabani] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [kargo_veritabani] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [kargo_veritabani] SET QUERY_STORE = OFF
GO
USE [kargo_veritabani]
GO
/****** Object:  Table [dbo].[alici]    Script Date: 5.04.2022 23:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alici](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](12) NOT NULL,
	[soyad] [nvarchar](12) NOT NULL,
	[tel_no] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_alici] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[arac]    Script Date: 5.04.2022 23:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arac](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[plaka] [nvarchar](8) NOT NULL,
	[personel_id] [int] NOT NULL,
 CONSTRAINT [PK_arac] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_arac] UNIQUE NONCLUSTERED 
(
	[plaka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musteri]    Script Date: 5.04.2022 23:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tc_no] [nvarchar](11) NOT NULL,
	[ad] [nvarchar](12) NOT NULL,
	[soyad] [nvarchar](12) NOT NULL,
	[tel_no] [nvarchar](11) NOT NULL,
	[e_posta] [nvarchar](50) NOT NULL,
	[adres] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_musteri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_musteri] UNIQUE NONCLUSTERED 
(
	[tc_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paket]    Script Date: 5.04.2022 23:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[yukseklik] [int] NULL,
	[en] [int] NULL,
	[boy] [int] NULL,
	[agirlik] [int] NULL,
	[icerik] [nvarchar](15) NOT NULL,
	[adres] [nvarchar](100) NOT NULL,
	[subeye_verme_tarihi] [date] NOT NULL,
	[yola_cikma_tarihi] [date] NULL,
	[varma_tarihi] [date] NULL,
	[alicinin_alma_tarihi] [date] NULL,
	[ucret] [money] NOT NULL,
	[odeyen_kisi] [bit] NOT NULL,
	[alici_id] [int] NOT NULL,
	[gonderici_id] [int] NULL,
	[tuzel_gonderici_id] [int] NULL,
	[arac_id] [int] NOT NULL,
	[islem_yapan_personel_id] [int] NOT NULL,
 CONSTRAINT [PK_paket] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personel]    Script Date: 5.04.2022 23:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tc_no] [nvarchar](11) NOT NULL,
	[ad] [nvarchar](12) NOT NULL,
	[soyad] [nvarchar](12) NOT NULL,
	[tel_no] [nvarchar](11) NOT NULL,
	[e_posta] [nvarchar](50) NOT NULL,
	[yetki_id] [int] NOT NULL,
	[sube_id] [int] NOT NULL,
 CONSTRAINT [PK_personel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_personel] UNIQUE NONCLUSTERED 
(
	[tc_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sehirler_arasi_mesafe]    Script Date: 5.04.2022 23:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sehirler_arasi_mesafe](
	[sehir_1] [nvarchar](20) NOT NULL,
	[sehir_2] [nvarchar](20) NOT NULL,
	[varma_suresi] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sube]    Script Date: 5.04.2022 23:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sube](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_sube] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tuzel_musteri]    Script Date: 5.04.2022 23:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tuzel_musteri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sirket_ismi] [nvarchar](50) NOT NULL,
	[tel_no] [nvarchar](11) NOT NULL,
	[e_posta] [nvarchar](50) NOT NULL,
	[adres] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tuzel_musteri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yetki]    Script Date: 5.04.2022 23:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yetki](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_yetki] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[arac]  WITH CHECK ADD  CONSTRAINT [FK_arac_personel] FOREIGN KEY([personel_id])
REFERENCES [dbo].[personel] ([id])
GO
ALTER TABLE [dbo].[arac] CHECK CONSTRAINT [FK_arac_personel]
GO
ALTER TABLE [dbo].[paket]  WITH CHECK ADD  CONSTRAINT [FK_paket_alici] FOREIGN KEY([alici_id])
REFERENCES [dbo].[alici] ([id])
GO
ALTER TABLE [dbo].[paket] CHECK CONSTRAINT [FK_paket_alici]
GO
ALTER TABLE [dbo].[paket]  WITH CHECK ADD  CONSTRAINT [FK_paket_arac] FOREIGN KEY([arac_id])
REFERENCES [dbo].[arac] ([id])
GO
ALTER TABLE [dbo].[paket] CHECK CONSTRAINT [FK_paket_arac]
GO
ALTER TABLE [dbo].[paket]  WITH CHECK ADD  CONSTRAINT [FK_paket_musteri] FOREIGN KEY([gonderici_id])
REFERENCES [dbo].[musteri] ([id])
GO
ALTER TABLE [dbo].[paket] CHECK CONSTRAINT [FK_paket_musteri]
GO
ALTER TABLE [dbo].[paket]  WITH CHECK ADD  CONSTRAINT [FK_paket_personel] FOREIGN KEY([islem_yapan_personel_id])
REFERENCES [dbo].[personel] ([id])
GO
ALTER TABLE [dbo].[paket] CHECK CONSTRAINT [FK_paket_personel]
GO
ALTER TABLE [dbo].[paket]  WITH CHECK ADD  CONSTRAINT [FK_paket_tuzel_musteri] FOREIGN KEY([tuzel_gonderici_id])
REFERENCES [dbo].[tuzel_musteri] ([id])
GO
ALTER TABLE [dbo].[paket] CHECK CONSTRAINT [FK_paket_tuzel_musteri]
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD  CONSTRAINT [FK_personel_sube] FOREIGN KEY([sube_id])
REFERENCES [dbo].[sube] ([id])
GO
ALTER TABLE [dbo].[personel] CHECK CONSTRAINT [FK_personel_sube]
GO
ALTER TABLE [dbo].[personel]  WITH CHECK ADD  CONSTRAINT [FK_personel_yetki] FOREIGN KEY([yetki_id])
REFERENCES [dbo].[yetki] ([id])
GO
ALTER TABLE [dbo].[personel] CHECK CONSTRAINT [FK_personel_yetki]
GO
USE [master]
GO
ALTER DATABASE [kargo_veritabani] SET  READ_WRITE 
GO
