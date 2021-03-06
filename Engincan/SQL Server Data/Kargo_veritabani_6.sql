USE [master]
GO
/****** Object:  Database [kargo_veritabani]    Script Date: 26.04.2022 00:30:48 ******/
CREATE DATABASE [kargo_veritabani]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kargo_veritabani', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\kargo_veritabani.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kargo_veritabani_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\kargo_veritabani_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[alici]    Script Date: 26.04.2022 00:30:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alici](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](20) NOT NULL,
	[soyad] [nvarchar](12) NOT NULL,
	[tel_no] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_alici] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[arac]    Script Date: 26.04.2022 00:30:48 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musteri]    Script Date: 26.04.2022 00:30:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tc_no] [nvarchar](11) NOT NULL,
	[ad] [nvarchar](20) NOT NULL,
	[soyad] [nvarchar](12) NOT NULL,
	[tel_no] [nvarchar](11) NOT NULL,
	[e_posta] [nvarchar](50) NOT NULL,
	[adres] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_musteri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paket]    Script Date: 26.04.2022 00:30:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[yukseklik] [int] NULL,
	[en] [int] NULL,
	[derinlik] [int] NULL,
	[agirlik] [int] NULL,
	[icerik] [nvarchar](15) NOT NULL,
	[adres] [nvarchar](100) NOT NULL,
	[subeye_verme_tarihi] [date] NOT NULL,
	[yola_cikma_tarihi] [date] NULL,
	[varma_tarihi] [date] NULL,
	[alicinin_alma_tarihi] [date] NULL,
	[ucret] [float] NOT NULL,
	[odeyen_kisi] [bit] NOT NULL,
	[alici_id] [int] NOT NULL,
	[gonderici_id] [int] NULL,
	[tuzel_gonderici_id] [int] NULL,
	[arac_id] [int] NULL,
	[islem_yapan_personel_id] [int] NOT NULL,
	[gonderilen_sube_id] [int] NOT NULL,
	[alici_sube_id] [int] NOT NULL,
	[paket_no] [nchar](8) NULL,
 CONSTRAINT [PK_paket] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personel]    Script Date: 26.04.2022 00:30:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tc_no] [nvarchar](11) NOT NULL,
	[ad] [nvarchar](20) NOT NULL,
	[soyad] [nvarchar](12) NOT NULL,
	[tel_no] [nvarchar](11) NOT NULL,
	[e_posta] [nvarchar](50) NOT NULL,
	[yetki_id] [int] NOT NULL,
	[sube_id] [int] NOT NULL,
	[sifre] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_personel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sehirler_arasi_mesafe]    Script Date: 26.04.2022 00:30:48 ******/
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
/****** Object:  Table [dbo].[sube]    Script Date: 26.04.2022 00:30:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sube](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](15) NOT NULL,
	[kargo_miktari] [int] NOT NULL,
 CONSTRAINT [PK_sube] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tuzel_musteri]    Script Date: 26.04.2022 00:30:48 ******/
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
	[indirim] [int] NOT NULL,
 CONSTRAINT [PK_tuzel_musteri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yetki]    Script Date: 26.04.2022 00:30:48 ******/
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
SET IDENTITY_INSERT [dbo].[alici] ON 

INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (2, N'Eyşe', N'Doğan', N'5547892456')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (3, N'Elif', N'Okkacı', N'5039040322')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (4, N'Esin', N'Özay', N'5363332365')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (5, N'Mustafa', N'Homurtu', N'5237323467')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (6, N'Sacettin', N'Tuncay', N'5435252345')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (7, N'Koray', N'Necmi', N'5328342234')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (8, N'Bura', N'engin', N'05477788998')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (9, N'asd', N'dsa', N'05447855481')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (10, N'asd', N'asdas', N'452')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (11, N'asd', N'asdas', N'05342229665')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (12, N'asdasd', N'asd', N'05444877898')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (13, N'asd', N'asd', N'11111111111')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (14, N'asd', N'asd', N'22222222222')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (15, N'asdasd', N'asd', N'12457896324')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (16, N'asd', N'asd', N'12302132011')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (17, N'bura', N'kara', N'05333366598')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (18, N'bura', N'kara', N'05333366597')
SET IDENTITY_INSERT [dbo].[alici] OFF
GO
SET IDENTITY_INSERT [dbo].[arac] ON 

INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (2, N'42 KM 65', 3)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (6, N'48 BH 54', 10)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (7, N'35 PU 87', 12)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (8, N'34 KE 09', 17)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (9, N'06 AN 02', 20)
SET IDENTITY_INSERT [dbo].[arac] OFF
GO
SET IDENTITY_INSERT [dbo].[musteri] ON 

INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (6, N'15741542118', N'Canan', N'Demir', N'5561257846', N'canan-demir12@gmail.com', N'sancak mah. atiye cad. 4.sokak Bayraklı/İzmir')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (10, N'58471235486', N'Emre', N'Dağlı', N'5412561478', N'emr_dglı855@gmail.com', N'baglar sokak özer apt. no:49 İSTANBUL/bağcılar')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (15, N'45257485662', N'Selcan', N'Aydın', N'5532454512', N'slcnaydn855@gmail.com', N'gölbaşı ANKARA')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (18, N'58245654432', N'Metin', N'Akgün', N'5673244789', N'metin@gmail.com', N'Numunebağ Cd. Numune İşh. No. 70 / 19 34150 Bayrampaşa/İstanbul')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (21, N'52462356534', N'Ahmet', N'Can', N'5032523934', N'ahmet@gmail.com', N'Sakarya Caddesi 32/1 Kızılay/ANKARA')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (22, N'23273264432', N'Burak', N'Sinan', N'5024567222', N'burak@gmail.com', N'Karamehmet Mah. Halil İbrahim Doğruel Cd. No:19/13 Menteşe/Muğla')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (23, N'64392942943', N'Fırat', N'Hoca', N'5743223212', N'firat@gmail.com', N'Özlem Mah. Salim Dede Sk. No:23/1 A Selçuklu/Konya')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (24, N'41137858478', N'Gökay', N'Akdeniz', N'05342229261', N'asd@gmali.com', N'İstanbul')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (25, N'4558877889', N'ASD', N'DSA', N'05342229559', N'ASDAS@GMA.COM', N'İstanbul')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (26, N'45678912311', N'aosdkoa', N'asd', N'05349999887', N'das', N'İstanbul/Ali')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (27, N'4115899558', N'asd', N'wdw', N'05344788998', N'dsa', N'İstanbul/kon')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (28, N'11111111111', N'asd', N'asd', N'11111111111', N'dsa', N'qwdqw')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (29, N'22222222222', N'asdasd', N'qdw', N'22222222222', N'asdas', N'asd')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (30, N'12345678908', N'ıoasjdıoas', N'asdıjasıdj', N'12345678908', N'asd', N'asdasdasd')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (31, N'41137858488', N'Gökay', N'Akdeniz', N'05413520048', N'gokay-@gmail.com', N'İstanbul/Konya')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (32, N'41137858481', N'Gökay', N'Akdeniz', N'05413520042', N'gokay-@gmail.com', N'İstanbul/Konya')
SET IDENTITY_INSERT [dbo].[musteri] OFF
GO
SET IDENTITY_INSERT [dbo].[paket] ON 

INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (17, 10, 10, 10, 10, N'Koli', N'İstanbul', CAST(N'2022-04-25' AS Date), NULL, NULL, NULL, 10, 1, 8, 24, NULL, NULL, 5, 1, 1, N'10000001')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (18, 10, 10, 10, 10, N'Paket', N'İstanbul', CAST(N'2022-04-25' AS Date), NULL, NULL, NULL, 10, 1, 9, 25, NULL, NULL, 2, 3, 1, N'30000001')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (19, 40, 30, 20, 20, N'Koli', N'İstanbul/Ali', CAST(N'2022-04-25' AS Date), NULL, NULL, NULL, 1, 0, 11, 26, NULL, NULL, 5, 1, 1, N'10000002')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (20, 10, 10, 10, 10, N'Koli', N'İstanbul/kon', CAST(N'2022-04-25' AS Date), NULL, NULL, NULL, 18, 0, 12, 27, NULL, NULL, 5, 1, 5, N'10000003')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (21, 10, 10, 10, 10, N'Koli', N'İstanbul/kon', CAST(N'2022-04-25' AS Date), NULL, NULL, NULL, 18, 0, 12, 27, NULL, NULL, 5, 1, 5, N'10000004')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (22, 10, 10, 10, 10, N'Koli', N'İstanbul/kon', CAST(N'2022-04-25' AS Date), NULL, NULL, NULL, 18, 0, 12, 27, NULL, NULL, 5, 1, 5, N'10000005')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (23, 10, 10, 10, 10, N'Koli', N'qwdqw', CAST(N'2022-04-25' AS Date), NULL, NULL, NULL, 18, 0, 13, 28, NULL, NULL, 5, 1, 5, N'10000006')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (24, 10, 10, 10, 10, N'Paket', N'qwd', CAST(N'2022-04-25' AS Date), NULL, NULL, NULL, 18, 1, 14, 29, NULL, NULL, 5, 1, 5, N'10000007')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (25, 10, 10, 10, 10, N'Paket', N'Konya/Selçuklu', CAST(N'2022-04-25' AS Date), NULL, NULL, NULL, 18, 1, 15, 30, NULL, NULL, 5, 1, 5, N'10000008')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (26, 10, 10, 10, 10, N'Koli', N'Konya/Uzu', CAST(N'2022-04-26' AS Date), NULL, NULL, NULL, 18, 1, 17, 31, NULL, NULL, 5, 1, 1, N'10000010')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (27, 10, 10, 10, 10, N'Koli', N'Konya/Uzu', CAST(N'2022-04-26' AS Date), NULL, NULL, NULL, 18, 1, 17, 31, NULL, NULL, 5, 1, 1, N'10000014')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (28, 10, 10, 10, 10, N'Koli', N'Konya/Uzu', CAST(N'2022-04-26' AS Date), NULL, NULL, NULL, 18, 0, 8, 31, NULL, NULL, 5, 1, 1, N'10000015')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (29, 10, 10, 10, 10, N'Paket', N'Konya/Uzu', CAST(N'2022-04-26' AS Date), NULL, NULL, NULL, 18, 0, 2, 32, NULL, NULL, 5, 1, 2, N'10000016')
SET IDENTITY_INSERT [dbo].[paket] OFF
GO
SET IDENTITY_INSERT [dbo].[personel] ON 

INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (2, N'12345678901', N'Engin', N'Altun', N'05050505500', N'ea@gmail.com', 2, 3, N'12345')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (3, N'12345673631', N'Ali', N'Altın', N'05056505599', N'aa@gmail.com', 2, 2, N'12276')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (5, N'22222222222', N'bbbb', N'bbbb', N'22222222222', N'bbbb@hotmail.com', 1, 1, N'bbbb')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (6, N'33333333333', N'cccc', N'cccc', N'33333333333', N'cccc@hotmail.com', 2, 2, N'cccc')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (7, N'44444444444', N'dddd', N'dddd', N'44444444444', N'dddd@hotmail.com', 3, 3, N'dddd')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (8, N'55555555555', N'eeee', N'eeee', N'55555555555', N'eeee@hotmail.com', 4, 4, N'eeee')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (9, N'66666666666', N'ffff', N'ffff', N'66666666666', N'ffff@hotmail.com', 4, 1, N'ffff')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (10, N'77777777777', N'gggg', N'gggg', N'77777777777', N'gggg@hotmail.com', 4, 1, N'gggg')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (11, N'88888888888', N'hhhh', N'hhhh', N'88888888888', N'hhhh@hotmail.com', 4, 2, N'hhhh')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (12, N'99999999999', N'iiii', N'iiii', N'99999999999', N'iiii@hotmail.com', 4, 3, N'iiii')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (13, N'10101010101', N'jjjj', N'jjjj', N'10101010101', N'jjjj@hotmail.com', 3, 1, N'jjjj')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (14, N'11111111112', N'kkkk', N'kkkk', N'11111111112', N'kkkk@hotmail.com', 2, 2, N'kkkk')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (15, N'11111111111', N'aaaa', N'aaaa', N'11111111111', N'aaaa@hotmail.com', 1, 1, N'aaaa')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (17, N'78945623467', N'Kukurye', N'Kuryelioğlu', N'4562347854', N'kukurye@gmail.com', 4, 1, N'mmmm')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (20, N'80808080880', N'Kuryeci', N'Kuryeoğulu', N'5835244322', N'kuryeci@gmail.com', 4, 3, N'nnnn')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (21, N'93453233456', N'Ahmet', N'Necip', N'5939399322', N'ahmet@gmail.com', 3, 3, N'zzzz')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (22, N'23467834565', N'Adnan', N'Yahyagil', N'5234923922', N'adnan@gmail.com', 3, 1, N'uuuu')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (24, N'93533233454', N'Hüseyin', N'Naci', N'5032234534', N'huseyin@gmail.com', 3, 2, N'oooo')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (27, N'77777666777', N'Veli', N'Uğur', N'5021330402', N'veli@gmail.com', 3, 5, N'pppp')
SET IDENTITY_INSERT [dbo].[personel] OFF
GO
SET IDENTITY_INSERT [dbo].[sube] ON 

