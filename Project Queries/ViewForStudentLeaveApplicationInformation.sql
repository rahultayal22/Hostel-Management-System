
--Create view to Display Student Leave Application Information(Joining of tables- Users,Student,LeaveApp & Staff)


Create View StudentLeaveAppInformation
As
 SELECT        dbo.Users.Userid, dbo.Student.Studentid, dbo.Student.Name, dbo.Student.Enrollno, dbo.Student.Year, dbo.Student.Sem, dbo.Student.Program, dbo.Student.Branch, dbo.Student.EnrolmentPeriod, dbo.Student.FatherName, 
                         dbo.Student.MotherName, dbo.Student.DOB, dbo.Student.EmailID, dbo.Student.StudentContactNo, dbo.Student.FatherContactNo, dbo.Student.MotherContactNo, dbo.Student.Address, dbo.Student.PhotoPath,  dbo.LeaveApp.Appid, dbo.LeaveApp.LeaveFrom, dbo.LeaveApp.LeaveUpto, dbo.LeaveApp.Reason, dbo.LeaveApp.PlaceOfVisit, dbo.LeaveApp.ProcessedOn, dbo.LeaveApp.ProcessedBy, 
                         dbo.LeaveApp.AppliedOn,dbo.Room.Roomid, 
                         dbo.Room.RoomNo, dbo.Hostels.Hostelid, dbo.Hostels.HostelName, dbo.Hostels.BlockNo, dbo.Staff.Staffid, dbo.Staff.StaffName, dbo.Staff.StaffType,dbo.LeaveApp.Status
FROM            dbo.Users INNER JOIN
                         dbo.Student ON dbo.Users.Userid = dbo.Student.Userid INNER JOIN
                         dbo.LeaveApp ON dbo.Student.Studentid = dbo.LeaveApp.Studentid INNER JOIN
                         dbo.Room ON dbo.Student.Roomid = dbo.Room.Roomid  INNER JOIN
                         dbo.Hostels ON dbo.Student.Hostelid = dbo.Hostels.Hostelid Left Outer JOIN
                         dbo.Staff ON dbo.LeaveApp.ProcessedBy = dbo.Staff.Staffid