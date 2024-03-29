-- Creare si populare tabel varsta_jucatori

create table varsta_jucatori(
    id_varsta number(4),
    varsta number(3) NOT NULL
);

alter table varsta_jucatori
add constraint pk_varsta_jucatori PRIMARY KEY(id_varsta);

insert into varsta_jucatori(id_varsta, varsta)
values (1, 5);

insert into varsta_jucatori(id_varsta, varsta)
values (2, 8);

insert into varsta_jucatori(id_varsta, varsta)
values (3, 15);

insert into varsta_jucatori(id_varsta, varsta)
values (4, 18);

insert into varsta_jucatori(id_varsta, varsta)
values (5, 35);

select * from varsta_jucatori;

-- Creare si populare tabel gen_joc

create table gen_joc(
    id_gen number(4),
    nume_gen varchar2(50) NOT NULL
);

alter table gen_joc
add constraint pk_gen_joc PRIMARY KEY(id_gen);

insert into gen_joc(id_gen, nume_gen)
values (1, 'Real-time strategy');

insert into gen_joc(id_gen, nume_gen)
values (2, 'Shooter');

insert into gen_joc(id_gen, nume_gen)
values (3, 'Multiplayer online battle arena');

insert into gen_joc(id_gen, nume_gen)
values (4, 'Sandbox');

insert into gen_joc(id_gen, nume_gen)
values (5, 'Action-adventure');

select * from gen_joc;

-- Creare si populare tabel joc

create table joc(
    id_joc number(4) constraint pk_joc primary key,
    id_gen_joc number(4),
    id_varsta_jucatori number(4),
    nume varchar2(50),
    descriere varchar2(500)
)

alter table joc
add constraint fk_gen_joc foreign key (id_gen_joc) references gen_joc(id_gen);

alter table joc
add constraint fk_varsta_jucatori foreign key (id_varsta_jucatori) references varsta_jucatori(id_varsta);


insert into joc(id_joc, id_gen_joc, id_varsta_jucatori, nume, descriere)
values(1, 2, 4, 'Counter Strike Global Offensive',  'The game pits two teams, Terrorists and Counter-Terrorists, against each other in different objective-based game modes.');

insert into joc(id_joc, id_gen_joc, id_varsta_jucatori, nume, descriere)
values(2, 4, 4, 'Minecraft',  'Minecraft is a video game in which players create and break apart various kinds of blocks in three-dimensional worlds');

insert into joc(id_joc, id_gen_joc, id_varsta_jucatori, nume, descriere)
values(3, 2, 2, 'Terraria',  'The game features exploration, crafting, building, painting, and combat with a variety of creatures in a procedurally generated 2D world.');

insert into joc(id_joc, id_gen_joc, id_varsta_jucatori, nume, descriere)
values(4, 1, 5, 'Warcraft',  'The game allows players to create avatar-style characters and explore a sprawling universe while interacting with nonreal players�called nonplayer characters and other real-world players');

insert into joc(id_joc, id_gen_joc, id_varsta_jucatori, nume, descriere)
values(5, 1, 4, 'Age of Empires',  'The game focus on historical events throughout time.');

insert into joc(id_joc, id_gen_joc, id_varsta_jucatori, nume, descriere)
values(6, 4, 4, 'Dota 2',  'Dota 2 is a multiplayer online battle arena video game in which two teams of five players compete to destroy a large structure defended by the opposing team known as the "Ancient" whilst defending their own');

insert into joc(id_joc, id_gen_joc, id_varsta_jucatori, nume, descriere)
values(7, 3, 4, 'League of Legends',  ' Players work with their team to break the enemy Nexus before the enemy team breaks theirs.');

insert into joc(id_joc, id_gen_joc, id_varsta_jucatori, nume, descriere)
values(8, 2, 4, 'Smite',  'In Smite, players control a god, goddess or other mythological figure and take part in team-based combat, using their abilities and tactics against other player-controlled gods and non-player-controlled minions.');

insert into joc(id_joc, id_gen_joc, id_varsta_jucatori, nume, descriere)
values(9, 5, 3, 'Assassin�s Creed ',  'Assassin`s Creed is an action-adventure game set in an open-world environment and played from a third-person perspective in which the player primarily assumes the role of Alta�r, as experienced by protagonist Desmond Miles.');

insert into joc(id_joc, id_gen_joc, id_varsta_jucatori, nume, descriere)
values(10, 5, 4, 'Sekiro: Shadows Die Twice',  'In Sekiro�: Shadows Die Twice you are the `one-armed wolf`, a disgraced and disfigured warrior rescued from the brink of death. Bound to protect a young lord who is the descendant of an ancient bloodline, you become the target of many vicious enemies, including the dangerous Ashina clan.');

select * from joc;

-- Creare si populare tabel companie

