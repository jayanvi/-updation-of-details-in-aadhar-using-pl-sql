Create table aadhar(a_num number, c_ename varchar2(100),address varchar2(100),mob_num number,email varchar2(50));

insert into aadhar values(123412341234, 'abcd', 'vijayawada',9999999999,'abcd@gmail.com');
insert into aadhar values(567856787890, 'motu', 'vijayawada',9999999999,'motu@gmail.com');
insert into aadhar values(123456789012, 'piro', 'guntur',9989788990,'pir1@gmail.com');
insert into aadhar values(246810121618, 'bond', 'kurnool',7890978990,'bond@gmail.com');
insert into aadhar values(481216202428, 'singh', 'chittor',9678056734,'sing2@gmail.com');
insert into aadhar values(481214502421, 'tinku', 'vizag',9678056734,'tink2@gmail.com');
insert into aadhar values(251216202427, 'rinku', 'amaravathi',9678056734,'rinku@gmail.com');
insert into aadhar values(331216202425, 'shiro', 'hyderabad',9678056734,'shir0@gmail.com');
insert into aadhar values(711216202422, 'dora', 'hyderabad',9345662734,'dora@gmail.com');
insert into aadhar values(591216202570, 'nobita','vijayawda',9678012234,'nobi@gmail.com');
insert into aadhar values(591216202568, 'sheero','kurnool',9678056734,'sheero@gmail.com');
insert into aadhar values(591216342428, 'hydi','chennai',9673456745,'hydi@gmail.com');
insert into aadhar values(545616202429, 'anjum','pune',9678056755,'anju@gmail.com');
insert into aadhar values(934216202424, 'priyan','vizag',9678067734,'p111@gmail.com');
insert into aadhar values(678216202458, 'janu', 'vijayawda',9634056734,'janu1@gmail.com');

/* creating a procedure*/

create or replace procedure updation_of_aadhar(u_a_num number,u_ename varchar2,u_address varchar2,u_mob_num number,u_email varchar2, u_status out varchar2)
as
begin

 if sql%found then
  commit;
  dbms_output.put_line('details updated successfully');
 else
  rollback;
  dbms_output.put_line('ouch!something went wrong please try later');
 end if;
end updation_of_aadhar;
/


declare
  resul varchar2(20);

begin 
   updation_of_aadhar( u_a_num=>123412341234,u_ename=>'anvi', u_address=>'vijayawada', u_mob_num=>9999999999,u_email=>'abcd@gmail.com',u_status=>resul);
end;
/