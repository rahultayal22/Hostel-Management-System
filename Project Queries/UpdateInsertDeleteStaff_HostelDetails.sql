
--Create Insert procedure for Staff_Hostel

Create Procedure InsertStaff_HostelDetails
@Staffid int, @Hostelid int
As
Begin

Insert into Staff_Hostel(Staffid,Hostelid) values(@Staffid,@Hostelid)

End;

--Sample Query for Testing SP InsertStaff_HostelDetails

Declare @staffid as int;
Exec InsertStaffDetails 'Seema Yadav',43,'Assistant Warden',34,'96659XXXXX','asswar2kasturba@university.in',NULL,@staffid OUTPUT;

Exec InsertStaff_HostelDetails @staffid,6

--Create Delete Procedure for Staff_Hostel

Create Procedure DeleteStaff_HostelDetails
@Staffid int,@Hostelid int
As
begin

Delete from Staff_Hostel
where Staffid=@Staffid AND Hostelid=@Hostelid

end;

--Sample Query for Testing SP DeleteStaff_HostelDetails

Exec DeleteStaff_HostelDetails 49,6