create table companie(
    id_companie number(4),
    nume_companie varchar2(50)
);

alter table companie
add constraint pk_companie primary key(id_companie);

insert into companie(id_companie, nume_companie)
values(1, 'Ubisoft');

insert into companie(id_companie, nume_companie)
values(2, 'Gameloft');

insert into companie(id_companie, nume_companie)
values(3, 'Electronic Arts');

insert into companie(id_companie, nume_companie)
values(4, 'Mojang');

insert into companie(id_companie, nume_companie)
values(5, 'Riot Games');

select * from companie;

-- Creare si populare tabel platforma

create table platforma(
    id_platforma number(4),
    nume_platforma varchar2(50)
)

alter table platforma
add constraint pk_platforma primary key(id_platforma);

insert into platforma(id_platforma, nume_platforma)
values(1, 'PC');

insert into platforma(id_platforma, nume_platforma)
values(2, 'Nintendo Switch');

insert into platforma(id_platforma, nume_platforma)
values(3, 'PS4');

insert into platforma(id_platforma, nume_platforma)
values(4, 'Smartphones');

insert into platforma(id_platforma, nume_platforma)
values(5, 'XBOX');

select * from platforma;

-- Creare si populare tabel regiune

create table regiune(
    id_regiune number(4),
    nume_regiune varchar2(50)
)

alter table regiune
add constraint pk_regiune primary key(id_regiune);

insert into regiune(id_regiune, nume_regiune)
values(1, 'Europe');

insert into regiune(id_regiune, nume_regiune)
values(2, 'Asia');

insert into regiune(id_regiune, nume_regiune)
values(3, 'Africa');

insert into regiune(id_regiune, nume_regiune)
values(4, 'North America');

insert into regiune(id_regiune, nume_regiune)
values(5, 'South America');

select * from regiune;

-- Creare si populare tabel joc_companie

create table joc_companie(
    id_joc_companie number(4) not null,
    id_joc number(4) not null,
    id_companie number(4) not null
);

alter table joc_companie
add constraint fk_joc_companie_id_joc foreign key (id_joc) references joc(id_joc);

alter table joc_companie
add constraint fk_joc_companie_id_companie foreign key (id_companie) references companie(id_companie);

alter table joc_companie
add constraint pk_joc_companie1 primary key (id_joc_companie, id_joc, id_companie);

insert into joc_companie(id_joc_companie, id_joc, id_companie)
values (1, 1, 2);

insert into joc_companie(id_joc_companie, id_joc, id_companie)
values (2, 5, 4);

insert into joc_companie(id_joc_companie, id_joc, id_companie)
values (3, 8, 1);

insert into joc_companie(id_joc_companie, id_joc, id_companie)
values (4, 7, 3);

insert into joc_companie(id_joc_companie, id_joc, id_companie)
values (5, 3, 3);

insert into joc_companie(id_joc_companie, id_joc, id_companie)
values (6, 6, 5);

insert into joc_companie(id_joc_companie, id_joc, id_companie)
values (7, 9, 5);

insert into joc_companie(id_joc_companie, id_joc, id_companie)
values (8, 9, 1);

insert into joc_companie(id_joc_companie, id_joc, id_companie)
values (9, 2, 4);

insert into joc_companie(id_joc_companie, id_joc, id_companie)
values (10, 10, 4);


select * from joc_companie;

-- Creare si populare tabel joc_companie_platforma

create table joc_companie_platforma(
    id_joc_companie_platforma number(4) not null,
    id_joc number(4) not null,
    id_companie number(4) not null,
    id_platforma number(4) not null,
    an_aparitie date
)

alter table joc_companie_platforma
add constraint fk_jcp_joc foreign key(id_joc) references joc(id_joc)

alter table joc_companie_platforma
add constraint fk_jcp_companie foreign key(id_companie) references companie(id_companie);

alter table joc_companie_platforma
add constraint fk_jcp_platforma foreign key(id_platforma) references platforma(id_platforma);

alter table joc_companie_platforma
add constraint pk_jcp primary key (id_joc_companie_platforma, id_joc, id_companie, id_platforma)


insert into joc_companie_platforma(id_joc_companie_platforma, id_joc, id_companie, id_platforma, an_aparitie)
values (1, 1, 2, 1, TO_DATE('07/11/2012', 'DD/MM/YYYY'));

insert into joc_companie_platforma(id_joc_companie_platforma, id_joc, id_companie, id_platforma, an_aparitie)
values (2, 5, 4, 3,TO_DATE('17/12/2015', 'DD/MM/YYYY'));

insert into joc_companie_platforma(id_joc_companie_platforma, id_joc, id_companie, id_platforma, an_aparitie)
values (3, 8, 1, 2, TO_DATE('23/04/2002', 'DD/MM/YYYY'));

