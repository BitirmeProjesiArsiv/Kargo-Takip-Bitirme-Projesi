USE [master]
GO
/****** Object:  Database [kargo_veritabani]    Script Date: 22.05.2022 10:15:35 ******/
CREATE DATABASE [kargo_veritabani]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kargo_veritabani', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\kargo_veritabani.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kargo_veritabani_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\kargo_veritabani_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[alici]    Script Date: 22.05.2022 10:15:35 ******/
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
/****** Object:  Table [dbo].[arac]    Script Date: 22.05.2022 10:15:35 ******/
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
/****** Object:  Table [dbo].[musteri]    Script Date: 22.05.2022 10:15:35 ******/
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
/****** Object:  Table [dbo].[paket]    Script Date: 22.05.2022 10:15:35 ******/
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
/****** Object:  Table [dbo].[personel]    Script Date: 22.05.2022 10:15:35 ******/
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
/****** Object:  Table [dbo].[sehirler_arasi_mesafe]    Script Date: 22.05.2022 10:15:35 ******/
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
/****** Object:  Table [dbo].[sube]    Script Date: 22.05.2022 10:15:35 ******/
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
/****** Object:  Table [dbo].[tuzel_musteri]    Script Date: 22.05.2022 10:15:35 ******/
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
/****** Object:  Table [dbo].[yetki]    Script Date: 22.05.2022 10:15:35 ******/
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

INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (1, N'Fatma', N'Demir', N'5574681247')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (2, N'Seda', N'Öz', N'5547851236')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (3, N'Kaan', N'Özdil', N'5581234756')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (4, N'Zeynep', N'Aksoy', N'5524135712')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (5, N'Yusuf', N'Özcan', N'5541358476')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (6, N'Mehmet', N'Yüce', N'5531254632')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (7, N'Havva', N'Kara', N'5547821645')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (8, N'Songül', N'Göktaş', N'5521462345')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (9, N'Serkan', N'Duran', N'5547862545')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (10, N'Elif', N'Yılmaz', N'5547824631')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (11, N'Yiğit', N'Akkaş', N'5541357821')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (12, N'Nalan', N'Cankurt', N'5574682163')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (13, N'Emin', N'Şahin', N'5047862145')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (14, N'Esra', N'Kaya', N'5041563275')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (15, N'Ceyda', N'Yaman', N'5574261589')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (16, N'Serdar', N'Namlı', N'5524786530')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (17, N'Esra', N'Serter', N'5574132589')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (18, N'Pervin', N'Ulaş', N'5524568920')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (19, N'Aslı', N'Aydın', N'5562345896')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (29, N'Seçil', N'Demir', N'5587413562')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (30, N'Nergis', N'Yücel', N'5574685210')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (31, N'Asude', N'Tezcan', N'5047851236')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (32, N'Asude', N'Keskin', N'5064875213')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (33, N'Ahmet', N'Akcan', N'5032457841')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (34, N'Kaan', N'Dağlı', N'5589425685')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (35, N'Zerrin', N'Dağlı', N'5036874521')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (36, N'Ercan', N'Mutlu', N'5042658712')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (37, N'Erbey', N'Sonel', N'5068541579')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (38, N'Ahmet', N'Akın', N'5547812354')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (39, N'Caner', N'Ergün', N'5564785210')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (40, N'Sude', N'Erbilen', N'5587841235')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (41, N'Azra', N'Akça', N'5584741236')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (42, N'Ceylan', N'Olcaylı', N'5064871523')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (43, N'Hale', N'Olcaylı', N'5547821465')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (44, N'Ceylin', N'Aksu', N'5547821465')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (45, N'Su', N'Yücel', N'5547851423')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (46, N'Rabia', N'Güçlü', N'5547812546')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (47, N'Şeyma', N'Öznur', N'5524798546')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (48, N'Fazıl ', N'Öngörür', N'5547854152')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (49, N'Cennet', N'Solmaz', N'5098451576')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (50, N'İsmail', N'Temiz', N'5061457895')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (51, N'Caner', N'Yaman', N'5068741523')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (52, N'Neriman', N'Alsancak', N'5041257846')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (53, N'Hakkı ', N'Sazlı', N'5547821456')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (54, N'Şerife', N'Soylu', N'5065478125')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (55, N'Aslı', N'Yaman', N'5064785412')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (56, N'Adem', N'Zafer', N'5012547896')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (57, N'Ahmet', N'Lale', N'5047865412')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (58, N'Fatih', N'Kanlıca', N'5012547896')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (59, N'Pelin', N'Sazlı', N'5068745123')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (60, N'Ilgaz', N'Vural', N'5084751236')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (61, N'Hayal', N'Sevcan', N'5064798512')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (62, N'Hasan', N'Tezcan', N'5024798546')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (63, N'Levent', N'Kutlu', N'5034587469')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (64, N'Haluk', N'Sağlam', N'5036574126')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (65, N'Ali', N'Aydın', N'5047865216')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (66, N'Ayşe', N'Kara', N'5060147852')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (67, N'Fatma', N'Akın', N'5064875136')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (68, N'Fatma', N'Akıllı', N'5547985412')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (69, N'Pelin', N'Aldemir', N'5547892146')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (70, N'Nalan', N'Özdemir', N'5024798512')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (71, N'Sertap', N'Aldemir', N'5048795642')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (72, N'Serdar', N'Alıcı', N'5041236857')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (73, N'Can', N'Kullu', N'5035687412')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (74, N'Ulaş', N'Aydın', N'5541357894')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (75, N'Derviş', N'Salık', N'5547892153')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (76, N'Duran', N'Sönmez', N'5547821036')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (77, N'Ceylan', N'Ulusoy', N'5045681235')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (78, N'Pınar', N'Demir', N'5547892165')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (79, N'Jale', N'Candemir', N'5542574685')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (80, N'Selen', N'Güler', N'5584712365')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (81, N'Fatih', N'Akgül', N'5581465871')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (82, N'Gül', N'Ercan', N'5547821465')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (83, N'İclal', N'Ölmez', N'5547892415')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (84, N'İclal', N'Ölmez', N'5547821563')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (85, N'Hale', N'Uysal', N'5531468752')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (86, N'Engincan', N'Engin', N'5623233232')
INSERT [dbo].[alici] ([id], [ad], [soyad], [tel_no]) VALUES (87, N'BBBB', N'KKKKK', N'05668766786')
SET IDENTITY_INSERT [dbo].[alici] OFF
GO
SET IDENTITY_INSERT [dbo].[arac] ON 

INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (2, N'42 KM 65', 3)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (6, N'48 BH 54', 10)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (7, N'35 PU 87', 12)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (8, N'34 KE 09', 17)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (9, N'06 AN 02', 20)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (108, N'42 KF 14', 24)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (112, N'34 AJ 25', 5)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (115, N'06 AR 78', 7)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (119, N'48 BK 13', 14)
INSERT [dbo].[arac] ([id], [plaka], [personel_id]) VALUES (124, N'35 GH 68', 27)
SET IDENTITY_INSERT [dbo].[arac] OFF
GO
SET IDENTITY_INSERT [dbo].[musteri] ON 

INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (1, N'35741238445', N'Ali', N'Kanık', N'5547851236', N'aliknk@gmail.com', N'Konya/Meram Akıncılar mah. dere Sokak güler Apt. No:45')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (2, N'45781235447', N'Ayşe', N'Soydan', N'5547821465', N'soydanayse41@gmail.com', N'Ankara/Kızılay Bağcılar Mah. Gölbaşı Sokak Esenler Apt. No:13')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (3, N'12478623110', N'Saffet', N'Onurlu', N'5041257893', N'saffetonrlu@gmail.com', N'ANKARA/Çamlıca Uzay Cad. 1253.Sokak No:12')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (4, N'45871203550', N'Canan', N'Yaman', N'5064128745', N'cananyaman456@hotmail.com', N'KONYA/Meram Yenişehir Mah. Azerbaycan Cad. No:5')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (5, N'95468712330', N'Gülistan', N'Kara', N'5541384569', N'glstn45@gmail.com', N'İZMİR/Karşıyaka Cengiz Mah. Topel Caddesi No:36')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (6, N'15478625441', N'Oğuzhan', N'Kurt', N'5514782365', N'oguz12@gmail.com', N'İSTANBUL/Beşiktaş Kazım Mah. Sinanpaşa Cad. No:5')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (7, N'75148932447', N'Aleyna', N'Kızıl', N'5531478625', N'aleykzl@hotmail.com', N'MUĞLA/Ula Müştakbey Mah. Belediye Sokak No:6 ')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (8, N'54713658774', N'Mine', N'Burgaz', N'5541267842', N'minebrgz@gmail.com', N'İZMİR/Konak Kaptan Mah. Hürriyet Cad. No:16')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (9, N'5512384765', N'Sevda', N'Laleli', N'5514783546', N'sevdalaleli456@gmail.com', N'KONYA/Meram Melikşah Mah. Beyşehir Cad. No:9')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (10, N'5067951463', N'İsmail', N'Uzun', N'5074982536', N'ismailuzn10@gmail.com', N'ANKARA/Yenimahalle Çamlıca Mah. Kazım kara Cad. No:136')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (11, N'5541354876', N'Mustafa', N'Temiz', N'5521468752', N'mstfa18@gmail.com', N'İSTANBUL/Kadıköy Acıbadem Mah. Semibey Sokak No:37')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (12, N'5512678412', N'Kaan', N'Yılmaz', N'5531456784', N'kaanylmz@gmail.com', N'ANKARA/Çankaya Sağlık Mah. Mithatpaşa Cad. No:3')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (13, N'5541687456', N'Kader', N'Göçmen', N'5046587132', N'kader78@gmail.com', N'MUĞLA/Menteşe Şeyh Mah. Fethiye Cad. No:45')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (14, N'5061497812', N'Gökçen', N'Tiltil', N'5034587136', N'gökcentltl23@gmail.com', N'MUĞLA/Kavaklıdere Alim Mah. Uzundemir Cad. No:2')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (15, N'24103589663', N'Sevil', N'Kutlu', N'5542578962', N'sevilkutlu78@gmail.com', N'İstanbul/Eyüp Gültepe Mah. Eskiciler Sokak No:45')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (16, N'47125698330', N'Aydın', N'Namlı', N'5521468952', N'namlıaydın45@gmail.com', N'İstanbul/Bağcılar Saray Mah. Altın Sokak No:8')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (17, N'14568723110', N'Eser', N'Ergün', N'5542578963', N'eserergün34@gmail.com', N'İstanbul/Beşiktaş Aydınlar Mah. Bağlar Sokak No:5')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (18, N'54789625123', N'Kerim', N'Ulaş', N'5548691256', N'kerimulas10@gmail.com', N'İstanbul/Çamlıca Kurtlar Mah. Alaca Sokak No:72')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (20, N'25741385966', N'Hayri', N'Kara', N'5547892354', N'karahayri15@gmail.com', N'İstanbul/Taksim Yeni Mah. Huzur Sokak No:45')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (21, N'58742563220', N'Akın', N'Yücel', N'5521468523', N'yücelakın@gmail.com', N'İstanbul/Kadıköy Mutlu Mah. Karalar Sokak No:49 ')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (22, N'58741256993', N'Ilgaz', N'Demir', N'5521468530', N'ılgazdemirr4@gmail.com', N'İstanbul/Eyüp Çeşmeciler Mah. Güler Sokak No:5')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (23, N'25478523122', N'Pınar', N'Keskin', N'5072684578', N'pınar45@gmail.com', N'İstanbul/Kadıköy Etki Mah. Bayır Sokak No:9')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (24, N'58741268553', N'Hasan', N'Peksöz', N'5578654123', N'hasan34@gmail.com', N'İstanbul/Taksim Yanlı Mah. Bilen Sokak No:7')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (25, N'25478123550', N'Pelin', N'Dağlı', N'5578123587', N'dağlı78@gmail.com', N'İstanbul/Esenler Ceylin Mah. Canlar Sokak No:5')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (26, N'28456874550', N'Zafer', N'Kale', N'5064875236', N'kalezafer4@gmail.com', N'İstanbul/Çamlıca Kavaklıdere Mah. Samibey Sokak No:8')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (27, N'84512368770', N'Deniz', N'Sakin', N'5031587416', N'sakindeniz12@gmail.com', N'İstanbul/Kadıköy Boğa Mah. Uzun Sokak No:13')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (28, N'52147985223', N'Fahri', N'Akın', N'5521468746', N'akınfahri7@gmail.com', N'İstanbul/Kadıköy Boğa Mah. Uzun Sokak No:4')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (29, N'58712368522', N'Tekin', N'Temiz', N'5584712356', N'temiztekinnn@gmail.com', N'İstanbul/Taksim Kırmızı Mah. Galata Sokak No:8')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (30, N'14587256330', N'Zeynep', N'Demir', N'5521458652', N'zeynepdemirr4@gmail.com', N'İstanbul/Eyüp turkuaz Mah. Yeni Sokak No:47')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (31, N'58741236558', N'Mehmet', N'Öz', N'5547821465', N'mehmetöz12@gmail.com', N'İstanbul/Taksim Taşlı Mah. Kısa Sokak No:5')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (32, N'54783254116', N'Halil', N'Olcaylı', N'5512478523', N'olcaylıhalill2@gmail.com', N'İstanbul/Çamlıca Tepe Mah. Üst Sokak No:45')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (33, N'25871354886', N'Necati', N'Soydan', N'5541258796', N'necatiii23@gmail.com', N'İstanbul/Eyüp Camiler Mah. Sedir Sokak No:8')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (34, N'25478695110', N'Kadir', N'Güçlü', N'5521478564', N'güçlüü87@gmail.com', N'İstanbul/Taksim Uzunyol Mah. Sakin Sokak No:54')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (35, N'57841236885', N'Lale', N'Kule', N'5521487564', N'kulelale23@gmail.com', N'Konya/Meram Taşlı Mah. Gültepe Sokak No:8')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (36, N'25478624113', N'Gaye', N'Demir', N'5574865214', N'demirgayee@gmail.com', N'Konya/Seşçuklu Beyhekim Mah. Tepe Sokak No:45')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (37, N'25478965221', N'Rezzan', N'Solmaz', N'5078452587', N'solmazz@gmail.com', N'Konya/Selçuklu Teknik Mah. Hamdi Sokak No:54')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (38, N'25784513668', N'Sercan', N'Temiz', N'5045871563', N'sercann15@gmail.com', N'Konya/Meram Yeniler Mah. Nişan Sokak No:78')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (39, N'25487695110', N'Aslı', N'Ak', N'5068745621', N'akk78@gmail.com', N'Konya/Meram Eski Sanayi Mah. Sanayi Sokak No:58')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (40, N'25479854330', N'Mert', N'Alsancak', N'5064587412', N'alsancakk78@gmail.com', N'Konya/Karatay Kekli Mah. İstek Sokak No:45')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (41, N'25478962445', N'Hakkı', N'Güzel', N'5541265874', N'güzell@gmail.com', N'Konya/Karatay Eskiler Mah. Sedir Sokak No:78')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (42, N'45871236884', N'Berna', N'Yaman', N'5061488769', N'bernaaa12@gmail.com', N'Konya/Meram Teknik Mah. Daglı Sokak No:58')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (43, N'45879651220', N'Levent', N'Zafer', N'5031578465', N'leventt34@gmail.com', N'Konya/Selçuklu Şeyh Mah. Gazel Sokak No:45')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (44, N'24587123665', N'Saffet', N'Özyürek', N'5034578965', N'ozyurek56@gmail.com', N'Konya/Selçuklu 500 evler Mah. Tepeler Sokak No:45')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (45, N'54789324556', N'Sedef', N'Kanlıca', N'5047841498', N'kanlıcaa6@gmail.com', N'Konya/Karatay Sendeler Mah. Mutlu Sokak No:78')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (46, N'52147896552', N'Oktay', N'Sazlı', N'5064125879', N'oktay28@gmail.com', N'Konya/Meram Bağlar Mah. Hocacihan Sokak No:46')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (47, N'12587469882', N'Sevda', N'Ertekin', N'5061257843', N'ertekinn@gmail.com', N'Konya/Selçuklu Sancak Mah. Gültepe Sokak No.23')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (48, N'25478962554', N'Ceylan', N'Okur', N'5024587469', N'celill@gmail.com', N'Konya/Selçuklu Yazır Mah. Sendeler Sokak No:7')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (49, N'25479681220', N'Tahir', N'Tezcan', N'5026587462', N'tezcan12@gmail.com', N'İzmir/Bergama Talih Mah. Selçuk Sokak No:4')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (50, N'25647895221', N'Akın', N'Ruhsuz', N'5014587465', N'ruhsuzz1@gmail.com', N'İzmir/Kordon Yol Mah. Uzun Sokak No:87')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (51, N'25487652119', N'Furkan', N'Sağlam', N'5024587413', N'saglamfurkan22@gmail.com', N'İzmir/Bostanlı Araplar Mah. Sade Sokak No:46')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (52, N'54798541335', N'Ayça', N'Vural', N'5098475621', N'vurall11@gmail.com', N'İzmir/Kordon Alsancak Mah. Akın Sokak No:7')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (53, N'25478962441', N'Samet', N'Kara', N'5034587412', N'kara23@gmail.com', N'İzmir/Kordon Karaer Mah. Suzan Sokak No:8')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (54, N'25419874553', N'Jale', N'Türkoğlu', N'5521468752', N'türkoğlu10@gmail.com', N'İzmir/Bergama Uzunlar Mah. Şafak Sokak No:8')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (55, N'25478963221', N'Hilal', N'Göger', N'5514785362', N'göger34@gmail.com', N'İzmir/Bostanlı Bostancılar Mah. Bedesten Sokak No:4')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (56, N'25478951223', N'Gamze', N'Baran', N'5547985123', N'barann12@gmail.com', N'İzmir/Konak Yeniciler Mah. Salah Sokak No:4')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (57, N'25416879552', N'Gülnur', N'Terziler', N'5547892156', N'gülnur23@gmail.com', N'İzmir/Kordon Doksanlar Mah. Deniz Sokak No:5')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (58, N'54789621330', N'Canan', N'Oflaz', N'5574125687', N'oflazcanann@gmail.com', N'İzmir/Konak Deha Mah. Aslı Sokak No:4')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (59, N'54862541330', N'Saffet', N'Salık', N'5547892145', N'salıksaffett5@gmail.com', N'İzmir/Kordon CanlıMah. Dehalar Sokak No:5')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (60, N'54871236885', N'Esra', N'Sönmez', N'5541236587', N'esrasönmezz@gmail.com', N'İzmir/Konak Konakçılar Mah. Sade Sokak No:4')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (61, N'54168745220', N'Furkan', N'Candemir', N'5047985123', N'candemir33@gmail.com', N'İzmir/Konak')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (62, N'25784952113', N'Ülfer', N'Güler', N'5045216874', N'güler441@gmail.com', N'İzmir/Bornova Keçeler Mah. Denli Sokak No:49')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (63, N'25487965220', N'Nazlı ', N'Ay', N'5064152368', N'aynazlı33@gmail.com', N'İzmir/Bornova')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (64, N'52149857662', N'Sefa', N'Doğanay', N'5542657892', N'dgnysfa22@gmail.com', N'İzmir/Alsancak Keskin Mah. Ala Sokak No:99')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (65, N'54789625110', N'Alican', N'Uysal', N'5521468752', N'alican12@gmail.com', N'Ankara/Çankaya Çetin Mah. Emek Sokak No:45')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (66, N'54383485348', N'Gökay', N'Buğra', N'5932993456', N'gökay@gmail.com', N'bla bla')
INSERT [dbo].[musteri] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [adres]) VALUES (67, N'12345678991', N'LLLLLL', N'CCCCCC', N'05556786556', N'LC@HOTMAIL.COM', N'KONYA')
SET IDENTITY_INSERT [dbo].[musteri] OFF
GO
SET IDENTITY_INSERT [dbo].[paket] ON 

INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (1, 33, 32, 33, 3, N'Koli', N'Konya/Bergama Tüzer Mah. Önem Sokak No:4', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 19, 1, 16, 15, NULL, 8, 3, 1, 2, N'10000002')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (2, 5, 10, 5, 12, N'Koli', N'İzmir/Alcancak Keçeciler Mah. Buzludere Sokak No:89', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 20, 0, 17, 16, NULL, 112, 3, 1, 5, N'10000003')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (3, 2, 2, 1, 2, N'Koli', N'İzmir/Bergama Akıncı Mah. Sancak Sokak No:8', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 22, 0, 18, 17, NULL, 8, 3, 1, 5, N'10000004')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (4, 5, 8, 6, 10, N'Koli', N'İzmir/Kordon Sevgi Mah. Lale Sokak No:49', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 0, 19, 18, NULL, NULL, 3, 1, 5, N'10000005')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (6, 1, 1, 1, 1, N'Koli', N'Ankara/Mamak Verel Mah. Yeniciler Sokak No:8', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 11, 1, 30, 20, NULL, NULL, 3, 1, 3, N'10000007')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (7, 1, 1, 1, 1, N'Paket', N'Ankara/Beypazarı Ertaş Mah. Sade Sokak No:56', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 16, 1, 31, 21, NULL, NULL, 3, 1, 3, N'10000008')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (8, 8, 8, 8, 15, N'Paket', N'Ankara/Yenimahalle Zeynel Mah. Güzel Sokak No:78', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 16, 1, 32, 22, NULL, NULL, 3, 1, 3, N'1000009 ')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (9, 2, 2, 2, 4, N'Koli', N'Konya/Selçuklu Yazır Mah. Elmalılı Sokak No:8', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 27, 1, 33, 23, NULL, NULL, 3, 1, 3, N'10000010')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (10, 1, 1, 1, 2, N'Koli', N'Konya/Meram Nişantaşı Mah. Erbakan Sokak No:48', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 22, 1, 34, 24, NULL, NULL, 3, 1, 2, N'10000011')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (11, 8, 8, 8, 14, N'Paket', N'Konya/Karatay Sümbül Mah. Eski Sokak No:5', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 1, 35, 25, NULL, NULL, 3, 1, 2, N'10000012')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (12, 2, 3, 7, 8, N'Koli', N'Konya/Selçuklu Bosna Mah. Uygun Sokak No:9', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 25, 0, 36, 26, NULL, NULL, 3, 1, 2, N'10000013')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (14, 1, 1, 1, 2, N'Koli', N'Muğla/Kafaca Sedir Mah. Olcay Sokak No:81', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 13, 1, 39, 28, NULL, NULL, 3, 1, 4, N'10000015')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (15, 8, 4, 2, 5, N'Paket', N'Muğla/Menteşe Kapıcılar Mah. Azra Sokak No:89', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 0, 40, 29, NULL, NULL, 3, 1, 4, N'10000016')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (16, 5, 5, 3, 8, N'Koli', N'Muğla/Mamak Göl Mah. Sazlı Sokak No:85', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 24, 1, 41, 30, NULL, NULL, 3, 1, 4, N'10000017')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (18, 5, 5, 9, 20, N'Koli', N'Ankara/Çankaya Kayalar Mah. Sezer Sokak No:8', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 16, 1, 44, 32, NULL, NULL, 3, 1, 4, N'10000019')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (20, 2, 5, 4, 7, N'Koli', N'Muğla/Mamak Hayal Mah. Güzel Sokak No:45', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 13, 0, 46, 34, NULL, NULL, 3, 1, 4, N'10000020')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (21, 1, 1, 1, 2, N'Koli', N'İzmir/Karşıyaka Takım Mah. Taraftar Sokak No:58', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 27, 1, 48, 35, NULL, NULL, 17, 2, 5, N'20000002')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (22, 1, 1, 1, 2, N'Paket', N'İzmir/Kordon Sena Mah. Laleli Sokak No:78', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 0, 49, 36, NULL, NULL, 17, 2, 5, N'20000003')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (23, 4, 8, 1, 8, N'Paket', N'İzmir/Bergama Bergama Mah. Gamsızlar Sokak No:46', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 0, 50, 37, NULL, NULL, 17, 2, 5, N'20000004')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (24, 2, 1, 5, 10, N'Koli', N'İstanbul/Çamlıca Takla Mah. Tepe Sokak No:87', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 14, 1, 51, 38, NULL, NULL, 17, 2, 5, N'20000005')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (25, 2, 2, 9, 19, N'Koli', N'İstanbul/Esenler Elmalı Mah. Zafer Sokak No:75', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 1, 52, 39, NULL, NULL, 17, 2, 1, N'20000006')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (27, 1, 1, 1, 2, N'Paket', N'İstanbul/Esenler Esici Mah. Fazıl Sokak No:58', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 1, 55, 41, NULL, NULL, 17, 2, 1, N'20000008')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (28, 5, 8, 5, 15, N'Paket', N'Muğla/Bayır Bayır Mah. Dere Sokak No:456', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 1, 56, 42, NULL, NULL, 17, 2, 1, N'2000009 ')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (29, 5, 8, 7, 10, N'Koli', N'Muğla/Bayır Kafaca Derin Mah. Semih Sokak No:87', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 27, 0, 57, 43, NULL, NULL, 17, 2, 4, N'20000010')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (30, 1, 1, 1, 2, N'Koli', N'Muğla/Menteşe Ticari Mah. Fabrikalar Sokak No:54', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 0, 58, 44, NULL, NULL, 17, 2, 4, N'20000011')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (31, 1, 1, 1, 2, N'Paket', N'Ankara/Gölbaşı Merttaş Mah. Farklı Sokak No:89', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 0, 59, 45, NULL, NULL, 17, 2, 4, N'20000012')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (32, 1, 1, 1, 8, N'Paket', N'Ankara/Kızılay Yardım Mah. Asıl Sokak No:82', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 1, 60, 46, NULL, NULL, 17, 2, 3, N'20000013')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (33, 12, 8, 3, 18, N'Koli', N'Ankara/Kızılay Demir Mah. Dolan Sokak No:4', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 14, 0, 61, 47, NULL, NULL, 17, 2, 3, N'20000014')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (34, 12, 8, 3, 18, N'Koli', N'Ankara/Kızılay Demir Mah. Dolan Sokak No:4', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 32, 0, 61, 48, NULL, NULL, 17, 2, 3, N'20000014')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (35, 5, 3, 1, 5, N'Koli', N'Konya/Karatay Karalar Mah. Zarif Sokak No:7', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 14, 1, 63, 49, NULL, NULL, 10, 5, 2, N'50000002')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (36, 1, 1, 1, 2, N'Koli', N'Konya/Selçuklu Eyüp Sultan Mah. Oteller Sokak No:8', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 24, 0, 64, 50, NULL, NULL, 10, 5, 2, N'50000003')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (37, 1, 1, 1, 2, N'Paket', N'Konya/Meram İştirah Mah. Ufuk Sokak No:49', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 1, 65, 51, NULL, NULL, 10, 5, 2, N'50000004')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (38, 8, 2, 3, 10, N'Koli', N'Ankara/Çankaya Kayalar Mah. Çetinler Sokak No:7', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 22, 0, 66, 52, NULL, NULL, 10, 5, 2, N'50000005')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (40, 5, 4, 2, 9, N'Koli', N'Ankara/Gölbaşı Halden Mah. Sende Sokak No:44', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 22, 0, 69, 54, NULL, NULL, 10, 5, 3, N'50000007')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (42, 1, 2, 1, 4, N'Koli', N'Ankara/Çankaya Çetin Mah. Afak Sokak No:4', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 14, 1, 72, 56, NULL, NULL, 10, 5, 3, N'5000009 ')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (44, 2, 2, 74, 6, N'Koli', N'Muğla/Bayır Karalar Mah. Ak Sokak No:46', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 22, 1, 75, 58, NULL, NULL, 10, 5, 3, N'50000011')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (45, 4, 9, 5, 20, N'Koli', N'Muğla/Ula İyilik Mah. Afert Sokak NO:46', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 11, 0, 76, 59, NULL, NULL, 10, 5, 4, N'50000012')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (47, 1, 1, 1, 2, N'Koli', N'Muğla/Ula Gezgin Mah. Yaman Sokak No:46', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 11, 0, 79, 55, NULL, NULL, 10, 5, 4, N'50000014')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (48, 2, 8, 6, 12, N'Paket', N'İstanbul/Çamlıca Çalı Mah. Esenler Sokak No:9', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 0, 80, 61, NULL, NULL, 10, 5, 4, N'50000015')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (49, 5, 2, 3, 8, N'Koli', N'İstanbul/Kadıköy Yurttaş Mah. Aden Sokak No:8', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 22, 1, 81, 62, NULL, NULL, 10, 5, 1, N'50000016')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (50, 2, 4, 1, 5, N'Koli', N'İstanbul/Eyüp Cami Mah. Sonlu Sokak No:5', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 14, 0, 82, 63, NULL, NULL, 10, 5, 1, N'50000017')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (52, 4, 4, 5, 10, N'Koli', N'İstanbul/Eyüp Alibey Mah. Yaşam Sokak No:56', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 18, 1, 84, 37, NULL, NULL, 10, 5, 1, N'50000018')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (53, 4, 5, 4, 7, N'Koli', N'İzmir/Bornova Alihsan Mah. Gül Sokak No:14', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 13, 1, 85, 65, NULL, NULL, 33, 3, 5, N'30000001')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (54, 40, 50, 40, 1, N'Koli', N'Konya/Selçuklu', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 48, 1, 86, 66, NULL, NULL, 12, 5, 2, N'50000020')
INSERT [dbo].[paket] ([id], [yukseklik], [en], [derinlik], [agirlik], [icerik], [adres], [subeye_verme_tarihi], [yola_cikma_tarihi], [varma_tarihi], [alicinin_alma_tarihi], [ucret], [odeyen_kisi], [alici_id], [gonderici_id], [tuzel_gonderici_id], [arac_id], [islem_yapan_personel_id], [gonderilen_sube_id], [alici_sube_id], [paket_no]) VALUES (55, 40, 40, 40, 50, N'Koli', N'Konya/SELÇUKLU', CAST(N'2022-04-28' AS Date), NULL, NULL, NULL, 80, 0, 87, 67, NULL, NULL, 3, 1, 2, N'10000022')
SET IDENTITY_INSERT [dbo].[paket] OFF
GO
SET IDENTITY_INSERT [dbo].[personel] ON 

INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (1, N'25467582110', N'Emine', N'Akın', N'5541957841', N'eminakn45@gmail.com', 4, 1, N'254687')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (2, N'22464582140', N'Ayça', N'Karaer', N'5584712365', N'ayca456@gmail.com', 4, 5, N'541236')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (3, N'12345678901', N'Emre', N'Taş', N'5032003040', N'emre@gmail.com', 1, 1, N'12345')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (4, N'14568712553', N'Serdar', N'Ünal', N'5541568745', N'serdarü78@gmail.com', 3, 1, N'565656')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (5, N'54875123551', N'Aybüke', N'Sağlam', N'5564781230', N'aybuke45@gmail.com', 3, 1, N'78945')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (6, N'58741236880', N'Cemre', N'Akın', N'5512357841', N'cemreakın@gmail.com', 3, 1, N'963232')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (7, N'14578962330', N'Fatih', N'Soylu', N'5521486352', N'fatihsylu12@gmail.com', 2, 1, N'124578')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (8, N'14587965220', N'Onur', N'Türk', N'5564781230', N'onurtrk13@gmail.com', 4, 1, N'145623')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (9, N'25647893221', N'Hasan', N'Ulusoy', N'5524786523', N'hasanulusoy78@gmail.com', 4, 1, N'147856')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (10, N'25147985112', N'Baran', N'Gülen', N'5574165874', N'barangülen11@gmail.com', 1, 5, N'147985')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (11, N'25478962511', N'Ahmet', N'Şengün', N'5584712365', N'sengunahmt@gmail.com', 2, 5, N'54785')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (12, N'45872563220', N'Ceyda', N'Kutlu', N'5041587456', N'kutluc@gmail.com', 3, 5, N'12547')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (13, N'45789623220', N'Halil', N'Aydoğan', N'5521478965', N'aydogann@gmail.com', 3, 5, N'7885641')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (14, N'45789625114', N'Cansu', N'Demirer', N'5247896521', N'demirercansu34@gmail.com', 3, 5, N'785412')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (15, N'14589652110', N'Kadir', N'Kara', N'5587412369', N'karakadir@gmail.com', 4, 5, N'45896')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (16, N'78541236998', N'Sefa', N'Ay', N'5067854123', N'sefaay4@gmail.com', 4, 5, N'45896')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (17, N'25478965117', N'Celil', N'Yardımcı', N'5524587986', N'celil23@gmail.com', 1, 2, N'122100')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (18, N'14587965223', N'Samet', N'Akdoğan', N'5534587965', N'sametakdoğan789@gmail.com', 2, 2, N'145698')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (20, N'14856325799', N'Sedef', N'Aydın', N'5527864238', N'sedef12@gmail.com', 3, 2, N'123856')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (21, N'14563895770', N'Zeynep', N'Özlü', N'5541258763', N'zeyno42@gmail.com', 3, 2, N'75423')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (22, N'47852314550', N'Furkan', N'Arar', N'5584123698', N'furkanarar34@gmail.com', 3, 2, N'45879')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (23, N'58754963220', N'Kaya', N'Şahin', N'5541259876', N'kayakaya@gmail.com', 4, 2, N'785633')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (24, N'10254789660', N'Deniz', N'Çalışkan', N'5064785210', N'denizclskn14@gmail.com', 4, 2, N'475211')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (26, N'20506874118', N'Kadir', N'Okur', N'5524785246', N'kadirokur30@gmail.com', 1, 4, N'145663')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (27, N'47586231440', N'Cengiz', N'Solmaz', N'5532478695', N'cengizsolmaz12@gmail.com', 2, 4, N'145687')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (28, N'15789625441', N'Halime', N'Kandemir', N'5547865213', N'halimekndmr@gmail.com', 3, 4, N'458672')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (29, N'52478963220', N'Gökay', N'Vural', N'5547856312', N'gökay15@gmail.com', 3, 4, N'25467')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (30, N'25478962550', N'Emir', N'Yücel', N'5574856230', N'emiryücelll@gmail.com', 3, 4, N'45821')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (31, N'14523698776', N'İsmail', N'Sönmez', N'5061254789', N'ismail18@gmail.com', 4, 4, N'78544')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (32, N'47896523770', N'Burhan', N'Ertekin', N'5081274489', N'burhanertkn@gmail.com', 4, 4, N'78524')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (33, N'45781259660', N'Erdem', N'Öcal', N'5069874526', N'erdemöcal15@gmail.com', 1, 3, N'45678')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (34, N'52698745110', N'Yiğit', N'Turgut', N'5548792546', N'yiğitturgut78@gmail.com', 2, 3, N'458796')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (35, N'58746982115', N'Hayal', N'Uyanık', N'5587413658', N'uyanıkhayal11@gmail.com', 3, 3, N'758441')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (36, N'74126985220', N'Beren', N'İnanç', N'5061574689', N'berenn89@gmail.com', 3, 3, N'45287')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (37, N'45871265889', N'Eymen', N'Çakır', N'5047851634', N'eymençkr70@gmail.com', 3, 3, N'784526')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (38, N'45871236990', N'Yağız', N'Uras', N'5062587416', N'urasyagız@gmail.com', 4, 3, N'588743')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (39, N'75412369882', N'Koray', N'Aslan', N'5094578612', N'aslankoray40@gmail.com', 4, 3, N'458620')
INSERT [dbo].[personel] ([id], [tc_no], [ad], [soyad], [tel_no], [e_posta], [yetki_id], [sube_id], [sifre]) VALUES (40, N'31111111111', N'Buğra', N'Karakurt', N'05468578131', N'bugrakarakurt@icloud.com', 3, 1, N'123456')
SET IDENTITY_INSERT [dbo].[personel] OFF
GO
SET IDENTITY_INSERT [dbo].[sube] ON 

INSERT [dbo].[sube] ([id], [adi], [kargo_miktari]) VALUES (1, N'İstanbul', 21)
INSERT [dbo].[sube] ([id], [adi], [kargo_miktari]) VALUES (2, N'Konya', 14)
INSERT [dbo].[sube] ([id], [adi], [kargo_miktari]) VALUES (3, N'Ankara', 1)
INSERT [dbo].[sube] ([id], [adi], [kargo_miktari]) VALUES (4, N'Muğla', 0)
INSERT [dbo].[sube] ([id], [adi], [kargo_miktari]) VALUES (5, N'İzmir', 19)
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
/****** Object:  Index [IX_arac]    Script Date: 22.05.2022 10:15:35 ******/
ALTER TABLE [dbo].[arac] ADD  CONSTRAINT [IX_arac] UNIQUE NONCLUSTERED 
(
	[plaka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_musteri]    Script Date: 22.05.2022 10:15:35 ******/
ALTER TABLE [dbo].[musteri] ADD  CONSTRAINT [IX_musteri] UNIQUE NONCLUSTERED 
(
	[tc_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_personel]    Script Date: 22.05.2022 10:15:35 ******/
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
