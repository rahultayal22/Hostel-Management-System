
Create database Hostel;

use Hostel;
go

create table MessMenu
( Menuid int Primary key Identity(1,1),
  DayApplicable varchar(10) NOT NULL,
  Type varchar(20) NOT NULL,
  Timings varchar(20) NOT NULL
  );

  create table MenuDetails
  ( Itemid int Primary key Identity(1,1),
    Menuid int References MessMenu(Menuid),
	Itemname varchar(20) NOT NULL,
	Choice int Default 0 NOT NULL
	);

	alter table MenuDetails
	alter column Itemname varchar(50) NOT NULL;

Insert into MessMenu(DayApplicable,Type,Timings)values
('Monday','Breakfast','7:00 AM-9:00 AM'),
('Tuesday','Breakfast','7:00 AM-9:00 AM'),
('Wednesday','Breakfast','7:00 AM-9:00 AM'),
('Thursday','Breakfast','7:00 AM-9:00 AM'),
('Friday','Breakfast','7:00 AM-9:00 AM'),
('Saturday','Breakfast','7:00 AM-9:00 AM'),
('Sunday','Breakfast','7:00 AM-9:00 AM');

Insert into MessMenu(DayApplicable,Type,Timings)values
('Monday','Lunch','12:00 Noon-2:00 PM'),
('Tuesday','Lunch','12:00 Noon-2:00 PM'),
('Wednesday','Lunch','12:00 Noon-2:00 PM'),
('Thursday','Lunch','12:00 Noon-2:00 PM'),
('Friday','Lunch','12:00 Noon-2:00 PM'),
('Saturday','Lunch','12:00 Noon-2:00 PM'),
('Sunday','Lunch','12:00 Noon-2:00 PM');

Insert into MessMenu(DayApplicable,Type,Timings)values
('Monday','Evening Snacks','5:00 PM-6:00 PM'),
('Tuesday','Evening Snacks','5:00 PM-6:00 PM'),
('Wednesday','Evening Snacks','5:00 PM-6:00 PM'),
('Thursday','Evening Snacks','5:00 PM-6:00 PM'),
('Friday','Evening Snacks','5:00 PM-6:00 PM'),
('Saturday','Evening Snacks','5:00 PM-6:00 PM'),
('Sunday','Evening Snacks','5:00 PM-6:00 PM');

Insert into MessMenu(DayApplicable,Type,Timings)values
('Monday','Dinner','7:00 PM-9:00 PM'),
('Tuesday','Dinner','7:00 PM-9:00 PM'),
('Wednesday','Dinner','7:00 PM-9:00 PM'),
('Thursday','Dinner','7:00 PM-9:00 PM'),
('Friday','Dinner','7:00 PM-9:00 PM'),
('Saturday','Dinner','7:00 PM-9:00 PM'),
('Sunday','Dinner','7:00 PM-9:00 PM');





