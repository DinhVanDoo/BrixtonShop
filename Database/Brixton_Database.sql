USE [PRJ301_SE1705]
GO
/****** Object:  Table [dbo].[Account_HE161048]    Script Date: 7/1/2023 7:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_HE161048](
	[AccId] [varchar](50) NOT NULL,
	[AccPass] [varchar](50) NOT NULL,
	[Role] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserAddress] [nvarchar](150) NOT NULL,
	[UserPhone] [varchar](20) NOT NULL,
	[QuesId] [int] NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories_HE161048]    Script Date: 7/1/2023 7:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories_HE161048](
	[CaId] [int] IDENTITY(1,1) NOT NULL,
	[CaName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collections_HE161048]    Script Date: 7/1/2023 7:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collections_HE161048](
	[CoId] [int] IDENTITY(1,1) NOT NULL,
	[CoName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_HE161048]    Script Date: 7/1/2023 7:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_HE161048](
	[OrId] [int] IDENTITY(1,1) NOT NULL,
	[OrDate] [date] NOT NULL,
	[AccId] [varchar](50) NOT NULL,
	[TotalMoney] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail_HE161048]    Script Date: 7/1/2023 7:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail_HE161048](
	[OrId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_HE161048]    Script Date: 7/1/2023 7:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_HE161048](
	[ProId] [int] IDENTITY(1,1) NOT NULL,
	[ProName] [nvarchar](100) NOT NULL,
	[ProImg] [nvarchar](max) NOT NULL,
	[ProPrice] [float] NOT NULL,
	[ProDetail] [nvarchar](1000) NOT NULL,
	[CaId] [int] NOT NULL,
	[CoId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityQuestion_HE161048]    Script Date: 7/1/2023 7:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityQuestion_HE161048](
	[QuesId] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account_HE161048] ([AccId], [AccPass], [Role], [UserName], [UserAddress], [UserPhone], [QuesId], [Answer]) VALUES (N'?', N'okkk', 1, N'ngân ok nha okok', N'jfoihgfiuhưẻghfnlkdfngl', N'04874932489', 1, N'hanoi')
INSERT [dbo].[Account_HE161048] ([AccId], [AccPass], [Role], [UserName], [UserAddress], [UserPhone], [QuesId], [Answer]) VALUES (N'dodv', N'1234', 1, N'Đinh Độ', N'Hoài Đức Hà Nội ok ok', N'0326577992', 1, N'hanoi')
INSERT [dbo].[Account_HE161048] ([AccId], [AccPass], [Role], [UserName], [UserAddress], [UserPhone], [QuesId], [Answer]) VALUES (N'dodvhe161048', N'123456', 0, N'Đinh Văn Độ', N'Hà Nội Hoài Đức OK Ok', N'0326577992', 1, N'hanoi dep lam')
INSERT [dbo].[Account_HE161048] ([AccId], [AccPass], [Role], [UserName], [UserAddress], [UserPhone], [QuesId], [Answer]) VALUES (N'dung', N'123', 1, N'Thooooo', N'Dũng Hòa Lạc Ok ', N'0987654321', 3, N'SơN')
INSERT [dbo].[Account_HE161048] ([AccId], [AccPass], [Role], [UserName], [UserAddress], [UserPhone], [QuesId], [Answer]) VALUES (N'duong', N'123', 1, N'Dương', N'Hải Dương Hnoi ok change', N'09876543321', 3, N'son')
INSERT [dbo].[Account_HE161048] ([AccId], [AccPass], [Role], [UserName], [UserAddress], [UserPhone], [QuesId], [Answer]) VALUES (N'maytroi', N'123', 1, N'tận trên mây', N'hanoi hoai duc ngo ok ', N'0987654321', 1, N'hanoi đó')
INSERT [dbo].[Account_HE161048] ([AccId], [AccPass], [Role], [UserName], [UserAddress], [UserPhone], [QuesId], [Answer]) VALUES (N'sonnguyen', N'123', 1, N'Xuân Sơn', N'Hạ Long Tremay', N'0987654321', 1, N'halong')
GO
SET IDENTITY_INSERT [dbo].[Categories_HE161048] ON 

INSERT [dbo].[Categories_HE161048] ([CaId], [CaName]) VALUES (1, N'Accessories')
INSERT [dbo].[Categories_HE161048] ([CaId], [CaName]) VALUES (2, N'Bags')
INSERT [dbo].[Categories_HE161048] ([CaId], [CaName]) VALUES (3, N'Clothing')
INSERT [dbo].[Categories_HE161048] ([CaId], [CaName]) VALUES (4, N'Jewelry')
SET IDENTITY_INSERT [dbo].[Categories_HE161048] OFF
GO
SET IDENTITY_INSERT [dbo].[Collections_HE161048] ON 

INSERT [dbo].[Collections_HE161048] ([CoId], [CoName]) VALUES (1, N'THE ROOK')
INSERT [dbo].[Collections_HE161048] ([CoId], [CoName]) VALUES (2, N'THE KNIGHT')
INSERT [dbo].[Collections_HE161048] ([CoId], [CoName]) VALUES (3, N'THE PAWN')
INSERT [dbo].[Collections_HE161048] ([CoId], [CoName]) VALUES (4, N'Queening')
INSERT [dbo].[Collections_HE161048] ([CoId], [CoName]) VALUES (5, N'FRONT')
INSERT [dbo].[Collections_HE161048] ([CoId], [CoName]) VALUES (6, N'CHƠI TẾT')
INSERT [dbo].[Collections_HE161048] ([CoId], [CoName]) VALUES (7, N'HAY HO')
INSERT [dbo].[Collections_HE161048] ([CoId], [CoName]) VALUES (8, N'Hay Quá')
SET IDENTITY_INSERT [dbo].[Collections_HE161048] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_HE161048] ON 

INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (1, CAST(N'2023-02-22' AS Date), N'dodvhe161048', 250)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (2, CAST(N'2023-03-09' AS Date), N'dodvhe161048', 130)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (3, CAST(N'2023-03-09' AS Date), N'dodvhe161048', 0)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (5, CAST(N'2023-03-09' AS Date), N'dodvhe161048', 230)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (6, CAST(N'2023-03-10' AS Date), N'maytroi', 130)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (7, CAST(N'2023-03-12' AS Date), N'dodvhe161048', 230)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (8, CAST(N'2023-03-12' AS Date), N'maytroi', 330)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (9, CAST(N'2023-03-12' AS Date), N'maytroi', 200)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (10, CAST(N'2023-03-13' AS Date), N'maytroi', 100)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (11, CAST(N'2023-03-13' AS Date), N'sonnguyen', 80)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (12, CAST(N'2023-03-13' AS Date), N'sonnguyen', 0)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (13, CAST(N'2023-03-13' AS Date), N'dung', 260)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (14, CAST(N'2023-03-13' AS Date), N'?', 550)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (15, CAST(N'2023-03-14' AS Date), N'dodvhe161048', 160)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (16, CAST(N'2023-03-15' AS Date), N'maytroi', 390)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (17, CAST(N'2023-03-16' AS Date), N'maytroi', 130)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (18, CAST(N'2023-03-16' AS Date), N'maytroi', 190)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (19, CAST(N'2023-03-16' AS Date), N'duong', 20)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (20, CAST(N'2023-03-16' AS Date), N'duong', 130)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (21, CAST(N'2023-03-16' AS Date), N'duong', 280)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (22, CAST(N'2023-03-19' AS Date), N'dung', 200)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (23, CAST(N'2023-03-19' AS Date), N'dung', 130)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (24, CAST(N'2023-03-20' AS Date), N'maytroi', 230)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (25, CAST(N'2023-03-20' AS Date), N'duong', 200)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (26, CAST(N'2023-03-20' AS Date), N'duong', 40)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (27, CAST(N'2023-03-20' AS Date), N'duong', 380)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (28, CAST(N'2023-03-20' AS Date), N'duong', 200)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (30, CAST(N'2023-03-20' AS Date), N'dung', 130)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (31, CAST(N'2023-03-20' AS Date), N'dung', 230)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (32, CAST(N'2023-03-20' AS Date), N'duong', 200)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (33, CAST(N'2023-03-20' AS Date), N'dodv', 630)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (34, CAST(N'2023-03-21' AS Date), N'dodv', 360)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (35, CAST(N'2023-04-09' AS Date), N'dung', 360)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (36, CAST(N'2023-04-11' AS Date), N'sonnguyen', 300)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (1036, CAST(N'2023-06-19' AS Date), N'dung', 100)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (1037, CAST(N'2023-06-19' AS Date), N'dung', 130)
INSERT [dbo].[Order_HE161048] ([OrId], [OrDate], [AccId], [TotalMoney]) VALUES (1038, CAST(N'2023-06-19' AS Date), N'dung', 250)
SET IDENTITY_INSERT [dbo].[Order_HE161048] OFF
GO
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (20, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (2, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (31, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (5, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (5, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (7, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (7, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (8, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (11, 5, 1, 80)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (13, 2, 2, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (14, 1, 1, 250)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (14, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (15, 10, 1, 60)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (15, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (16, 2, 3, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (17, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (22, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (18, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (22, 24, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (23, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (24, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (25, 16, 1, 200)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (33, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (33, 5, 1, 80)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (34, 2, 2, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (34, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (35, 2, 2, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (35, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (36, 16, 1, 200)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (36, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (1036, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (1037, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (8, 6, 1, 200)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (9, 6, 1, 200)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (10, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (14, 6, 1, 200)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (27, 1, 1, 250)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (21, 5, 1, 80)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (21, 6, 1, 200)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (26, 9, 1, 40)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (32, 3, 2, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (24, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (28, 3, 2, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (30, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (31, 3, 1, 100)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (33, 1, 1, 250)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (33, 6, 1, 200)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (27, 2, 1, 130)
INSERT [dbo].[OrderDetail_HE161048] ([OrId], [ProId], [Quantity], [Price]) VALUES (1038, 1, 1, 250)
GO
SET IDENTITY_INSERT [dbo].[Product_HE161048] ON 

INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (1, N'The Knight Tote Bag', N'img/The_Knight_Tote_Bag.jpg', 250, N'Sản phẩm được làm từ chất liệu chính là Recycled Polyester - Chống thấm nước, siêu bền, không nhăn, nhẹ và thoáng khí sẽ giúp bạn luôn thoải mái khi sử dụng sản phẩm.', 2, 2)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (2, N'The Rook Backpack', N'img/The_Rook_Backpack.jpg', 130, N'Chất liệu chính Limestone Neoprene có độ đàn hồi tốt, bên trong lót Polyester chống thấm nước, độ bền cao. Kích thước: 29W x 44H x 12D (cm)', 2, 1)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (3, N'The Rook Shoulder Bag', N'img/The_Rook_Shoulder_Bag.jpg', 100, N'Sản phẩm được làm từ chất liệu chính là Limestone Neoprene có độ đàn hồi tốt và độ bền cao. Bên trong có lót Polyester chống trầy xước và hạn chế thấm nước từ bên ngoài.', 2, 1)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (4, N'The Pawn Head-To-Head Backpack', N'img/The_Pawn_Head-To-Head_Backpack.jpg', 90, N'Không có ngăn chuyên dụng cho máy tính nhưng có thể chứa được laptop 15.6 inch trong ngăn chính (nên có túi chống sốc).', 2, 3)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (5, N'The Rook Castling Backpack', N'img/The_Rook_Castling_Backpack.jpg', 80, N'Chất liệu chính là Polyester Waterproof - Chống thấm nước, siêu bền, không nhăn, nhẹ và thoáng khí sẽ giúp bạn luôn thoải mái khi sử dụng sản phẩm.', 2, 1)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (6, N'FRONT Abundant Backpack', N'img/FRONT_Abundant_Backpack.jpg', 200, N'Không có ngăn chuyên dụng cho máy tính nhưng có thể chứa được laptop 15.6 inch trong ngăn chính (nên có túi chống sốc).', 2, 5)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (7, N'FRONT Abundant Rectangle Shoulder Bag', N'img/FRONT_Abundant_Rectangle_Shoulder_Bag.jpg', 120, N'Số ngăn: 1 ngăn chính có miếng chia ngăn tùy chình được & 1 ngăn chuyên dụng cho điện thoại.', 2, 5)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (8, N'FRONT Abundant Tote Bag', N'img/FRONT_Abundant_Tote_Bag.jpg', 200, N'Không có ngăn chuyên dụng cho máy tính nhưng có thể chứa được laptop 15.6 inch trong ngăn chính (nên có túi chống sốc).', 2, 5)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (9, N'FRONT The Bishop Keychain', N'img/FRONT_The_Bishop_Keychain.jpg', 40, N'Phần thân Keychain được làm từ chất liệu PVC. Phần móc khoá được làm từ chất liệu thép không gỉ. Hộp đựng chắc chắn, Keychain được cố định bằng mút xốp bên trong. ', 1, 5)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (10, N'FRONT Abundant Wallet', N'img/FRONT_Abundant_Wallet.jpg', 60, N'Số ngăn: 2 ngăn đựng tiền, 4 ngăn đựng thẻ & 2 ngăn đựng giấy tờ tùy thân.', 1, 5)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (11, N'Queening The Pawn Backpack Size M', N'img/Queening_The_Pawn_Backpack_Size_M.jpg', 30, N'Số ngăn: 1 ngăn chính, 2 ngăn mặt trước và 4 ngăn chức năng bên trong ngăn chính.', 2, 4)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (12, N'Queening The Pawn Backpack Size S', N'img/Queening_The_Pawn_Backpack_Size_S.jpg', 37, N'Số ngăn: 1 ngăn chính, 2 ngăn mặt trước và 4 ngăn chức năng bên trong ngăn chính.', 2, 4)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (13, N'The Knight Key Pocket', N'img/The_Knight_Key_Pocket.jpg', 20, N'Chất liệu có khả năng trượt nước, nước khó thâm nhập vào bề mặt chất liệu do đã được xử lý bằng một lớp phủ chống nước, khi tiếp xúc giọt nước bị cô lập, đọng thành từng giọt và lăn ra khỏi bề mặt.', 1, 2)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (14, N'The Knight Relaxed Pants - FreeSize', N'img/The_Knight_Relaxed_Pants.jpg', 60, N'Sản phẩm được làm từ chất liệu 100% High Performance Cotton với những ưu điểm thấm hút tốt, tự nhiên, nhẹ, độ dày vừa phải, thoáng mát, phù hợp với khí hậu nóng ẩm.', 3, 2)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (15, N'The Knight Wristlet Keychain', N'img/The_Knight_Wristlet_Keychain.jpg', 20, N'Sản phẩm sử dụng công nghệ in 3D rõ nét, móc kim loại chắc chắn, dày dặn, có thể đeo cổ tay, móc vào quần áo và phụ kiện linh hoạt.', 1, 2)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (16, N'The Pawn Blazer - FreeSize', N'img/The_Pawn_Blazer.jpg', 200, N'Chất liệu Water-Repellent Polyester với những ưu điểm trượt nước tốt, độ dày vừa phải, nhẹ, dễ xếp gọn, dễ vệ sinh phù hợp với thời tiết & khí hậu Việt Nam.', 3, 3)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (17, N'The Pawn Pocket Shorts - FreeSize', N'img/The_Pawn_Pocket_Shorts.jpg', 80, N'Chất liệu Water-Repellent Polyester với những ưu điểm trượt nước tốt, độ dày vừa phải, nhẹ, dễ xếp gọn, dễ vệ sinh phù hợp với thời tiết & khí hậu Việt Nam.', 3, 3)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (18, N'The Pawn Wordmark Tee - FreeSize', N'img/The_Pawn_Wordmark_Tee.jpg', 50, N'Sản phẩm được làm từ chất liệu 100% High Performance Cotton với những ưu điểm thấm hút tốt, tự nhiên, nhẹ, độ dày vừa phải, thoáng mát, phù hợp với khí hậu nóng ẩm.', 3, 3)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (19, N'The Pawn Abundant Umbrella', N'img/The_Pawn_Abundant_Umbrella.jpg', 30, N'Vải dù 2ya Polyester, in lụa cả 2 mặt. Khung sắt được sơn tĩnh điện. Tay cầm đươc làm bằng nhựa cao cấp.', 1, 3)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (20, N'The Rook Fork Hooded BLACK - FreeSize', N'img/The_Rook_Fork_Hooded.jpg', 150, N'Chất liệu Polyester, bề mặt phủ nhung nhẹ.Thân chính dùng zip 2 mặt, có nẹp che để cản gió và nước. Cổ áo có ngăn giấu nón, linh hoạt trong nhu cầu. Ống tay có khả năng mở rộng và thu nhỏ bởi dây kéo, đặt biệt có ngăn tiện lợi trên ống tay.', 3, 1)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (21, N'The Rook Fork Hooded BROWN - FreeSize', N'img/The_Rook_Fork_Hooded2.jpg', 150, N'Chất liệu Polyester, bề mặt phủ nhung nhẹ.Thân chính dùng zip 2 mặt, có nẹp che để cản gió và nước. Cổ áo có ngăn giấu nón, linh hoạt trong nhu cầu. Ống tay có khả năng mở rộng và thu nhỏ bởi dây kéo, đặt biệt có ngăn tiện lợi trên ống tay.', 3, 1)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (22, N'WHITE PAWN LONGSLEEVE - FreeSize ', N'img/WHITE_PAWN_LONGSLEEVE.jpg', 40, N'Sản phẩm được làm từ chất liệu 100% High Performance Cotton với những ưu điểm thấm hút tốt, tự nhiên, nhẹ, độ dày vừa phải, thoáng mát, phù hợp với khí hậu nóng ẩm.', 3, 3)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (23, N'Paladin - SILVER ', N'img/Paladin.jpg', 100, N'Sản phẩm sử dụng chất liệu Bạc 925 có độ trắng sáng cao, tinh tế, nổi bật.Sản phẩm được bảo hành làm sạch, đánh bóng trọn đời.', 4, 5)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (24, N'Paladin ', N'img/Paladin2.jpg', 100, N'Sản phẩm sử dụng chất liệu Bạc 925 có độ trắng sáng cao, tinh tế, nổi bật.Sản phẩm được bảo hành làm sạch, đánh bóng trọn đời.', 4, 5)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (25, N'The Pawn Square Scarf ', N'img/The_Pawn_Square_Scarf.jpg', 20, N' Linen thấm hút mồ hôi cực tốt, cực kỳ thoáng mát, nhẹ nhàng, độ dày vừa phải.', 1, 3)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (31, N'Vòng đẹp', N'img/vong_co.jpg', 20, N'Vòng được làm từ chất liệu bạc cao cấp', 4, 6)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (32, N'Quần Áo Đôi ', N'img/anh_signup.jpg', 100, N'Quần áo với chất liệu thoáng mát nên mua', 3, 7)
INSERT [dbo].[Product_HE161048] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (33, N'Khăn quàng cổ', N'img/khandeoco.jpg', 20, N'CHất liệu thoáng mát, họa tiết rất đẹp', 1, 8)
SET IDENTITY_INSERT [dbo].[Product_HE161048] OFF
GO
SET IDENTITY_INSERT [dbo].[SecurityQuestion_HE161048] ON 

INSERT [dbo].[SecurityQuestion_HE161048] ([QuesId], [Question]) VALUES (1, N'In what city were you born?')
INSERT [dbo].[SecurityQuestion_HE161048] ([QuesId], [Question]) VALUES (2, N'What is the name of your favorite pet?')
INSERT [dbo].[SecurityQuestion_HE161048] ([QuesId], [Question]) VALUES (3, N'What is your mothers name?')
INSERT [dbo].[SecurityQuestion_HE161048] ([QuesId], [Question]) VALUES (4, N'What high school did you attend?')
INSERT [dbo].[SecurityQuestion_HE161048] ([QuesId], [Question]) VALUES (5, N'What was the name of your elementary school?')
INSERT [dbo].[SecurityQuestion_HE161048] ([QuesId], [Question]) VALUES (6, N'What was your favorite food as a child?')
SET IDENTITY_INSERT [dbo].[SecurityQuestion_HE161048] OFF
GO
ALTER TABLE [dbo].[Account_HE161048]  WITH CHECK ADD FOREIGN KEY([QuesId])
REFERENCES [dbo].[SecurityQuestion_HE161048] ([QuesId])
GO
ALTER TABLE [dbo].[Order_HE161048]  WITH CHECK ADD FOREIGN KEY([AccId])
REFERENCES [dbo].[Account_HE161048] ([AccId])
GO
ALTER TABLE [dbo].[OrderDetail_HE161048]  WITH CHECK ADD FOREIGN KEY([ProId])
REFERENCES [dbo].[Product_HE161048] ([ProId])
GO
ALTER TABLE [dbo].[OrderDetail_HE161048]  WITH CHECK ADD FOREIGN KEY([OrId])
REFERENCES [dbo].[Order_HE161048] ([OrId])
GO
ALTER TABLE [dbo].[Product_HE161048]  WITH CHECK ADD FOREIGN KEY([CaId])
REFERENCES [dbo].[Categories_HE161048] ([CaId])
GO
ALTER TABLE [dbo].[Product_HE161048]  WITH CHECK ADD FOREIGN KEY([CoId])
REFERENCES [dbo].[Collections_HE161048] ([CoId])
GO