insert into joc_companie_platforma(id_joc_companie_platforma, id_joc, id_companie, id_platforma, an_aparitie)
values (4, 7, 3,1, TO_DATE('13/10/2011', 'DD/MM/YYYY'));

insert into joc_companie_platforma(id_joc_companie_platforma, id_joc, id_companie, id_platforma, an_aparitie)
values (5, 3, 3, 5, TO_DATE('04/04/1997', 'DD/MM/YYYY'));

insert into joc_companie_platforma(id_joc_companie_platforma, id_joc, id_companie, id_platforma, an_aparitie)
values (6, 6, 5, 4, TO_DATE('13/12/2020', 'DD/MM/YYYY'));

insert into joc_companie_platforma(id_joc_companie_platforma, id_joc, id_companie, id_platforma, an_aparitie)
values (7, 9, 5, 4, TO_DATE('25/12/2022', 'DD/MM/YYYY'));

insert into joc_companie_platforma(id_joc_companie_platforma, id_joc, id_companie, id_platforma, an_aparitie)
values (8, 9, 1, 2, TO_DATE('12/01/2004', 'DD/MM/YYYY'));

insert into joc_companie_platforma(id_joc_companie_platforma, id_joc, id_companie, id_platforma, an_aparitie)
values (9, 2, 4, 1, TO_DATE('29/07/2006', 'DD/MM/YYYY'));

insert into joc_companie_platforma(id_joc_companie_platforma, id_joc, id_companie, id_platforma, an_aparitie)
values (10, 10, 4, 2, TO_DATE('23/04/2005', 'DD/MM/YYYY'));

select * from joc_companie_platforma;

-- Creare si populare tabel joc_companie_platforma_regiune

create table joc_companie_platforma_regiune(
    id_jcpr number(4) not null,
    id_joc number(4) not null,
    id_companie number(4) not null,
    id_platforma number(4) not null,
    id_regiune number(4) not null,
    numar_vanzari number(4)
)


alter table joc_companie_platforma_regiune
add constraint fk_jcpr_joc foreign key(id_joc) references joc(id_joc)

alter table joc_companie_platforma_regiune
add constraint fk_jcpr_companie foreign key(id_companie) references companie(id_companie);

alter table joc_companie_platforma_regiune
add constraint fk_jcpr_platforma foreign key(id_platforma) references platforma(id_platforma);

alter table joc_companie_platforma_regiune
add constraint fk_jcpr_regiune foreign key(id_regiune) references regiune(id_regiune);

alter table joc_companie_platforma_regiune
add constraint pk_jcpr primary key (id_jcpr, id_joc, id_companie, id_platforma, id_regiune)


insert into joc_companie_platforma_regiune(id_jcpr, id_joc, id_companie, id_platforma, id_regiune, numar_vanzari)
values (1, 1, 2, 1, 1, 123);

insert into joc_companie_platforma_regiune(id_jcpr, id_joc, id_companie, id_platforma, id_regiune, numar_vanzari)
values (2, 5, 4, 3, 4, 213);

insert into joc_companie_platforma_regiune(id_jcpr, id_joc, id_companie, id_platforma, id_regiune, numar_vanzari)
values (3, 8, 1, 2,2, 1000);

insert into joc_companie_platforma_regiune(id_jcpr, id_joc, id_companie, id_platforma, id_regiune, numar_vanzari)
values (4, 7, 3,1, 1, 1233);

insert into joc_companie_platforma_regiune(id_jcpr, id_joc, id_companie, id_platforma, id_regiune, numar_vanzari)
values (5, 3, 3, 5, 3, 1233);

insert into joc_companie_platforma_regiune(id_jcpr, id_joc, id_companie, id_platforma, id_regiune, numar_vanzari)
values (6, 6, 5, 4, 2, 11);

insert into joc_companie_platforma_regiune(id_jcpr, id_joc, id_companie, id_platforma, id_regiune, numar_vanzari)
values (7, 9, 5, 4, 5, 199);

insert into joc_companie_platforma_regiune(id_jcpr, id_joc, id_companie, id_platforma, id_regiune, numar_vanzari)
values (8, 9, 1, 2, 2, 333);

insert into joc_companie_platforma_regiune(id_jcpr, id_joc, id_companie, id_platforma, id_regiune, numar_vanzari)
values (9, 2, 4, 1, 5, 1222);

insert into joc_companie_platforma_regiune(id_jcpr, id_joc, id_companie, id_platforma, id_regiune, numar_vanzari)
values (10, 10, 4, 2, 4, 120);

select * from joc_companie_platforma_regiune;




-- Rezolvare cerinte

-- Exercitiul 6
-- O sa salvez toate numele de la jocuri intr un tablou indexat si determin pentru fiecare platforma care a generat cele mai multe vanzari 
-- si salvez pentru fiecare joc platforma intr un tablou si la final o sa afisez nume joc si platforma.

