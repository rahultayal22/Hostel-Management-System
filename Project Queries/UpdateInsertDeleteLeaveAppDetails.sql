
--Create Update Procedure for LeaveApp

Create procedure UpdateLeaveAppDetails
@Appid int,@LeaveFrom date,@LeaveUpto date,@Reason varchar(100),@PlaceOfVisit varchar(50)
As 
Begin

Update LeaveApp
set LeaveFrom=@LeaveFrom,LeaveUpto=@LeaveUpto,Reason=@Reason,PlaceOfVisit=@PlaceOfVisit
where Appid=@Appid

End;

--Sample Query for Testing SP UpdateLeaveAppDetails

 Exec UpdateLeaveAppDetails 10,'2022-03-01','2022-03-31','Urgent Work','Delhi'

 --Create Insert Procedure for LeaveApp

 Create Procedure InsertLeaveAppDetails
 @Studentid int,@LeaveFrom date,@LeaveUpto date,@Reason varchar(100),@PlaceOfVisit varchar(50)
 As 
 Begin

 Insert into LeaveApp(Studentid,LeaveFrom,LeaveUpto,Reason,PlaceOfVisit)values
 (@Studentid,@LeaveFrom,@LeaveUpto,@Reason,@PlaceOfVisit)

 End;

--Sample Query for Testing SP InsertLeaveAppDetails

 Exec InsertLeaveAppDetails 18,'2022-02-17','2022-02-21','Medical Appointment','Agra'

--Create Delete Procedure for LeaveApp

 Create Procedure DeleteLeaveAppDetails
@Appid int
As
Begin
Update LeaveApp
Set Status='Withdrawn'
where Appid=@Appid
End;

--Sample Query for Testing SP DeleteUserDetails

Exec DeleteLeaveAppDetails 10

--WARDEN-END PROCEDURES

--Create Update Leave Request Procedure for LeaveApp

Create Procedure UpdateStudentLeaveApp
@Appid int,@ProcessedOn date,@ProcessedBy int,@Status varchar(20)
As
Begin
Update LeaveApp
Set ProcessedOn=@ProcessedOn,ProcessedBy=@ProcessedBy,Status=@Status
where Appid=@Appid

End;

--Sample Query for Testing SP UpdateStudentLeaveApp

Exec UpdateStudentLeaveApp 11,'2022-02-17',15,'Accepted'
