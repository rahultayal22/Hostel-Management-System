
--Create view to Display StaffHostelInformation (joining tables include-Users,Staff,Staff_Hostel,Hostel)

Create view  StaffHostelInformation
As
SELECT        dbo.Users.Userid, dbo.Staff.Staffid, dbo.Staff.StaffName, dbo.Staff.StaffType, dbo.Staff.ContactNo, dbo.Staff.EmailID, dbo.Staff.PhotoPath, dbo.Staff.Age, dbo.Hostels.Hostelid, dbo.Hostels.HostelName, dbo.Hostels.Capacity, 
                         dbo.Hostels.OccupiedBeds, dbo.Hostels.BlockNo, dbo.Hostels.Type, dbo.Hostels.BedType
FROM            dbo.Users INNER JOIN
                         dbo.Staff ON dbo.Users.Userid = dbo.Staff.Userid INNER JOIN
                         dbo.Staff_Hostel ON dbo.Staff.Staffid = dbo.Staff_Hostel.Staffid INNER JOIN
                         dbo.Hostels ON dbo.Staff_Hostel.Hostelid = dbo.Hostels.Hostelid