



Booking Table
Train_no
Tdate
Number_AC
Number_SL

CREATE TABLE TRAIN(
	Train_no integer not null
);


CREATE TABLE Booking_Table(
	Tdate date,
	Train_no integer not null,
	AC_no integer not null,
	SL_no integer not null,
	PRIMARY KEY (Tdate , Train_no)
    	
);
INSERT into Booking_Table (Tdate , Train_no, AC_no, SL_no) values ('2022-11-05', 10001 , 2 ,1);
INSERT into Booking_Table (Tdate , Train_no, AC_no, SL_no) values ('2022-11-04', 10022 , 0 ,1);
INSERT into Booking_Table (Tdate , Train_no, AC_no, SL_no) values ('2022-11-03', 10001 , 1 ,1);
INSERT into Booking_Table (Tdate , Train_no, AC_no, SL_no) values ('2022-11-02', 10001 , 5 ,3);
INSERT into Booking_Table (Tdate , Train_no, AC_no, SL_no) values ('2022-11-01', 10001 , 15 ,15);

Output Table
Train_no
Tdate
PNR
Name
Age
Gender
Coach_type
Berth_no
Berth_type



AC_(no)
Train_no
Tdate
Berth_no
Berth_type




SL_(no)
Train_no
Tdate
Berth_no
Berth_type

-- /////////////////////////////////////////////////////////////////////////////////////////

CREATE  TABLE SL_template( Berth_no integer not null , Berth_type varchar(2) not null, Allotment varchar not null );
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 1 ,'LB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 2 ,'MB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 3 ,'UB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 4 ,'LB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 5 ,'MB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 6 ,'UB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 7 ,'SL', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 8 ,'SU', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 9 ,'LB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 10 ,'MB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 11 ,'UB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 12 ,'LB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 13 ,'MB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 14 ,'UB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 15 ,'SL', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 16 ,'SU', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 17 ,'LB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 18 ,'MB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 19 ,'UB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 20 ,'LB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 21 ,'MB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 22 ,'UB', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 23 ,'SL', 'No');
Insert into SL_template( Berth_no, Berth_type, Allotment) values ( 24 ,'SU', 'No');


CREATE  TABLE AC_template( Berth_no integer not null , Berth_type varchar(2) not null, Allotment varchar not null );
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 1 ,'LB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 2 ,'LB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 3 ,'UB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 4 ,'UB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 5 ,'SL', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 6 ,'SU', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 7 ,'LB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 8 ,'LB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 9 ,'UB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 10 ,'UB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 11 ,'SL', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 12 ,'SU', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 13 ,'LB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 14 ,'LB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 15 ,'UB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 16 ,'UB', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 17 ,'SL', 'No');
Insert into AC_template( Berth_no, Berth_type, Allotment) values ( 18 ,'SU', 'No');



-- ////////////////////////////////////////////////////////////////////////////////////////////////////




CREATE or REPLACE FUNCTION AC_coaches()
RETURNS TRIGGER AS $$
DECLARE
	
	AC_tablename varchar;
	table_name varchar;
	q1 varchar;
	q2 varchar;
	dd varchar;
	mm varchar;
	yy varchar;
	num integer := 1;
BEGIN
	
	Execute 'Select DATE_PART(''Day'' , $1)' USING NEW.Tdate into dd;
	
	Execute 'Select DATE_PART(''MONTH'' ,$1)' USING NEW.Tdate into mm;
	
	Execute 'Select DATE_PART(''YEAR'' ,$1)' USING NEW.Tdate into yy;
	
	
	
	AC_tablename= CONCAT('AC_',new.Train_no ,'_',dd,mm,yy,'_');
	
	while num<= new.AC_no loop
		q1=CONCAT(' CREATE TABLE ',AC_tablename, num,'(  Berth_no integer not null, Berth_type varchar not null, Allotment varchar not NULL)');
		table_name=CONCAT(AC_tablename,num);
		Execute q1;
		q2=CONCAT('Insert into ' , table_name, ' Select * from AC_TEMPLATE');
		Execute q2;
		num=num+1;
		
		
	END loop;
	RETURN NULL;
END;
$$
Language 'plpgsql';



-- //////////////////////////

CREATE TRIGGER Wac
after INSERT ON Booking_Table
for each row 
EXECUTE Procedure AC_coaches();

-- ////////////////////////////



CREATE TRIGGER Wsl
after INSERT ON Booking_Table
for each row 
EXECUTE Procedure SL_coaches();


-- /////////


CREATE TRIGGER Del
AFTER DELETE on Booking_Table
For each row
Execute PROCEDURE Del_child();



