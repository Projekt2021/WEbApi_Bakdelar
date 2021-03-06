USE [master]
GO
/****** Object:  Database [BakdelarDB]    Script Date: 2021-02-10 14:53:43 ******/
CREATE DATABASE [BakdelarDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BakdelarDB', FILENAME = N'C:\Users\Robin\BakdelarDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BakdelarDB_log', FILENAME = N'C:\Users\Robin\BakdelarDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BakdelarDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BakdelarDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BakdelarDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BakdelarDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BakdelarDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BakdelarDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BakdelarDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BakdelarDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BakdelarDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BakdelarDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BakdelarDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BakdelarDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BakdelarDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BakdelarDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BakdelarDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BakdelarDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BakdelarDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BakdelarDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BakdelarDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BakdelarDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BakdelarDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BakdelarDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BakdelarDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BakdelarDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BakdelarDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BakdelarDB] SET  MULTI_USER 
GO
ALTER DATABASE [BakdelarDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BakdelarDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BakdelarDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BakdelarDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BakdelarDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BakdelarDB] SET QUERY_STORE = OFF
GO
USE [BakdelarDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [BakdelarDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2021-02-10 14:53:43 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 2021-02-10 14:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryText] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2021-02-10 14:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[SalePrice] [float] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProductImageID] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 2021-02-10 14:53:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[ProductImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[ProductImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210209202006_Initial', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210209202149_AddedCategoryOnProduct', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210209221023_NullableProductIDImageTable', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210209221843_NullableProductIDImageTable0', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210210081700_NullableProductIDImageTable1', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210210092041_nullableforeignkey', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210210092645_nullableforeignkey1', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210210093811_nullableforeignkey2', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210210094356_noforeignkeyproductimage', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210210095906_nullableforeignkeyproductimage', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210210102817_productFix_removed_category', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210210105629_onemoretrynullable', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210210105937_onemoretrynullable1', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210210111327_singleproductimage', N'5.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210210113831_singleproductimage1', N'5.0.2')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryText]) VALUES (1, N'Formar')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryText]) VALUES (2, N'Köksredskap')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryText]) VALUES (3, N'Knivar')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (4, N'Bestick', N'Fina bestick', 59, 0, 4)
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (5, N'Bestickhållare', N'Bestickhållare i trä', 49, 0, 5)
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (6, N'Ägghållare', N'Ägghållare i keramik', 39, 0, 6)
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (7, N'Skopor', N'Skopor i järn', 59, 0, 7)
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (8, N'Sil', N'En sil i metall', 49, 0, 8)
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (9, N'Skärbräda', N'Skärbräda i trä', 99, 0, 10)
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (10, N'Liten kniv', N'En liten kniv i stål', 59, 0, 11)
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (11, N'Knivset', N'Ett knivset i stål', 159, 0, 12)
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (12, N'Knivset fancy', N'Ett stilrent knivset', 199, 0, 13)
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (13, N'Koppar', N'Coola koppar', 99, 0, 14)
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (14, N'Gjutjärnspanna', N'Gammalmodig gjutjärnspanna', 99, 0, 15)
GO
INSERT [dbo].[Product] ([ID], [ProductName], [ProductDescription], [SalePrice], [CategoryID], [ProductImageID]) VALUES (15, N'Mortel', N'En mortel i trä', 39, 0, 16)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (4, N'\images\products\bestick.jpg', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (5, N'\images\products\besticklåda.jpg', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (6, N'\images\products\ägghållare.jpg', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (7, N'\images\products\skopor.jpg', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (8, N'\images\products\Sil.webp', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (9, N'\images\products\Sil.webp', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (10, N'\images\products\kniv och skärbräda.jpg', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (11, N'\images\products\Kniv3.jpg', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (12, N'\images\products\knivar2.jpg', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (13, N'\images\products\knivar.jpg', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (14, N'\images\products\Koppar.jpg', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (15, N'\images\products\skillet.png', NULL)
GO
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageUrl], [ProductID]) VALUES (16, N'\images\products\mortel.jpg', NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO
/****** Object:  Index [IX_Product_ProductImageID]    Script Date: 2021-02-10 14:53:43 ******/
CREATE NONCLUSTERED INDEX [IX_Product_ProductImageID] ON [dbo].[Product]
(
	[ProductImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImage_ProductID]    Script Date: 2021-02-10 14:53:43 ******/
CREATE NONCLUSTERED INDEX [IX_ProductImage_ProductID] ON [dbo].[ProductImage]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [CategoryID]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [ProductImageID]
GO
ALTER TABLE [dbo].[ProductImage] ADD  DEFAULT (N'') FOR [ImageUrl]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductImage_ProductImageID] FOREIGN KEY([ProductImageID])
REFERENCES [dbo].[ProductImage] ([ProductImageID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductImage_ProductImageID]
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_ProductImage_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK_ProductImage_Product_ProductID]
GO
USE [master]
GO
ALTER DATABASE [BakdelarDB] SET  READ_WRITE 
GO