create or replace procedure exercitiul6hrm
    as
        type tablou_indexat is table of joc.nume%type index by pls_integer;
        nume_jocuri tablou_indexat;
        type tablou_imbricat is table of regiune.nume_regiune%type; 
        regiuni tablou_imbricat := tablou_imbricat();
        vanzare joc_companie_platforma_regiune.numar_vanzari%type;
        reg regiune.nume_regiune%type;
        maxim number(4);
        valoare_vanzare joc_companie_platforma_regiune.numar_vanzari%type;
        indice number(4);
    
    begin
        select nume
        bulk collect into nume_jocuri
        from joc;
        
        for i in nume_jocuri.FIRST..nume_jocuri.LAST LOOP
            
            select count(*) 
            into vanzare
            from joc_companie_platforma_regiune jcpr, joc j 
            where upper(nume_jocuri(i)) = upper(j.nume) and j.id_joc = jcpr.id_joc;
            
            regiuni.extend;
            
            if vanzare = 0 then
                regiuni(i) := 'Jocul nu are nicio vanzare';
            elsif vanzare = 1 then
                select r.nume_regiune
                into reg
                from regiune r, joc j, joc_companie_platforma_regiune jcpr
                where upper(nume_jocuri(i)) = upper(j.nume) and j.id_joc = jcpr.id_joc and jcpr.id_regiune = r.id_regiune;
                
                regiuni(i) := reg;
            else
                select id_joc
                into indice
                from joc
                where upper(nume_jocuri(i)) = upper(nume);
                
                maxim := 0;
                
                select max(numar_vanzari)
                into maxim
                from joc_companie_platforma_regiune
                where id_joc = indice;
                
                select r.nume_regiune
                into reg
                from joc_companie_platforma_regiune jcpr, regiune r
                where jcpr.numar_vanzari = maxim and jcpr.id_regiune = r.id_regiune;
                
                regiuni(i) := reg;
                
                
            end if;
        END LOOP;
        
        for i in regiuni.FIRST..regiuni.LAST LOOP
        
            dbms_output.put_line(nume_jocuri(i) || ' |  ' ||regiuni(i));
        
        END LOOP;

end exercitiul6hrm;

-- Apelare subprogram stocat independent
declare

begin
    exercitiul6hrm;
end;

/

-- Exercitiul 7

create or replace procedure exercitiul7hrm

as

    varstaJucator number(3);
    idVarstaJucator number(3);
    type tablou_indexat is table of number(3) index by pls_integer;
    varste tablou_indexat;
    counter_varsta number(3);

    CURSOR c2 (numeJoc joc.nume%type) is

        select vj.varsta varsta
        from varsta_jucatori vj, joc j
        where j.id_varsta_jucatori = vj.id_varsta and upper(numeJoc) = upper(j.nume)
        group by vj.varsta;
    
    type date_joc is record(
        nume joc.nume%type,
        descriere joc.descriere%type
    );
    
    detalii_joc date_joc;
    
    cursor c1 return date_joc
    is select nume, descriere
    from joc;

    begin    
    
    open c1;
    loop
    
        fetch c1 into detalii_joc;
        exit when c1%notfound;
    
        open c2(detalii_joc.nume);
        loop
            fetch c2 into varstaJucator;
            exit when c2%notfound;
            select count(*)
            into counter_varsta
            from varsta_jucatori vj, joc j
            where varstaJucator = vj.varsta and j.id_varsta_jucatori = vj.id_varsta;
            dbms_output.put_line('Nume joc: ' || detalii_joc.nume || ' , descriere: ' || detalii_joc.descriere  || ' , varstaJucatori ' || varstaJucator || ' , counter ' || counter_varsta);
        end loop;
        close c2;

    end loop;
    close c1;
    
end exercitiul7hrm;


-- Apelare subprogram stocat independent

declare

begin
    exercitiul7hrm;
end;

/

-- Exercitiul 8
-- Creati o functie care sa verifice daca un joc a fost creat doar de catre o companie

create or replace function exercitiul8hrm
        (numeJoc joc.nume%type)
    return number is
        countCompanie number(3);
        idJoc joc.id_joc%type;
    multeCompanii exception;
    begin
                
        select id_joc
        into idJoc
        from joc
        where upper(numeJoc) = upper(nume);
        
        select count(jc.id_companie)
        into countCompanie
        from joc j, joc_companie jc, companie c
        where upper(numeJoc) = upper(j.nume) and j.id_joc = jc.id_joc and jc.id_companie = c.id_companie;
        
        if countCompanie > 1 then
            raise multeCompanii;
        end if;
        
        return countCompanie;
    
    exception
        when NO_DATA_FOUND
            then RAISE_APPLICATION_ERROR(-20000, 'Nu exista jocul ' || numeJoc || ' in baza de date');
        when multeCompanii 
            then RAISE_APPLICATION_ERROR(-20001, 'Jocul ' || numeJoc || ' este creat de catre mai multe companii');
        when OTHERS 
            then RAISE_APPLICATION_ERROR(-20002, 'Alta eroare'); 