CREATE or REPLACE FUNCTION DEl_child()
RETURNS TRIGGER AS $$
DECLARE
	num integer:=1;
	dd varchar;
	mm varchar;
	yy varchar;
	q1 varchar;
	table_name varchar;
	Sl_tablename varchar;
	Ac_tablename varchar;
	
	
	
BEGIN
	
	Execute 'Select DATE_PART(''Day'' , $1)' USING OLD.Tdate into dd;
	
	Execute 'Select DATE_PART(''MONTH'' ,$1)' USING OLD.Tdate into mm;
	
	Execute 'Select DATE_PART(''YEAR'' ,$1)' USING OLD.Tdate into yy;
	
	sl_tablename=CONCAT('SL_',old.Train_no ,'_',dd,mm,yy,'_');
	ac_tablename=CONCAT('AC_',old.Train_no ,'_',dd,mm,yy,'_');
	
	while num<= old.SL_no loop
		q1=CONCAT(' DROP TABLE ',SL_tablename, num);
		Execute q1;
		
		num=num+1;
		
		
	END loop;
	
	num=1;
	while num<= old.AC_no loop
		q1=CONCAT(' DROP TABLE ',AC_tablename, num);
		
		Execute q1;
		
		num=num+1;
		
		
	END loop;
	RETURN NULL;
END;
$$
Language 'plpgsql';


-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
CREATE or REPLACE FUNCTION SL_coaches()
RETURNS TRIGGER AS $$
DECLARE
	
	SL_tablename varchar;
	table_name varchar;
	q1 varchar;
	q2 varchar;
	dd varchar;
	mm varchar;
	yy varchar;
	num integer := 1;
BEGIN
	
	Execute 'Select DATE_PART(''Day'' , $1)' USING NEW.Tdate into dd;
	
	Execute 'Select DATE_PART(''MONTH'' ,$1)' USING NEW.Tdate into mm;
	
	Execute 'Select DATE_PART(''YEAR'' ,$1)' USING NEW.Tdate into yy;
	
	
	
	SL_tablename= CONCAT('SL_',new.Train_no ,'_',dd,mm,yy,'_');
	
	while num<= NEW.SL_no loop
		q1=CONCAT(' CREATE TABLE ',SL_tablename, num,'(  Berth_no integer not null, Berth_type varchar not null, Allotment varchar not NULL)');
		table_name=CONCAT(SL_tablename,num);
		Execute q1;
		q2=CONCAT('Insert into ' , table_name, ' Select * from SL_TEMPLATE');
		Execute q2;
		num=num+1;
		
		
	END loop;
	RETURN NULL;
END;
$$
Language 'plpgsql';

-- //////////////////////////////////////////////////////////////////////////////////



-- x(Type of coach) y(No of caoches of SL or AC)

Delimiter $$
CREATE OR REPLACE FUNCTION Avail_Seats( Tdate date, Train_no integer, x varchar, y integer)
RETURNS integer
DECLARE
	count integer:=0;
	dd integer;
	mm integer;
	yy integer;
	tablename varchar;
	num integer :=1;
	coach varchar;
	seats integer;
	q1 varchar;
	q2 varchar;
	q3 integer;
BEGIN

	Execute 'Select DATE_PART(''Day'' , $1)' USING Tdate into dd;
	
	Execute 'Select DATE_PART(''MONTH'' ,$1)' USING Tdate into mm;
	
	Execute 'Select DATE_PART(''YEAR'' ,$1)' USING Tdate into yy;
	
	
	
	if x='AC' or x='ac' or x='Ac' or x='ac' then
		coach='AC';
		
	end if;
	if x='SL' or x='sl' or x='Sl' or x='sL'then
		coach='SL';
		
	END IF;
	
	tablename= CONCAT(coach,'_',Train_no ,'_',dd,mm,yy,'_');
	
	while num<=y loop
		q1=CONCAT(tablename, num);
		q2= CONCAT('Select count(Allotment) from ' ,q1 , ' Q where Q.Allotment=''No''');
		Execute q2 into q3;
		count=count+q3;
		num=num+1;
	end loop;
	return count;
END;
$$
Delimeter;
Language 'plpgsql';


-- //////////////////////////////////////////////////////////////////////////////////////////



CREATE TABLE TICKET(
	PNR text,
	Tdate date,
	Train_no integer,
	Ticket_type varchar,
	No_of_Ticket integer,
	
	PRIMARY KEY (PNR)
);

Insert into ticket (PNR,Tdate,Train_no,Ticket_type,No_of_Ticket) values ('1234','2022-09-09',54321, 'AC', 4);
//////////////////////////////////////////////
CREATE trigger AD_TICKET
Before insert on TICKET
FOR EACH ROW
EXECUTE PROCEDURE Check_a();