INSERT [dbo].[sube] ([id], [adi], [kargo_miktari]) VALUES (1, N'İstanbul', 16)
INSERT [dbo].[sube] ([id], [adi], [kargo_miktari]) VALUES (2, N'Konya', 0)
INSERT [dbo].[sube] ([id], [adi], [kargo_miktari]) VALUES (3, N'Ankara', 1)
INSERT [dbo].[sube] ([id], [adi], [kargo_miktari]) VALUES (4, N'Muğla', 0)
INSERT [dbo].[sube] ([id], [adi], [kargo_miktari]) VALUES (5, N'İzmir', 0)
SET IDENTITY_INSERT [dbo].[sube] OFF
GO
SET IDENTITY_INSERT [dbo].[tuzel_musteri] ON 

INSERT [dbo].[tuzel_musteri] ([id], [sirket_ismi], [tel_no], [e_posta], [adres], [indirim]) VALUES (2, N'trendyol', N'5547365142', N'trendyol@outlook.com', N'cadde 54 İZMİR/kordon', 20)
INSERT [dbo].[tuzel_musteri] ([id], [sirket_ismi], [tel_no], [e_posta], [adres], [indirim]) VALUES (3, N'amazon', N'5471257456', N'amazon@amazon.com', N'alaca avm yanı MUĞLA', 20)
INSERT [dbo].[tuzel_musteri] ([id], [sirket_ismi], [tel_no], [e_posta], [adres], [indirim]) VALUES (4, N'n11', N'4556324020', N'n11@n11.com', N'Huzur Mah. Maslak Ayazağa Cad. 4B
Sarıyer / İSTANBUL', 10)
INSERT [dbo].[tuzel_musteri] ([id], [sirket_ismi], [tel_no], [e_posta], [adres], [indirim]) VALUES (5, N'hepsiburada', N'6043945680', N'hepsiburada@hepsiburada.com', N'Kuştepe Mah. Mecidiyeköy Yolu Cad. Trump Towers Kule 2 Kat:2 No:12 34387 Şişli/İstanbul', 15)
INSERT [dbo].[tuzel_musteri] ([id], [sirket_ismi], [tel_no], [e_posta], [adres], [indirim]) VALUES (7, N'gittigidiyor', N'7345237358', N'gittigidiyor@gittigidiyor.com', N'My Office İş Mrkz. Çiğdem Sk. No: 1/14 34746 Barbaros Mah. Ataşehir/İstanbul', 5)
SET IDENTITY_INSERT [dbo].[tuzel_musteri] OFF
GO
SET IDENTITY_INSERT [dbo].[yetki] ON 

INSERT [dbo].[yetki] ([id], [adi]) VALUES (1, N'Admin')
INSERT [dbo].[yetki] ([id], [adi]) VALUES (2, N'Müdür')
INSERT [dbo].[yetki] ([id], [adi]) VALUES (3, N'Şube Çalışanı')
INSERT [dbo].[yetki] ([id], [adi]) VALUES (4, N'Kurye')
SET IDENTITY_INSERT [dbo].[yetki] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_arac]    Script Date: 26.04.2022 00:30:48 ******/
ALTER TABLE [dbo].[arac] ADD  CONSTRAINT [IX_arac] UNIQUE NONCLUSTERED 
(
	[plaka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_musteri]    Script Date: 26.04.2022 00:30:48 ******/
ALTER TABLE [dbo].[musteri] ADD  CONSTRAINT [IX_musteri] UNIQUE NONCLUSTERED 
(
	[tc_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_personel]    Script Date: 26.04.2022 00:30:48 ******/
ALTER TABLE [dbo].[personel] ADD  CONSTRAINT [IX_personel] UNIQUE NONCLUSTERED 
(
	[tc_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[paket]  WITH CHECK ADD  CONSTRAINT [FK_paket_sube] FOREIGN KEY([gonderilen_sube_id])
REFERENCES [dbo].[sube] ([id])
GO
ALTER TABLE [dbo].[paket] CHECK CONSTRAINT [FK_paket_sube]
GO
ALTER TABLE [dbo].[paket]  WITH CHECK ADD  CONSTRAINT [FK_paket_sube1] FOREIGN KEY([alici_sube_id])
REFERENCES [dbo].[sube] ([id])
GO
ALTER TABLE [dbo].[paket] CHECK CONSTRAINT [FK_paket_sube1]
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
