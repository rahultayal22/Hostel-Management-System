
--Create Update Procedure for Student

 Create procedure UpdateStudentDetails
 @Studentid int,@Name varchar(50),@Enrollno int,@Userid int,@Hostelid int,@year varchar(50),
 @Sem varchar(50),@Program varchar(50),@Branch varchar(100),@EnrolmentPeriod varchar(50),
 @FatherName varchar(50),@MotherName varchar(50),@DOB date,@EmailID varchar(50),@StudentContactNo varchar(50),
 @FatherContactNo varchar(50),@MotherContactNo varchar(50),@Address varchar(100),@PhotoPath varchar(700)
 AS
 Begin

 update Student
 set Name=@Name,Enrollno=@Enrollno,Userid=@Userid,Hostelid=@Hostelid,Year=@year,Sem=@sem,
 Program=@Program,Branch=@Branch,EnrolmentPeriod=@EnrolmentPeriod,FatherName=@FatherName,MotherName=@MotherName,
 DOB=@DOB,EmailID=@EmailID,StudentContactNo=@StudentContactNo,FatherContactNo=@FatherContactNo,MotherContactNo=@MotherContactNo,
 Address=@Address,PhotoPath=@PhotoPath,ModifiedOn=getdate()
 where Studentid=@Studentid

 End;

 --Sample Query for Testing SP UpdateStudentDetails
   
   Exec UpdateStudentDetails 34,'Rahul Tayal',190184090,43,2,'III','VI','B.Tech','CSE-AI&DS','2019-2023','Ashok Tayal','Sunita Tayal','2000-05-22','rahultayal816@gmail.com','9899959873','9818728864','9813559873','Kingsbury TDI-City',NULL

   --Create Insert Procedure for Student

   Create procedure InsertStudentDetails
 @Name varchar(50),@Enrollno int,@Userid int,@Hostelid int,@year varchar(50),
 @Sem varchar(50),@Program varchar(50),@Branch varchar(100),@EnrolmentPeriod varchar(50),
 @FatherName varchar(50),@MotherName varchar(50),@DOB date,@EmailID varchar(50),@StudentContactNo varchar(50),
 @FatherContactNo varchar(50),@MotherContactNo varchar(50),@Address varchar(100),@PhotoPath varchar(700)
 AS
 Begin

 Insert into Student(Name,Enrollno,Userid,Hostelid,Year,Sem,Program,Branch,EnrolmentPeriod,
 FatherName,MotherName,DOB,EmailID,StudentContactNo,FatherContactNo,MotherContactNo,Address,PhotoPath)Values
 (@Name,@Enrollno,@Userid,@Hostelid,@year,@sem,@Program,@Branch,@EnrolmentPeriod,@FatherName,@MotherName,@DOB,
 @EmailID,@StudentContactNo,@FatherContactNo,@MotherContactNo,@Address,@PhotoPath)

 End;

 --Sample Query for Testing SP InsertStudentDetails

 Exec InsertStudentDetails 'Rahul Tayal',190184060,43,2,'III','VI','B.Tech','CSE-AI&DS','2019-2023','Ashok Tayal','Sunita Tayal','2000-05-22','rahultayal816@gmail.com','9899959873','9818728864','9813559873','Kingsbury TDI-City',NULL

--Create Delete Procedure for Student

 Create Procedure DeleteStudentDetails
@Studentid int
As
Begin
Delete from Student
where Studentid=@Studentid
End;

--Sample Query for Testing SP DeleteStudentDetails
 
 Exec DeleteStudentDetails 34