end exercitiul8hrm;

/

-- Apel cu exceptie predefinita 
declare

    rezultat number(3);
begin
    rezultat := exercitiul8hrm('Assassin�s Creed ');
    if rezultat = 1 then
        dbms_output.put_line('Jocul Assassin�s Creed a fost creat de catre o companie');
    end if;
end;

-- Apel valid 

declare

    rezultat number(3);
begin
    rezultat := exercitiul8hrm('Counter Strike Global Offensive');
    if rezultat = 1 then
        dbms_output.put_line('Jocul Counter Strike Global Offensive a fost creat de catre o companie');
    end if;
end;

-- Apel cu exceptie NO_DATA_FOUND 

declare

    rezultat number(3);
begin
    rezultat := exercitiul8hrm('Adopt Me');
    if rezultat = 1 then
        dbms_output.put_line('Jocul Adopt Me a fost creat de catre o companie');
    end if;
end;

/

-- Exercitiul 9
-- Sa se afiseze regiunea in care se joaca un anumit joc

create or replace procedure exercitiul9hrm
    (numeJoc joc.nume%TYPE)
as

    numeRegiune regiune.nume_regiune%type;

begin

    select r.nume_regiune
    into numeRegiune
    from joc j, joc_companie jc, joc_companie_platforma jcp, joc_companie_platforma_regiune jcpr, regiune r
    where upper(numeJoc) = upper(j.nume) and j.id_joc = jc.id_joc and jc.id_joc = jcp.id_joc and jcp.id_joc = jcpr.id_joc and jcpr.id_regiune = r.id_regiune;

    dbms_output.put_line('Jocul ' || numeJoc || ' se afla in ' || numeRegiune);
    
exception
    when no_data_found  
        then dbms_output.put_line('Jocul '  || numeJoc || ' nu se afla in nicio regiune');
    when too_many_rows
        then dbms_output.put_line('Jocul '  || numeJoc || ' se afla in mai multe regiuni');
    when others
        then dbms_output.put_line('Alt tip de eroare');


end exercitiul9hrm;

-- Apel corect
declare

begin
    exercitiul9hrm('Minecraft');
end;

-- Apel NO_DATA_FOUND

declare

begin
    exercitiul9hrm('Warcraft');
end;


-- Apel TOO_MANY_ROWS
declare

begin
    exercitiul9hrm('Assassin�s Creed ');
end;

-- Exercitiul 10
-- Sa se creeze un trigger de tip LMD la nivel de instructiune care
-- sa nu permita inserarea din tabelului joc

create or replace trigger exercitiul10hrm
    before insert or delete on joc
declare
    counterIdJoc joc.id_joc%type;
begin
    select count(id_joc)
    into counterIdJoc
    from joc;
    
    if counterIdJoc > 10 then
        raise_application_error(-20000,'Nu puteti insera in acest tabel');
    end if;
    
end;

/

declare

begin

    for i in 1..5 loop
        insert into joc(id_joc, id_gen_joc, id_varsta_jucatori, nume, descriere)
        values(10 + i, 1, 4, 'Minecraft 2.0', 'A new version of Minecraft');
    end loop;

--    update joc
--    set nume = 'Minecraft 2.0'
--    where id_gen_joc = 4;

end;

/

-- Exercitiul 11
-- Sa se creeze un trigger la nivel de linie care nu permite micsorarea numarului de vanzari ale unui joc

create or replace trigger exercitiul11hrm
    before update of numar_vanzari on joc_companie_platforma_regiune
    for each row
begin

    if(:NEW.numar_vanzari < :OLD.numar_vanzari) then
        raise_application_error(-20002, 'Numarul de vanzari nu poate fi micsorat');
    end if;
end;

/
-- Rulare valida
update joc_companie_platforma_regiune
set numar_vanzari = 124
where id_jcpr = 1;

rollback;

-- Declansare trigger
update joc_companie_platforma_regiune
set numar_vanzari = 50
where id_jcpr = 1;

select * from joc_companie_platforma_regiune;

-- Exercitiul 12
-- Sa se creeze un trigger care permite modificarea tabelelor din baza de date doar de catre user-ul ALIEN14 si toate modificarile
-- sa fie salvate intr-un tabel

create table tabelModificari(
    userName varchar2(50),
    databaseName varchar2(50),
    event varchar2(50),
    objectName varchar2(50),
    modifyDate date
);

