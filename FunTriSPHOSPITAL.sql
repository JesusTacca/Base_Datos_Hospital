use  HospitalDB;

########     SP    ###############################3

drop function if exists get_anio;

DELIMITER //
CREATE  FUNCTION get_anio(anio char(10)) RETURNS int
begin
declare res int;
    set res = TIMESTAMPDIFF(year,anio,curdate());
return res;
end //
DELIMITER ;

################################################################

drop procedure if exists SP_Edad;

DELIMITER //
CREATE  PROCEDURE SP_Edad(
in dni int
)
begin
	select o.DNI, o.Nombre, get_anio(o.Fech_Nac) as 'Edad'
		from Hospital.Persona o
	where dni=o.DNI;
end //
DELIMITER ;

call SP_Edad('73862400');

########################################

drop procedure if exists SP_Vigilante_Entrada;

DELIMITER //
CREATE  PROCEDURE SP_Vigilante_Entrada(
in dniV int
)
begin
	select v.DNI as 'DNI del Vigilante', ps.Nombre as 'Nombre del Vigilante', e.Codigo as 'Codigo Entrada'
		from Hospital.Persona ps
        inner join hospital.personal pl on ps.DNI = pl.DNI
        inner join hospitaldb.vigilante v on v.DNI = pl.DNI
        inner join hospitaldb.ent_vig ev on ev.DNI = v.DNI
        inner join hospitaldb.entrada e on e.Codigo = ev.CodigoE
        where ev.DNI = dniV;
	
end //
DELIMITER ;

call SP_Vigilante_Entrada('73862451');

#############################################################

drop procedure if exists SP_Cuarto_Paciente;

DELIMITER //
CREATE  PROCEDURE SP_Cuarto_Paciente(
in dniP int
)
begin
	select p.DNI as 'DNI del Paciente', ps.Nombre as 'Nombre del Paciente', c.numeroC as 'Numero de Cuarto'
		from Hospital.Persona ps
        inner join hospitaldb.paciente p on ps.DNI = p.DNI
        inner join hospitaldb.cuarto_paciente c on c.DNI = p.DNI
        
        where c.DNI = dniP;
end //
DELIMITER ;

call SP_Cuarto_Paciente('73862400');

#############################################################

drop procedure if exists SP_Paciente_Receta;
DELIMITER //
CREATE  PROCEDURE SP_Paciente_Receta(
in dniP int
)
begin
	select ps.DNI as 'DNI del Paciente', ps.Nombre as 'Nombre del Paciente', md.Nombre as 'receta'
		from Hospitaldb.Persona ps
        inner join hospitaldb.paciente pc on pc.DNI = ps.DNI
        inner join hospitaldb.cita c on pc.DNI = c.DNIP
        inner join hospitaldb.diagnostico d on c.CodigoD = d.Codigo
        inner join hospitaldb.receta r on r.CodigoD = d.Codigo
        inner join hospitaldb.medicamentos md on r.CodigoM = md.Codigo 
        
        where ps.DNI = dniP;
end //
DELIMITER ;

call SP_Paciente_Receta('73862466');
#############################################################

drop procedure if exists SP_Cancelar_Cita;
DELIMITER //
CREATE  PROCEDURE SP_Cancelar_Cita(
in dniPaciente int
)
begin
	delete from cita  where DNIP = dniPaciente;
end //
DELIMITER ;

call SP_Cancelar_Cita('73862475');

#############################################################

drop procedure if exists SP_Reprogramar_Cita;
DELIMITER //
CREATE  PROCEDURE SP_Reprogramar_Cita(
in dniPaciente int , in nuevaFecha date
)
begin
	update Cita set Fecha = nuevaFecha where DNIP = dniPaciente;
end //
DELIMITER ;

call SP_Reprogramar_Cita(73862475,'2018-10-15');

#############################################################3
/*
drop trigger if exists tgr_insert_persona_pac;

DELIMITER //
create trigger tgr_insert_persona_pac after insert on persona
for each row
begin
	insert into paciente (DNI ,NumSeguSoc) values (new.DNI,new.NumSeguSoc);
end //
DELIMITER ;
*/
#############################################################3




