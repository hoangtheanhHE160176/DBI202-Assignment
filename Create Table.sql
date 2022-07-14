CREATE TABLE Student(
	StudentID int PRIMARY KEY NOT NULL,
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
	FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID),
	LectureID int NOT NULL
	FOREIGN KEY (LectureID) REFERENCES Lecture (LectureID),
)

CREATE TABLE Group_Student(
	StudentID int NOT NULL,
	GroupID varchar(50) NOT NULL,
	PRIMARY KEY(StudentID, GroupID),
	FOREIGN KEY (StudentID) REFERENCES Student (StudentID),
	FOREIGN KEY (GroupID) REFERENCES [Group] (GroupID),
)



CREATE TABLE Subject_Semester(
	SubjectSemesterID int PRIMARY KEY NOT NULL,
	SubjectID int NOT NULL 
	FOREIGN KEY (SubjectID) REFERENCES [Subject] (SubjectID),
	Semester nvarchar(150) NOT NULL,
	StartDate date NOT NULL,
	EndDate date NOT NULL

)
CREATE TABLE Assessment_Info(
	CategoryID int PRIMARY KEY NOT NULL,
	CategoryName nvarchar(150) NOT NULL,
	Weight float NOT NULL,
	Part int NOT NULL,
	Type nvarchar(50) NOT NULL

)


CREATE TABLE Assessment(
	AssessmentID int PRIMARY KEY NOT NULL,
	SubjectID int NOT NULL,
	CategoryID int NOT NULL
	FOREIGN KEY (SubjectID) REFERENCES [Subject] (SubjectID),
	FOREIGN KEY (CategoryID) REFERENCES Assessment_Info (CategoryID)
)


CREATE TABLE Result_Table(
	ResultTableID int PRIMARY KEY NOT NULL,
	AssessmentID int NOT NULL
	FOREIGN KEY (AssessmentID) REFERENCES Assessment (AssessmentID),
	StudentID int NOT NULL,	
	FOREIGN KEY (StudentID) REFERENCES Student (StudentID),
	Result float NOT NULL,	
)
