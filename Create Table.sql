CREATE TABLE Student(
	sid varchar(50) PRIMARY KEY NOT NULL,
	name nvarchar(150) NOT NULL,
	dob date NOT NULL,
	address nvarchar(150) NOT NULL,
	)


CREATE TABLE Group_Student(
	gid varchar(50) PRIMARY KEY NOT NULL,
	name nvarchar(150) NOT NULL
)


CREATE TABLE Lecture(
	lid varchar(50) PRIMARY KEY NOT NULL,
	name nvarchar(150) NOT NULL,
	email varchar(50) NOT NULL
)


CREATE TABLE Course(
	cid int PRIMARY KEY NOT NULL,
	name nvarchar(150) NOT NULL
)


CREATE TABLE Assessment(
	aid int PRIMARY KEY NOT NULL,
	name nvarchar(150) NOT NULL,
	weight float NOT NULL,
	type nvarchar(150) NOT NULL
)


CREATE TABLE Result(
	item nvarchar(150) PRIMARY KEY NOT NULL,
	comment nvarchar(50),
	weight float NOT NULL,
	value float NOT NULL
)
