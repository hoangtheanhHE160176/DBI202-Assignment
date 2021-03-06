USE [DBI202 - Assignment]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 2022-07-17 21:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[AssessmentID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AssessmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment_Info]    Script Date: 2022-07-17 21:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment_Info](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
	[Weight] [float] NOT NULL,
	[Part] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 2022-07-17 21:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupID] [varchar](50) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[SubjectID] [int] NOT NULL,
	[LectureID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Student]    Script Date: 2022-07-17 21:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Student](
	[StudentID] [int] NOT NULL,
	[GroupID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 2022-07-17 21:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[LectureID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Email] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result_Table]    Script Date: 2022-07-17 21:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result_Table](
	[ResultTableID] [int] NOT NULL,
	[AssessmentID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[Result] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ResultTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2022-07-17 21:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Dob] [date] NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Gender] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 2022-07-17 21:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] NOT NULL,
	[SubjectName] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject_Semester]    Script Date: 2022-07-17 21:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject_Semester](
	[SubjectSemesterID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[Semester] [nvarchar](150) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectSemesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [CategoryID]) VALUES (1, 1, 2)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [CategoryID]) VALUES (2, 3, 1)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [CategoryID]) VALUES (3, 2, 4)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [CategoryID]) VALUES (4, 6, 5)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [CategoryID]) VALUES (5, 4, 3)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [CategoryID]) VALUES (6, 5, 2)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [CategoryID]) VALUES (7, 4, 4)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [CategoryID]) VALUES (8, 2, 1)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [CategoryID]) VALUES (9, 1, 5)
