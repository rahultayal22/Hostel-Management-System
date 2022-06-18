
--Create View to display all full mess menu

Create view FullMenu
As
Select DayApplicable,Type,Timings,Itemname,Choice
from MessMenu as mm Inner Join MenuDetails as md
on mm.Menuid=md.Menuid;

--Create view to display items Day and Time wise Menu

create procedure DayTimeWiseMenu
@DayApplicable varchar(10),@Timings varchar(20)
As
Begin
Select DayApplicable,Type,Timings,Itemname,Choice
from MessMenu as mm Inner Join MenuDetails as md
on mm.Menuid=md.Menuid
where DayApplicable=@DayApplicable AND Timings=@Timings
End;

exec DayTimeWiseMenu'Monday','7:00 AM-9:00 AM';

--Create view to display items Day wise Menu

create procedure DayWiseMenu
@DayApplicable varchar(10)
As
Begin
Select DayApplicable,Type,Timings,Itemname,Choice
from MessMenu as mm Inner Join MenuDetails as md
on mm.Menuid=md.Menuid
where DayApplicable=@DayApplicable
End;

exec DayWiseMenu'Monday';

select * from FullMenu;