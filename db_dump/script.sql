/****** Object:  Table [dbo].[Category]    Script Date: 2020-09-02 16:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NOT NULL,
	[TYPE] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2020-09-02 16:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](100) NULL,
	[CATEGORYID] [int] NULL,
	[DESCRIPTION] [varchar](200) NULL,
	[PRICE] [decimal](10, 2) NULL,
	[MAKE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCart]    Script Date: 2020-09-02 16:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRODUCT_ID] [int] NULL,
	[USER_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2020-09-02 16:40:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USER_NAME] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [NAME], [TYPE]) VALUES (1, N't-shirt', N'clothing')
INSERT [dbo].[Category] ([ID], [NAME], [TYPE]) VALUES (2, N'jeans', N'clothing')
INSERT [dbo].[Category] ([ID], [NAME], [TYPE]) VALUES (3, N'yamaha', N'bikes')
INSERT [dbo].[Category] ([ID], [NAME], [TYPE]) VALUES (4, N'honda', N'bikes')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [NAME], [CATEGORYID], [DESCRIPTION], [PRICE], [MAKE]) VALUES (1, N'yellow', 1, N'Summer Collection', CAST(25.24 AS Decimal(10, 2)), 2019)
INSERT [dbo].[Product] ([ID], [NAME], [CATEGORYID], [DESCRIPTION], [PRICE], [MAKE]) VALUES (2, N'red', 1, N'Summer Collection', CAST(21.24 AS Decimal(10, 2)), 2019)
INSERT [dbo].[Product] ([ID], [NAME], [CATEGORYID], [DESCRIPTION], [PRICE], [MAKE]) VALUES (3, N'modern', 2, N'Summer Collection', CAST(21.25 AS Decimal(10, 2)), 2017)
INSERT [dbo].[Product] ([ID], [NAME], [CATEGORYID], [DESCRIPTION], [PRICE], [MAKE]) VALUES (4, N'old', 2, N'Summer Collection', CAST(25.24 AS Decimal(10, 2)), 2019)
INSERT [dbo].[Product] ([ID], [NAME], [CATEGORYID], [DESCRIPTION], [PRICE], [MAKE]) VALUES (5, N'New', 3, N'Summer Collection', CAST(26.24 AS Decimal(10, 2)), 2019)
INSERT [dbo].[Product] ([ID], [NAME], [CATEGORYID], [DESCRIPTION], [PRICE], [MAKE]) VALUES (6, N'latest', 3, N'Summer Collection', CAST(34.24 AS Decimal(10, 2)), 2020)
INSERT [dbo].[Product] ([ID], [NAME], [CATEGORYID], [DESCRIPTION], [PRICE], [MAKE]) VALUES (7, N'robust', 4, N'Summer Collection', CAST(15.24 AS Decimal(10, 2)), 2019)
INSERT [dbo].[Product] ([ID], [NAME], [CATEGORYID], [DESCRIPTION], [PRICE], [MAKE]) VALUES (8, N'future', 4, N'Summer Collection', CAST(67.24 AS Decimal(10, 2)), 2021)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[UserCart] ON 

INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (1, 1, 1)
INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (2, 1, 2)
INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (3, 2, 2)
INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (4, 3, 2)
INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (5, 4, 1)
INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (6, 4, 2)
INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (7, 5, 1)
INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (8, 6, 2)
INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (9, 6, 1)
INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (10, 7, 2)
INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (11, 8, 1)
INSERT [dbo].[UserCart] ([ID], [PRODUCT_ID], [USER_ID]) VALUES (12, 5, 2)
SET IDENTITY_INSERT [dbo].[UserCart] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [USER_NAME], [PASSWORD]) VALUES (1, N'arpit123', N'admin123')
INSERT [dbo].[Users] ([ID], [USER_NAME], [PASSWORD]) VALUES (2, N'arpit12', N'admin123')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CATEGORYID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[UserCart]  WITH CHECK ADD FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[UserCart]  WITH CHECK ADD FOREIGN KEY([USER_ID])
REFERENCES [dbo].[Users] ([ID])
GO
