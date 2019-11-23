create database blood
use blood

create table admin(id_admin int identity primary key,nom varchar(20),prenom varchar(20),username varchar(14),numbre_message int ,mdps varchar(14))
updete donneur set dernier_rendez='01/01/2018' where cin='hh1111'
create table donneur(cin varchar(8) primary key,
						nom varchar(14),prenom varchar(14),sexe varchar(5) check(sexe in('Homme','Femme'))
						,age int,poids int,type_s varchar(3)
						,maladier bit,type_maldier varchar(300),
						ville varchar(14),telephone int,email varchar(30),
						mdps varchar(14),dernier_rendez date,etat bit,numbre_message int )

create table rendez_vous (id_rendez int identity primary key,
					date_rendezvous datetime,
					cin varchar(8) references donneur)
					
create table donnation(id_donnation int identity primary key,
					cin varchar(8) references donneur,date_donnation date)

create table message(id int identity primary key,
					cin varchar(8) references donneur,text_message varchar(500),date_message date,type varchar(1))
					
					
					
					
					
create proc type_sang
@ville varchar(14),
@type varchar(3)
as
begin
	if(@type='AB+')
	begin
		select nom,prenom,sexe,age,type_s,telephone,email from donneur where ville=@ville and etat=1 and datediff(month,dernier_rendez,getdate())>=2 and type_s in('AB+' ,'AB-','A+','A-','B+','B-','O+','O-')
	end
	if(@type='AB-')
	begin
		select nom,prenom,sexe,age,type_s,telephone,email from donneur where ville=@ville and etat=1 and datediff(month,dernier_rendez,getdate())>=2 and type_s in('AB-','A-','B-','O-')
	end
	if(@type='A+')
	begin
		select nom,prenom,sexe,age,type_s,telephone,email from donneur where ville=@ville and etat=1 and datediff(month,dernier_rendez,getdate())>=2 and type_s in('A+','A-','O+','O-')
	end
	if(@type='A-')
	begin
		select nom,prenom,sexe,age,type_s,telephone,email from donneur where ville=@ville and etat=1 and datediff(month,dernier_rendez,getdate())>=2 and type_s in('A-','O-')
	end
	if(@type='B+')
	begin
		select nom,prenom,sexe,age,type_s,telephone,email from donneur where ville=@ville and etat=1 and datediff(month,dernier_rendez,getdate())>=2 and type_s in('B+','B-','O+','O-')
	end
	if(@type='B-')
	begin
		select nom,prenom,sexe,age,type_s,telephone,email from donneur where ville=@ville and etat=1 and datediff(month,dernier_rendez,getdate())>=2 and type_s in('B-','O-')
	end
	if(@type='O+')
	begin
		select nom,prenom,sexe,age,type_s,telephone,email from donneur where ville=@ville and etat=1 and datediff(month,dernier_rendez,getdate())>=2 and type_s in('O+','O-')
	end
	if(@type='O-')
	begin
		select nom,prenom,sexe,age,type_s,telephone,email from donneur where ville=@ville and etat=1 and datediff(month,dernier_rendez,getdate())>=2 and type_s in('O-')
	end
end
	

create proc P_rendez_vous
@ret date output
as
begin
	declare @date_rend date
	set @date_rend=DATEADD(DAY,1,GETDATE())
	if((select COUNT(*) from rendez_vous where date_rendezvous=@date_rend)<100)
	begin
	set @ret=@date_rend
	end
	else
	begin
		while((select COUNT(*)from rendez_vous where date_rendezvous=@date_rend)>100)
		begin
			set @date_rend=DATEADD(DAY,1,@date_rend)
		end
	end
end

create proc autorisation
@cin varchar(8),
@ret char(1) output
as
begin
	if((select COUNT(*) from donnation where cin=@cin)>0)
	begin
	if(DATEDIFF(MONTH,(select date_donnation top1 from donnation where cin=@cin),getdate())>=2)
	begin 
		if((select COUNT(*) from donnation where year(date_donnation)=year(GETDATE()))<5)
		begin
			set @ret=''
		end
		else
		begin
			set @ret='0'
		end
	end
	else
	begin
		set @ret='0'
	end
	end
	else
	begin
		set @ret=''
	end
end



create proc insert_donneur
@cin varchar(8),
@nom varchar(14),
@prenom varchar(14),
@sexe varchar(5),
@age int,
@poids int,
@type_s varchar(3),
@maladier bit,
@type_maldier varchar(300),
@ville varchar(14),
@telephone int,
@email varchar(30),
@mdps varchar(14),
@dernier_donnation date,
@ret varchar(300) output
as
begin
	begin try
		declare @etat bit
		if(@maladier=1)
		begin
			set @etat=0
		end
		else
		begin
			set @etat=1
		end
		insert into donneur values(@cin,@nom,@prenom,@sexe,@age,@poids,@type_s,@maladier,
		@type_maldier,@ville,@telephone,@email,@mdps,@dernier_donnation,@etat,1)
		set @ret=''
		insert into message values(@cin,'bonjour '+@nom+' '+@prenom+', Merci de vous être inscrit à notre site',GETDATE(),'r')
	end try
	begin catch
		set @ret=error_message()
	end catch
end


