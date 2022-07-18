--1. A query that uses ORDER BY to sort SubjectID ascending order--
SELECT * FROM [Group]
ORDER by SubjectID ASC


--2. A query that uses INNER JOINS to check the Subject that Student learn about
SELECT s.Name, su.SubjectName
FROM Student s INNER JOIN Group_Student gs ON s.StudentID = gs.StudentID
				INNER JOIN [Group] g ON gs.GroupID = g.GroupID
				INNER JOIN Subject su ON su.SubjectID = g.SubjectID


--3. A query that uses aggregate functions count the semester of lecture
SELECT l.Name, COUNT (ss.SubjectID) AS SemesterOfLecture
FROM Lecture l INNER JOIN Subject_Semester ss ON ss.SubjectID = l.LectureID 
GROUP BY l.Name


--4. A query that uses the GROUP BY and HAVING clauses to check lecture join more than 1 semester
SELECT l.Name, COUNT (ss.SubjectID) AS SemesterOfLecture 
FROM Lecture l INNER JOIN Subject_Semester ss ON ss.SubjectID = l.LectureID 
GROUP BY l.Name 
HAVING  COUNT (ss.SubjectID) > 1


--5. A query that uses a sub-query as a relation to check 8 student have lowest avarage
SELECT TOP 8 tb1.[NameOfStudent], tb1.AVG 
FROM
	(SELECT s.StudentID ,s.Name AS [NameOfStudent], SUM (rt.Result * ai.Weight) AS[AVG]
	FROM  Student s INNER JOIN Result_Table rt ON s.StudentID = rt.ResultTableID
					INNER JOIN Assessment a ON rt.AssessmentID = a.AssessmentID					
					INNER JOIN Assessment_Info ai ON ai.CategoryID = a.CategoryID
	GROUP BY s.StudentID, s.Name) tb1
ORDER BY tb1.AVG 


--6. A query that uses a sub-query in the WHERE clause check the student have lowest average on MAD101
SELECT TOP 1 tb1.[Student Name], tb1.AVG, tb1.[Subject Name]
FROM
	(SELECT s.StudentID, s.Name AS [Student Name], su.SubjectName AS [Subject Name],SUM(rt.Result * ai.Weight) AS[AVG]
	FROM  Student s INNER JOIN Result_Table rt ON s.StudentID = rt.StudentID
					INNER JOIN Assessment a ON rt.AssessmentID = a.AssessmentID
					INNER JOIN Subject su ON su.SubjectID = a.SubjectID
					INNER JOIN Assessment_Info ai ON ai.CategoryID = a.CategoryID
	WHERE su.SubjectName = 'MAD101'
	GROUP BY s.StudentID, s.Name,su.SubjectName) tb1
ORDER BY tb1.AVG 


--7. A query that uses partial matching in the WHERE clause to find the student have the last character is a
SELECT *
FROM Student s
WHERE s.Name LIKE '%a'

--8. A query that check average of student

SELECT s.StudentID,s.Name AS [Student Name], su.SubjectName AS [Subject Name],SUM(rt.Result * ai.Weight) AS[AVG]
FROM  Student s INNER JOIN Result_Table rt ON s.StudentID = rt.StudentID
				INNER JOIN Assessment a ON rt.AssessmentID = a.AssessmentID
				INNER JOIN Subject su ON su.SubjectID = a.SubjectID
				INNER JOIN Assessment_Info ai ON ai.CategoryID = a.CategoryID
GROUP BY s.StudentID, s.Name,su.SubjectName
ORDER BY s.StudentID




