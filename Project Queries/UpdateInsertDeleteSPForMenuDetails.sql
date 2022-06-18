
--Create update Procedure for MenuDetails

Create Procedure UpdateMenuDetails
@Itemid int,@Menuid int,@Itemname varchar(20),@Choice int
As
Begin
Update MenuDetails
set Menuid=@Menuid,Itemname=@Itemname,Choice=@Choice
where Itemid=@Itemid
End;

--Sample Query for Testing SP UpdateMenuDetails

Exec UpdateMenuDetails 1,1,'Aloo Parantha',0;

--Create Insert Procedure for MenuDetails


Create Procedure InsertMenuDetails
@Menuid int,@Itemname varchar(20),@Choice int
As
Begin
Insert into MenuDetails(Menuid,Itemname,Choice) Values
(@Menuid,@Itemname,@Choice)
End;

--Sample Query for Testing SP InsertMenuDetails

Exec InsertMenuDetails 28,'Kaju Burfi',0;

--Create Delete Procedure for MenuDetails

Create Procedure DeleteMenuDetails
@Itemid int
As
Begin
Delete from MenuDetails
where Itemid=@Itemid
End;

--Sample Query for Testing SP DeleteMenuDetails

Exec DeleteMenuDetails 164;