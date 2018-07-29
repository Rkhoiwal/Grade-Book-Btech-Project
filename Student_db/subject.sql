CREATE TABLE teacherdb.subject 
( 
  SubjectName VARCHAR(40) NOT NULL 
, TeacherName VARCHAR(40) NULL 
, CONSTRAINT PRIMARY KEY ( TeacherName ) );

ALTER TABLE teacherdb.subject ADD CONSTRAINT subject_FK1 FOREIGN KEY ( TeacherName )
 REFERENCES teacherdb.teacher ( TeacherName );
