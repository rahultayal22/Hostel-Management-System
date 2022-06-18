
--Creating view to Display NoticeInformation (joining tables include-Users,Staff & Notice)

Create view NoticeInformation
as
SELECT        dbo.Users.Userid, dbo.Staff.StaffName, dbo.Staff.StaffType, dbo.Notices.Noticeid, dbo.Notices.IssuedOn, dbo.Notices.ApprovedBy, dbo.Notices.UploadedOn, dbo.Notices.Validity, dbo.Notices.Description, 
                         dbo.Notices.Title, dbo.Notices.LinkPath
FROM            dbo.Users INNER JOIN
                         dbo.Staff ON dbo.Users.Userid = dbo.Staff.Userid INNER JOIN
                         dbo.Notices ON dbo.Staff.Staffid = dbo.Notices.ApprovedBy