Insert into MenuDetails (Menuid,Itemname) values
(1,'Aloo Parantha'),
(1,'Butter'),
(1,'Achar'),
(1,'Milk'),
(1,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(2,'Pav Bhaji'),
(2,'Daliya'),
(2,'Milk'),
(2,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(3,'Boiled Eggs/Omlette'),
(3,'Veg Cutlets'),
(3,'Corn Flakes'),
(3,'Bread'),
(3,'Jam'),
(3,'Milk'),
(3,'Tea');


Insert into MenuDetails (Menuid,Itemname) values
(4,'Gobhi/Mix Parantha'),
(4,'Butter'),
(4,'Mint Chutney'),
(4,'Milk'),
(4,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(5,'Aloo Bhaji'),
(5,'Plain Parantha'),
(5,'Achar'),
(5,'Milk'),
(5,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(6,'Minsa Parantha'),
(6,'Green Chutney'),
(6,'Daliya'),
(6,'Milk'),
(6,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(7,'Choley Bhature'),
(7,'Achar'),
(7,'Onion'),
(7,'Coffee'),
(7,'Milk');

Insert into MenuDetails (Menuid,Itemname) values
(8,'Rajma Masala'),
(8,'Lauki Dahiwala'),
(8,'Chapati'),
(8,'Raita'),
(8,'Jeera Rice'),
(8,'Achar'),
(8,'Salad'),
(8,'Seasonal Fruit');

Insert into MenuDetails (Menuid,Itemname) values
(9,'Kadhi Pakoda'),
(9,'Aloo Jeera'),
(9,'Chapati'),
(9,'Rice'),
(9,'Salad'),
(9,'Fruit');

Insert into MenuDetails (Menuid,Itemname) values
(10,'Aloo Matar Nutri Dry'),
(10,'Kala Chana/Lobia'),
(10,'Chapati'),
(10,'Raita'),
(10,'Rice'),
(10,'Achar'),
(10,'Salad'),
(10,'Seasonal Fruit');

Insert into MenuDetails (Menuid,Itemname) values
(11,'Kaddu'),
(11,'Choley'),
(11,'Puri'),
(11,'Boondi Raita'),
(11,'Rice'),
(11,'Achar'),
(11,'Salad'),
(11,'Seasonal Fruit');

Insert into MenuDetails (Menuid,Itemname) values
(12,'Dal Makhni'),
(12,'Cabbage Mutter Aloo'),
(12,'Chapati'),
(12,'Raita'),
(12,'Rice'),
(12,'Achar'),
(12,'Salad'),
(12,'Seasonal Fruit');

Insert into MenuDetails (Menuid,Itemname) values
(13,'Chole Masala'),
(13,'Veg Biryani'),
(13,'Chapati'),
(13,'Boondi Raita'),
(13,'Achar'),
(13,'Papad'),
(13,'Green Chutney'),
(13,'Salad'),
(13,'Seasonal Fruit');

Insert into MenuDetails (Menuid,Itemname) values
(14,'Chowmein'),
(14,'Manchurian'),
(14,'Fried Rice'),
(14,'Seasonal Fruit');

Insert into MenuDetails (Menuid,Itemname,Choice) values
(14,'Vada',2),
(14,'Idli',2),
(14,'Sambhar',2),
(14,'Lemon Rice',2),
(14,'Coconut Chutney',2),
(14,'Seasonal Fruit',2);

Insert into MenuDetails (Menuid,Itemname) values
(15,'Bread Pakora'),
(15,'Saunth Chutney'),
(15,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(16,'Macroni'),
(16,'Tomato Sauce'),
(16,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(17,'Sandwich(Aloo/Veg.)'),
(17,'Tomato Sauce'),
(17,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(18,'Fried Idli'),
(18,'Coconut Chutney'),
(18,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(19,'Chowmein'),
(19,'Tomato Sauce'),
(19,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(20,'Samosa'),
(20,'Green Chutney'),
(20,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(21,'Poha'),
(21,'Tomato Sauce'),
(21,'Tea');

Insert into MenuDetails (Menuid,Itemname) values
(22,'Dal Makhani'),
(22,'Mix Veg.'),
(22,'Chapati'),
(22,'Rice'),
(22,'Achar'),
(22,'Salad'),
(22,'Sewain');

Insert into MenuDetails (Menuid,Itemname) values
(23,'Baigan Bharta/Aloo Shimla'),
(23,'Dal Arhar Malka'),
(23,'Chapati'),
(23,'Pullao'),
(23,'Achar'),
(23,'Salad'),
(23,'Fruit Custard');

Insert into MenuDetails (Menuid,Itemname) values
(24,'Chilli Paneer'),
(24,'Masoor Dal'),
(24,'Chapati'),
(24,'Rice'),
(24,'Achar'),
(24,'Salad'),
(24,'Kheer');

Insert into MenuDetails (Menuid,Itemname) values
(25,'Soya Chilli'),
(25,'Dal Tadka'),
(25,'Chapati'),
(25,'Rice'),
(25,'Achar'),
(25,'Salad'),
(25,'Ice Cream(Cup/Stick/Shahi Tukda)');

Insert into MenuDetails (Menuid,Itemname) values
(26,'Egg Curry/Paneer Matar Curry'),
(26,'Chana Dal'),
(26,'Chapati'),
(26,'Pullao'),
(26,'Achar'),
(26,'Salad'),
(26,'Gulab Jamun');

Insert into MenuDetails (Menuid,Itemname) values
(27,'Masala Khichdi'),
(27,'Aloo Matar Curry'),
(27,'Chapati'),
(27,'Green Chutney'),
(27,'Salad'),
(27,'Pastry(Chocolate/Pineapple/Vanilla)');

Insert into MenuDetails (Menuid,Itemname) values
(28,'Dal Urad Chilka with Chana'),
(28,'Bhindi Masala/Seasonal Veg.'),
(28,'Kashmiri Pulao'),
(28,'Chapati'),
(28,'Achar'),
(28,'Salad'),
(28,'Suji Halwa');

select * from MenuDetails;
select * from MessMenu;
drop table MenuDetails;
drop table MessMenu;

select ItemName from MenuDetails inner join MessMenu
on menudetails.Menuid=messmenu.Menuid
where Messmenu.Menuid=1;

update menudetails
set choice=0
where menuid != 14;