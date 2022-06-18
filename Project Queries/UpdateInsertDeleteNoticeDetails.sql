
--Create Update Procedure for Notices

Create procedure UpdateNoticeDetails
@Noticeid int,@UploadedOn date,@Validitiy date, @Description varchar(1000),@Title varchar(50),@Linkpath varchar(700)
As
Begin
Update Notices
set UploadedOn=@UploadedOn,Validity=@Validitiy,Description=@Description,Title=@Title,LinkPath=@Linkpath,ModifiedOn=getdate()
where Noticeid=@Noticeid
End;

--Sample Query for Testing SP UpdateNoticeDetails

Exec UpdateNoticeDetails 4,'2020-06-25','2020-06-29','Dear Students

Due to some technical issues, the hostel allotment process for session 2020-21 is extended for a couple of days. All the students will be intimated once it resolved.

Stay safe!

Best Regards
Dr. Parveen Kumar
Chief warden','Regarding Extension',NULL

--Create Insert Procedure for Notices

Create procedure InsertNoticeDetails
@IssuedOn date,@ApprovedBy int, @UploadedOn date, @Validity date, @Description varchar(1000),@Title varchar(50),@Linkpath varchar(700)
As
begin

Insert into  Notices(IssuedOn,ApprovedBy,UploadedOn,Validity,Description,Title,LinkPath) values
(@IssuedOn,@ApprovedBy,@UploadedOn,@Validity,@Description,@Title,@Linkpath)
End;

--Sample Query for Testing SP InsertNoticeDetails

Exec InsertNoticeDetails '2022-03-08',41,'2022-03-10','2022-03-31',NULL,'Result Declaration of MBA (2nd Trimester) for End-Term Examinations (Academic Year 2021-22)',
'file:///E:/Hostel%20Project%20Notices/2390imguf_021Notice-ResultDeclarationofMBA(2ndTrimester)forEnd-TermExaminations(AcademicYear2021-22).pdf'

--Create Delete Procedure for Notices

Create Procedure DeleteNoticeDetails
@Noticeid int
As
begin
Update Notices
set Status=0
where Noticeid=@Noticeid
end;

--Sample Query for Testing SP DeleteNoticeDetails

Exec DeleteNoticeDetails 1

