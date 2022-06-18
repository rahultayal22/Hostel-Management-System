
--Create Update Procedure for Users

 Create Procedure UpdateUserDetails
 @Userid int,@Password varchar(25),@Status bit
 As 
 Begin

 Update Users
 set Password=@Password,Status=@Status,ModifiedOn=getdate()
 where Userid=@Userid

 End;

 --Sample Query for Testing SP UpdateUserDetails
 
 Exec UpdateUserDetails 43,'asjkgh',1

 --Create Insert Procedure for Users

 Create Procedure InsertUserDetails
 @UserType varchar(20),@Password varchar(25),@Status bit
 As 
 Begin

 Insert into Users(UserType,Password,Status)values
 (@UserType,@Password,@Status)

 End;

 
--Sample Query for Testing SP InsertUserDetails

  Exec InsertUserDetails'Student','bnkje',1

--Create Delete Procedure for Users

 Create Procedure DeleteUserDetails
@Userid int
As
Begin
Update Users
set Status=0
where Userid=@Userid
End;

--Sample Query for Testing SP DeleteUserDetails

Exec DeleteUserDetails 45