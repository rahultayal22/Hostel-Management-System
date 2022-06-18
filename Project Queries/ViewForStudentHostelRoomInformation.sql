
--Create view to Display Student Hostel Room Information(Joining of tables- Users,Student,Hostel,Room)

Create view StudentHostelRoomInformation
as
SELECT        dbo.Users.Userid, dbo.Student.Studentid, dbo.Student.Name, dbo.Student.Enrollno, dbo.Student.Year, dbo.Student.Sem, dbo.Student.Program, dbo.Student.Branch, dbo.Student.EnrolmentPeriod, dbo.Student.FatherName, 
                         dbo.Student.MotherName, dbo.Student.DOB, dbo.Student.EmailID, dbo.Student.StudentContactNo, dbo.Student.FatherContactNo, dbo.Student.MotherContactNo, dbo.Student.Address, dbo.Student.PhotoPath, dbo.Hostels.Hostelid, 
						 dbo.Room.Roomid ,dbo.Hostels.HostelName, dbo.Hostels.BlockNo, dbo.Room.RoomNo
FROM            dbo.Users INNER JOIN
                         dbo.Student ON dbo.Users.Userid = dbo.Student.Userid INNER JOIN
                         dbo.Hostels ON dbo.Student.Hostelid = dbo.Hostels.Hostelid INNER JOIN
                         dbo.Room ON dbo.Student.Roomid = dbo.Room.Roomid