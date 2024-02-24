drop table if exists rp_details;
drop table if exists status_rider;
drop table if exists rider_route_details;

drop table if exists status_pillion;
drop table if exists pillion_route_details;
drop table if exists  suggestion_table;
drop table if exists  loginrider;


	
	create table rp_details(rp_id int primary key auto_increment,name varchar(30),mobile_no varchar(10),address varchar(100),alert varchar(10),mode varchar(10));
	create table status_rider(status_id int primary key auto_increment,rp_id int,bike varchar(20), expense varchar(20),constraint fk_status_rid foreign key(rp_id) references rp_details(rp_id));
	create table rider_route_details(route_id int primary key auto_increment,status_id int,start_point varchar(20), end_point 		varchar(20),travel_date date,start_time time, end_time 				time ,description varchar(100),constraint fk_rd_rid foreign 			key(status_id) references status_rider(status_id) on delete cascade);   
	create table loginrp(id int,username varchar(20),password varchar(20) ,constraint fk_rd_pass_rid foreign key(id) references rp_details(rp_id) on delete cascade);


	
	create table status_pillion(status_id int primary key auto_increment,rp_id int,avg_expense varchar(20),constraint	fk_statusp_rid foreign key(rp_id) references rp_details(rp_id) on delete cascade);
	create table pillion_route_details(route_id int not null unique,status_id 		int,start_point varchar(20), end_point varchar(20),travel_date 			date,description varchar(100),constraint fk_prd_rid foreign key(status_id) references status_pillion(status_id) on delete cascade);
	

	  
	create table suggestion_table(rp_id int,suggestion varchar(100),constraint fk_sgtn_rid foreign key(rp_id) references rp_details(rp_id)on delete cascade);



	 insert into rp_details values(1,"Rohit","6552355","pune","no","Rider");
	 insert into rp_details(name,mobile,address,alert,mode) values("varadraj","45552355","pune","no","Rider");


	insert into status_rider values(1,1,"Fz","2000");


	insert into loginrp values(1,"rohit","rohit");
	insert into loginrp values(2,"varadraj","varadraj");
	

	insert into rider_route_details values(1,1,"wakad","lonavala","2024-02-19","10:30","1:30","we are going to enjoy the ride");
	
