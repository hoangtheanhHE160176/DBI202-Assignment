CREATE TABLE Student(
	StudentID varchar(50) PRIMARY KEY NOT NULL,
	Name nvarchar(150) NOT NULL,
	Dob date NOT NULL,
	Address nvarchar(150) NOT NULL,
	Gender bit NOT NULL
	)


CREATE TABLE Subject(
	SubjectID int PRIMARY KEY NOT NULL,
	SubjectName nvarchar(150) NOT NULL
)

CREATE TABLE Lecture(
	LectureID int PRIMARY KEY NOT NULL,
	Name nvarchar(150) NOT NULL,
	Email varchar(50) NOT NULL
)

CREATE TABLE [Group](
	GroupID varchar(50) PRIMARY KEY NOT NULL,
	Name nvarchar(150) NOT NULL,
	SubjectID int NOT NULL
	FOREIGN KEY (SubjectID) REFERENCES [Subject] (SubjectID),
	LectureID int NOT NULL
	FOREIGN KEY (LectureID) REFERENCES [Lecture] (LectureID),
)

CREATE TABLE Semester(
	SemesterID int PRIMARY KEY NOT NULL,
	Name nvarchar(150) NOT NULL
)


CREATE TABLE Assessment(
	AssessmentID int PRIMARY KEY NOT NULL,
	SubjectID int NOT NULL
	FOREIGN KEY (SubjectID) REFERENCES [Subject] (SubjectID),
)

CREATE TABLE Assessment_Info(
	CategoryID int PRIMARY KEY NOT NULL,
	CategoryName nvarchar(150) NOT NULL,
	Weight float NOT NULL,
	Part int NOT NULL,
	Type nvarchar(50) NOT NULL

)
CREATE TABLE Result(
	item nvarchar(150) PRIMARY KEY NOT NULL,
	comment nvarchar(50),
	weight float NOT NULL,
	value float NOT NULL
)
