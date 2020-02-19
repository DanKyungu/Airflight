use master;
go
if not exists(select * from sys.databases where name='db_airflight')
	create database db_airflight;
go
use db_airflight;
go
create table Passengers
(
    reg_id nvarchar(200), --- can be generated in C# code automatically or you can change this as integer (incremental)
    passport_no nvarchar(200),
    visa nvarchar(200),
    t_name nvarchar(200),
    l_name nvarchar(200),
    email nvarchar(200),
    adress nvarchar(200),
    contact nvarchar(200),
    pin_no nvarchar(200),
    constraint pk_passenger primary key(reg_id)
)
go