select Spacecraft,
    [Launch date],
    [Carrier rocket],
    Operator,
    [Mission type]
into SuccessfulMissions
from MoonMissions
where Outcome = 'Successful'; 
GO


UPDATE 
 SuccessfulMissions
SET
   Operator = trim(Operator)  
GO

select *
from SuccessfulMissions;

update  SuccessfulMissions
set Spacecraft = 
trim( left(Spacecraft , 
CHARINDEX('(', Spacecraft + '(')-1 ) )
from SuccessfulMissions;
GO

select
    Operator ,
    [Mission type],
    count(Operator + [Mission type]) 
as [Mission count]
from SuccessfulMissions
group by Operator, [Mission type]
having count(Operator + [Mission type]) > 1
GO


select ID, UserName, [Password],
    concat(FirstName ,' ',LastName) as Name,
    case when convert(int,SUBSTRING(id, 10,1) % 2) = 0
then 'Female' else 'Male'  END as Gender,
    Email, Phone
into NewUsers
from Users;
Go

select UserName, COUNT(UserName )
from NewUsers
group by UserName
having count(UserName ) > 1
GO

update NewUsers
set UserName =  substring(Name, 2,4 )
where UserName  in ('felber', 'sigpet') 
GO

DELETE FROM NewUsers 
WHERE LEFT(ID,2) < 70;
GO

insert into NewUsers
    (ID,UserName,[Password],Name,Gender,Email,Phone)
values
    ('740213-2387', 'sofbo', '0f70d00c41c000096766a57abe1b4200',
        'Sara Aminzadeh', 'Female', 'sara@aminzadeh.se', '0723-128425' );
GO


select Gender, AVG( datediff(year, 
   convert(datetime, left(id, 6)), getdate())) as Average
from NewUsers
group by Gender;
   GO