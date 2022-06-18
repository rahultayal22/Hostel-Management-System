 Create Table Hostels
 ( Hostelid int Primary KEY IDentity(1,1),
   HostelName varchar(25) NOT NULL,
   Capacity int NOT NULL,
   OccupiedBeds int NOT NULL,
   Constraint CHK_Occupied_Beds Check(OccupiedBeds <=Capacity),
   BlockNo varchar(3) NOT NULL,
   CreatedOn datetime Default getdate(),
   ModifiedOn datetime,
   Status bit Default 1
   );

   alter table Hostels
   add Type varchar(5) NOT NULL Default 'NIL';
   
    alter table Hostels
   add BedType varchar(10) NOT NULL Default 'NIL';

    Insert into Hostels (Hostelname,Capacity,OccupiedBeds,BlockNo,Type,BedType) values
	('Sarabhai',500,347,'I','Boys','Triple'),
    ('Bhabha',732,605,'II','Boys','Double'),
    ('Bose',418,398,'III','Boys','Single'),
    ('Raman',460,431,'IV','Boys','Single');

	Insert into Hostels (Hostelname,Capacity,OccupiedBeds,BlockNo,Type,BedType) values
	('Kasturba',325,270,'I','Girls','Double')
	('Sarojini',575,488,'II','Girls','Triple');

   Select * from Hostels;
