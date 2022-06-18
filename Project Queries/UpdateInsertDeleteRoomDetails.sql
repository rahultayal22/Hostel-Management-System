
--Create Update Procedure for Room

Create Procedure UpdateRoomDetails
@Roomid int,@Studentid int
As
begin

update Room
set studentid=@Studentid,Status=1
where Roomid=@Roomid

end;


--Sample Query for Testing SP UpdateLeaveAppDetails

Exec UpdateRoomDetails 24,32

--Create Insert Procedure for Room

Create Procedure InsertRoomDetails
@RoomNo varchar(10),@Hostelid int,@Studentid int,@Status bit
As
begin

Insert into Room(RoomNo,Hostelid,Studentid,Status)values
(@RoomNo,@Hostelid,@Studentid,@Status)

end;

--Sample Query for Testing SP InsertRoomDetails

Exec InsertRoomDetails '211A',1,NULL,0

--Create Delete Procedure for Room

Create Procedure DeleteRoomDetails
@Roomid int
As
begin

Update Room
set status=0,studentid=NULL
where Roomid=@Roomid

end;

--Sample Query for Testing SP DeleteRoomDetails

Exec DeleteRoomDetails 24