create or replace trigger exercitiul12hrm
    before drop or alter or create on schema
begin
    if upper('Alien14') != USER then
        raise_application_error(-20002, 'Nu esti adminul acestei baze de date' );
    else
        insert into tabelModificari(userName, databaseName, event, objectName, modifyDate)
        values (sys.login_user, sys.database_name, sys.sysevent, sys.dictionary_obj_name, sysdate);
    end if;
end;

alter table joc add rating number(4);
alter table joc
drop column rating;

alter table gen_joc add rating number(4);
alter table gen_joc
drop column rating;

select * from tabelModificari;

drop trigger exercitiul12hrm;


-- Exercitiul 13
-- Definiti un pachet care sa contina toate obiectele definite in cadrul proiectului

create or replace package exercitiul13hrm as
    procedure exercitiul6hrm;
    procedure exercitiul7hrm;
    function exercitiul8hrm (numeJoc joc.nume%type) return number;
    procedure exercitiul9hrm (numeJOc joc.nume%type);
end exercitiul13hrm;

create or replace package body exercitiul13hrm as
 -- Exercitiul 6
 -- Pentru fiecare joc din tabelul joc o sa determin regiunea care a generat cele mai multe vanzari. 
 -- �n cazul �n care jocul nu a fost v�ndut o sa adaug mesajul �Jocul nu are nicio vanzare�, 
 -- �n cazul �n care are o singura regiune �n care s-a vandut o sa adaug regiunea respectiv? ?i 
 -- �n cazul �n care jocul are mai multe regiuni �n care s-a vandut o sa calculez valoarea maxim? a vanzarilor 
 -- si dup? o sa determin regiunea careia �i corespunde maximul vanzarilor.
 -- La final o sa afisez numele jocului urmat? de regiunea care a generat cele mai multe vanzari.

    procedure exercitiul6hrm
        as
            type tablou_indexat is table of joc.nume%type index by pls_integer;
            nume_jocuri tablou_indexat;
            type tablou_imbricat is table of regiune.nume_regiune%type;
            regiuni tablou_imbricat := tablou_imbricat();
            vanzare joc_companie_platforma_regiune.numar_vanzari%type;
            reg regiune.nume_regiune%type;
            maxim number(4);
            valoare_vanzare joc_companie_platforma_regiune.numar_vanzari%type;
            indice number(4);
        
        begin
            select nume
            bulk collect into nume_jocuri
            from joc;
         
            for i in nume_jocuri.FIRST..nume_jocuri.LAST LOOP
             
                select count(*)
                into vanzare
                from joc_companie_platforma_regiune jcpr, joc j
                where upper(nume_jocuri(i)) = upper(j.nume) and j.id_joc = jcpr.id_joc;
             
                regiuni.extend;
             
                if vanzare = 0 then
                    regiuni(i) := 'Jocul nu are nicio vanzare';
                elsif vanzare = 1 then
                    select r.nume_regiune
                    into reg
                    from regiune r, joc j, joc_companie_platforma_regiune jcpr
                    where upper(nume_jocuri(i)) = upper(j.nume) and j.id_joc = jcpr.id_joc and jcpr.id_regiune = r.id_regiune;
                 
                    regiuni(i) := reg;
                else
                    select id_joc
                    into indice
                    from joc
                    where upper(nume_jocuri(i)) = upper(nume);
                 
                    maxim := 0;
                 
                    select max(numar_vanzari)
                    into maxim
                    from joc_companie_platforma_regiune
                    where id_joc = indice;
                 
                    select r.nume_regiune
                    into reg
                    from joc_companie_platforma_regiune jcpr, regiune r
                    where jcpr.numar_vanzari = maxim and jcpr.id_regiune = r.id_regiune;
                 
                    regiuni(i) := reg;
                 
                 
                end if;
            END LOOP;
         
            for i in regiuni.FIRST..regiuni.LAST LOOP
         
                dbms_output.put_line(nume_jocuri(i) || ' |  ' ||regiuni(i));
         
            END LOOP;
    
    end exercitiul6hrm;

    -- Exercitiul 7
    -- Pentru fiecare joc sa se afiseze descrierea sa, varsta minima a jucatorilor si cate jocuri au aceea?i limita de varsta.

    procedure exercitiul7hrm
        
        as
        
            varstaJucator number(3);
            idVarstaJucator number(3);
            type tablou_indexat is table of number(3) index by pls_integer;
            varste tablou_indexat;
            counter_varsta number(3);
        
            CURSOR c2 (numeJoc joc.nume%type) is
        
                select vj.varsta varsta
                from varsta_jucatori vj, joc j
                where j.id_varsta_jucatori = vj.id_varsta and upper(numeJoc) = upper(j.nume)
                group by vj.varsta;
            
            type date_joc is record(
                nume joc.nume%type,
                descriere joc.descriere%type
            );
            
            detalii_joc date_joc;
            
            cursor c1 return date_joc
            is select nume, descriere
            from joc;
        
            begin    
            
            open c1;
            loop
            
                fetch c1 into detalii_joc;
                exit when c1%notfound;
            
                open c2(detalii_joc.nume);
                loop
                    fetch c2 into varstaJucator;
                    exit when c2%notfound;
                    select count(*)
                    into counter_varsta
                    from varsta_jucatori vj, joc j
                    where varstaJucator = vj.varsta and j.id_varsta_jucatori = vj.id_varsta;
                    dbms_output.put_line('Nume joc: ' || detalii_joc.nume || ' , descriere: ' || detalii_joc.descriere  || ' , varstaJucatori ' || varstaJucator || ' , counter ' || counter_varsta);
                end loop;
                close c2;
        
            end loop;
            close c1;
            
    end exercitiul7hrm;

     -- Exercitiul 8
     -- Creati o functie care sa verifice daca un joc a fost creat doar de catre o companie

    function exercitiul8hrm
        (numeJoc joc.nume%type)
    return number is
        countCompanie number(3);
        idJoc joc.id_joc%type;
    multeCompanii exception;
    begin
                
        select id_joc
        into idJoc
        from joc
        where upper(numeJoc) = upper(nume);
        
        select count(jc.id_companie)
        into countCompanie
        from joc j, joc_companie jc, companie c
        where upper(numeJoc) = upper(j.nume) and j.id_joc = jc.id_joc and jc.id_companie = c.id_companie;
        
        if countCompanie > 1 then
            raise multeCompanii;
        end if;
        
        return countCompanie;
    
    exception
        when NO_DATA_FOUND
            then RAISE_APPLICATION_ERROR(-20000, 'Nu exista jocul ' || numeJoc || ' in baza de date');
        when multeCompanii 
            then RAISE_APPLICATION_ERROR(-20001, 'Jocul ' || numeJoc || ' este creat de catre mai multe companii');
        when OTHERS 
            then RAISE_APPLICATION_ERROR(-20002, 'Alta eroare'); 

    end exercitiul8hrm;
    
    -- Exercitiul 9
    -- Sa se afiseze regiunea in care se joaca un anumit joc

    procedure exercitiul9hrm
        (numeJoc joc.nume%TYPE)
    as
        numeRegiune regiune.nume_regiune%type;
    begin
    
        select r.nume_regiune
        into numeRegiune
        from joc j, joc_companie jc, joc_companie_platforma jcp, joc_companie_platforma_regiune jcpr, regiune r
        where upper(numeJoc) = upper(j.nume) and j.id_joc = jc.id_joc and jc.id_joc = jcp.id_joc and jcp.id_joc = jcpr.id_joc and jcpr.id_regiune = r.id_regiune;
    
        dbms_output.put_line('Jocul ' || numeJoc || ' se afla in ' || numeRegiune);
        
    exception
        when no_data_found  
            then dbms_output.put_line('Jocul '  || numeJoc || ' nu se afla in nicio regiune');
        when too_many_rows
            then dbms_output.put_line('Jocul '  || numeJoc || ' se afla in mai multe regiuni');
        when others
            then dbms_output.put_line('Alt tip de eroare');
    
    
    end exercitiul9hrm;