INSERT [dbo].[Assessment] ([AssessmentID], [SubjectID], [CategoryID]) VALUES (10, 2, 5)
GO
INSERT [dbo].[Assessment_Info] ([CategoryID], [CategoryName], [Weight], [Part], [Type]) VALUES (1, N'Progeress Test', 0.1, 1, N'Quiz')
INSERT [dbo].[Assessment_Info] ([CategoryID], [CategoryName], [Weight], [Part], [Type]) VALUES (2, N'Assignment', 0.2, 2, N'On-going')
INSERT [dbo].[Assessment_Info] ([CategoryID], [CategoryName], [Weight], [Part], [Type]) VALUES (3, N'Labs', 0.1, 3, N'On-going')
INSERT [dbo].[Assessment_Info] ([CategoryID], [CategoryName], [Weight], [Part], [Type]) VALUES (4, N'Practical Exam', 0.3, 4, N'PE')
INSERT [dbo].[Assessment_Info] ([CategoryID], [CategoryName], [Weight], [Part], [Type]) VALUES (5, N'Final Exam', 0.3, 5, N'FE')
GO
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'1', N'SE1647', 1, 1)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'10', N'SE1511', 4, 4)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'11', N'SE1512', 5, 9)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'12', N'SE1513', 7, 10)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'13', N'SE1514', 8, 5)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'14', N'SE1515', 6, 4)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'15', N'SE1516', 3, 8)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'16', N'SE1517', 1, 10)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'17', N'SE1518', 3, 6)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'18', N'SE1519', 2, 9)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'19', N'SE1520', 4, 3)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'2', N'SE1612', 2, 2)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'20', N'SE1521', 3, 8)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'3', N'SE1613', 3, 3)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'4', N'SE1614', 4, 4)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'5', N'SE1615', 2, 1)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'6', N'SE1616', 3, 2)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'7', N'SE1617', 1, 4)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'8', N'SE1678', 2, 4)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'9', N'SE1675', 3, 4)
GO
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (1, N'1')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (1, N'2')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (1, N'4')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (1, N'5')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (2, N'4')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (2, N'5')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (3, N'18')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (3, N'5')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (3, N'6')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (4, N'20')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (4, N'8')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (5, N'6')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (6, N'3')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (12, N'4')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (14, N'5')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (16, N'6')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (19, N'10')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (20, N'19')
GO
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (1, N'SonNT', N'sonnt@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (2, N'TuanVM', N'tuanvm@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (3, N'HaiLT', N'hailt@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (4, N'BanTQ', N'bantq@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (5, N'CauPD', N'caupd@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (6, N'ChiLP', N'chilp@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (7, N'HuyenTT', N'huyentt@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (8, N'AnhDT', N'anhdt@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (9, N'TienTD', N'tientd@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (10, N'AnhLT', N'anhlt@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (11, N'HueLT', N'huelt@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (12, N'KienLT', N'kienlt@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (13, N'AnhBN', N'anhbn@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (14, N'LanNT', N'lannt@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (15, N'ThanhNV', N'thanhnv@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (16, N'QuyetNV', N'quyetnv@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (17, N'TrangNT', N'trangnt@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (18, N'AnhDP', N'anhdp@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (19, N'QuangNP', N'quangnp@fe.edu.vn')
INSERT [dbo].[Lecture] ([LectureID], [Name], [Email]) VALUES (20, N'BinhNV', N'binhnv@fe.edu')
GO
INSERT [dbo].[Result_Table] ([ResultTableID], [AssessmentID], [StudentID], [Result]) VALUES (1, 1, 1, 7)
INSERT [dbo].[Result_Table] ([ResultTableID], [AssessmentID], [StudentID], [Result]) VALUES (2, 2, 4, 8)
INSERT [dbo].[Result_Table] ([ResultTableID], [AssessmentID], [StudentID], [Result]) VALUES (3, 4, 5, 9)
INSERT [dbo].[Result_Table] ([ResultTableID], [AssessmentID], [StudentID], [Result]) VALUES (4, 1, 6, 10)
INSERT [dbo].[Result_Table] ([ResultTableID], [AssessmentID], [StudentID], [Result]) VALUES (5, 3, 4, 8)
INSERT [dbo].[Result_Table] ([ResultTableID], [AssessmentID], [StudentID], [Result]) VALUES (6, 4, 5, 9)
INSERT [dbo].[Result_Table] ([ResultTableID], [AssessmentID], [StudentID], [Result]) VALUES (7, 3, 6, 10)
INSERT [dbo].[Result_Table] ([ResultTableID], [AssessmentID], [StudentID], [Result]) VALUES (8, 2, 5, 9)
INSERT [dbo].[Result_Table] ([ResultTableID], [AssessmentID], [StudentID], [Result]) VALUES (9, 3, 6, 7)
INSERT [dbo].[Result_Table] ([ResultTableID], [AssessmentID], [StudentID], [Result]) VALUES (10, 3, 4, 8)
GO
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (1, N'Nguyen Van Nam', CAST(N'2002-06-02' AS Date), N'Ha Noi', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (2, N'Dang Van Hai', CAST(N'2002-07-19' AS Date), N'Hai Phong', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (3, N'Hoang The Anh', CAST(N'2002-06-03' AS Date), N'Hai Duong', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (4, N'Nguyen Thi Linh', CAST(N'2002-08-09' AS Date), N'Nam Dinh', 0)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (5, N'Pham Thi Trang', CAST(N'2002-04-03' AS Date), N'Thai Binh', 0)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (6, N'Le Thi Van', CAST(N'2002-06-09' AS Date), N'Ha Giang', 0)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (7, N'Nguyen Thanh Binh', CAST(N'2002-11-07' AS Date), N'Ninh Binh', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (8, N'Nguyen Van Thang', CAST(N'2002-09-11' AS Date), N'Thanh Hoa', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (9, N'Vu Thanh Nam', CAST(N'2002-10-09' AS Date), N'Nghe An', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (10, N'Tran Trong Thang', CAST(N'2002-12-02' AS Date), N'Ha Tinh', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (11, N'Nguyen Thi Hoa', CAST(N'2002-09-02' AS Date), N'Ha Noi', 0)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (12, N'Nguyen Van Bo', CAST(N'2002-01-02' AS Date), N'Ha Nam', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (13, N'Pham Van Thang', CAST(N'2002-02-03' AS Date), N'Khanh Hoa', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (14, N'Nguyen Hoang Hai', CAST(N'2002-03-04' AS Date), N'Ca Mau', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (15, N'Nguyen Phuong Anh', CAST(N'2002-11-15' AS Date), N'Hai Duong', 0)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (16, N'Nguyen Thi Quynh', CAST(N'2002-04-05' AS Date), N'Bac Kan', 0)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (17, N'Tran Van Vu', CAST(N'2002-05-06' AS Date), N'Dien Bien', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (18, N'Vu Lan Anh', CAST(N'2002-06-07' AS Date), N'Ha Giang', 0)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (19, N'Vu Anh Son', CAST(N'2002-07-08' AS Date), N'Yen Bai', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (20, N'Pham Van Hau', CAST(N'2002-08-09' AS Date), N'Ninh Binh', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (21, N'Nguyen Huyen Trang', CAST(N'2002-09-01' AS Date), N'Thanh Hoa', 0)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (22, N'Pham Van Tuan ', CAST(N'2002-08-10' AS Date), N'Nghe An', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (23, N'Pham Ngoc Hai', CAST(N'2002-07-02' AS Date), N'Ha Tinh', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (24, N'Cao Van Truong', CAST(N'2002-04-06' AS Date), N'Da Nang', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (25, N'Pham Thi Mai', CAST(N'2002-09-06' AS Date), N'Hue', 0)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (26, N'Nguyen Duc Duy', CAST(N'2002-05-09' AS Date), N'Binh Duong', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (27, N'Pham Van Thanh', CAST(N'2002-10-12' AS Date), N'Ben Tre', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (28, N'Nguyen Ngoc Son', CAST(N'2002-11-10' AS Date), N'Binh Dinh', 1)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (29, N'Pham Thuy Trinh', CAST(N'2002-12-07' AS Date), N'Lao Cai', 0)
INSERT [dbo].[Student] ([StudentID], [Name], [Dob], [Address], [Gender]) VALUES (30, N'Hoang Quoc Bao', CAST(N'2002-03-12' AS Date), N'Nam Dinh', 1)
GO
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (1, N'DBI202')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (2, N'LAB211')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (3, N'CSD201')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (4, N'JPD113')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (5, N'WED201c')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (6, N'MAD101')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (7, N'PRO192')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (8, N'OSG202')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (9, N'SSG104')
INSERT [dbo].[Subject] ([SubjectID], [SubjectName]) VALUES (10, N'NWC203c')
GO
INSERT [dbo].[Subject_Semester] ([SubjectSemesterID], [SubjectID], [Semester], [StartDate], [EndDate]) VALUES (1, 1, N'Fall2020', CAST(N'2020-09-01' AS Date), CAST(N'2020-12-01' AS Date))
INSERT [dbo].[Subject_Semester] ([SubjectSemesterID], [SubjectID], [Semester], [StartDate], [EndDate]) VALUES (2, 2, N'Spring2021', CAST(N'2021-01-01' AS Date), CAST(N'2021-04-01' AS Date))
INSERT [dbo].[Subject_Semester] ([SubjectSemesterID], [SubjectID], [Semester], [StartDate], [EndDate]) VALUES (3, 3, N'Summer2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
INSERT [dbo].[Subject_Semester] ([SubjectSemesterID], [SubjectID], [Semester], [StartDate], [EndDate]) VALUES (4, 4, N'Fall2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
INSERT [dbo].[Subject_Semester] ([SubjectSemesterID], [SubjectID], [Semester], [StartDate], [EndDate]) VALUES (5, 5, N'Spring2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
INSERT [dbo].[Subject_Semester] ([SubjectSemesterID], [SubjectID], [Semester], [StartDate], [EndDate]) VALUES (6, 6, N'Summer2022', CAST(N'2022-05-01' AS Date), CAST(N'2022-08-01' AS Date))
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Assessment_Info] ([CategoryID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([LectureID])
REFERENCES [dbo].[Lecture] ([LectureID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Group_Student]  WITH CHECK ADD FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Group_Student]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Result_Table]  WITH CHECK ADD FOREIGN KEY([AssessmentID])
REFERENCES [dbo].[Assessment] ([AssessmentID])
GO
ALTER TABLE [dbo].[Result_Table]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Subject_Semester]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
