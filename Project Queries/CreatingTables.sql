 
Create Table Student
( Name varchar(50) NOT NULL,
Enrollno int NOT NULL UNIQUE,
Studentid int Primary KEY IDentity(1,1),
Userid int References Users(Userid) NOT NULL UNIQUE,
Hostelid int References Hostels(Hostelid) NOT NULL,
Year varchar(50) NOT NULL,
Sem varchar(50) NOT NULL,
Program varchar(50) NOT NULL,
Branch varchar(100) NOT NULL,
EnrolmentPeriod varchar(50) NOT NULL,
FatherName varchar(50) NOT NULL,
MotherName varchar(50) NOT NULL,
DOB date NOT NULL,
EmailID varchar(50) NOT NULL,
StudentContactNo varchar(50) NOT NULL,
FatherContactNo varchar(50) NOT NULL,
MotherContactNo varchar(50) NOT NULL,
Address varchar(100) NOT NULL,
PhotoPath varchar(700) ,
CreatedOn datetime Default getdate(),
ModifiedOn datetime,
Status bit Default 1,
Roomid int References Room(Roomid)
);

alter table student
add Roomid int References Room(Roomid)


Create Table Users
( Userid int Primary Key Identity(1,1),
  UserType varchar(20) NOT NULL,
  Password varchar(25) NOT NULL,
  CreatedOn datetime Default getdate(),
  ModifiedOn datetime,
  LastLogin datetime,
  Status bit Default 1
  );

 
 Create Table Hostels
 ( Hostelid int Primary KEY IDentity(1,1),
   HostelName varchar(25) NOT NULL,
   Capacity int NOT NULL,
   OccupiedBeds int NOT NULL,
   Constraint CHK_Occupied_Beds Check(OccupiedBeds<=Capacity),
   BlockNo varchar(3) NOT NULL,
   Type varchar(20) NOT NULL,
   BedType varchar(20) NOT NULL,
   CreatedOn datetime Default getdate(),
   ModifiedOn datetime,
   Status bit Default 1
   );


   Create Table Staff
   ( Staffid int Primary Key Identity(1,1),
   StaffName varchar(50) NOT NULL,
   Userid int References Users(Userid) NOT NULL UNIQUE,
   StaffType varchar(25) NOT NULL,
   Age int NOT NULL,
   ContactNo varchar(10) NOT NULL UNIQUE,
   EmailID varchar(50) NOT NULL,
   PhotoPath varchar,
   CreatedOn datetime Default getdate(),
   ModifiedOn datetime,
   Status bit Default 1
   );

   Create Table LostFound
   ( LFid int Primary Key Identity(1,1),
     Type varchar(100) NOT NULL,
     ItemName varchar(100) NOT NULL,
	 Description varchar(200),
	 LF_On datetime,
	 Location varchar(200),
	 SubmittedTo int References Staff(Staffid),
	 Claim bit Default 0,
	 ClaimedOn datetime,
	 );


	 Create Table Notices
	 ( Noticeid int Primary Key Identity(1,1),
	   IssuedOn date NOT NULL,
	   ApprovedBy int References Staff(Staffid) NOT NULL,
	   UploadedOn date NOT NULL,
	   Validity date NOT NULL,
	   Description varchar(1000),
	   Title varchar(50) NOT NULL,
	   LinkPath varchar(700),
	   CreatedOn datetime Default getdate(),
       ModifiedOn datetime,
       Status bit Default 1
	   );

	   
	  Create Table LeaveApp
	 (Appid int Primary Key Identity(1,1),
	  Studentid int References Student(Studentid),
	  LeaveFrom date NOT NULL,
	  LeaveUpto date NOT NULL,
	  Reason varchar(100) NOT NULL,
	  PlaceOfVisit varchar(50) NOT NULL,
	  ProcessedOn date,
	  ProcessedBy int References Staff(Staffid),
	  AppliedOn datetime Default getdate() NOT NULL
	  Status varchar(20)Default 'Request Not Processed'
	  );

	  Alter table leaveapp
	  add Status varchar(20) Default 'Request Not Processed';

	  create Table Staff_Hostel
	 (
	    Staffid int references Staff(Staffid),
		Hostelid int references Hostels(Hostelid)
	 );

	 create Table Users_LostFound
	 (
		LFid int references LostFound(LFid),
		LF_By int references Users(Userid) NOT NULL,
		ClaimedBy int References Users(Userid)
	 );

	 Create Table Room
	 (
	 Roomid int Primary Key Identity(1,1),
	 RoomNo varchar(10) NOT NULL,
	 Hostelid int References Hostels(Hostelid) NOT NULL,
	 Studentid int References Student(Studentid),
	 Status bit default 1 UNIQUE
	 );

	 