end exercitiul13hrm;

-- Apel pentru exercitiul 6
execute exercitiul13hrm.exercitiul6hrm;

-- Apel pentru exercitiul 7
execute exercitiul13hrm.exercitiul7hrm;

-- Apel pentru exercitiul 8

    -- Apel cu exceptie predefinita 
    declare
    
        rezultat number(3);
    begin
        rezultat := exercitiul13hrm.exercitiul8hrm('Assassin�s Creed ');
        if rezultat = 1 then
            dbms_output.put_line('Jocul Assassin�s Creed a fost creat de catre o companie');
        end if;
    end;
    
    -- Apel valid 
    
    declare
    
        rezultat number(3);
    begin
        rezultat := exercitiul13hrm.exercitiul8hrm('Counter Strike Global Offensive');
        if rezultat = 1 then
            dbms_output.put_line('Jocul Counter Strike Global Offensive a fost creat de catre o companie');
        end if;
    end;
    
    -- Apel cu exceptie NO_DATA_FOUND 
    
    declare
    
        rezultat number(3);
    begin
        rezultat := exercitiul13hrm.exercitiul8hrm('Adopt Me');
        if rezultat = 1 then
            dbms_output.put_line('Jocul Adopt Me a fost creat de catre o companie');
        end if;
    end;
