USE CourseDB
GO

EXEC spInserttechsubjects 101, 'Computer'
GO

EXEC spInserttechsubjects 102, 'EEE'
GO

EXEC spInserttechsubjects 103, 'Arcitecture'
GO

EXEC spInserttechsubjects 104, 'Arcitecture'
GO

EXEC spInserttechsubjects 105, 'Construction'
GO


SELECT * FROM techsubjects
GO

EXEC spInsertinstructors 201, 'Arif Hasan Shovu', '@shuvo', '0171XXXXXXXX'
GO

EXEC spInsertinstructors 202, 'Ektekher alom', '@alom', '0171XXXXXXXX'
GO

EXEC spInsertinstructors 203, 'Ajjaj Ahmed', '@ahmed', '0171XXXXXXXX'
GO

EXEC spInsertinstructors 204, 'Rakib Hasan', '@hasan', '0171XXXXXXXX'
GO

EXEC spInsertinstructors 205, 'Moinul', '@moinul', '0171XXXXXXXX'
GO

SELECT * FROM instructors
GO

EXEC spInsertcourses 301, 'Consept of it', 77, 5, 10, 22000.00, 201
GO

EXEC spInsertcourses 302, 'SQL', 60, 6, 100, 26000.00, 202
GO

EXEC spInsertcourses 303, 'C#', 50, 7, 200, 21000.00, 203
GO

EXEC spInsertcourses 304, 'Q#', 40, 6, 70, 19000.00, 204
GO

EXEC spInsertcourses 305, 'F#', 30, 4, 30, 15000.00, 205
GO

SELECT * FROM courses
GO

EXEC spInsertinstructorsubjects 201, 101
GO
EXEC spInsertinstructorsubjects 202, 102
GO
EXEC spInsertinstructorsubjects 203, 103
GO
EXEC spInsertinstructorsubjects 204, 104
GO
EXEC spInsertinstructorsubjects 205, 105
GO

SELECT * FROM instructorsubjects
GO
EXEC spInsertbatches 405, '2020-07-15', 301
GO
EXEC spInsertbatches 406, '2020-07-22', 302
GO
EXEC spInsertbatches 407, '2020-07-18', 303
GO
EXEC spInsertbatches 408, '2020-07-23', 304
GO
EXEC spInsertbatches 409, '2020-07-09', 305
GO

SELECT * FROM [batches]

EXEC spInsertstudents 501, 'Arif Hasan shuvo', '017XXXXXXX', 405
GO
EXEC spInsertstudents 502, 'Rakibul hasan', '017XXXXXXX', 406
GO
EXEC spInsertstudents 503, 'Ajja Ahmed', '017XXXXXXX', 407
GO
EXEC spInsertstudents 504, 'Moinul', '017XXXXXXX', 408
GO
EXEC spInsertstudents 505, 'Hasan Mahmud', '017XXXXXXX', 409
GO

SELECT * FROM students
GO

----update----
EXEC spUdatetechsubjects 101, 'Hasan', '017XXXXXXX', 409
GO


EXEC spUdateinstructors 203, 'Jmal Vuiya', '@ahmed', '0171XXXXXXXX'
GO

EXEC spUdatecourses 305, 'F#', 60, 5, 30, 26000.00, 205
GO

EXEC spUdateinstructorsubjects 203, 103
GO

EXEC spUdatebatches 408, '2020-04-02', 304
GO

EXEC spUdatestudents 504, 'Anamul haq sohel', '017XXXXXXX', 408
GO

----Delete Proc---
EXEC spDeletetechsubjects 101
GO

EXEC spDeleteinstructors 203
GO

EXEC spDeletecourses 302
GO


EXEC spDeleteinstructorsubjects 408
GO

EXEC spDeletebatches 501
GO

EXEC spDeletestudents 603
GO