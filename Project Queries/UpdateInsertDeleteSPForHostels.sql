
--Create Update Procedure for Hostels

Create Procedure UpdateHostelDetails
@Hostelid int,@HostelName varchar(50),@Capacity int,@OccupiedBeds int,
@BlockNo varchar(3),@Type varchar(20),@BedType varchar(20)
As
Begin

update Hostels
set HostelName=@HostelName,Capacity=@Capacity,OccupiedBeds=@OccupiedBeds,
BlockNo=@BlockNo,Type=@Type,BedType=@BedType,ModifiedOn=getdate()
where Hostelid=@Hostelid

End;

 --Sample Query for Testing SP UpdateHostelDetails

 Exec UpdateHostelDetails 6,'Sarojini',575,489,'II','Girls','Triple'

 --Create Insert Procedure for Hostels

 Create Procedure InsertHostelDetails
 @HostelName varchar(50),@Capacity int,@OccupiedBeds int,
@BlockNo varchar(3),@Type varchar(20),@BedType varchar(20)
As 
Begin

Insert into Hostels(HostelName,Capacity,OccupiedBeds,BlockNo,Type,BedType)values
(@HostelName,@Capacity,@OccupiedBeds,@BlockNo,@Type,@BedType)

End;

----Sample Query for Testing SP InsertHostelDetails

Exec InsertHostelDetails 'Ambedkhar',1000,500,'V','Boys','Single'

--Create Delete Procedure for Hostels

 Create Procedure DeleteHostelDetails
@Hostelid int
As
Begin
Delete from Hostels
where Hostelid=@Hostelid
End;

--Sample Query for Testing SP DeleteUserDetails

Exec DeleteHostelDetails 7