-- Apel pentru exercitiul 9
    
    -- Apel corect
        execute exercitiul13hrm.exercitiul9hrm('Minecraft');
        
    -- Apel NO_DATA_FOUND
        execute exercitiul13hrm.exercitiul9hrm('Warcraft');
    
    -- Apel TOO_MANY_ROWS
        execute exercitiul13hrm.exercitiul9hrm('Assassin�s Creed ');

-- Exercitiul 14
-- Definiti un pachet care sa includa tipuri de date complexe si obiecte necesare pentru actiuni integrate

create or replace package exercitiul14hrm as    
    function numarJocuriIncasari(suma joc_companie_platforma_regiune.numar_vanzari%type)
        return number;
        
    function numarJocuri(loc regiune.nume_regiune%type,suma joc_companie_platforma_regiune.numar_vanzari%type)
        return number;
    
    procedure listaCompanii(numeRegiune regiune.nume_regiune%type);
    
    procedure platformaVanzari;
end exercitiul14hrm;

create or replace package body exercitiul14hrm as
    -- O functie care pentru un numar dat returneaza cate jocuri au produs incasari mai mari decat acel numar
    function numarJocuriIncasari(
        suma joc_companie_platforma_regiune.numar_vanzari%type
    )
        return number
    is
        contor number;
    begin
    
        select count(numar_vanzari)
        into contor
        from joc_companie_platforma_regiune
        where numar_vanzari > suma;
        
        return contor;
    
    exception
        WHEN NO_DATA_FOUND
            THEN return 0;
    
    end numarJocuriIncasari;
    
    -- O functie care returneaza cate jocuri au incasari mai mari decat un numar dat si fac parte dintr-o anumita regiune
    
    function numarJocuri(loc regiune.nume_regiune%type,suma joc_companie_platforma_regiune.numar_vanzari%type)
        return number
    as
        contor number;
    begin
    
        select count(numar_vanzari)
        into contor
        from joc_companie_platforma_regiune jcpr, regiune r
        where upper(r.nume_regiune) = upper(loc) and jcpr.numar_vanzari > suma and r.id_regiune = jcpr.id_regiune;
        
        return contor;
    
    exception
        WHEN NO_DATA_FOUND
            THEN return 0;

    end;
    
    -- O procedura care afiseaza companiile cu cele mai mari incasari pentru o anumita regiune
    
    procedure listaCompanii(numeRegiune regiune.nume_regiune%type)
    IS
        
        cursor listaTop
        is
            select c.nume_companie, sum(jcpr.numar_vanzari)
            from joc_companie_platforma_regiune jcpr, regiune r, companie c
            where r.id_regiune = jcpr.id_regiune and upper(r.nume_regiune) = upper(numeRegiune) and c.id_companie = jcpr.id_companie
            group by c.nume_companie
            order by sum(jcpr.numar_vanzari) desc;
        
        nume companie.nume_companie%type;
        vanzari joc_companie_platforma_regiune.numar_vanzari%type;
        
    begin
    
        open listaTop;
        loop
        
            fetch listaTop into nume, vanzari;
            exit when listaTop%NOTFOUND;
            
            dbms_output.put_line(nume || ' ' || vanzari);
        
        end loop;
        close listaTop;
    
    end;
    
    -- O procedura care afiseaza pentru fiecare platforma toate regiunile in care sunt jocuri si pentru fiecare regiune toate companiile ordonate descrescator dupa numarul de vanzari
    procedure platformaVanzari
    is    
        cursor platforme
        is
            select nume_platforma
            from platforma;
        type numePlatforma is table of platforma.nume_platforma%type;
        var_platforma numePlatforma;
        
        CURSOR c2 (numePlatforma platforma.nume_platforma%type) is
        
            select r.id_regiune from regiune r, joc_companie_platforma_regiune jcpr, platforma p
            where upper(p.nume_platforma) = upper(numePlatforma) and p.id_platforma = jcpr.id_platforma and jcpr.id_regiune = r.id_regiune
            group by r.id_regiune;
        
        regiuneId regiune.id_regiune%type;
        numeRegiune regiune.nume_regiune%type;
        
    begin

        open platforme;
        fetch platforme bulk collect into var_platforma;
        close platforme;
        
        for i in var_platforma.FIRST..var_platforma.LAST LOOP
            dbms_output.put_line('Platforma: ' || var_platforma(i));
            open c2(var_platforma(i));
            loop
                fetch c2 into regiuneId;
                exit when c2%notfound;
                
                select nume_regiune
                into numeRegiune
                from regiune
                where id_regiune = regiuneId;
                
                dbms_output.put_line('Regiune: ' || numeRegiune);
                
                listaCompanii(numeRegiune);
                dbms_output.new_line();
                
            end loop;
            close c2;
            
            dbms_output.new_line();
        
        END LOOP;
        
    end;
end exercitiul14hrm;


/

execute exercitiul14hrm.platformaVanzari;



