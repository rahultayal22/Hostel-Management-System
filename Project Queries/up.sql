
--Create Update Proedure For LostFound
Create procedure UpdateLostFoundDetails
@LFid int,@Type varchar(100),@ItemName varchar(100),@Description varchar(200),@LF_On datetime,@LF_By int,@Location varchar(200),
@SubmittedTo int, @claim bit
As
begin

Update LostFound
