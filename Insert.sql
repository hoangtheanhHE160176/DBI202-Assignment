USE [DBI202 - Assignment]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 2022-07-14 23:16:36 ******/
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
/****** Object:  Table [dbo].[Assessment_Info]    Script Date: 2022-07-14 23:16:36 ******/
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
/****** Object:  Table [dbo].[Group]    Script Date: 2022-07-14 23:16:36 ******/
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
/****** Object:  Table [dbo].[Group_Student]    Script Date: 2022-07-14 23:16:36 ******/
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
/****** Object:  Table [dbo].[Lecture]    Script Date: 2022-07-14 23:16:36 ******/
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
/****** Object:  Table [dbo].[Result_Table]    Script Date: 2022-07-14 23:16:36 ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 2022-07-14 23:16:36 ******/
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
/****** Object:  Table [dbo].[Subject]    Script Date: 2022-07-14 23:16:36 ******/
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
/****** Object:  Table [dbo].[Subject_Semester]    Script Date: 2022-07-14 23:16:36 ******/
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
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'10', N'SE1686', 6, 2)
INSERT [dbo].[Group] ([GroupID], [Name], [SubjectID], [LectureID]) VALUES (N'2', N'SE1612', 2, 2)
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
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (3, N'5')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (3, N'6')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (4, N'8')
INSERT [dbo].[Group_Student] ([StudentID], [GroupID]) VALUES (5, N'6')
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