CREATE OR REPLACE FUNCTION Check_a()
RETURNS TRIGGER AS $$
DECLARE
	q1 varchar;
	q2 varchar;
	q3 varchar;
	r3 varchar;
	x integer;
	i record;
	c integer:=0;
	
BEGIN
	q1=CONCAT(new.Ticket_type,'_no ');
	q2=CONCAT('Select B.',q1, ' from booking_table B where B.Train_no=',new.Train_no);
	q3=CONCAT('Select * from booking_table B where ', ' B.Tdate='' ',new.Tdate,' '' ');
	for i in Execute q3
	loop 
		if i.Train_no=new.Train_no then
		c=1;
		end if;
	
	end loop;
	if c=0 then
		--RAISE EXCEPTION 'Train is not available on this date';
		RETURN NULL;
	end if;
	
	Execute q2 into x;
	if x<=0 then
		--RAISE EXCEPTION 'DESIRED COACH NOT AVAILABLE';
		RETURN NULL;
	end if;
	
	if Avail_seats(new.Tdate,new.Train_no,new.Ticket_type,x) <new.No_of_Ticket then
		--RAISE EXCEPTION 'SEATS NOT AVAILABLE';
		RETURN NULL;
	end if;
	
	Return NEW;
END;
$$
language 'plpgsql';





////////////////////////////////////////////

Create trigger AD_TIC
AFTER insert ON TICKET
FOR EACH ROW
EXECUTE PROCEDURE  Seat_Update();



CREATE OR REPLACE  FUNCTION Seat_update()
RETURNS TRIGGER AS $$
DECLARE
	
	count integer:=1;
	dd integer;
	mm integer;
	yy integer;
	tablename varchar;
	num integer :=1;
	coach varchar;
	seats integer;
	c varchar;
	q1 varchar;
	q2 varchar;
	q3 integer;
	i record;
	i1 varchar;
	i2 varchar;
	query1 varchar;
	query2 varchar;
	query3 varchar;
	type varchar;
	Tdate date:=new.Tdate;
	Train_no integer :=new.Train_no;
	x varchar :=new.Ticket_type;
	ticket integer:=NEW.no_of_ticket;
	PNR text:=NEW.PNR;
	y integer;
	t varchar;
	
BEGIN
	
	
	
	
	
	Execute 'Select DATE_PART(''Day'' , $1)' USING Tdate into dd;
	
	Execute 'Select DATE_PART(''MONTH'' ,$1)' USING Tdate into mm;
	
	Execute 'Select DATE_PART(''YEAR'' ,$1)' USING Tdate into yy;
	
	
	
	if x='AC' or x='ac' or x='Ac' or x='ac' then
		coach='AC';
		c='A';
		y=18;
	end if;
	if x='SL' or x='sl' or x='Sl' or x='sL'then
		coach='SL';
		c='S';
		y=24;
	END IF;
	
	tablename= CONCAT(coach,'_',Train_no ,'_',dd,mm,yy,'_');
	query1=CONCAT ('CREATE TABLE output_',Train_no,'_',PNR ,' (index integer , Coach_no varchar , Berth_no integer,  Berth_type varchar, Primary key (index))');
	Execute query1;
	t=CONCAT('output_',Train_no,'_',PNR);
	while (num<=y) and (count<=ticket) loop
		q1=CONCAT(tablename, num);
		q2= CONCAT('Select count(Q.Allotment) from ' ,q1 , ' Q where Q.Allotment=''No''');
		Execute q2 into q3;
		
		i1=CONCAT('select Q.Berth_no from ' ,q1 , ' Q where Q.Allotment=''No''');
		

		if q3>0 then
			for i in EXECUTE i1 
			loop
				if count<=ticket then

					q2=CONCAT('UPDATE ', q1, ' SET Allotment=''Yes'' where Berth_no=',i);
					Execute q2;
					query3=CONCAT('Select Q.Berth_type from ', q1, ' Q  where Q.Berth_no=',i);
					Execute query3 into type;
					i2=CONCAT(c,num);
					
					query2=CONCAT('INSERT INTO ',t, '(index, Coach_no ,Berth_no, Berth_type) values (' ,count, ', $1, '  ,i, ' ,$2)');
					   
					Execute  query2 using i2,  type;
					count=count+1;
				end if;
				if count>ticket then
					exit;
				end if;
			end loop;

		end if;	
		
		num=num+1;

	end loop;
	if (count-1<ticket) then
		RAISE EXCEPTION 'NOT AVAILABLE';
	end if;
	
	

	return NULL;
END;
$$
language 'plpgsql';



