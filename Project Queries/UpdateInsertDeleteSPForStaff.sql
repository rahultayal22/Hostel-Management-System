
--Create Update Procedure for Staff

Create procedure UpdateStaffDetails
@Staffid int, @StaffName varchar(50),@Userid int,@StaffType varchar(25),@Age int,
@ContactNo varchar(10),@Emailid varchar(50),@PhotoPath varchar(50)
As 
Begin

update Staff
set StaffName=@StaffName,Userid=@Userid,StaffType=@StaffType,Age=@age,
ContactNo=@ContactNo,EmailID=@Emailid,PhotoPath=@PhotoPath,ModifiedOn=getdate()
where Staffid=@Staffid
End;

 --Sample Query for Testing SP UpdateStaffDetails

 Exec UpdateStaffDetails 44,'Seema Yadav',43,'Assistant Warden',34,'96909XXXXX','asswar2kasturba@university.in',NULL

 --Create Insert Procedure for Staff

 Create Procedure InsertStaffDetails
@StaffName varchar(50),@Userid int,@StaffType varchar(25),@Age int,
@ContactNo varchar(10),@Emailid varchar(50),@PhotoPath varchar(50),@staffid int OUTPUT
As 
Begin

Insert into Staff(StaffName,Userid,StaffType,Age,ContactNo,EmailID,PhotoPath)values
(@StaffName,@Userid,@StaffType,@Age,@ContactNo,@Emailid,@PhotoPath)

Select @staffid=Staffid
from Staff
where userid=@userid

End;

--Sample Query for Testing SP InsertStaffDetails

Declare @staffid as int;
Exec InsertStaffDetails 'Seema Yadav',43,'Assistant Warden',34,'96659XXXXX','asswar2kasturba@university.in',NULL,@staffid OUTPUT;

select @staffid;

--Create Delete Procedure for Staff

 Create Procedure DeleteStaffDetails
@Staffid int
As
Begin
Delete from Staff
where Staffid=@Staffid
End;

--Sample Query for Testing SP DeleteStaffDetails
 
 Exec DeleteStaffDetails 49